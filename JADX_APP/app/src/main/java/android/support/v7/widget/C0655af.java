package android.support.v7.widget;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* renamed from: android.support.v7.widget.af */
/* loaded from: classes.dex */
class C0655af {

    /* renamed from: a */
    final b f3436a;

    /* renamed from: b */
    final a f3437b = new a();

    /* renamed from: c */
    final List<View> f3438c = new ArrayList();

    /* renamed from: android.support.v7.widget.af$b */
    interface b {
        /* renamed from: a */
        int mo3310a();

        /* renamed from: a */
        int mo3311a(View view);

        /* renamed from: a */
        void mo3312a(int i);

        /* renamed from: a */
        void mo3313a(View view, int i);

        /* renamed from: a */
        void mo3314a(View view, int i, ViewGroup.LayoutParams layoutParams);

        /* renamed from: b */
        RecyclerView.AbstractC0617w mo3315b(View view);

        /* renamed from: b */
        View mo3316b(int i);

        /* renamed from: b */
        void mo3317b();

        /* renamed from: c */
        void mo3318c(int i);

        /* renamed from: c */
        void mo3319c(View view);

        /* renamed from: d */
        void mo3320d(View view);
    }

    C0655af(b bVar) {
        this.f3436a = bVar;
    }

    /* renamed from: g */
    private void m3858g(View view) {
        this.f3438c.add(view);
        this.f3436a.mo3319c(view);
    }

    /* renamed from: h */
    private boolean m3859h(View view) {
        if (!this.f3438c.remove(view)) {
            return false;
        }
        this.f3436a.mo3320d(view);
        return true;
    }

    /* renamed from: a */
    void m3865a(View view, boolean z) {
        m3864a(view, -1, z);
    }

    /* renamed from: a */
    void m3864a(View view, int i, boolean z) {
        int m3857f;
        if (i < 0) {
            m3857f = this.f3436a.mo3310a();
        } else {
            m3857f = m3857f(i);
        }
        this.f3437b.m3880a(m3857f, z);
        if (z) {
            m3858g(view);
        }
        this.f3436a.mo3313a(view, m3857f);
    }

