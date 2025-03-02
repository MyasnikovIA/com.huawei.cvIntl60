package com.p052a.p053a.p057d.p060b;

import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.InterfaceC0889m;
import com.p052a.p053a.p081j.C0951e;
import com.p052a.p053a.p081j.C0955i;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* renamed from: com.a.a.d.b.u */
/* loaded from: classes.dex */
final class C0806u implements InterfaceC0884h {

    /* renamed from: b */
    private static final C0951e<Class<?>, byte[]> f4476b = new C0951e<>(50);

    /* renamed from: c */
    private final InterfaceC0884h f4477c;

    /* renamed from: d */
    private final InterfaceC0884h f4478d;

    /* renamed from: e */
    private final int f4479e;

    /* renamed from: f */
    private final int f4480f;

    /* renamed from: g */
    private final Class<?> f4481g;

    /* renamed from: h */
    private final C0886j f4482h;

    /* renamed from: i */
    private final InterfaceC0889m<?> f4483i;

    public C0806u(InterfaceC0884h interfaceC0884h, InterfaceC0884h interfaceC0884h2, int i, int i2, InterfaceC0889m<?> interfaceC0889m, Class<?> cls, C0886j c0886j) {
        this.f4477c = interfaceC0884h;
        this.f4478d = interfaceC0884h2;
        this.f4479e = i;
        this.f4480f = i2;
        this.f4483i = interfaceC0889m;
        this.f4481g = cls;
        this.f4482h = c0886j;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    public boolean equals(Object obj) {
        if (!(obj instanceof C0806u)) {
            return false;
        }
        C0806u c0806u = (C0806u) obj;
        return this.f4480f == c0806u.f4480f && this.f4479e == c0806u.f4479e && C0955i.m5427a(this.f4483i, c0806u.f4483i) && this.f4481g.equals(c0806u.f4481g) && this.f4477c.equals(c0806u.f4477c) && this.f4478d.equals(c0806u.f4478d) && this.f4482h.equals(c0806u.f4482h);
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    public int hashCode() {
        int hashCode = (((((this.f4477c.hashCode() * 31) + this.f4478d.hashCode()) * 31) + this.f4479e) * 31) + this.f4480f;
        if (this.f4483i != null) {
            hashCode = (hashCode * 31) + this.f4483i.hashCode();
        }
        return (((hashCode * 31) + this.f4481g.hashCode()) * 31) + this.f4482h.hashCode();
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    /* renamed from: a */
    public void mo4726a(MessageDigest messageDigest) {
        byte[] array = ByteBuffer.allocate(8).putInt(this.f4479e).putInt(this.f4480f).array();
        this.f4478d.mo4726a(messageDigest);
        this.f4477c.mo4726a(messageDigest);
        messageDigest.update(array);
        if (this.f4483i != null) {
            this.f4483i.mo4726a(messageDigest);
        }
        this.f4482h.mo4726a(messageDigest);
        messageDigest.update(m4905a());
    }

    /* renamed from: a */
    private byte[] m4905a() {
        byte[] m5401b = f4476b.m5401b((C0951e<Class<?>, byte[]>) this.f4481g);
        if (m5401b == null) {
            byte[] bytes = this.f4481g.getName().getBytes(f4739a);
            f4476b.m5402b(this.f4481g, bytes);
            return bytes;
        }
        return m5401b;
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f4477c + ", signature=" + this.f4478d + ", width=" + this.f4479e + ", height=" + this.f4480f + ", decodedResourceClass=" + this.f4481g + ", transformation='" + this.f4483i + "', options=" + this.f4482h + '}';
    }
}
