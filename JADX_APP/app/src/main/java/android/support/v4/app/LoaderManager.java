package android.support.v4.app;

import android.arch.lifecycle.InterfaceC0138e;
import android.arch.lifecycle.InterfaceC0150q;
import android.os.Bundle;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public abstract class LoaderManager {

    public interface LoaderCallbacks<D> {
        @NonNull
        @MainThread
        Loader<D> onCreateLoader(int i, @Nullable Bundle bundle);

        @MainThread
        void onLoadFinished(@NonNull Loader<D> loader, D d);

        @MainThread
        void onLoaderReset(@NonNull Loader<D> loader);
    }

    @MainThread
    public abstract void destroyLoader(int i);

    @Deprecated
    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    @Nullable
    public abstract <D> Loader<D> getLoader(int i);

    @NonNull
    @MainThread
    public abstract <D> Loader<D> initLoader(int i, @Nullable Bundle bundle, @NonNull LoaderCallbacks<D> loaderCallbacks);

    public abstract void markForRedelivery();

    @NonNull
    @MainThread
    public abstract <D> Loader<D> restartLoader(int i, @Nullable Bundle bundle, @NonNull LoaderCallbacks<D> loaderCallbacks);

    @NonNull
    public static <T extends InterfaceC0138e & InterfaceC0150q> LoaderManager getInstance(@NonNull T t) {
        return new LoaderManagerImpl(t, t.getViewModelStore());
    }

    public static void enableDebugLogging(boolean z) {
        LoaderManagerImpl.DEBUG = z;
    }

    public boolean hasRunningLoaders() {
        return false;
    }
}