    /* renamed from: f */
    private int m3857f(int i) {
        if (i < 0) {
            return -1;
        }
        int mo3310a = this.f3436a.mo3310a();
        int i2 = i;
        while (i2 < mo3310a) {
            int m3884e = i - (i2 - this.f3437b.m3884e(i2));
            if (m3884e == 0) {
                while (this.f3437b.m3882c(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += m3884e;
        }
        return -1;
    }

    /* renamed from: a */
    void m3862a(View view) {
        int mo3311a = this.f3436a.mo3311a(view);
        if (mo3311a >= 0) {
            if (this.f3437b.m3883d(mo3311a)) {
                m3859h(view);
            }
            this.f3436a.mo3312a(mo3311a);
        }
    }

    /* renamed from: a */
    void m3861a(int i) {
        int m3857f = m3857f(i);
        View mo3316b = this.f3436a.mo3316b(m3857f);
        if (mo3316b != null) {
            if (this.f3437b.m3883d(m3857f)) {
                m3859h(mo3316b);
            }
            this.f3436a.mo3312a(m3857f);
        }
    }

    /* renamed from: b */
    View m3868b(int i) {
        return this.f3436a.mo3316b(m3857f(i));
    }

    /* renamed from: a */
    void m3860a() {
        this.f3437b.m3878a();
        for (int size = this.f3438c.size() - 1; size >= 0; size--) {
            this.f3436a.mo3320d(this.f3438c.get(size));
            this.f3438c.remove(size);
        }
        this.f3436a.mo3317b();
    }

    /* renamed from: c */
    View m3870c(int i) {
        int size = this.f3438c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f3438c.get(i2);
            RecyclerView.AbstractC0617w mo3315b = this.f3436a.mo3315b(view);
            if (mo3315b.m3602d() == i && !mo3315b.m3612n() && !mo3315b.m3615q()) {
                return view;
            }
        }
        return null;
    }

    /* renamed from: a */
    void m3863a(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int m3857f;
        if (i < 0) {
            m3857f = this.f3436a.mo3310a();
        } else {
            m3857f = m3857f(i);
        }
        this.f3437b.m3880a(m3857f, z);
        if (z) {
            m3858g(view);
        }
        this.f3436a.mo3314a(view, m3857f, layoutParams);
    }

    /* renamed from: b */
    int m3866b() {
        return this.f3436a.mo3310a() - this.f3438c.size();
    }

    /* renamed from: c */
    int m3869c() {
        return this.f3436a.mo3310a();
    }

    /* renamed from: d */
    View m3872d(int i) {
        return this.f3436a.mo3316b(i);
    }

    /* renamed from: e */
    void m3874e(int i) {
        int m3857f = m3857f(i);
        this.f3437b.m3883d(m3857f);
        this.f3436a.mo3318c(m3857f);
    }

    /* renamed from: b */
    int m3867b(View view) {
        int mo3311a = this.f3436a.mo3311a(view);
        if (mo3311a == -1 || this.f3437b.m3882c(mo3311a)) {
            return -1;
        }
        return mo3311a - this.f3437b.m3884e(mo3311a);
    }

    /* renamed from: c */
    boolean m3871c(View view) {
        return this.f3438c.contains(view);
    }

    /* renamed from: d */
    void m3873d(View view) {
        int mo3311a = this.f3436a.mo3311a(view);
        if (mo3311a < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        this.f3437b.m3879a(mo3311a);
        m3858g(view);
    }

    /* renamed from: e */
    void m3875e(View view) {
        int mo3311a = this.f3436a.mo3311a(view);
        if (mo3311a < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (!this.f3437b.m3882c(mo3311a)) {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
        this.f3437b.m3881b(mo3311a);
        m3859h(view);
    }

    public String toString() {
        return this.f3437b.toString() + ", hidden list:" + this.f3438c.size();
    }

    /* renamed from: f */
    boolean m3876f(View view) {
        int mo3311a = this.f3436a.mo3311a(view);
        if (mo3311a == -1) {
            if (m3859h(view)) {
            }
            return true;
        }
        if (this.f3437b.m3882c(mo3311a)) {
            this.f3437b.m3883d(mo3311a);
            if (!m3859h(view)) {
            }
            this.f3436a.mo3312a(mo3311a);
            return true;
        }
        return false;
    }

    /* renamed from: android.support.v7.widget.af$a */
    static class a {

        /* renamed from: a */
        long f3439a = 0;

        /* renamed from: b */
        a f3440b;

        a() {
        }

        /* renamed from: a */
        void m3879a(int i) {
            if (i >= 64) {
                m3877b();
                this.f3440b.m3879a(i - 64);
            } else {
                this.f3439a |= 1 << i;
            }
        }

        /* renamed from: b */
        private void m3877b() {
            if (this.f3440b == null) {
                this.f3440b = new a();
            }
        }

        /* renamed from: b */
        void m3881b(int i) {
            if (i >= 64) {
                if (this.f3440b != null) {
                    this.f3440b.m3881b(i - 64);
                    return;
                }
                return;
            }
            this.f3439a &= (1 << i) ^ (-1);
        }

        /* renamed from: c */
        boolean m3882c(int i) {
            if (i < 64) {
                return (this.f3439a & (1 << i)) != 0;
            }
            m3877b();
            return this.f3440b.m3882c(i - 64);
        }

        /* renamed from: a */
        void m3878a() {
            this.f3439a = 0L;
            if (this.f3440b != null) {
                this.f3440b.m3878a();
            }
        }

        /* renamed from: a */
        void m3880a(int i, boolean z) {
            if (i >= 64) {
                m3877b();
                this.f3440b.m3880a(i - 64, z);
                return;
            }
            boolean z2 = (this.f3439a & Long.MIN_VALUE) != 0;
            long j = (1 << i) - 1;
            this.f3439a = (((j ^ (-1)) & this.f3439a) << 1) | (this.f3439a & j);
            if (z) {
                m3879a(i);
            } else {
                m3881b(i);
            }
            if (z2 || this.f3440b != null) {
                m3877b();
                this.f3440b.m3880a(0, z2);
            }
        }

        /* renamed from: d */
        boolean m3883d(int i) {
            if (i >= 64) {
                m3877b();
                return this.f3440b.m3883d(i - 64);
            }
            long j = 1 << i;
            boolean z = (this.f3439a & j) != 0;
            this.f3439a &= j ^ (-1);
            long j2 = j - 1;
            this.f3439a = Long.rotateRight((j2 ^ (-1)) & this.f3439a, 1) | (this.f3439a & j2);
            if (this.f3440b != null) {
                if (this.f3440b.m3882c(0)) {
                    m3879a(63);
                }
                this.f3440b.m3883d(0);
                return z;
            }
            return z;
        }

        /* renamed from: e */
        int m3884e(int i) {
            if (this.f3440b == null) {
                if (i >= 64) {
                    return Long.bitCount(this.f3439a);
                }
                return Long.bitCount(this.f3439a & ((1 << i) - 1));
            }
            if (i < 64) {
                return Long.bitCount(this.f3439a & ((1 << i) - 1));
            }
            return this.f3440b.m3884e(i - 64) + Long.bitCount(this.f3439a);
        }

        public String toString() {
            return this.f3440b == null ? Long.toBinaryString(this.f3439a) : this.f3440b.toString() + "xx" + Long.toBinaryString(this.f3439a);
        }
    }
}
