package com.p052a.p053a.p080i;

import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p081j.C0954h;
import java.security.MessageDigest;

/* renamed from: com.a.a.i.b */
/* loaded from: classes.dex */
public final class C0943b implements InterfaceC0884h {

    /* renamed from: b */
    private final Object f4925b;

    public C0943b(Object obj) {
        this.f4925b = C0954h.m5409a(obj);
    }

    public String toString() {
        return "ObjectKey{object=" + this.f4925b + '}';
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    public boolean equals(Object obj) {
        if (obj instanceof C0943b) {
            return this.f4925b.equals(((C0943b) obj).f4925b);
        }
        return false;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    public int hashCode() {
        return this.f4925b.hashCode();
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    /* renamed from: a */
    public void mo4726a(MessageDigest messageDigest) {
        messageDigest.update(this.f4925b.toString().getBytes(f4739a));
    }
}
