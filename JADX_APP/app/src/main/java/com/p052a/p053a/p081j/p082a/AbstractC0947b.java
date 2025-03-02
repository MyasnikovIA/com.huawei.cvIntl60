package com.p052a.p053a.p081j.p082a;

/* renamed from: com.a.a.j.a.b */
/* loaded from: classes.dex */
public abstract class AbstractC0947b {
    /* renamed from: a */
    abstract void mo5388a(boolean z);

    /* renamed from: b */
    public abstract void mo5389b();

    /* synthetic */ AbstractC0947b(AnonymousClass1 anonymousClass1) {
        this();
    }

    /* renamed from: a */
    public static AbstractC0947b m5387a() {
        return new a();
    }

    private AbstractC0947b() {
    }

    /* renamed from: com.a.a.j.a.b$a */
    private static class a extends AbstractC0947b {

        /* renamed from: a */
        private volatile boolean f4951a;

        a() {
            super();
        }

        @Override // com.p052a.p053a.p081j.p082a.AbstractC0947b
        /* renamed from: b */
        public void mo5389b() {
            if (this.f4951a) {
                throw new IllegalStateException("Already released");
            }
        }

        @Override // com.p052a.p053a.p081j.p082a.AbstractC0947b
        /* renamed from: a */
        public void mo5388a(boolean z) {
            this.f4951a = z;
        }
    }
}
