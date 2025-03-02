package com.google.android.exoplayer.upstream;

/* loaded from: classes.dex */
public interface BandwidthMeter extends TransferListener {
    public static final long NO_ESTIMATE = -1;

    public interface EventListener {
        void onBandwidthSample(int i, long j, long j2);
    }

    long getBitrateEstimate();
}
