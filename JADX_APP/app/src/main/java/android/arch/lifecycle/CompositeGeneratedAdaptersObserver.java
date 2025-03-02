package android.arch.lifecycle;

import android.arch.lifecycle.AbstractC0136c;
import android.support.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class CompositeGeneratedAdaptersObserver implements GenericLifecycleObserver {

    /* renamed from: a */
    private final InterfaceC0135b[] f976a;

    CompositeGeneratedAdaptersObserver(InterfaceC0135b[] interfaceC0135bArr) {
        this.f976a = interfaceC0135bArr;
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    /* renamed from: a */
    public void mo1291a(InterfaceC0138e interfaceC0138e, AbstractC0136c.a aVar) {
        C0142i c0142i = new C0142i();
        for (InterfaceC0135b interfaceC0135b : this.f976a) {
            interfaceC0135b.m1310a(interfaceC0138e, aVar, false, c0142i);
        }
        for (InterfaceC0135b interfaceC0135b2 : this.f976a) {
            interfaceC0135b2.m1310a(interfaceC0138e, aVar, true, c0142i);
        }
    }
}
