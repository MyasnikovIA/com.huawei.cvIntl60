package android.arch.lifecycle;

import android.arch.lifecycle.AbstractC0136c;
import android.support.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class SingleGeneratedAdapterObserver implements GenericLifecycleObserver {

    /* renamed from: a */
    private final InterfaceC0135b f989a;

    SingleGeneratedAdapterObserver(InterfaceC0135b interfaceC0135b) {
        this.f989a = interfaceC0135b;
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    /* renamed from: a */
    public void mo1291a(InterfaceC0138e interfaceC0138e, AbstractC0136c.a aVar) {
        this.f989a.m1310a(interfaceC0138e, aVar, false, null);
        this.f989a.m1310a(interfaceC0138e, aVar, true, null);
    }
}
