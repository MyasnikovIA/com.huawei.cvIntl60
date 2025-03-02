package com.google.android.exoplayer;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.PriorityHandlerThread;
import com.google.android.exoplayer.util.TraceUtil;
import com.google.android.exoplayer.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
final class ExoPlayerImplInternal implements Handler.Callback {
    private static final int IDLE_INTERVAL_MS = 1000;
    private static final int MSG_CUSTOM = 9;
    private static final int MSG_DO_SOME_WORK = 7;
    public static final int MSG_ERROR = 4;
    private static final int MSG_INCREMENTAL_PREPARE = 2;
    private static final int MSG_PREPARE = 1;
    public static final int MSG_PREPARED = 1;
    private static final int MSG_RELEASE = 5;
    private static final int MSG_SEEK_TO = 6;
    private static final int MSG_SET_PLAY_WHEN_READY = 3;
    public static final int MSG_SET_PLAY_WHEN_READY_ACK = 3;
    private static final int MSG_SET_RENDERER_SELECTED_TRACK = 8;
    public static final int MSG_STATE_CHANGED = 2;
    private static final int MSG_STOP = 4;
    private static final int PREPARE_INTERVAL_MS = 10;
    private static final int RENDERING_INTERVAL_MS = 10;
    private static final String TAG = "ExoPlayerImplInternal";
    private long elapsedRealtimeUs;
    private final List<TrackRenderer> enabledRenderers;
    private final Handler eventHandler;
    private final Handler handler;
    private long lastSeekPositionMs;
    private final long minBufferUs;
    private final long minRebufferUs;
    private boolean playWhenReady;
    private volatile long positionUs;
    private boolean rebuffering;
    private boolean released;
    private MediaClock rendererMediaClock;
    private TrackRenderer rendererMediaClockSource;
    private TrackRenderer[] renderers;
    private final int[] selectedTrackIndices;
    private final MediaFormat[][] trackFormats;
    private int customMessagesSent = 0;
    private int customMessagesProcessed = 0;
    private int state = 1;
    private volatile long durationUs = -1;
    private volatile long bufferedPositionUs = -1;
    private final StandaloneMediaClock standaloneMediaClock = new StandaloneMediaClock();
    private final AtomicInteger pendingSeekCount = new AtomicInteger();
    private final HandlerThread internalPlaybackThread = new PriorityHandlerThread("ExoPlayerImplInternal:Handler", -16);

    public ExoPlayerImplInternal(Handler handler, boolean z, int[] iArr, int i, int i2) {
        this.eventHandler = handler;
        this.playWhenReady = z;
        this.minBufferUs = i * 1000;
        this.minRebufferUs = i2 * 1000;
        this.selectedTrackIndices = Arrays.copyOf(iArr, iArr.length);
        this.enabledRenderers = new ArrayList(iArr.length);
        this.trackFormats = new MediaFormat[iArr.length][];
        this.internalPlaybackThread.start();
        this.handler = new Handler(this.internalPlaybackThread.getLooper(), this);
    }

    public Looper getPlaybackLooper() {
        return this.internalPlaybackThread.getLooper();
    }

    public long getCurrentPosition() {
        return this.pendingSeekCount.get() > 0 ? this.lastSeekPositionMs : this.positionUs / 1000;
    }

    public long getBufferedPosition() {
        if (this.bufferedPositionUs == -1) {
            return -1L;
        }
        return this.bufferedPositionUs / 1000;
    }

    public long getDuration() {
        if (this.durationUs == -1) {
            return -1L;
        }
        return this.durationUs / 1000;
    }

    public void prepare(TrackRenderer... trackRendererArr) {
        this.handler.obtainMessage(1, trackRendererArr).sendToTarget();
    }

    public void setPlayWhenReady(boolean z) {
        this.handler.obtainMessage(3, z ? 1 : 0, 0).sendToTarget();
    }

    public void seekTo(long j) {
        this.lastSeekPositionMs = j;
        this.pendingSeekCount.incrementAndGet();
        this.handler.obtainMessage(6, Util.getTopInt(j), Util.getBottomInt(j)).sendToTarget();
    }

    public void stop() {
        this.handler.sendEmptyMessage(4);
    }

    public void setRendererSelectedTrack(int i, int i2) {
        this.handler.obtainMessage(8, i, i2).sendToTarget();
    }

    public void sendMessage(ExoPlayer.ExoPlayerComponent exoPlayerComponent, int i, Object obj) {
        this.customMessagesSent++;
        this.handler.obtainMessage(9, i, 0, Pair.create(exoPlayerComponent, obj)).sendToTarget();
    }

