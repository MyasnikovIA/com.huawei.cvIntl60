package com.google.android.exoplayer;

import com.google.android.exoplayer.MediaCodecUtil;
import com.google.android.exoplayer.SampleSource;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class SampleSourceTrackRenderer extends TrackRenderer {
    private long durationUs;
    private SampleSource.SampleSourceReader enabledSource;
    private int enabledSourceTrackIndex;
    private int[] handledSourceIndices;
    private int[] handledSourceTrackIndices;
    private final SampleSource.SampleSourceReader[] sources;

    protected abstract void doSomeWork(long j, long j2, boolean z);

    protected abstract boolean handlesTrack(MediaFormat mediaFormat);

    protected abstract void onDiscontinuity(long j);

    public SampleSourceTrackRenderer(SampleSource... sampleSourceArr) {
        this.sources = new SampleSource.SampleSourceReader[sampleSourceArr.length];
        for (int i = 0; i < sampleSourceArr.length; i++) {
            this.sources[i] = sampleSourceArr[i].register();
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected final boolean doPrepare(long j) {
        boolean z = true;
        for (int i = 0; i < this.sources.length; i++) {
            z &= this.sources[i].prepare(j);
        }
        if (!z) {
            return false;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.sources.length; i3++) {
            i2 += this.sources[i3].getTrackCount();
        }
        long j2 = 0;
        int i4 = 0;
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        int length = this.sources.length;
        for (int i5 = 0; i5 < length; i5++) {
            SampleSource.SampleSourceReader sampleSourceReader = this.sources[i5];
            int trackCount = sampleSourceReader.getTrackCount();
            for (int i6 = 0; i6 < trackCount; i6++) {
                MediaFormat format = sampleSourceReader.getFormat(i6);
                try {
                    if (handlesTrack(format)) {
                        iArr[i4] = i5;
                        iArr2[i4] = i6;
                        i4++;
                        if (j2 != -1) {
                            long j3 = format.durationUs;
                            if (j3 == -1) {
                                j2 = -1;
                            } else if (j3 != -2) {
                                j2 = Math.max(j2, j3);
                            }
                        }
                    }
                } catch (MediaCodecUtil.DecoderQueryException e) {
                    throw new ExoPlaybackException(e);
                }
            }
        }
        this.durationUs = j2;
        this.handledSourceIndices = Arrays.copyOf(iArr, i4);
        this.handledSourceTrackIndices = Arrays.copyOf(iArr2, i4);
        return true;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onEnabled(int i, long j, boolean z) {
        long shiftInputPosition = shiftInputPosition(j);
        this.enabledSource = this.sources[this.handledSourceIndices[i]];
        this.enabledSourceTrackIndex = this.handledSourceTrackIndices[i];
        this.enabledSource.enable(this.enabledSourceTrackIndex, shiftInputPosition);
        onDiscontinuity(shiftInputPosition);
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected final void seekTo(long j) {
        long shiftInputPosition = shiftInputPosition(j);
        this.enabledSource.seekToUs(shiftInputPosition);
        checkForDiscontinuity(shiftInputPosition);
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected final void doSomeWork(long j, long j2) {
        long shiftInputPosition = shiftInputPosition(j);
        doSomeWork(checkForDiscontinuity(shiftInputPosition), j2, this.enabledSource.continueBuffering(this.enabledSourceTrackIndex, shiftInputPosition));
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getBufferedPositionUs() {
        return this.enabledSource.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void maybeThrowError() {
        if (this.enabledSource != null) {
            maybeThrowError(this.enabledSource);
            return;
        }
        int length = this.sources.length;
        for (int i = 0; i < length; i++) {
            maybeThrowError(this.sources[i]);
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onDisabled() {
        this.enabledSource.disable(this.enabledSourceTrackIndex);
        this.enabledSource = null;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onReleased() {
        int length = this.sources.length;
        for (int i = 0; i < length; i++) {
            this.sources[i].release();
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected final int getTrackCount() {
        return this.handledSourceTrackIndices.length;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected final MediaFormat getFormat(int i) {
        return this.sources[this.handledSourceIndices[i]].getFormat(this.handledSourceTrackIndices[i]);
    }

    protected long shiftInputPosition(long j) {
        return j;
    }

    protected final int readSource(long j, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        return this.enabledSource.readData(this.enabledSourceTrackIndex, j, mediaFormatHolder, sampleHolder);
    }

    private long checkForDiscontinuity(long j) {
        long readDiscontinuity = this.enabledSource.readDiscontinuity(this.enabledSourceTrackIndex);
        if (readDiscontinuity != Long.MIN_VALUE) {
            onDiscontinuity(readDiscontinuity);
            return readDiscontinuity;
        }
        return j;
    }

    private void maybeThrowError(SampleSource.SampleSourceReader sampleSourceReader) {
        try {
            sampleSourceReader.maybeThrowError();
        } catch (IOException e) {
            throw new ExoPlaybackException(e);
        }
    }
}
