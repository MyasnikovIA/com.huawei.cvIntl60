package com.google.android.exoplayer;

import android.os.Handler;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.NetworkLock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class DefaultLoadControl implements LoadControl {
    private static final int ABOVE_HIGH_WATERMARK = 0;
    private static final int BELOW_LOW_WATERMARK = 2;
    private static final int BETWEEN_WATERMARKS = 1;
    public static final float DEFAULT_HIGH_BUFFER_LOAD = 0.8f;
    public static final int DEFAULT_HIGH_WATERMARK_MS = 30000;
    public static final float DEFAULT_LOW_BUFFER_LOAD = 0.2f;
    public static final int DEFAULT_LOW_WATERMARK_MS = 15000;
    private final Allocator allocator;
    private int bufferState;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private boolean fillingBuffers;
    private final float highBufferLoad;
    private final long highWatermarkUs;
    private final HashMap<Object, LoaderState> loaderStates;
    private final List<Object> loaders;
    private final float lowBufferLoad;
    private final long lowWatermarkUs;
    private long maxLoadStartPositionUs;
    private boolean streamingPrioritySet;
    private int targetBufferSize;

    public interface EventListener {
        void onLoadingChanged(boolean z);
    }

    public DefaultLoadControl(Allocator allocator) {
        this(allocator, null, null);
    }

    public DefaultLoadControl(Allocator allocator, Handler handler, EventListener eventListener) {
        this(allocator, handler, eventListener, DEFAULT_LOW_WATERMARK_MS, DEFAULT_HIGH_WATERMARK_MS, 0.2f, 0.8f);
    }

    public DefaultLoadControl(Allocator allocator, Handler handler, EventListener eventListener, int i, int i2, float f, float f2) {
        this.allocator = allocator;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.loaders = new ArrayList();
        this.loaderStates = new HashMap<>();
        this.lowWatermarkUs = i * 1000;
        this.highWatermarkUs = i2 * 1000;
        this.lowBufferLoad = f;
        this.highBufferLoad = f2;
    }

    @Override // com.google.android.exoplayer.LoadControl
    public void register(Object obj, int i) {
        this.loaders.add(obj);
        this.loaderStates.put(obj, new LoaderState(i));
        this.targetBufferSize += i;
    }

    @Override // com.google.android.exoplayer.LoadControl
    public void unregister(Object obj) {
        this.loaders.remove(obj);
        this.targetBufferSize -= this.loaderStates.remove(obj).bufferSizeContribution;
        updateControlState();
    }

    @Override // com.google.android.exoplayer.LoadControl
    public void trimAllocator() {
        this.allocator.trim(this.targetBufferSize);
    }

    @Override // com.google.android.exoplayer.LoadControl
    public Allocator getAllocator() {
        return this.allocator;
    }

    @Override // com.google.android.exoplayer.LoadControl
    public boolean update(Object obj, long j, long j2, boolean z) {
        int loaderBufferState = getLoaderBufferState(j, j2);
        LoaderState loaderState = this.loaderStates.get(obj);
        boolean z2 = (loaderState.bufferState == loaderBufferState && loaderState.nextLoadPositionUs == j2 && loaderState.loading == z) ? false : true;
        if (z2) {
            loaderState.bufferState = loaderBufferState;
            loaderState.nextLoadPositionUs = j2;
            loaderState.loading = z;
        }
        int totalBytesAllocated = this.allocator.getTotalBytesAllocated();
        int bufferState = getBufferState(totalBytesAllocated);
        boolean z3 = this.bufferState != bufferState;
        if (z3) {
            this.bufferState = bufferState;
        }
        if (z2 || z3) {
            updateControlState();
        }
        return totalBytesAllocated < this.targetBufferSize && j2 != -1 && j2 <= this.maxLoadStartPositionUs;
    }

    private int getLoaderBufferState(long j, long j2) {
        if (j2 == -1) {
            return 0;
        }
        long j3 = j2 - j;
        if (j3 <= this.highWatermarkUs) {
            return j3 < this.lowWatermarkUs ? 2 : 1;
        }
        return 0;
    }

    private int getBufferState(int i) {
        float f = i / this.targetBufferSize;
        if (f > this.highBufferLoad) {
            return 0;
        }
        return f < this.lowBufferLoad ? 2 : 1;
    }

    private void updateControlState() {
        int i = this.bufferState;
        boolean z = false;
        boolean z2 = false;
        for (int i2 = 0; i2 < this.loaders.size(); i2++) {
            LoaderState loaderState = this.loaderStates.get(this.loaders.get(i2));
            z2 |= loaderState.loading;
            z |= loaderState.nextLoadPositionUs != -1;
            i = Math.max(i, loaderState.bufferState);
        }
        this.fillingBuffers = !this.loaders.isEmpty() && (z2 || z) && (i == 2 || (i == 1 && this.fillingBuffers));
        if (this.fillingBuffers && !this.streamingPrioritySet) {
            NetworkLock.instance.add(0);
            this.streamingPrioritySet = true;
            notifyLoadingChanged(true);
        } else if (!this.fillingBuffers && this.streamingPrioritySet && !z2) {
            NetworkLock.instance.remove(0);
            this.streamingPrioritySet = false;
            notifyLoadingChanged(false);
        }
        this.maxLoadStartPositionUs = -1L;
        if (this.fillingBuffers) {
            for (int i3 = 0; i3 < this.loaders.size(); i3++) {
                long j = this.loaderStates.get(this.loaders.get(i3)).nextLoadPositionUs;
                if (j != -1 && (this.maxLoadStartPositionUs == -1 || j < this.maxLoadStartPositionUs)) {
                    this.maxLoadStartPositionUs = j;
                }
            }
        }
    }

    /* renamed from: com.google.android.exoplayer.DefaultLoadControl$1 */
    class RunnableC11681 implements Runnable {
        final /* synthetic */ boolean val$loading;

        RunnableC11681(boolean z) {
            z = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            DefaultLoadControl.this.eventListener.onLoadingChanged(z);
        }
    }

    private void notifyLoadingChanged(boolean z) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.DefaultLoadControl.1
                final /* synthetic */ boolean val$loading;

                RunnableC11681(boolean z2) {
                    z = z2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    DefaultLoadControl.this.eventListener.onLoadingChanged(z);
                }
            });
        }
    }

    private static class LoaderState {
        public final int bufferSizeContribution;
        public int bufferState = 0;
        public boolean loading = false;
        public long nextLoadPositionUs = -1;

        public LoaderState(int i) {
            this.bufferSizeContribution = i;
        }
    }
}
