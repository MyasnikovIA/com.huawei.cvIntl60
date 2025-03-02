package com.google.android.exoplayer.extractor.p095ts;

import com.google.android.exoplayer.C1167C;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.DtsUtil;
import com.google.android.exoplayer.util.ParsableByteArray;

/* loaded from: classes.dex */
final class DtsReader extends ElementaryStreamReader {
    private static final int HEADER_SIZE = 15;
    private static final int STATE_FINDING_SYNC = 0;
    private static final int STATE_READING_HEADER = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private static final int SYNC_VALUE = 2147385345;
    private static final int SYNC_VALUE_SIZE = 4;
    private int bytesRead;
    private final ParsableByteArray headerScratchBytes;
    private MediaFormat mediaFormat;
    private long sampleDurationUs;
    private int sampleSize;
    private int state;
    private int syncBytes;
    private long timeUs;

    public DtsReader(TrackOutput trackOutput) {
        super(trackOutput);
        this.headerScratchBytes = new ParsableByteArray(new byte[15]);
        this.headerScratchBytes.data[0] = Byte.MAX_VALUE;
        this.headerScratchBytes.data[1] = -2;
        this.headerScratchBytes.data[2] = Byte.MIN_VALUE;
        this.headerScratchBytes.data[3] = 1;
        this.state = 0;
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void seek() {
        this.state = 0;
        this.bytesRead = 0;
        this.syncBytes = 0;
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
                    if (!skipToNextSync(parsableByteArray)) {
                        break;
                    } else {
                        this.bytesRead = 4;
                        this.state = 1;
                        break;
                    }
                case 1:
                    if (!continueRead(parsableByteArray, this.headerScratchBytes.data, 15)) {
                        break;
                    } else {
                        parseHeader();
                        this.headerScratchBytes.setPosition(0);
                        this.output.sampleData(this.headerScratchBytes, 15);
                        this.state = 2;
                        break;
                    }
                case 2:
                    int min = Math.min(parsableByteArray.bytesLeft(), this.sampleSize - this.bytesRead);
                    this.output.sampleData(parsableByteArray, min);
                    this.bytesRead = min + this.bytesRead;
                    if (this.bytesRead != this.sampleSize) {
                        break;
                    } else {
                        this.output.sampleMetadata(this.timeUs, 1, this.sampleSize, 0, null);
                        this.timeUs += this.sampleDurationUs;
                        this.state = 0;
                        break;
                    }
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

    private boolean skipToNextSync(ParsableByteArray parsableByteArray) {
        while (parsableByteArray.bytesLeft() > 0) {
            this.syncBytes <<= 8;
            this.syncBytes |= parsableByteArray.readUnsignedByte();
            if (this.syncBytes == SYNC_VALUE) {
                this.syncBytes = 0;
                return true;
            }
        }
        return false;
    }

    private void parseHeader() {
        byte[] bArr = this.headerScratchBytes.data;
        if (this.mediaFormat == null) {
            this.mediaFormat = DtsUtil.parseDtsFormat(bArr, null, -1L, null);
            this.output.format(this.mediaFormat);
        }
        this.sampleSize = DtsUtil.getDtsFrameSize(bArr);
        this.sampleDurationUs = (int) ((DtsUtil.parseDtsAudioSampleCount(bArr) * C1167C.MICROS_PER_SECOND) / this.mediaFormat.sampleRate);
    }
}
