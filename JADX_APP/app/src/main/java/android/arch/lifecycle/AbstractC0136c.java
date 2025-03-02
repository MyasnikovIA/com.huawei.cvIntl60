package android.arch.lifecycle;

import android.support.annotation.MainThread;
import android.support.annotation.NonNull;

/* renamed from: android.arch.lifecycle.c */
/* loaded from: classes.dex */
public abstract class AbstractC0136c {

    /* renamed from: android.arch.lifecycle.c$a */
    public enum a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY
    }

    @NonNull
    @MainThread
    /* renamed from: a */
    public abstract b mo1311a();

    @MainThread
    /* renamed from: a */
    public abstract void mo1312a(@NonNull InterfaceC0137d interfaceC0137d);

    @MainThread
    /* renamed from: b */
    public abstract void mo1313b(@NonNull InterfaceC0137d interfaceC0137d);

    /* renamed from: android.arch.lifecycle.c$b */
    public enum b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        /* renamed from: a */
        public boolean m1314a(@NonNull b bVar) {
            return compareTo(bVar) >= 0;
        }
    }
}
