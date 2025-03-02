package android.support.v7.widget;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* renamed from: android.support.v7.widget.av */
/* loaded from: classes.dex */
public abstract class AbstractC0671av {

    /* renamed from: a */
    protected final RecyclerView.AbstractC0603i f3648a;

    /* renamed from: b */
    final Rect f3649b;

    /* renamed from: c */
    private int f3650c;

    /* renamed from: a */
    public abstract int mo4055a(View view);

    /* renamed from: a */
    public abstract void mo4057a(int i);

    /* renamed from: b */
    public abstract int mo4059b(View view);

    /* renamed from: c */
    public abstract int mo4060c();

    /* renamed from: c */
    public abstract int mo4061c(View view);

    /* renamed from: d */
    public abstract int mo4062d();

    /* renamed from: d */
    public abstract int mo4063d(View view);

    /* renamed from: e */
    public abstract int mo4064e();

    /* renamed from: e */
    public abstract int mo4065e(View view);

    /* renamed from: f */
    public abstract int mo4066f();

    /* renamed from: f */
    public abstract int mo4067f(View view);

    /* renamed from: g */
    public abstract int mo4068g();

    /* renamed from: h */
    public abstract int mo4069h();

    /* renamed from: i */
    public abstract int mo4070i();

    /* synthetic */ AbstractC0671av(RecyclerView.AbstractC0603i abstractC0603i, AnonymousClass1 anonymousClass1) {
        this(abstractC0603i);
    }

    private AbstractC0671av(RecyclerView.AbstractC0603i abstractC0603i) {
        this.f3650c = Integer.MIN_VALUE;
        this.f3649b = new Rect();
        this.f3648a = abstractC0603i;
    }

    /* renamed from: a */
    public void m4056a() {
        this.f3650c = mo4066f();
    }

    /* renamed from: b */
    public int m4058b() {
        if (Integer.MIN_VALUE == this.f3650c) {
            return 0;
        }
        return mo4066f() - this.f3650c;
    }

    /* renamed from: a */
    public static AbstractC0671av m4053a(RecyclerView.AbstractC0603i abstractC0603i, int i) {
        switch (i) {
            case 0:
                return m4052a(abstractC0603i);
            case 1:
                return m4054b(abstractC0603i);
            default:
                throw new IllegalArgumentException("invalid orientation");
        }
    }

