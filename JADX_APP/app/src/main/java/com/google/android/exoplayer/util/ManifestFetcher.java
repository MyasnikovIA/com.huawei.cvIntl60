package com.google.android.exoplayer.util;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.upstream.UriDataSource;
import com.google.android.exoplayer.upstream.UriLoadable;
import java.io.IOException;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public class ManifestFetcher<T> implements Loader.Callback {
    private long currentLoadStartTimestamp;
    private UriLoadable<T> currentLoadable;
    private int enabledCount;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private ManifestIOException loadException;
    private int loadExceptionCount;
    private long loadExceptionTimestamp;
    private Loader loader;
    private volatile T manifest;
    private volatile long manifestLoadCompleteTimestamp;
    private volatile long manifestLoadStartTimestamp;
    volatile String manifestUri;
    private final UriLoadable.Parser<T> parser;
    private final UriDataSource uriDataSource;

    public interface EventListener {
        void onManifestError(IOException iOException);

        void onManifestRefreshStarted();

        void onManifestRefreshed();
    }

    public interface ManifestCallback<T> {
        void onSingleManifest(T t);

        void onSingleManifestError(IOException iOException);
    }

    public interface RedirectingManifest {
        String getNextManifestUri();
    }

    public static final class ManifestIOException extends IOException {
        public ManifestIOException(Throwable th) {
            super(th);
        }
    }

    public ManifestFetcher(String str, UriDataSource uriDataSource, UriLoadable.Parser<T> parser) {
        this(str, uriDataSource, parser, null, null);
    }

    public ManifestFetcher(String str, UriDataSource uriDataSource, UriLoadable.Parser<T> parser, Handler handler, EventListener eventListener) {
        this.parser = parser;
        this.manifestUri = str;
        this.uriDataSource = uriDataSource;
        this.eventHandler = handler;
        this.eventListener = eventListener;
    }

    public void updateManifestUri(String str) {
        this.manifestUri = str;
    }

    public void singleLoad(Looper looper, ManifestCallback<T> manifestCallback) {
        new SingleFetchHelper(new UriLoadable(this.manifestUri, this.uriDataSource, this.parser), looper, manifestCallback).startLoading();
    }

    public T getManifest() {
        return this.manifest;
    }

    public long getManifestLoadStartTimestamp() {
        return this.manifestLoadStartTimestamp;
    }

    public long getManifestLoadCompleteTimestamp() {
        return this.manifestLoadCompleteTimestamp;
    }

    public void maybeThrowError() {
        if (this.loadException == null || this.loadExceptionCount <= 1) {
        } else {
            throw this.loadException;
        }
    }

    public void enable() {
        int i = this.enabledCount;
        this.enabledCount = i + 1;
        if (i == 0) {
            this.loadExceptionCount = 0;
            this.loadException = null;
        }
    }

    public void disable() {
        int i = this.enabledCount - 1;
        this.enabledCount = i;
        if (i == 0 && this.loader != null) {
            this.loader.release();
            this.loader = null;
        }
    }

    public void requestRefresh() {
        if (this.loadException == null || android.os.SystemClock.elapsedRealtime() >= this.loadExceptionTimestamp + getRetryDelayMillis(this.loadExceptionCount)) {
            if (this.loader == null) {
                this.loader = new Loader("manifestLoader");
            }
            if (!this.loader.isLoading()) {
                this.currentLoadable = new UriLoadable<>(this.manifestUri, this.uriDataSource, this.parser);
                this.currentLoadStartTimestamp = android.os.SystemClock.elapsedRealtime();
                this.loader.startLoading(this.currentLoadable, this);
                notifyManifestRefreshStarted();
            }
        }
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCompleted(Loader.Loadable loadable) {
        if (this.currentLoadable == loadable) {
            this.manifest = this.currentLoadable.getResult();
            this.manifestLoadStartTimestamp = this.currentLoadStartTimestamp;
            this.manifestLoadCompleteTimestamp = android.os.SystemClock.elapsedRealtime();
            this.loadExceptionCount = 0;
            this.loadException = null;
            if (this.manifest instanceof RedirectingManifest) {
                String nextManifestUri = ((RedirectingManifest) this.manifest).getNextManifestUri();
                if (!TextUtils.isEmpty(nextManifestUri)) {
                    this.manifestUri = nextManifestUri;
                }
            }
            notifyManifestRefreshed();
        }
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCanceled(Loader.Loadable loadable) {
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadError(Loader.Loadable loadable, IOException iOException) {
        if (this.currentLoadable == loadable) {
            this.loadExceptionCount++;
            this.loadExceptionTimestamp = android.os.SystemClock.elapsedRealtime();
            this.loadException = new ManifestIOException(iOException);
            notifyManifestError(this.loadException);
        }
    }

    void onSingleFetchCompleted(T t, long j) {
        this.manifest = t;
        this.manifestLoadStartTimestamp = j;
        this.manifestLoadCompleteTimestamp = android.os.SystemClock.elapsedRealtime();
    }

    private long getRetryDelayMillis(long j) {
        return Math.min((j - 1) * 1000, HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
    }

    /* renamed from: com.google.android.exoplayer.util.ManifestFetcher$1 */
    class RunnableC12211 implements Runnable {
        RunnableC12211() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ManifestFetcher.this.eventListener.onManifestRefreshStarted();
        }
    }

    private void notifyManifestRefreshStarted() {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.util.ManifestFetcher.1
                RunnableC12211() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    ManifestFetcher.this.eventListener.onManifestRefreshStarted();
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.util.ManifestFetcher$2 */
    class RunnableC12222 implements Runnable {
        RunnableC12222() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ManifestFetcher.this.eventListener.onManifestRefreshed();
        }
    }

    private void notifyManifestRefreshed() {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.util.ManifestFetcher.2
                RunnableC12222() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    ManifestFetcher.this.eventListener.onManifestRefreshed();
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer.util.ManifestFetcher$3 */
    class RunnableC12233 implements Runnable {
        final /* synthetic */ IOException val$e;

        RunnableC12233(IOException iOException) {
            iOException = iOException;
        }

        @Override // java.lang.Runnable
        public void run() {
            ManifestFetcher.this.eventListener.onManifestError(iOException);
        }
    }

    private void notifyManifestError(IOException iOException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.util.ManifestFetcher.3
                final /* synthetic */ IOException val$e;

                RunnableC12233(IOException iOException2) {
                    iOException = iOException2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ManifestFetcher.this.eventListener.onManifestError(iOException);
                }
            });
        }
    }

    private class SingleFetchHelper implements Loader.Callback {
        private final Looper callbackLooper;
        private long loadStartTimestamp;
        private final UriLoadable<T> singleUseLoadable;
        private final Loader singleUseLoader = new Loader("manifestLoader:single");
        private final ManifestCallback<T> wrappedCallback;

        public SingleFetchHelper(UriLoadable<T> uriLoadable, Looper looper, ManifestCallback<T> manifestCallback) {
            this.singleUseLoadable = uriLoadable;
            this.callbackLooper = looper;
            this.wrappedCallback = manifestCallback;
        }

        public void startLoading() {
            this.loadStartTimestamp = android.os.SystemClock.elapsedRealtime();
            this.singleUseLoader.startLoading(this.callbackLooper, this.singleUseLoadable, this);
        }

        @Override // com.google.android.exoplayer.upstream.Loader.Callback
        public void onLoadCompleted(Loader.Loadable loadable) {
            try {
                T result = this.singleUseLoadable.getResult();
                ManifestFetcher.this.onSingleFetchCompleted(result, this.loadStartTimestamp);
                this.wrappedCallback.onSingleManifest(result);
            } finally {
                releaseLoader();
            }
        }

        @Override // com.google.android.exoplayer.upstream.Loader.Callback
        public void onLoadCanceled(Loader.Loadable loadable) {
            try {
                this.wrappedCallback.onSingleManifestError(new ManifestIOException(new CancellationException()));
            } finally {
                releaseLoader();
            }
        }

        @Override // com.google.android.exoplayer.upstream.Loader.Callback
        public void onLoadError(Loader.Loadable loadable, IOException iOException) {
            try {
                this.wrappedCallback.onSingleManifestError(iOException);
            } finally {
                releaseLoader();
            }
        }

        private void releaseLoader() {
            this.singleUseLoader.release();
        }
    }
}
