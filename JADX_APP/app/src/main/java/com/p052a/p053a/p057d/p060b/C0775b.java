package com.p052a.p053a.p057d.p060b;

import com.p052a.p053a.p057d.InterfaceC0884h;
import java.security.MessageDigest;

/* renamed from: com.a.a.d.b.b */
/* loaded from: classes.dex */
final class C0775b implements InterfaceC0884h {

    /* renamed from: b */
    private final InterfaceC0884h f4252b;

    /* renamed from: c */
    private final InterfaceC0884h f4253c;

    public C0775b(InterfaceC0884h interfaceC0884h, InterfaceC0884h interfaceC0884h2) {
        this.f4252b = interfaceC0884h;
        this.f4253c = interfaceC0884h2;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    public boolean equals(Object obj) {
        if (!(obj instanceof C0775b)) {
            return false;
        }
        C0775b c0775b = (C0775b) obj;
        return this.f4252b.equals(c0775b.f4252b) && this.f4253c.equals(c0775b.f4253c);
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    public int hashCode() {
        return (this.f4252b.hashCode() * 31) + this.f4253c.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.f4252b + ", signature=" + this.f4253c + '}';
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    /* renamed from: a */
    public void mo4726a(MessageDigest messageDigest) {
        this.f4252b.mo4726a(messageDigest);
        this.f4253c.mo4726a(messageDigest);
    }
}
