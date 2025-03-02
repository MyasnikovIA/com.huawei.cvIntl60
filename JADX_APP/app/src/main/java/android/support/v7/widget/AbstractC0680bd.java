package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* renamed from: android.support.v7.widget.bd */
/* loaded from: classes.dex */
public abstract class AbstractC0680bd extends RecyclerView.AbstractC0600f {

    /* renamed from: h */
    boolean f3713h = true;

    /* renamed from: a */
    public abstract boolean mo3922a(RecyclerView.AbstractC0617w abstractC0617w);

    /* renamed from: a */
    public abstract boolean mo3923a(RecyclerView.AbstractC0617w abstractC0617w, int i, int i2, int i3, int i4);

    /* renamed from: a */
    public abstract boolean mo3924a(RecyclerView.AbstractC0617w abstractC0617w, RecyclerView.AbstractC0617w abstractC0617w2, int i, int i2, int i3, int i4);

    /* renamed from: b */
    public abstract boolean mo3926b(RecyclerView.AbstractC0617w abstractC0617w);

    @Override // android.support.v7.widget.RecyclerView.AbstractC0600f
    /* renamed from: h */
    public boolean mo3369h(@NonNull RecyclerView.AbstractC0617w abstractC0617w) {
        return !this.f3713h || abstractC0617w.m3612n();
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0600f
    /* renamed from: a */
    public boolean mo3355a(@NonNull RecyclerView.AbstractC0617w abstractC0617w, @NonNull RecyclerView.AbstractC0600f.c cVar, @Nullable RecyclerView.AbstractC0600f.c cVar2) {
        int i = cVar.f3129a;
        int i2 = cVar.f3130b;
        View view = abstractC0617w.f3217a;
        int left = cVar2 == null ? view.getLeft() : cVar2.f3129a;
        int top = cVar2 == null ? view.getTop() : cVar2.f3130b;
        if (!abstractC0617w.m3615q() && (i != left || i2 != top)) {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            return mo3923a(abstractC0617w, i, i2, left, top);
        }
        return mo3922a(abstractC0617w);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0600f
    /* renamed from: b */
    public boolean mo3359b(@NonNull RecyclerView.AbstractC0617w abstractC0617w, @Nullable RecyclerView.AbstractC0600f.c cVar, @NonNull RecyclerView.AbstractC0600f.c cVar2) {
        return (cVar == null || (cVar.f3129a == cVar2.f3129a && cVar.f3130b == cVar2.f3130b)) ? mo3926b(abstractC0617w) : mo3923a(abstractC0617w, cVar.f3129a, cVar.f3130b, cVar2.f3129a, cVar2.f3130b);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0600f
    /* renamed from: c */
    public boolean mo3360c(@NonNull RecyclerView.AbstractC0617w abstractC0617w, @NonNull RecyclerView.AbstractC0600f.c cVar, @NonNull RecyclerView.AbstractC0600f.c cVar2) {
        if (cVar.f3129a != cVar2.f3129a || cVar.f3130b != cVar2.f3130b) {
            return mo3923a(abstractC0617w, cVar.f3129a, cVar.f3130b, cVar2.f3129a, cVar2.f3130b);
        }
        m4126j(abstractC0617w);
        return false;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0600f
    /* renamed from: a */
    public boolean mo3356a(@NonNull RecyclerView.AbstractC0617w abstractC0617w, @NonNull RecyclerView.AbstractC0617w abstractC0617w2, @NonNull RecyclerView.AbstractC0600f.c cVar, @NonNull RecyclerView.AbstractC0600f.c cVar2) {
        int i;
        int i2;
        int i3 = cVar.f3129a;
        int i4 = cVar.f3130b;
        if (abstractC0617w2.m3601c()) {
            i = cVar.f3129a;
            i2 = cVar.f3130b;
        } else {
            i = cVar2.f3129a;
            i2 = cVar2.f3130b;
        }
        return mo3924a(abstractC0617w, abstractC0617w2, i3, i4, i, i2);
    }

    /* renamed from: i */
    public final void m4125i(RecyclerView.AbstractC0617w abstractC0617w) {
        m4132p(abstractC0617w);
        m3365f(abstractC0617w);
    }

    /* renamed from: j */
    public final void m4126j(RecyclerView.AbstractC0617w abstractC0617w) {
        m4136t(abstractC0617w);
        m3365f(abstractC0617w);
    }

    /* renamed from: k */
    public final void m4127k(RecyclerView.AbstractC0617w abstractC0617w) {
        m4134r(abstractC0617w);
        m3365f(abstractC0617w);
    }

    /* renamed from: a */
    public final void m4121a(RecyclerView.AbstractC0617w abstractC0617w, boolean z) {
        m4124d(abstractC0617w, z);
        m3365f(abstractC0617w);
    }

    /* renamed from: l */
    public final void m4128l(RecyclerView.AbstractC0617w abstractC0617w) {
        m4131o(abstractC0617w);
    }

    /* renamed from: m */
    public final void m4129m(RecyclerView.AbstractC0617w abstractC0617w) {
        m4135s(abstractC0617w);
    }

    /* renamed from: n */
    public final void m4130n(RecyclerView.AbstractC0617w abstractC0617w) {
        m4133q(abstractC0617w);
    }

    /* renamed from: b */
    public final void m4122b(RecyclerView.AbstractC0617w abstractC0617w, boolean z) {
        m4123c(abstractC0617w, z);
    }

    /* renamed from: o */
    public void m4131o(RecyclerView.AbstractC0617w abstractC0617w) {
    }

    /* renamed from: p */
    public void m4132p(RecyclerView.AbstractC0617w abstractC0617w) {
    }

    /* renamed from: q */
    public void m4133q(RecyclerView.AbstractC0617w abstractC0617w) {
    }

    /* renamed from: r */
    public void m4134r(RecyclerView.AbstractC0617w abstractC0617w) {
    }

    /* renamed from: s */
    public void m4135s(RecyclerView.AbstractC0617w abstractC0617w) {
    }

    /* renamed from: t */
    public void m4136t(RecyclerView.AbstractC0617w abstractC0617w) {
    }

    /* renamed from: c */
    public void m4123c(RecyclerView.AbstractC0617w abstractC0617w, boolean z) {
    }

    /* renamed from: d */
    public void m4124d(RecyclerView.AbstractC0617w abstractC0617w, boolean z) {
    }
}
