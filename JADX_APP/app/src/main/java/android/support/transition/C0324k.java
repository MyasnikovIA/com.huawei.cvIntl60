package android.support.transition;

import android.view.View;
import android.view.ViewGroup;

/* renamed from: android.support.transition.k */
/* loaded from: classes.dex */
public class C0324k {

    /* renamed from: a */
    private ViewGroup f2070a;

    /* renamed from: b */
    private Runnable f2071b;

    /* renamed from: a */
    public void m2367a() {
        if (m2365a(this.f2070a) == this && this.f2071b != null) {
            this.f2071b.run();
        }
    }

    /* renamed from: a */
    static void m2366a(View view, C0324k c0324k) {
        view.setTag(R.id.transition_current_scene, c0324k);
    }

    /* renamed from: a */
    static C0324k m2365a(View view) {
        return (C0324k) view.getTag(R.id.transition_current_scene);
    }
}