    public synchronized void blockingSendMessage(ExoPlayer.ExoPlayerComponent exoPlayerComponent, int i, Object obj) {
        if (this.released) {
            Log.w(TAG, "Sent message(" + i + ") after release. Message ignored.");
        } else {
            int i2 = this.customMessagesSent;
            this.customMessagesSent = i2 + 1;
            this.handler.obtainMessage(9, i, 0, Pair.create(exoPlayerComponent, obj)).sendToTarget();
            while (this.customMessagesProcessed <= i2) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    public synchronized void release() {
        if (!this.released) {
            this.handler.sendEmptyMessage(5);
            while (!this.released) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
            this.internalPlaybackThread.quit();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            switch (message.what) {
                case 1:
                    prepareInternal((TrackRenderer[]) message.obj);
                    r0 = true;
                    break;
                case 2:
                    incrementalPrepareInternal();
                    r0 = true;
                    break;
                case 3:
                    setPlayWhenReadyInternal(message.arg1 != 0);
                    r0 = true;
                    break;
                case 4:
                    stopInternal();
                    r0 = true;
                    break;
                case 5:
                    releaseInternal();
                    r0 = true;
                    break;
                case 6:
                    seekToInternal(Util.getLong(message.arg1, message.arg2));
                    r0 = true;
                    break;
                case 7:
                    doSomeWork();
                    r0 = true;
                    break;
                case 8:
                    setRendererSelectedTrackInternal(message.arg1, message.arg2);
                    r0 = true;
                    break;
                case 9:
                    sendMessageInternal(message.arg1, message.obj);
                    r0 = true;
                    break;
            }
            return r0;
        } catch (ExoPlaybackException e) {
            Log.e(TAG, "Internal track renderer error.", e);
            this.eventHandler.obtainMessage(4, e).sendToTarget();
            stopInternal();
            return true;
        } catch (RuntimeException e2) {
            Log.e(TAG, "Internal runtime error.", e2);
            this.eventHandler.obtainMessage(4, new ExoPlaybackException((Throwable) e2, true)).sendToTarget();
            stopInternal();
            return true;
        }
    }

    private void setState(int i) {
        if (this.state != i) {
            this.state = i;
            this.eventHandler.obtainMessage(2, i, 0).sendToTarget();
        }
    }

    private void prepareInternal(TrackRenderer[] trackRendererArr) {
        resetInternal();
        this.renderers = trackRendererArr;
        Arrays.fill(this.trackFormats, (Object) null);
        setState(2);
        incrementalPrepareInternal();
    }

    private void incrementalPrepareInternal() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = true;
        for (int i = 0; i < this.renderers.length; i++) {
            TrackRenderer trackRenderer = this.renderers[i];
            if (trackRenderer.getState() == 0 && trackRenderer.prepare(this.positionUs) == 0) {
                trackRenderer.maybeThrowError();
                z = false;
            }
        }
        if (!z) {
            scheduleNextOperation(2, elapsedRealtime, 10L);
            return;
        }
        long j = 0;
        boolean z2 = true;
        boolean z3 = true;
        for (int i2 = 0; i2 < this.renderers.length; i2++) {
            TrackRenderer trackRenderer2 = this.renderers[i2];
            int trackCount = trackRenderer2.getTrackCount();
            MediaFormat[] mediaFormatArr = new MediaFormat[trackCount];
            for (int i3 = 0; i3 < trackCount; i3++) {
                mediaFormatArr[i3] = trackRenderer2.getFormat(i3);
            }
            this.trackFormats[i2] = mediaFormatArr;
            if (trackCount > 0) {
                if (j != -1) {
                    long durationUs = trackRenderer2.getDurationUs();
                    if (durationUs == -1) {
                        j = -1;
                    } else if (durationUs != -2) {
                        j = Math.max(j, durationUs);
                    }
                }
                int i4 = this.selectedTrackIndices[i2];
                if (i4 >= 0 && i4 < mediaFormatArr.length) {
                    enableRenderer(trackRenderer2, i4, false);
                    z2 = z2 && trackRenderer2.isEnded();
                    z3 = z3 && rendererReadyOrEnded(trackRenderer2);
                }
            }
        }
        this.durationUs = j;
        if (z2 && (j == -1 || j <= this.positionUs)) {
            this.state = 5;
        } else {
            this.state = z3 ? 4 : 3;
        }
        this.eventHandler.obtainMessage(1, this.state, 0, this.trackFormats).sendToTarget();
        if (this.playWhenReady && this.state == 4) {
            startRenderers();
        }
        this.handler.sendEmptyMessage(7);
    }

    private void enableRenderer(TrackRenderer trackRenderer, int i, boolean z) {
        trackRenderer.enable(i, this.positionUs, z);
        this.enabledRenderers.add(trackRenderer);
        MediaClock mediaClock = trackRenderer.getMediaClock();
        if (mediaClock != null) {
            Assertions.checkState(this.rendererMediaClock == null);
            this.rendererMediaClock = mediaClock;
            this.rendererMediaClockSource = trackRenderer;
        }
    }

    private boolean rendererReadyOrEnded(TrackRenderer trackRenderer) {
        boolean z = false;
        if (trackRenderer.isEnded()) {
            return true;
        }
        if (!trackRenderer.isReady()) {
            return false;
        }
        if (this.state == 4) {
            return true;
        }
        long durationUs = trackRenderer.getDurationUs();
        long bufferedPositionUs = trackRenderer.getBufferedPositionUs();
        long j = this.rebuffering ? this.minRebufferUs : this.minBufferUs;
        if (j <= 0 || bufferedPositionUs == -1 || bufferedPositionUs == -3 || bufferedPositionUs >= j + this.positionUs || (durationUs != -1 && durationUs != -2 && bufferedPositionUs >= durationUs)) {
            z = true;
        }
        return z;
    }

    private void setPlayWhenReadyInternal(boolean z) {
        try {
            this.rebuffering = false;
            this.playWhenReady = z;
            if (!z) {
                stopRenderers();
                updatePositionUs();
            } else if (this.state == 4) {
                startRenderers();
                this.handler.sendEmptyMessage(7);
            } else if (this.state == 3) {
                this.handler.sendEmptyMessage(7);
            }
        } finally {
            this.eventHandler.obtainMessage(3).sendToTarget();
        }
    }

    private void startRenderers() {
        int i = 0;
        this.rebuffering = false;
        this.standaloneMediaClock.start();
        while (true) {
            int i2 = i;
            if (i2 < this.enabledRenderers.size()) {
                this.enabledRenderers.get(i2).start();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private void stopRenderers() {
        this.standaloneMediaClock.stop();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.enabledRenderers.size()) {
                ensureStopped(this.enabledRenderers.get(i2));
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private void updatePositionUs() {
        if (this.rendererMediaClock != null && this.enabledRenderers.contains(this.rendererMediaClockSource) && !this.rendererMediaClockSource.isEnded()) {
            this.positionUs = this.rendererMediaClock.getPositionUs();
            this.standaloneMediaClock.setPositionUs(this.positionUs);
        } else {
            this.positionUs = this.standaloneMediaClock.getPositionUs();
        }
        this.elapsedRealtimeUs = SystemClock.elapsedRealtime() * 1000;
    }

    private void doSomeWork() {
        TraceUtil.beginSection("doSomeWork");
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.durationUs != -1 ? this.durationUs : Long.MAX_VALUE;
        boolean z = true;
        boolean z2 = true;
        updatePositionUs();
        int i = 0;
        long j2 = j;
        while (i < this.enabledRenderers.size()) {
            TrackRenderer trackRenderer = this.enabledRenderers.get(i);
            trackRenderer.doSomeWork(this.positionUs, this.elapsedRealtimeUs);
            z = z && trackRenderer.isEnded();
            boolean rendererReadyOrEnded = rendererReadyOrEnded(trackRenderer);
            if (!rendererReadyOrEnded) {
                trackRenderer.maybeThrowError();
            }
            boolean z3 = z2 && rendererReadyOrEnded;
            if (j2 != -1) {
                long durationUs = trackRenderer.getDurationUs();
                long bufferedPositionUs = trackRenderer.getBufferedPositionUs();
                if (bufferedPositionUs == -1) {
                    j2 = -1;
                } else if (bufferedPositionUs != -3 && (durationUs == -1 || durationUs == -2 || bufferedPositionUs < durationUs)) {
                    j2 = Math.min(j2, bufferedPositionUs);
                }
            }
            i++;
            z2 = z3;
        }
        this.bufferedPositionUs = j2;
        if (z && (this.durationUs == -1 || this.durationUs <= this.positionUs)) {
            setState(5);
            stopRenderers();
        } else if (this.state == 3 && z2) {
            setState(4);
            if (this.playWhenReady) {
                startRenderers();
            }
        } else if (this.state == 4 && !z2) {
            this.rebuffering = this.playWhenReady;
            setState(3);
            stopRenderers();
        }
        this.handler.removeMessages(7);
        if ((this.playWhenReady && this.state == 4) || this.state == 3) {
            scheduleNextOperation(7, elapsedRealtime, 10L);
        } else if (!this.enabledRenderers.isEmpty()) {
            scheduleNextOperation(7, elapsedRealtime, 1000L);
        }
        TraceUtil.endSection();
    }

    private void scheduleNextOperation(int i, long j, long j2) {
        long elapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (elapsedRealtime <= 0) {
            this.handler.sendEmptyMessage(i);
        } else {
            this.handler.sendEmptyMessageDelayed(i, elapsedRealtime);
        }
    }

    private void seekToInternal(long j) {
        try {
            if (j != this.positionUs / 1000) {
                this.rebuffering = false;
                this.positionUs = j * 1000;
                this.standaloneMediaClock.stop();
                this.standaloneMediaClock.setPositionUs(this.positionUs);
                if (this.state != 1 && this.state != 2) {
                    for (int i = 0; i < this.enabledRenderers.size(); i++) {
                        TrackRenderer trackRenderer = this.enabledRenderers.get(i);
                        ensureStopped(trackRenderer);
                        trackRenderer.seekTo(this.positionUs);
                    }
                    setState(3);
                    this.handler.sendEmptyMessage(7);
                }
            }
        } finally {
            this.pendingSeekCount.decrementAndGet();
        }
    }

    private void stopInternal() {
        resetInternal();
        setState(1);
    }

    private void releaseInternal() {
        resetInternal();
        setState(1);
        synchronized (this) {
            this.released = true;
            notifyAll();
        }
    }

    private void resetInternal() {
        this.handler.removeMessages(7);
        this.handler.removeMessages(2);
        this.rebuffering = false;
        this.standaloneMediaClock.stop();
        if (this.renderers != null) {
            for (int i = 0; i < this.renderers.length; i++) {
                TrackRenderer trackRenderer = this.renderers[i];
                stopAndDisable(trackRenderer);
                release(trackRenderer);
            }
            this.renderers = null;
            this.rendererMediaClock = null;
            this.rendererMediaClockSource = null;
            this.enabledRenderers.clear();
        }
    }

    private void stopAndDisable(TrackRenderer trackRenderer) {
        try {
            ensureDisabled(trackRenderer);
        } catch (ExoPlaybackException e) {
            Log.e(TAG, "Stop failed.", e);
        } catch (RuntimeException e2) {
            Log.e(TAG, "Stop failed.", e2);
        }
    }

    private void release(TrackRenderer trackRenderer) {
        try {
            trackRenderer.release();
        } catch (ExoPlaybackException e) {
            Log.e(TAG, "Release failed.", e);
        } catch (RuntimeException e2) {
            Log.e(TAG, "Release failed.", e2);
        }
    }

    private <T> void sendMessageInternal(int i, Object obj) {
        try {
            Pair pair = (Pair) obj;
            ((ExoPlayer.ExoPlayerComponent) pair.first).handleMessage(i, pair.second);
            if (this.state != 1 && this.state != 2) {
                this.handler.sendEmptyMessage(7);
            }
            synchronized (this) {
                this.customMessagesProcessed++;
                notifyAll();
            }
        } catch (Throwable th) {
            synchronized (this) {
                this.customMessagesProcessed++;
                notifyAll();
                throw th;
            }
        }
    }

    private void setRendererSelectedTrackInternal(int i, int i2) {
        TrackRenderer trackRenderer;
        int state;
        if (this.selectedTrackIndices[i] != i2) {
            this.selectedTrackIndices[i] = i2;
            if (this.state != 1 && this.state != 2 && (state = (trackRenderer = this.renderers[i]).getState()) != 0 && state != -1 && trackRenderer.getTrackCount() != 0) {
                boolean z = state == 2 || state == 3;
                boolean z2 = i2 >= 0 && i2 < this.trackFormats[i].length;
                if (z) {
                    if (!z2 && trackRenderer == this.rendererMediaClockSource) {
                        this.standaloneMediaClock.setPositionUs(this.rendererMediaClock.getPositionUs());
                    }
                    ensureDisabled(trackRenderer);
                    this.enabledRenderers.remove(trackRenderer);
                }
                if (z2) {
                    boolean z3 = this.playWhenReady && this.state == 4;
                    enableRenderer(trackRenderer, i2, !z && z3);
                    if (z3) {
                        trackRenderer.start();
                    }
                    this.handler.sendEmptyMessage(7);
                }
            }
        }
    }

    private void ensureStopped(TrackRenderer trackRenderer) {
        if (trackRenderer.getState() == 3) {
            trackRenderer.stop();
        }
    }

    private void ensureDisabled(TrackRenderer trackRenderer) {
        ensureStopped(trackRenderer);
        if (trackRenderer.getState() == 2) {
            trackRenderer.disable();
            if (trackRenderer == this.rendererMediaClockSource) {
                this.rendererMediaClock = null;
                this.rendererMediaClockSource = null;
            }
        }
    }
}
