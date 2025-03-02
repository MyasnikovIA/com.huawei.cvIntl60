package com.google.android.exoplayer.extractor.wav;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.MimeTypes;

/* loaded from: classes.dex */
public final class WavExtractor implements Extractor, SeekMap {
    private static final int MAX_INPUT_SIZE = 32768;
    private int bytesPerFrame;
    private ExtractorOutput extractorOutput;
    private int pendingBytes;
    private TrackOutput trackOutput;
    private WavHeader wavHeader;

    @Override // com.google.android.exoplayer.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        return WavHeaderReader.peek(extractorInput) != null;
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0);
        this.wavHeader = null;
        extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void seek() {
        this.pendingBytes = 0;
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        if (this.wavHeader == null) {
            this.wavHeader = WavHeaderReader.peek(extractorInput);
            if (this.wavHeader == null) {
                throw new ParserException("Error initializing WavHeader. Did you sniff first?");
            }
            this.bytesPerFrame = this.wavHeader.getBytesPerFrame();
        }
        if (!this.wavHeader.hasDataBounds()) {
            WavHeaderReader.skipToData(extractorInput, this.wavHeader);
            this.trackOutput.format(MediaFormat.createAudioFormat(null, MimeTypes.AUDIO_RAW, this.wavHeader.getBitrate(), 32768, this.wavHeader.getDurationUs(), this.wavHeader.getNumChannels(), this.wavHeader.getSampleRateHz(), null, null, this.wavHeader.getEncoding()));
            this.extractorOutput.seekMap(this);
        }
        int sampleData = this.trackOutput.sampleData(extractorInput, 32768 - this.pendingBytes, true);
        if (sampleData != -1) {
            this.pendingBytes += sampleData;
        }
        int i = (this.pendingBytes / this.bytesPerFrame) * this.bytesPerFrame;
        if (i > 0) {
            long position = extractorInput.getPosition() - this.pendingBytes;
            this.pendingBytes -= i;
            this.trackOutput.sampleMetadata(this.wavHeader.getTimeUs(position), 1, i, this.pendingBytes, null);
        }
        return sampleData == -1 ? -1 : 0;
    }

    @Override // com.google.android.exoplayer.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    @Override // com.google.android.exoplayer.extractor.SeekMap
    public long getPosition(long j) {
        return this.wavHeader.getPosition(j);
    }
}
