package android.arch.lifecycle;

import android.arch.lifecycle.AbstractC0136c;

/* loaded from: classes.dex */
class FullLifecycleObserverAdapter implements GenericLifecycleObserver {

    /* renamed from: a */
    private final FullLifecycleObserver f977a;

    FullLifecycleObserverAdapter(FullLifecycleObserver fullLifecycleObserver) {
        this.f977a = fullLifecycleObserver;
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    /* renamed from: a */
    public void mo1291a(InterfaceC0138e interfaceC0138e, AbstractC0136c.a aVar) {
        switch (aVar) {
            case ON_CREATE:
                this.f977a.m1292a(interfaceC0138e);
                return;
            case ON_START:
                this.f977a.m1293b(interfaceC0138e);
                return;
            case ON_RESUME:
                this.f977a.m1294c(interfaceC0138e);
                return;
            case ON_PAUSE:
                this.f977a.m1295d(interfaceC0138e);
                return;
            case ON_STOP:
                this.f977a.m1296e(interfaceC0138e);
                return;
            case ON_DESTROY:
                this.f977a.m1297f(interfaceC0138e);
                return;
            case ON_ANY:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
            default:
                return;
        }
    }
}
