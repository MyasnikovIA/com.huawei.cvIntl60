package com.p052a.p053a.p081j;

/* renamed from: com.a.a.j.g */
/* loaded from: classes.dex */
public class C0953g {

    /* renamed from: a */
    private Class<?> f4964a;

    /* renamed from: b */
    private Class<?> f4965b;

    /* renamed from: c */
    private Class<?> f4966c;

    public C0953g() {
    }

    public C0953g(Class<?> cls, Class<?> cls2) {
        m5407a(cls, cls2);
    }

    public C0953g(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        m5408a(cls, cls2, cls3);
    }

    /* renamed from: a */
    public void m5407a(Class<?> cls, Class<?> cls2) {
        m5408a(cls, cls2, null);
    }

    /* renamed from: a */
    public void m5408a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.f4964a = cls;
        this.f4965b = cls2;
        this.f4966c = cls3;
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f4964a + ", second=" + this.f4965b + '}';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0953g c0953g = (C0953g) obj;
        return this.f4964a.equals(c0953g.f4964a) && this.f4965b.equals(c0953g.f4965b) && C0955i.m5427a(this.f4966c, c0953g.f4966c);
    }

    public int hashCode() {
        return (this.f4966c != null ? this.f4966c.hashCode() : 0) + (((this.f4964a.hashCode() * 31) + this.f4965b.hashCode()) * 31);
    }
}
