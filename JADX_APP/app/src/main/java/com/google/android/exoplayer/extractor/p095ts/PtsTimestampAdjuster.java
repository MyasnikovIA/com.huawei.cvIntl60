package com.google.android.exoplayer.extractor.p095ts;

import com.google.android.exoplayer.C1167C;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes.dex */
public final class PtsTimestampAdjuster {
    public static final long DO_NOT_OFFSET = Long.MAX_VALUE;
    private static final long MAX_PTS_PLUS_ONE = 8589934592L;
    private final long firstSampleTimestampUs;
    private volatile long lastPts = Long.MIN_VALUE;
    private long timestampOffsetUs;

    public PtsTimestampAdjuster(long j) {
        this.firstSampleTimestampUs = j;
    }

    public void reset() {
        this.lastPts = Long.MIN_VALUE;
    }

    public boolean isInitialized() {
        return this.lastPts != Long.MIN_VALUE;
    }

    public long adjustTimestamp(long j) {
        long j2;
        if (this.lastPts != Long.MIN_VALUE) {
            long j3 = (this.lastPts + IjkMediaMeta.AV_CH_WIDE_RIGHT) / 8589934592L;
            j2 = ((j3 - 1) * 8589934592L) + j;
            long j4 = (j3 * 8589934592L) + j;
            if (Math.abs(j2 - this.lastPts) >= Math.abs(j4 - this.lastPts)) {
                j2 = j4;
            }
        } else {
            j2 = j;
        }
        long ptsToUs = ptsToUs(j2);
        if (this.firstSampleTimestampUs != Long.MAX_VALUE && this.lastPts == Long.MIN_VALUE) {
            this.timestampOffsetUs = this.firstSampleTimestampUs - ptsToUs;
        }
        this.lastPts = j2;
        return this.timestampOffsetUs + ptsToUs;
    }

    public static long ptsToUs(long j) {
        return (C1167C.MICROS_PER_SECOND * j) / 90000;
    }

    public static long usToPts(long j) {
        return (90000 * j) / C1167C.MICROS_PER_SECOND;
    }
}
