package android.arch.lifecycle;

import android.arch.lifecycle.AbstractC0136c;
import android.arch.p033a.p034a.C0125a;
import android.arch.p033a.p035b.C0129b;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class LiveData<T> {
    private static final Object NOT_SET = new Object();
    static final int START_VERSION = -1;
    private boolean mDispatchInvalidated;
    private boolean mDispatchingValue;
    private final Object mDataLock = new Object();
    private C0129b<InterfaceC0144k<T>, LiveData<T>.AbstractC0133b> mObservers = new C0129b<>();
    private int mActiveCount = 0;
    private volatile Object mData = NOT_SET;
    private volatile Object mPendingData = NOT_SET;
    private int mVersion = -1;
    private final Runnable mPostValueRunnable = new Runnable() { // from class: android.arch.lifecycle.LiveData.1
        RunnableC01311() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.mDataLock) {
                obj = LiveData.this.mPendingData;
                LiveData.this.mPendingData = LiveData.NOT_SET;
            }
            LiveData.this.setValue(obj);
        }
    };

    /* renamed from: android.arch.lifecycle.LiveData$1 */
    class RunnableC01311 implements Runnable {
        RunnableC01311() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.mDataLock) {
                obj = LiveData.this.mPendingData;
                LiveData.this.mPendingData = LiveData.NOT_SET;
            }
            LiveData.this.setValue(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void considerNotify(LiveData<T>.AbstractC0133b abstractC0133b) {
        if (abstractC0133b.f984d) {
            if (!abstractC0133b.mo1298a()) {
                abstractC0133b.m1301a(false);
            } else if (abstractC0133b.f985e < this.mVersion) {
                abstractC0133b.f985e = this.mVersion;
                abstractC0133b.f983c.onChanged(this.mData);
            }
        }
    }

    public void dispatchingValue(@Nullable LiveData<T>.AbstractC0133b abstractC0133b) {
        if (this.mDispatchingValue) {
            this.mDispatchInvalidated = true;
            return;
        }
        this.mDispatchingValue = true;
        do {
            this.mDispatchInvalidated = false;
            if (abstractC0133b != null) {
                considerNotify(abstractC0133b);
                abstractC0133b = null;
            } else {
                C0129b<InterfaceC0144k<T>, LiveData<T>.AbstractC0133b>.d m1282c = this.mObservers.m1282c();
                while (m1282c.hasNext()) {
                    considerNotify((AbstractC0133b) m1282c.next().getValue());
                    if (this.mDispatchInvalidated) {
                        break;
                    }
                }
            }
        } while (this.mDispatchInvalidated);
        this.mDispatchingValue = false;
    }

    @MainThread
    public void observe(@NonNull InterfaceC0138e interfaceC0138e, @NonNull InterfaceC0144k<T> interfaceC0144k) {
        if (interfaceC0138e.getLifecycle().mo1311a() != AbstractC0136c.b.DESTROYED) {
            LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(interfaceC0138e, interfaceC0144k);
            LiveData<T>.AbstractC0133b mo1274a = this.mObservers.mo1274a(interfaceC0144k, lifecycleBoundObserver);
            if (mo1274a != null && !mo1274a.mo1299a(interfaceC0138e)) {
                throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
            }
            if (mo1274a == null) {
                interfaceC0138e.getLifecycle().mo1312a(lifecycleBoundObserver);
            }
        }
    }

    @MainThread
    public void observeForever(@NonNull InterfaceC0144k<T> interfaceC0144k) {
        C0132a c0132a = new C0132a(interfaceC0144k);
        LiveData<T>.AbstractC0133b mo1274a = this.mObservers.mo1274a(interfaceC0144k, c0132a);
        if (mo1274a != null && (mo1274a instanceof LifecycleBoundObserver)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (mo1274a == null) {
            c0132a.m1301a(true);
        }
    }

    @MainThread
    public void removeObserver(@NonNull InterfaceC0144k<T> interfaceC0144k) {
        assertMainThread("removeObserver");
        LiveData<T>.AbstractC0133b mo1275b = this.mObservers.mo1275b(interfaceC0144k);
        if (mo1275b != null) {
            mo1275b.mo1300b();
            mo1275b.m1301a(false);
        }
    }

    @MainThread
    public void removeObservers(@NonNull InterfaceC0138e interfaceC0138e) {
        assertMainThread("removeObservers");
        Iterator<Map.Entry<InterfaceC0144k<T>, LiveData<T>.AbstractC0133b>> it = this.mObservers.iterator();
        while (it.hasNext()) {
            Map.Entry<InterfaceC0144k<T>, LiveData<T>.AbstractC0133b> next = it.next();
            if (next.getValue().mo1299a(interfaceC0138e)) {
                removeObserver(next.getKey());
            }
        }
    }

    protected void postValue(T t) {
        boolean z;
        synchronized (this.mDataLock) {
            z = this.mPendingData == NOT_SET;
            this.mPendingData = t;
        }
        if (z) {
            C0125a.m1269a().mo1271b(this.mPostValueRunnable);
        }
    }

    @MainThread
    protected void setValue(T t) {
        assertMainThread("setValue");
        this.mVersion++;
        this.mData = t;
        dispatchingValue(null);
    }

    @Nullable
    public T getValue() {
        T t = (T) this.mData;
        if (t != NOT_SET) {
            return t;
        }
        return null;
    }

    int getVersion() {
        return this.mVersion;
    }

    protected void onActive() {
    }

    protected void onInactive() {
    }

    public boolean hasObservers() {
        return this.mObservers.m1279a() > 0;
    }

    public boolean hasActiveObservers() {
        return this.mActiveCount > 0;
    }

    class LifecycleBoundObserver extends LiveData<T>.AbstractC0133b implements GenericLifecycleObserver {

        /* renamed from: a */
        @NonNull
        final InterfaceC0138e f980a;

        LifecycleBoundObserver(InterfaceC0138e interfaceC0138e, @NonNull InterfaceC0144k<T> interfaceC0144k) {
            super(interfaceC0144k);
            this.f980a = interfaceC0138e;
        }

        @Override // android.arch.lifecycle.LiveData.AbstractC0133b
        /* renamed from: a */
        boolean mo1298a() {
            return this.f980a.getLifecycle().mo1311a().m1314a(AbstractC0136c.b.STARTED);
        }

        @Override // android.arch.lifecycle.GenericLifecycleObserver
        /* renamed from: a */
        public void mo1291a(InterfaceC0138e interfaceC0138e, AbstractC0136c.a aVar) {
            if (this.f980a.getLifecycle().mo1311a() == AbstractC0136c.b.DESTROYED) {
                LiveData.this.removeObserver(this.f983c);
            } else {
                m1301a(mo1298a());
            }
        }

        @Override // android.arch.lifecycle.LiveData.AbstractC0133b
        /* renamed from: a */
        boolean mo1299a(InterfaceC0138e interfaceC0138e) {
            return this.f980a == interfaceC0138e;
        }

        @Override // android.arch.lifecycle.LiveData.AbstractC0133b
        /* renamed from: b */
        void mo1300b() {
            this.f980a.getLifecycle().mo1313b(this);
        }
    }

    /* renamed from: android.arch.lifecycle.LiveData$b */
    private abstract class AbstractC0133b {

        /* renamed from: c */
        final InterfaceC0144k<T> f983c;

        /* renamed from: d */
        boolean f984d;

        /* renamed from: e */
        int f985e = -1;

        /* renamed from: a */
        abstract boolean mo1298a();

        AbstractC0133b(InterfaceC0144k<T> interfaceC0144k) {
            this.f983c = interfaceC0144k;
        }

        /* renamed from: a */
        boolean mo1299a(InterfaceC0138e interfaceC0138e) {
            return false;
        }

        /* renamed from: b */
        void mo1300b() {
        }

        /* renamed from: a */
        void m1301a(boolean z) {
            if (z != this.f984d) {
                this.f984d = z;
                boolean z2 = LiveData.this.mActiveCount == 0;
                LiveData liveData = LiveData.this;
                liveData.mActiveCount = (this.f984d ? 1 : -1) + liveData.mActiveCount;
                if (z2 && this.f984d) {
                    LiveData.this.onActive();
                }
                if (LiveData.this.mActiveCount == 0 && !this.f984d) {
                    LiveData.this.onInactive();
                }
                if (this.f984d) {
                    LiveData.this.dispatchingValue(this);
                }
            }
        }
    }

    /* renamed from: android.arch.lifecycle.LiveData$a */
    private class C0132a extends LiveData<T>.AbstractC0133b {
        C0132a(InterfaceC0144k<T> interfaceC0144k) {
            super(interfaceC0144k);
        }

        @Override // android.arch.lifecycle.LiveData.AbstractC0133b
        /* renamed from: a */
        boolean mo1298a() {
            return true;
        }
    }

    private static void assertMainThread(String str) {
        if (!C0125a.m1269a().mo1272b()) {
            throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
        }
    }
}
