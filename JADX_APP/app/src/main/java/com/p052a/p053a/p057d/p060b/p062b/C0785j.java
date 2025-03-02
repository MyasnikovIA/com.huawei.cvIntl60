package com.p052a.p053a.p057d.p060b.p062b;

import android.support.v4.util.Pools;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p081j.C0951e;
import com.p052a.p053a.p081j.C0955i;
import com.p052a.p053a.p081j.p082a.AbstractC0947b;
import com.p052a.p053a.p081j.p082a.C0946a;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: com.a.a.d.b.b.j */
/* loaded from: classes.dex */
public class C0785j {

    /* renamed from: a */
    private final C0951e<InterfaceC0884h, String> f4284a = new C0951e<>(1000);

    /* renamed from: b */
    private final Pools.Pool<a> f4285b = C0946a.m5382b(10, new C0946a.a<a>() { // from class: com.a.a.d.b.b.j.1
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p081j.p082a.C0946a.a
        /* renamed from: a */
        public a mo4767b() {
            try {
                return new a(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    });

    /* renamed from: com.a.a.d.b.b.j$1 */
    class AnonymousClass1 implements C0946a.a<a> {
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p081j.p082a.C0946a.a
        /* renamed from: a */
        public a mo4767b() {
            try {
                return new a(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: a */
    public String m4765a(InterfaceC0884h interfaceC0884h) {
        String m5401b;
        synchronized (this.f4284a) {
            m5401b = this.f4284a.m5401b((C0951e<InterfaceC0884h, String>) interfaceC0884h);
        }
        if (m5401b == null) {
            m5401b = m4764b(interfaceC0884h);
        }
        synchronized (this.f4284a) {
            this.f4284a.m5402b(interfaceC0884h, m5401b);
        }
        return m5401b;
    }

    /* renamed from: b */
    private String m4764b(InterfaceC0884h interfaceC0884h) {
        a acquire = this.f4285b.acquire();
        try {
            interfaceC0884h.mo4726a(acquire.f4287a);
            return C0955i.m5421a(acquire.f4287a.digest());
        } finally {
            this.f4285b.release(acquire);
        }
    }

    /* renamed from: com.a.a.d.b.b.j$a */
    private static final class a implements C0946a.c {

        /* renamed from: a */
        final MessageDigest f4287a;

        /* renamed from: b */
        private final AbstractC0947b f4288b = AbstractC0947b.m5387a();

        a(MessageDigest messageDigest) {
            this.f4287a = messageDigest;
        }

        @Override // com.p052a.p053a.p081j.p082a.C0946a.c
        /* renamed from: a_ */
        public AbstractC0947b mo4768a_() {
            return this.f4288b;
        }
    }
}
