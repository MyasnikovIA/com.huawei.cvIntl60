package com.p052a.p053a.p057d.p060b;

import android.support.v4.util.Pools;
import com.p052a.p053a.p081j.p082a.AbstractC0947b;
import com.p052a.p053a.p081j.p082a.C0946a;

/* renamed from: com.a.a.d.b.r */
/* loaded from: classes.dex */
final class C0803r<Z> implements InterfaceC0804s<Z>, C0946a.c {

    /* renamed from: a */
    private static final Pools.Pool<C0803r<?>> f4461a = C0946a.m5382b(20, new C0946a.a<C0803r<?>>() { // from class: com.a.a.d.b.r.1
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p081j.p082a.C0946a.a
        /* renamed from: a */
        public C0803r<?> mo4767b() {
            return new C0803r<>();
        }
    });

    /* renamed from: b */
    private final AbstractC0947b f4462b = AbstractC0947b.m5387a();

    /* renamed from: c */
    private InterfaceC0804s<Z> f4463c;

    /* renamed from: d */
    private boolean f4464d;

    /* renamed from: e */
    private boolean f4465e;

    /* renamed from: com.a.a.d.b.r$1 */
    static class AnonymousClass1 implements C0946a.a<C0803r<?>> {
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p081j.p082a.C0946a.a
        /* renamed from: a */
        public C0803r<?> mo4767b() {
            return new C0803r<>();
        }
    }

    /* renamed from: a */
    static <Z> C0803r<Z> m4899a(InterfaceC0804s<Z> interfaceC0804s) {
        C0803r<Z> c0803r = (C0803r) f4461a.acquire();
        c0803r.m4900b(interfaceC0804s);
        return c0803r;
    }

    C0803r() {
    }

    /* renamed from: b */
    private void m4900b(InterfaceC0804s<Z> interfaceC0804s) {
        this.f4465e = false;
        this.f4464d = true;
        this.f4463c = interfaceC0804s;
    }

    /* renamed from: f */
    private void m4901f() {
        this.f4463c = null;
        f4461a.release(this);
    }

    /* renamed from: a */
    public synchronized void m4902a() {
        this.f4462b.mo5389b();
        if (!this.f4464d) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f4464d = false;
        if (this.f4465e) {
            mo4882e();
        }
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: b */
    public Class<Z> mo4879b() {
        return this.f4463c.mo4879b();
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: c */
    public Z mo4880c() {
        return this.f4463c.mo4880c();
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: d */
    public int mo4881d() {
        return this.f4463c.mo4881d();
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: e */
    public synchronized void mo4882e() {
        this.f4462b.mo5389b();
        this.f4465e = true;
        if (!this.f4464d) {
            this.f4463c.mo4882e();
            m4901f();
        }
    }

    @Override // com.p052a.p053a.p081j.p082a.C0946a.c
    /* renamed from: a_ */
    public AbstractC0947b mo4768a_() {
        return this.f4462b;
    }
}
