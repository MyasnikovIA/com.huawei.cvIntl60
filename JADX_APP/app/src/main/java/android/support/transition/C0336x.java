package android.support.transition;

import android.os.Build;
import android.support.annotation.NonNull;
import android.view.ViewGroup;

/* renamed from: android.support.transition.x */
/* loaded from: classes.dex */
class C0336x {
    /* renamed from: a */
    static InterfaceC0335w m2442a(@NonNull ViewGroup viewGroup) {
        return Build.VERSION.SDK_INT >= 18 ? new C0334v(viewGroup) : C0333u.m2439a(viewGroup);
    }

    /* renamed from: a */
    static void m2443a(@NonNull ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 18) {
            C0338z.m2447a(viewGroup, z);
        } else {
            C0337y.m2445a(viewGroup, z);
        }
    }
}
