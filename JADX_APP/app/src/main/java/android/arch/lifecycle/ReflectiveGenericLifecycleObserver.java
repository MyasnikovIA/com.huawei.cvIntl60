package android.arch.lifecycle;

import android.arch.lifecycle.AbstractC0136c;
import android.arch.lifecycle.C0134a;

/* loaded from: classes.dex */
class ReflectiveGenericLifecycleObserver implements GenericLifecycleObserver {

    /* renamed from: a */
    private final Object f987a;

    /* renamed from: b */
    private final C0134a.a f988b;

    ReflectiveGenericLifecycleObserver(Object obj) {
        this.f987a = obj;
        this.f988b = C0134a.f990a.m1306b(this.f987a.getClass());
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    /* renamed from: a */
    public void mo1291a(InterfaceC0138e interfaceC0138e, AbstractC0136c.a aVar) {
        this.f988b.m1308a(interfaceC0138e, aVar, this.f987a);
    }
}
