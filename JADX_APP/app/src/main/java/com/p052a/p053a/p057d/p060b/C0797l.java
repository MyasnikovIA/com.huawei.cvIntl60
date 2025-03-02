package com.p052a.p053a.p057d.p060b;

import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.InterfaceC0889m;
import com.p052a.p053a.p081j.C0954h;
import java.security.MessageDigest;
import java.util.Map;

/* renamed from: com.a.a.d.b.l */
/* loaded from: classes.dex */
class C0797l implements InterfaceC0884h {

    /* renamed from: b */
    private final Object f4435b;

    /* renamed from: c */
    private final int f4436c;

    /* renamed from: d */
    private final int f4437d;

    /* renamed from: e */
    private final Class<?> f4438e;

    /* renamed from: f */
    private final Class<?> f4439f;

    /* renamed from: g */
    private final InterfaceC0884h f4440g;

    /* renamed from: h */
    private final Map<Class<?>, InterfaceC0889m<?>> f4441h;

    /* renamed from: i */
    private final C0886j f4442i;

    /* renamed from: j */
    private int f4443j;

    public C0797l(Object obj, InterfaceC0884h interfaceC0884h, int i, int i2, Map<Class<?>, InterfaceC0889m<?>> map, Class<?> cls, Class<?> cls2, C0886j c0886j) {
        this.f4435b = C0954h.m5409a(obj);
        this.f4440g = (InterfaceC0884h) C0954h.m5410a(interfaceC0884h, "Signature must not be null");
        this.f4436c = i;
        this.f4437d = i2;
        this.f4441h = (Map) C0954h.m5409a(map);
        this.f4438e = (Class) C0954h.m5410a(cls, "Resource class must not be null");
        this.f4439f = (Class) C0954h.m5410a(cls2, "Transcode class must not be null");
        this.f4442i = (C0886j) C0954h.m5409a(c0886j);
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    public boolean equals(Object obj) {
        if (!(obj instanceof C0797l)) {
            return false;
        }
        C0797l c0797l = (C0797l) obj;
        return this.f4435b.equals(c0797l.f4435b) && this.f4440g.equals(c0797l.f4440g) && this.f4437d == c0797l.f4437d && this.f4436c == c0797l.f4436c && this.f4441h.equals(c0797l.f4441h) && this.f4438e.equals(c0797l.f4438e) && this.f4439f.equals(c0797l.f4439f) && this.f4442i.equals(c0797l.f4442i);
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    public int hashCode() {
        if (this.f4443j == 0) {
            this.f4443j = this.f4435b.hashCode();
            this.f4443j = (this.f4443j * 31) + this.f4440g.hashCode();
            this.f4443j = (this.f4443j * 31) + this.f4436c;
            this.f4443j = (this.f4443j * 31) + this.f4437d;
            this.f4443j = (this.f4443j * 31) + this.f4441h.hashCode();
            this.f4443j = (this.f4443j * 31) + this.f4438e.hashCode();
            this.f4443j = (this.f4443j * 31) + this.f4439f.hashCode();
            this.f4443j = (this.f4443j * 31) + this.f4442i.hashCode();
        }
        return this.f4443j;
    }

    public String toString() {
        return "EngineKey{model=" + this.f4435b + ", width=" + this.f4436c + ", height=" + this.f4437d + ", resourceClass=" + this.f4438e + ", transcodeClass=" + this.f4439f + ", signature=" + this.f4440g + ", hashCode=" + this.f4443j + ", transformations=" + this.f4441h + ", options=" + this.f4442i + '}';
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    /* renamed from: a */
    public void mo4726a(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }
}
