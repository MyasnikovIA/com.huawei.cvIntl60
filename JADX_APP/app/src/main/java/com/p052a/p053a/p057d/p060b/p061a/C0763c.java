package com.p052a.p053a.p057d.p060b.p061a;

import android.graphics.Bitmap;
import com.p052a.p053a.p081j.C0955i;

/* renamed from: com.a.a.d.b.a.c */
/* loaded from: classes.dex */
class C0763c implements InterfaceC0772l {

    /* renamed from: a */
    private final b f4208a = new b();

    /* renamed from: b */
    private final C0768h<a, Bitmap> f4209b = new C0768h<>();

    C0763c() {
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0772l
    /* renamed from: a */
    public void mo4665a(Bitmap bitmap) {
        this.f4209b.m4688a(this.f4208a.m4672a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0772l
    /* renamed from: a */
    public Bitmap mo4664a(int i, int i2, Bitmap.Config config) {
        return this.f4209b.m4687a((C0768h<a, Bitmap>) this.f4208a.m4672a(i, i2, config));
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0772l
    /* renamed from: a */
    public Bitmap mo4663a() {
        return this.f4209b.m4686a();
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0772l
    /* renamed from: b */
    public String mo4667b(Bitmap bitmap) {
        return m4662d(bitmap);
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0772l
    /* renamed from: b */
    public String mo4666b(int i, int i2, Bitmap.Config config) {
        return m4661c(i, i2, config);
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0772l
    /* renamed from: c */
    public int mo4668c(Bitmap bitmap) {
        return C0955i.m5418a(bitmap);
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.f4209b;
    }

    /* renamed from: d */
    private static String m4662d(Bitmap bitmap) {
        return m4661c(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    /* renamed from: c */
    static String m4661c(int i, int i2, Bitmap.Config config) {
        return "[" + i + "x" + i2 + "], " + config;
    }

    /* renamed from: com.a.a.d.b.a.c$b */
    static class b extends AbstractC0764d<a> {
        b() {
        }

        /* renamed from: a */
        public a m4672a(int i, int i2, Bitmap.Config config) {
            a c = m4675c();
            c.m4670a(i, i2, config);
            return c;
        }

        @Override // com.p052a.p053a.p057d.p060b.p061a.AbstractC0764d
        /* renamed from: a */
        public a mo4673b() {
            return new a(this);
        }
    }

    /* renamed from: com.a.a.d.b.a.c$a */
    static class a implements InterfaceC0773m {

        /* renamed from: a */
        private final b f4210a;

        /* renamed from: b */
        private int f4211b;

        /* renamed from: c */
        private int f4212c;

        /* renamed from: d */
        private Bitmap.Config f4213d;

        public a(b bVar) {
            this.f4210a = bVar;
        }

        /* renamed from: a */
        public void m4670a(int i, int i2, Bitmap.Config config) {
            this.f4211b = i;
            this.f4212c = i2;
            this.f4213d = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f4211b == aVar.f4211b && this.f4212c == aVar.f4212c && this.f4213d == aVar.f4213d;
        }

        public int hashCode() {
            return (this.f4213d != null ? this.f4213d.hashCode() : 0) + (((this.f4211b * 31) + this.f4212c) * 31);
        }

        public String toString() {
            return C0763c.m4661c(this.f4211b, this.f4212c, this.f4213d);
        }

        @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0773m
        /* renamed from: a */
        public void mo4669a() {
            this.f4210a.m4674a(this);
        }
    }
}
