package com.google.android.exoplayer.extractor.p095ts;

import android.support.v4.app.FrameMetricsAggregator;
import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.CodecSpecificDataUtil;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes.dex */
final class AdtsReader extends ElementaryStreamReader {
    private static final int CRC_SIZE = 2;
    private static final int HEADER_SIZE = 5;
    private static final int ID3_HEADER_SIZE = 10;
    private static final byte[] ID3_IDENTIFIER = {73, 68, 51};
    private static final int ID3_SIZE_OFFSET = 6;
    private static final int MATCH_STATE_FF = 512;
    private static final int MATCH_STATE_I = 768;
    private static final int MATCH_STATE_ID = 1024;
    private static final int MATCH_STATE_START = 256;
    private static final int MATCH_STATE_VALUE_SHIFT = 8;
    private static final int STATE_FINDING_SAMPLE = 0;
    private static final int STATE_READING_ADTS_HEADER = 2;
    private static final int STATE_READING_ID3_HEADER = 1;
    private static final int STATE_READING_SAMPLE = 3;
    private static final String TAG = "AdtsReader";
    private final ParsableBitArray adtsScratch;
    private int bytesRead;
    private TrackOutput currentOutput;
    private long currentSampleDuration;
    private boolean hasCrc;
    private boolean hasOutputFormat;
    private final ParsableByteArray id3HeaderBuffer;
    private final TrackOutput id3Output;
    private int matchState;
    private long sampleDurationUs;
    private int sampleSize;
    private int state;
    private long timeUs;

    public AdtsReader(TrackOutput trackOutput, TrackOutput trackOutput2) {
        super(trackOutput);
        this.id3Output = trackOutput2;
        trackOutput2.format(MediaFormat.createId3Format());
        this.adtsScratch = new ParsableBitArray(new byte[7]);
        this.id3HeaderBuffer = new ParsableByteArray(Arrays.copyOf(ID3_IDENTIFIER, 10));
        setFindingSampleState();
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void seek() {
        setFindingSampleState();
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void packetStarted(long j, boolean z) {
        this.timeUs = j;
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        while (parsableByteArray.bytesLeft() > 0) {
            switch (this.state) {
                case 0:
                    findNextSample(parsableByteArray);
                    break;
                case 1:
                    if (!continueRead(parsableByteArray, this.id3HeaderBuffer.data, 10)) {
                        break;
                    } else {
                        parseId3Header();
                        break;
                    }
                case 2:
                    if (!continueRead(parsableByteArray, this.adtsScratch.data, this.hasCrc ? 7 : 5)) {
                        break;
                    } else {
                        parseAdtsHeader();
                        break;
                    }
                case 3:
                    readSample(parsableByteArray);
                    break;
            }
        }
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void packetFinished() {
    }

    private boolean continueRead(ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        int min = Math.min(parsableByteArray.bytesLeft(), i - this.bytesRead);
        parsableByteArray.readBytes(bArr, this.bytesRead, min);
        this.bytesRead = min + this.bytesRead;
        return this.bytesRead == i;
    }

    private void setFindingSampleState() {
        this.state = 0;
        this.bytesRead = 0;
        this.matchState = 256;
    }

    private void setReadingId3HeaderState() {
        this.state = 1;
        this.bytesRead = ID3_IDENTIFIER.length;
        this.sampleSize = 0;
        this.id3HeaderBuffer.setPosition(0);
    }

    private void setReadingSampleState(TrackOutput trackOutput, long j, int i, int i2) {
        this.state = 3;
        this.bytesRead = i;
        this.currentOutput = trackOutput;
        this.currentSampleDuration = j;
        this.sampleSize = i2;
    }

    private void setReadingAdtsHeaderState() {
        this.state = 2;
        this.bytesRead = 0;
    }

    private void findNextSample(ParsableByteArray parsableByteArray) {
        byte[] bArr = parsableByteArray.data;
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        while (position < limit) {
            int i = position + 1;
            int i2 = bArr[position] & 255;
            if (this.matchState == 512 && i2 >= 240 && i2 != 255) {
                this.hasCrc = (i2 & 1) == 0;
                setReadingAdtsHeaderState();
                parsableByteArray.setPosition(i);
                return;
            }
            switch (i2 | this.matchState) {
                case 329:
                    this.matchState = MATCH_STATE_I;
                    position = i;
                    break;
                case FrameMetricsAggregator.EVERY_DURATION /* 511 */:
                    this.matchState = 512;
                    position = i;
                    break;
                case 836:
                    this.matchState = 1024;
                    position = i;
                    break;
                case 1075:
                    setReadingId3HeaderState();
                    parsableByteArray.setPosition(i);
                    return;
                default:
                    if (this.matchState == 256) {
                        position = i;
                        break;
                    } else {
                        this.matchState = 256;
                        position = i - 1;
                        break;
                    }
            }
        }
        parsableByteArray.setPosition(position);
    }

    private void parseId3Header() {
        this.id3Output.sampleData(this.id3HeaderBuffer, 10);
        this.id3HeaderBuffer.setPosition(6);
        setReadingSampleState(this.id3Output, 0L, 10, this.id3HeaderBuffer.readSynchSafeInt() + 10);
    }

    private void parseAdtsHeader() {
        int i = 2;
        this.adtsScratch.setPosition(0);
        if (!this.hasOutputFormat) {
            int readBits = this.adtsScratch.readBits(2) + 1;
            if (readBits != 2) {
                Log.w(TAG, "Detected audio object type: " + readBits + ", but assuming AAC LC.");
            } else {
                i = readBits;
            }
            int readBits2 = this.adtsScratch.readBits(4);
            this.adtsScratch.skipBits(1);
            byte[] buildAacAudioSpecificConfig = CodecSpecificDataUtil.buildAacAudioSpecificConfig(i, readBits2, this.adtsScratch.readBits(3));
            Pair<Integer, Integer> parseAacAudioSpecificConfig = CodecSpecificDataUtil.parseAacAudioSpecificConfig(buildAacAudioSpecificConfig);
            MediaFormat createAudioFormat = MediaFormat.createAudioFormat(null, MimeTypes.AUDIO_AAC, -1, -1, -1L, ((Integer) parseAacAudioSpecificConfig.second).intValue(), ((Integer) parseAacAudioSpecificConfig.first).intValue(), Collections.singletonList(buildAacAudioSpecificConfig), null);
            this.sampleDurationUs = 1024000000 / createAudioFormat.sampleRate;
            this.output.format(createAudioFormat);
            this.hasOutputFormat = true;
        } else {
            this.adtsScratch.skipBits(10);
        }
        this.adtsScratch.skipBits(4);
        int readBits3 = (this.adtsScratch.readBits(13) - 2) - 5;
        if (this.hasCrc) {
            readBits3 -= 2;
        }
        setReadingSampleState(this.output, this.sampleDurationUs, 0, readBits3);
    }

    private void readSample(ParsableByteArray parsableByteArray) {
        int min = Math.min(parsableByteArray.bytesLeft(), this.sampleSize - this.bytesRead);
        this.currentOutput.sampleData(parsableByteArray, min);
        this.bytesRead = min + this.bytesRead;
        if (this.bytesRead == this.sampleSize) {
            this.currentOutput.sampleMetadata(this.timeUs, 1, this.sampleSize, 0, null);
            this.timeUs += this.currentSampleDuration;
            setFindingSampleState();
        }
    }
}
