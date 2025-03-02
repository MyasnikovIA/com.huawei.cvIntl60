package com.p052a.p053a.p057d.p067d.p068a;

/* renamed from: com.a.a.d.d.a.k */
/* loaded from: classes.dex */
public abstract class AbstractC0851k {

    /* renamed from: a */
    public static final AbstractC0851k f4613a = new e();

    /* renamed from: b */
    public static final AbstractC0851k f4614b = new d();

    /* renamed from: c */
    public static final AbstractC0851k f4615c = new a();

    /* renamed from: d */
    public static final AbstractC0851k f4616d = new b();

    /* renamed from: e */
    public static final AbstractC0851k f4617e = new c();

    /* renamed from: f */
    public static final AbstractC0851k f4618f = new f();

    /* renamed from: g */
    public static final AbstractC0851k f4619g = f4614b;

    /* renamed from: com.a.a.d.d.a.k$g */
    public enum g {
        MEMORY,
        QUALITY
    }

    /* renamed from: a */
    public abstract float mo5000a(int i, int i2, int i3, int i4);

    /* renamed from: b */
    public abstract g mo5001b(int i, int i2, int i3, int i4);

    /* renamed from: com.a.a.d.d.a.k$e */
    private static class e extends AbstractC0851k {
        e() {
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.AbstractC0851k
        /* renamed from: a */
        public float mo5000a(int i, int i2, int i3, int i4) {
            return Math.min(i3 / i, i4 / i2);
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.AbstractC0851k
        /* renamed from: b */
        public g mo5001b(int i, int i2, int i3, int i4) {
            return g.QUALITY;
        }
    }

    /* renamed from: com.a.a.d.d.a.k$d */
    private static class d extends AbstractC0851k {
        d() {
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.AbstractC0851k
        /* renamed from: a */
        public float mo5000a(int i, int i2, int i3, int i4) {
            return Math.max(i3 / i, i4 / i2);
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.AbstractC0851k
        /* renamed from: b */
        public g mo5001b(int i, int i2, int i3, int i4) {
            return g.QUALITY;
        }
    }

    /* renamed from: com.a.a.d.d.a.k$a */
    private static class a extends AbstractC0851k {
        a() {
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.AbstractC0851k
        /* renamed from: a */
        public float mo5000a(int i, int i2, int i3, int i4) {
            if (Math.min(i2 / i4, i / i3) == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(r1);
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.AbstractC0851k
        /* renamed from: b */
        public g mo5001b(int i, int i2, int i3, int i4) {
            return g.QUALITY;
        }
    }

    /* renamed from: com.a.a.d.d.a.k$b */
    private static class b extends AbstractC0851k {
        b() {
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.AbstractC0851k
        /* renamed from: a */
        public float mo5000a(int i, int i2, int i3, int i4) {
            int ceil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
            return 1.0f / (r2 << (Math.max(1, Integer.highestOneBit(ceil)) >= ceil ? 0 : 1));
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.AbstractC0851k
        /* renamed from: b */
        public g mo5001b(int i, int i2, int i3, int i4) {
            return g.MEMORY;
        }
    }

    /* renamed from: com.a.a.d.d.a.k$f */
    private static class f extends AbstractC0851k {
        f() {
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.AbstractC0851k
        /* renamed from: a */
        public float mo5000a(int i, int i2, int i3, int i4) {
            return 1.0f;
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.AbstractC0851k
        /* renamed from: b */
        public g mo5001b(int i, int i2, int i3, int i4) {
            return g.QUALITY;
        }
    }

    /* renamed from: com.a.a.d.d.a.k$c */
    private static class c extends AbstractC0851k {
        c() {
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.AbstractC0851k
        /* renamed from: a */
        public float mo5000a(int i, int i2, int i3, int i4) {
            return Math.min(1.0f, f4613a.mo5000a(i, i2, i3, i4));
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.AbstractC0851k
        /* renamed from: b */
        public g mo5001b(int i, int i2, int i3, int i4) {
            return g.QUALITY;
        }
    }
}
