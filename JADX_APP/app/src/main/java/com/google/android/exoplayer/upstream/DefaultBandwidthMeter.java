package com.google.android.exoplayer.upstream;

import android.os.Handler;
import com.google.android.exoplayer.upstream.BandwidthMeter;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Clock;
import com.google.android.exoplayer.util.SlidingPercentile;
import com.google.android.exoplayer.util.SystemClock;

/* loaded from: classes.dex */
public final class DefaultBandwidthMeter implements BandwidthMeter {
    public static final int DEFAULT_MAX_WEIGHT = 2000;
    private long bitrateEstimate;
    private long bytesAccumulator;
    private final Clock clock;
    private final Handler eventHandler;
    private final BandwidthMeter.EventListener eventListener;
    private final SlidingPercentile slidingPercentile;
    private long startTimeMs;
    private int streamCount;

    public DefaultBandwidthMeter() {
        this(null, null);
    }

    public DefaultBandwidthMeter(Handler handler, BandwidthMeter.EventListener eventListener) {
        this(handler, eventListener, new SystemClock());
    }

    public DefaultBandwidthMeter(Handler handler, BandwidthMeter.EventListener eventListener, Clock clock) {
        this(handler, eventListener, clock, 2000);
    }

    public DefaultBandwidthMeter(Handler handler, BandwidthMeter.EventListener eventListener, int i) {
        this(handler, eventListener, new SystemClock(), i);
    }

    public DefaultBandwidthMeter(Handler handler, BandwidthMeter.EventListener eventListener, Clock clock, int i) {
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.clock = clock;
        this.slidingPercentile = new SlidingPercentile(i);
        this.bitrateEstimate = -1L;
    }

    @Override // com.google.android.exoplayer.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        return this.bitrateEstimate;
    }

    @Override // com.google.android.exoplayer.upstream.TransferListener
    public synchronized void onTransferStart() {
        if (this.streamCount == 0) {
            this.startTimeMs = this.clock.elapsedRealtime();
        }
        this.streamCount++;
    }

    @Override // com.google.android.exoplayer.upstream.TransferListener
    public synchronized void onBytesTransferred(int i) {
        this.bytesAccumulator += i;
    }

    @Override // com.google.android.exoplayer.upstream.TransferListener
    public synchronized void onTransferEnd() {
        Assertions.checkState(this.streamCount > 0);
        long elapsedRealtime = this.clock.elapsedRealtime();
        int i = (int) (elapsedRealtime - this.startTimeMs);
        if (i > 0) {
            this.slidingPercentile.addSample((int) Math.sqrt(this.bytesAccumulator), (this.bytesAccumulator * 8000) / i);
            float percentile = this.slidingPercentile.getPercentile(0.5f);
            this.bitrateEstimate = Float.isNaN(percentile) ? -1L : (long) percentile;
            notifyBandwidthSample(i, this.bytesAccumulator, this.bitrateEstimate);
        }
        this.streamCount--;
        if (this.streamCount > 0) {
            this.startTimeMs = elapsedRealtime;
        }
        this.bytesAccumulator = 0L;
    }

    /* renamed from: com.google.android.exoplayer.upstream.DefaultBandwidthMeter$1 */
    class RunnableC12171 implements Runnable {
        final /* synthetic */ long val$bitrate;
        final /* synthetic */ long val$bytes;
        final /* synthetic */ int val$elapsedMs;

        RunnableC12171(int i, long j, long j2) {
            i = i;
            j = j;
            j2 = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            DefaultBandwidthMeter.this.eventListener.onBandwidthSample(i, j, j2);
        }
    }

    private void notifyBandwidthSample(int i, long j, long j2) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.upstream.DefaultBandwidthMeter.1
                final /* synthetic */ long val$bitrate;
                final /* synthetic */ long val$bytes;
                final /* synthetic */ int val$elapsedMs;

                RunnableC12171(int i2, long j3, long j22) {
                    i = i2;
                    j = j3;
                    j2 = j22;
                }

                @Override // java.lang.Runnable
                public void run() {
                    DefaultBandwidthMeter.this.eventListener.onBandwidthSample(i, j, j2);
                }
            });
        }
    }
}
