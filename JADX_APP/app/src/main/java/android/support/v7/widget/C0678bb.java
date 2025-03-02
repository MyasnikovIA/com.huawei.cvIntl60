package android.support.v7.widget;

import android.support.v7.widget.RecyclerView;
import android.view.View;

/* renamed from: android.support.v7.widget.bb */
/* loaded from: classes.dex */
class C0678bb {
    /* renamed from: a */
    static int m4110a(RecyclerView.C0614t c0614t, AbstractC0671av abstractC0671av, View view, View view2, RecyclerView.AbstractC0603i abstractC0603i, boolean z, boolean z2) {
        int max;
        if (abstractC0603i.m3477v() == 0 || c0614t.m3574e() == 0 || view == null || view2 == null) {
            return 0;
        }
        int min = Math.min(abstractC0603i.m3444d(view), abstractC0603i.m3444d(view2));
        int max2 = Math.max(abstractC0603i.m3444d(view), abstractC0603i.m3444d(view2));
        if (z2) {
            max = Math.max(0, (c0614t.m3574e() - max2) - 1);
        } else {
            max = Math.max(0, min);
        }
        if (z) {
            return Math.round((max * (Math.abs(abstractC0671av.mo4059b(view2) - abstractC0671av.mo4055a(view)) / (Math.abs(abstractC0603i.m3444d(view) - abstractC0603i.m3444d(view2)) + 1))) + (abstractC0671av.mo4060c() - abstractC0671av.mo4055a(view)));
        }
        return max;
    }

    /* renamed from: a */
    static int m4109a(RecyclerView.C0614t c0614t, AbstractC0671av abstractC0671av, View view, View view2, RecyclerView.AbstractC0603i abstractC0603i, boolean z) {
        if (abstractC0603i.m3477v() == 0 || c0614t.m3574e() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(abstractC0603i.m3444d(view) - abstractC0603i.m3444d(view2)) + 1;
        }
        return Math.min(abstractC0671av.mo4066f(), abstractC0671av.mo4059b(view2) - abstractC0671av.mo4055a(view));
    }

    /* renamed from: b */
    static int m4111b(RecyclerView.C0614t c0614t, AbstractC0671av abstractC0671av, View view, View view2, RecyclerView.AbstractC0603i abstractC0603i, boolean z) {
        if (abstractC0603i.m3477v() == 0 || c0614t.m3574e() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return c0614t.m3574e();
        }
        return (int) (((abstractC0671av.mo4059b(view2) - abstractC0671av.mo4055a(view)) / (Math.abs(abstractC0603i.m3444d(view) - abstractC0603i.m3444d(view2)) + 1)) * c0614t.m3574e());
    }
}