    /* renamed from: android.support.v7.widget.av$1 */
    static class AnonymousClass1 extends AbstractC0671av {
        AnonymousClass1(RecyclerView.AbstractC0603i abstractC0603i) {
            super(abstractC0603i);
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: d */
        public int mo4062d() {
            return this.f3648a.m3480y() - this.f3648a.m3393C();
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: e */
        public int mo4064e() {
            return this.f3648a.m3480y();
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: a */
        public void mo4057a(int i) {
            this.f3648a.mo3462j(i);
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: c */
        public int mo4060c() {
            return this.f3648a.m3391A();
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: e */
        public int mo4065e(View view) {
            RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
            return c0604j.rightMargin + this.f3648a.m3452f(view) + c0604j.leftMargin;
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: f */
        public int mo4067f(View view) {
            RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
            return c0604j.bottomMargin + this.f3648a.m3455g(view) + c0604j.topMargin;
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: b */
        public int mo4059b(View view) {
            RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
            return c0604j.rightMargin + this.f3648a.m3461j(view);
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: a */
        public int mo4055a(View view) {
            return this.f3648a.m3457h(view) - ((RecyclerView.C0604j) view.getLayoutParams()).leftMargin;
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: c */
        public int mo4061c(View view) {
            this.f3648a.m3417a(view, true, this.f3649b);
            return this.f3649b.right;
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: d */
        public int mo4063d(View view) {
            this.f3648a.m3417a(view, true, this.f3649b);
            return this.f3649b.left;
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: f */
        public int mo4066f() {
            return (this.f3648a.m3480y() - this.f3648a.m3391A()) - this.f3648a.m3393C();
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: g */
        public int mo4068g() {
            return this.f3648a.m3393C();
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: h */
        public int mo4069h() {
            return this.f3648a.m3478w();
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: i */
        public int mo4070i() {
            return this.f3648a.m3479x();
        }
    }

    /* renamed from: a */
    public static AbstractC0671av m4052a(RecyclerView.AbstractC0603i abstractC0603i) {
        return new AbstractC0671av(abstractC0603i) { // from class: android.support.v7.widget.av.1
            AnonymousClass1(RecyclerView.AbstractC0603i abstractC0603i2) {
                super(abstractC0603i2);
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: d */
            public int mo4062d() {
                return this.f3648a.m3480y() - this.f3648a.m3393C();
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: e */
            public int mo4064e() {
                return this.f3648a.m3480y();
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: a */
            public void mo4057a(int i) {
                this.f3648a.mo3462j(i);
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: c */
            public int mo4060c() {
                return this.f3648a.m3391A();
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: e */
            public int mo4065e(View view) {
                RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
                return c0604j.rightMargin + this.f3648a.m3452f(view) + c0604j.leftMargin;
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: f */
            public int mo4067f(View view) {
                RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
                return c0604j.bottomMargin + this.f3648a.m3455g(view) + c0604j.topMargin;
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: b */
            public int mo4059b(View view) {
                RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
                return c0604j.rightMargin + this.f3648a.m3461j(view);
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: a */
            public int mo4055a(View view) {
                return this.f3648a.m3457h(view) - ((RecyclerView.C0604j) view.getLayoutParams()).leftMargin;
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: c */
            public int mo4061c(View view) {
                this.f3648a.m3417a(view, true, this.f3649b);
                return this.f3649b.right;
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: d */
            public int mo4063d(View view) {
                this.f3648a.m3417a(view, true, this.f3649b);
                return this.f3649b.left;
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: f */
            public int mo4066f() {
                return (this.f3648a.m3480y() - this.f3648a.m3391A()) - this.f3648a.m3393C();
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: g */
            public int mo4068g() {
                return this.f3648a.m3393C();
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: h */
            public int mo4069h() {
                return this.f3648a.m3478w();
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: i */
            public int mo4070i() {
                return this.f3648a.m3479x();
            }
        };
    }

    /* renamed from: android.support.v7.widget.av$2 */
    static class AnonymousClass2 extends AbstractC0671av {
        AnonymousClass2(RecyclerView.AbstractC0603i abstractC0603i) {
            super(abstractC0603i);
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: d */
        public int mo4062d() {
            return this.f3648a.m3481z() - this.f3648a.m3394D();
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: e */
        public int mo4064e() {
            return this.f3648a.m3481z();
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: a */
        public void mo4057a(int i) {
            this.f3648a.mo3464k(i);
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: c */
        public int mo4060c() {
            return this.f3648a.m3392B();
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: e */
        public int mo4065e(View view) {
            RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
            return c0604j.bottomMargin + this.f3648a.m3455g(view) + c0604j.topMargin;
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: f */
        public int mo4067f(View view) {
            RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
            return c0604j.rightMargin + this.f3648a.m3452f(view) + c0604j.leftMargin;
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: b */
        public int mo4059b(View view) {
            RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
            return c0604j.bottomMargin + this.f3648a.m3463k(view);
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: a */
        public int mo4055a(View view) {
            return this.f3648a.m3459i(view) - ((RecyclerView.C0604j) view.getLayoutParams()).topMargin;
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: c */
        public int mo4061c(View view) {
            this.f3648a.m3417a(view, true, this.f3649b);
            return this.f3649b.bottom;
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: d */
        public int mo4063d(View view) {
            this.f3648a.m3417a(view, true, this.f3649b);
            return this.f3649b.top;
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: f */
        public int mo4066f() {
            return (this.f3648a.m3481z() - this.f3648a.m3392B()) - this.f3648a.m3394D();
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: g */
        public int mo4068g() {
            return this.f3648a.m3394D();
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: h */
        public int mo4069h() {
            return this.f3648a.m3479x();
        }

        @Override // android.support.v7.widget.AbstractC0671av
        /* renamed from: i */
        public int mo4070i() {
            return this.f3648a.m3478w();
        }
    }

    /* renamed from: b */
    public static AbstractC0671av m4054b(RecyclerView.AbstractC0603i abstractC0603i) {
        return new AbstractC0671av(abstractC0603i) { // from class: android.support.v7.widget.av.2
            AnonymousClass2(RecyclerView.AbstractC0603i abstractC0603i2) {
                super(abstractC0603i2);
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: d */
            public int mo4062d() {
                return this.f3648a.m3481z() - this.f3648a.m3394D();
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: e */
            public int mo4064e() {
                return this.f3648a.m3481z();
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: a */
            public void mo4057a(int i) {
                this.f3648a.mo3464k(i);
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: c */
            public int mo4060c() {
                return this.f3648a.m3392B();
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: e */
            public int mo4065e(View view) {
                RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
                return c0604j.bottomMargin + this.f3648a.m3455g(view) + c0604j.topMargin;
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: f */
            public int mo4067f(View view) {
                RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
                return c0604j.rightMargin + this.f3648a.m3452f(view) + c0604j.leftMargin;
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: b */
            public int mo4059b(View view) {
                RecyclerView.C0604j c0604j = (RecyclerView.C0604j) view.getLayoutParams();
                return c0604j.bottomMargin + this.f3648a.m3463k(view);
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: a */
            public int mo4055a(View view) {
                return this.f3648a.m3459i(view) - ((RecyclerView.C0604j) view.getLayoutParams()).topMargin;
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: c */
            public int mo4061c(View view) {
                this.f3648a.m3417a(view, true, this.f3649b);
                return this.f3649b.bottom;
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: d */
            public int mo4063d(View view) {
                this.f3648a.m3417a(view, true, this.f3649b);
                return this.f3649b.top;
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: f */
            public int mo4066f() {
                return (this.f3648a.m3481z() - this.f3648a.m3392B()) - this.f3648a.m3394D();
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: g */
            public int mo4068g() {
                return this.f3648a.m3394D();
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: h */
            public int mo4069h() {
                return this.f3648a.m3479x();
            }

            @Override // android.support.v7.widget.AbstractC0671av
            /* renamed from: i */
            public int mo4070i() {
                return this.f3648a.m3478w();
            }
        };
    }
}
