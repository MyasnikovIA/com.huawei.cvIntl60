package android.support.v7.widget;

import android.view.View;

/* renamed from: android.support.v7.widget.bq */
/* loaded from: classes.dex */
class C0693bq {

    /* renamed from: a */
    final b f3800a;

    /* renamed from: b */
    a f3801b = new a();

    /* renamed from: android.support.v7.widget.bq$b */
    interface b {
        /* renamed from: a */
        int mo3482a();

        /* renamed from: a */
        int mo3483a(View view);

        /* renamed from: a */
        View mo3484a(int i);

        /* renamed from: b */
        int mo3485b();

        /* renamed from: b */
        int mo3486b(View view);
    }

    C0693bq(b bVar) {
        this.f3800a = bVar;
    }

    /* renamed from: android.support.v7.widget.bq$a */
    static class a {

        /* renamed from: a */
        int f3802a = 0;

        /* renamed from: b */
        int f3803b;

        /* renamed from: c */
        int f3804c;

        /* renamed from: d */
        int f3805d;

        /* renamed from: e */
        int f3806e;

        a() {
        }

        /* renamed from: a */
        void m4222a(int i, int i2, int i3, int i4) {
            this.f3803b = i;
            this.f3804c = i2;
            this.f3805d = i3;
            this.f3806e = i4;
        }

        /* renamed from: a */
        void m4221a(int i) {
            this.f3802a |= i;
        }

        /* renamed from: a */
        void m4220a() {
            this.f3802a = 0;
        }

        /* renamed from: a */
        int m4219a(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            if (i == i2) {
                return 2;
            }
            return 4;
        }

        /* renamed from: b */
        boolean m4223b() {
            if ((this.f3802a & 7) != 0 && (this.f3802a & (m4219a(this.f3805d, this.f3803b) << 0)) == 0) {
                return false;
            }
            if ((this.f3802a & 112) != 0 && (this.f3802a & (m4219a(this.f3805d, this.f3804c) << 4)) == 0) {
                return false;
            }
            if ((this.f3802a & 1792) == 0 || (this.f3802a & (m4219a(this.f3806e, this.f3803b) << 8)) != 0) {
                return (this.f3802a & 28672) == 0 || (this.f3802a & (m4219a(this.f3806e, this.f3804c) << 12)) != 0;
            }
            return false;
        }
    }

    /* renamed from: a */
    View m4217a(int i, int i2, int i3, int i4) {
        int mo3482a = this.f3800a.mo3482a();
        int mo3485b = this.f3800a.mo3485b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View mo3484a = this.f3800a.mo3484a(i);
            this.f3801b.m4222a(mo3482a, mo3485b, this.f3800a.mo3483a(mo3484a), this.f3800a.mo3486b(mo3484a));
            if (i3 != 0) {
                this.f3801b.m4220a();
                this.f3801b.m4221a(i3);
                if (this.f3801b.m4223b()) {
                    return mo3484a;
                }
            }
            if (i4 != 0) {
                this.f3801b.m4220a();
                this.f3801b.m4221a(i4);
                if (this.f3801b.m4223b()) {
                    i += i5;
                    view = mo3484a;
                }
            }
            mo3484a = view;
            i += i5;
            view = mo3484a;
        }
        return view;
    }

    /* renamed from: a */
    boolean m4218a(View view, int i) {
        this.f3801b.m4222a(this.f3800a.mo3482a(), this.f3800a.mo3485b(), this.f3800a.mo3483a(view), this.f3800a.mo3486b(view));
        if (i == 0) {
            return false;
        }
        this.f3801b.m4220a();
        this.f3801b.m4221a(i);
        return this.f3801b.m4223b();
    }
}
