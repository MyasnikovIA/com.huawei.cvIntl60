package com.google.android.exoplayer.extractor.p095ts;

import com.google.android.exoplayer.C1167C;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.MpegAudioHeader;
import com.google.android.exoplayer.util.ParsableByteArray;

/* loaded from: classes.dex */
final class MpegAudioReader extends ElementaryStreamReader {
    private static final int HEADER_SIZE = 4;
    private static final int STATE_FINDING_HEADER = 0;
    private static final int STATE_READING_FRAME = 2;
    private static final int STATE_READING_HEADER = 1;
    private int frameBytesRead;
    private long frameDurationUs;
    private int frameSize;
    private boolean hasOutputFormat;
    private final MpegAudioHeader header;
    private final ParsableByteArray headerScratch;
    private boolean lastByteWasFF;
    private int state;
    private long timeUs;

    public MpegAudioReader(TrackOutput trackOutput) {
        super(trackOutput);
        this.state = 0;
        this.headerScratch = new ParsableByteArray(4);
        this.headerScratch.data[0] = -1;
        this.header = new MpegAudioHeader();
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void seek() {
        this.state = 0;
        this.frameBytesRead = 0;
        this.lastByteWasFF = false;
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
                    findHeader(parsableByteArray);
                    break;
                case 1:
                    readHeaderRemainder(parsableByteArray);
                    break;
                case 2:
                    readFrameRemainder(parsableByteArray);
                    break;
            }
        }
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void packetFinished() {
    }

    private void findHeader(ParsableByteArray parsableByteArray) {
        byte[] bArr = parsableByteArray.data;
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        for (int i = position; i < limit; i++) {
            boolean z = (bArr[i] & 255) == 255;
            boolean z2 = this.lastByteWasFF && (bArr[i] & 224) == 224;
            this.lastByteWasFF = z;
            if (z2) {
                parsableByteArray.setPosition(i + 1);
                this.lastByteWasFF = false;
                this.headerScratch.data[1] = bArr[i];
                this.frameBytesRead = 2;
                this.state = 1;
                return;
            }
        }
        parsableByteArray.setPosition(limit);
    }

    private void readHeaderRemainder(ParsableByteArray parsableByteArray) {
        int min = Math.min(parsableByteArray.bytesLeft(), 4 - this.frameBytesRead);
        parsableByteArray.readBytes(this.headerScratch.data, this.frameBytesRead, min);
        this.frameBytesRead = min + this.frameBytesRead;
        if (this.frameBytesRead >= 4) {
            this.headerScratch.setPosition(0);
            if (!MpegAudioHeader.populateHeader(this.headerScratch.readInt(), this.header)) {
                this.frameBytesRead = 0;
                this.state = 1;
                return;
            }
            this.frameSize = this.header.frameSize;
            if (!this.hasOutputFormat) {
                this.frameDurationUs = (C1167C.MICROS_PER_SECOND * this.header.samplesPerFrame) / this.header.sampleRate;
                this.output.format(MediaFormat.createAudioFormat(null, this.header.mimeType, -1, 4096, -1L, this.header.channels, this.header.sampleRate, null, null));
                this.hasOutputFormat = true;
            }
            this.headerScratch.setPosition(0);
            this.output.sampleData(this.headerScratch, 4);
            this.state = 2;
        }
    }

    private void readFrameRemainder(ParsableByteArray parsableByteArray) {
        int min = Math.min(parsableByteArray.bytesLeft(), this.frameSize - this.frameBytesRead);
        this.output.sampleData(parsableByteArray, min);
        this.frameBytesRead = min + this.frameBytesRead;
        if (this.frameBytesRead >= this.frameSize) {
            this.output.sampleMetadata(this.timeUs, 1, this.frameSize, 0, null);
            this.timeUs += this.frameDurationUs;
            this.frameBytesRead = 0;
            this.state = 0;
        }
    }
}
