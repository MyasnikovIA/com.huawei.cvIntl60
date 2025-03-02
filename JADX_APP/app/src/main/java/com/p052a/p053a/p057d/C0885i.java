package com.p052a.p053a.p057d;

import android.support.annotation.Nullable;
import com.p052a.p053a.p081j.C0954h;
import java.security.MessageDigest;

/* renamed from: com.a.a.d.i */
/* loaded from: classes.dex */
public final class C0885i<T> {

    /* renamed from: a */
    private static final a<Object> f4740a = new a<Object>() { // from class: com.a.a.d.i.1
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p057d.C0885i.a
        /* renamed from: a */
        public void mo5047a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    };

    /* renamed from: b */
    private final T f4741b;

    /* renamed from: c */
    private final a<T> f4742c;

    /* renamed from: d */
    private final String f4743d;

    /* renamed from: e */
    private volatile byte[] f4744e;

    /* renamed from: com.a.a.d.i$a */
    public interface a<T> {
        /* renamed from: a */
        void mo5047a(byte[] bArr, T t, MessageDigest messageDigest);
    }

    /* renamed from: com.a.a.d.i$1 */
    static class AnonymousClass1 implements a<Object> {
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p057d.C0885i.a
        /* renamed from: a */
        public void mo5047a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    }

    /* renamed from: a */
    public static <T> C0885i<T> m5106a(String str) {
        return new C0885i<>(str, null, m5110c());
    }

    /* renamed from: a */
    public static <T> C0885i<T> m5107a(String str, T t) {
        return new C0885i<>(str, t, m5110c());
    }

    /* renamed from: a */
    public static <T> C0885i<T> m5108a(String str, T t, a<T> aVar) {
        return new C0885i<>(str, t, aVar);
    }

    C0885i(String str, T t, a<T> aVar) {
        this.f4743d = C0954h.m5411a(str);
        this.f4741b = t;
        this.f4742c = (a) C0954h.m5409a(aVar);
    }

    @Nullable
    /* renamed from: a */
    public T m5111a() {
        return this.f4741b;
    }

    /* renamed from: a */
    public void m5112a(T t, MessageDigest messageDigest) {
        this.f4742c.mo5047a(m5109b(), t, messageDigest);
    }

    /* renamed from: b */
    private byte[] m5109b() {
        if (this.f4744e == null) {
            this.f4744e = this.f4743d.getBytes(InterfaceC0884h.f4739a);
        }
        return this.f4744e;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C0885i) {
            return this.f4743d.equals(((C0885i) obj).f4743d);
        }
        return false;
    }

    public int hashCode() {
        return this.f4743d.hashCode();
    }

    /* renamed from: c */
    private static <T> a<T> m5110c() {
        return (a<T>) f4740a;
    }

    public String toString() {
        return "Option{key='" + this.f4743d + "'}";
    }
}
