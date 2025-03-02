package com.google.android.exoplayer;

import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.util.Assertions;

/* loaded from: classes.dex */
public abstract class TrackRenderer implements ExoPlayer.ExoPlayerComponent {
    public static final long END_OF_TRACK_US = -3;
    public static final long MATCH_LONGEST_US = -2;
    protected static final int STATE_ENABLED = 2;
    protected static final int STATE_PREPARED = 1;
    protected static final int STATE_RELEASED = -1;
    protected static final int STATE_STARTED = 3;
    protected static final int STATE_UNPREPARED = 0;
    public static final long UNKNOWN_TIME_US = -1;
    private int state;

    protected abstract boolean doPrepare(long j);

    protected abstract void doSomeWork(long j, long j2);

    protected abstract long getBufferedPositionUs();

    protected abstract long getDurationUs();

    protected abstract MediaFormat getFormat(int i);

    protected abstract int getTrackCount();

    protected abstract boolean isEnded();

    protected abstract boolean isReady();

    protected abstract void maybeThrowError();

    protected abstract void seekTo(long j);

    protected MediaClock getMediaClock() {
        return null;
    }

    protected final int getState() {
        return this.state;
    }

    final int prepare(long j) {
        Assertions.checkState(this.state == 0);
        this.state = doPrepare(j) ? 1 : 0;
        return this.state;
    }

    final void enable(int i, long j, boolean z) {
        Assertions.checkState(this.state == 1);
        this.state = 2;
        onEnabled(i, j, z);
    }

    protected void onEnabled(int i, long j, boolean z) {
    }

    final void start() {
        Assertions.checkState(this.state == 2);
        this.state = 3;
        onStarted();
    }

    protected void onStarted() {
    }

    final void stop() {
        Assertions.checkState(this.state == 3);
        this.state = 2;
        onStopped();
    }

    protected void onStopped() {
    }

    final void disable() {
        Assertions.checkState(this.state == 2);
        this.state = 1;
        onDisabled();
    }

    protected void onDisabled() {
    }

    final void release() {
        Assertions.checkState((this.state == 2 || this.state == 3 || this.state == -1) ? false : true);
        this.state = -1;
        onReleased();
    }

    protected void onReleased() {
    }

    @Override // com.google.android.exoplayer.ExoPlayer.ExoPlayerComponent
    public void handleMessage(int i, Object obj) {
    }
}
