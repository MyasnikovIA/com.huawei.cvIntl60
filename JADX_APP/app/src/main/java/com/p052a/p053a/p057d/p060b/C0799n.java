package com.p052a.p053a.p057d.p060b;

import android.os.Looper;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p081j.C0954h;

/* renamed from: com.a.a.d.b.n */
/* loaded from: classes.dex */
class C0799n<Z> implements InterfaceC0804s<Z> {

    /* renamed from: a */
    private final boolean f4444a;

    /* renamed from: b */
    private a f4445b;

    /* renamed from: c */
    private InterfaceC0884h f4446c;

    /* renamed from: d */
    private int f4447d;

    /* renamed from: e */
    private boolean f4448e;

    /* renamed from: f */
    private final InterfaceC0804s<Z> f4449f;

    /* renamed from: com.a.a.d.b.n$a */
    interface a {
        /* renamed from: b */
        void mo4857b(InterfaceC0884h interfaceC0884h, C0799n<?> c0799n);
    }

    C0799n(InterfaceC0804s<Z> interfaceC0804s, boolean z) {
        this.f4449f = (InterfaceC0804s) C0954h.m5409a(interfaceC0804s);
        this.f4444a = z;
    }

    /* renamed from: a */
    void m4877a(InterfaceC0884h interfaceC0884h, a aVar) {
        this.f4446c = interfaceC0884h;
        this.f4445b = aVar;
    }

    /* renamed from: a */
    boolean m4878a() {
        return this.f4444a;
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: b */
    public Class<Z> mo4879b() {
        return this.f4449f.mo4879b();
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: c */
    public Z mo4880c() {
        return this.f4449f.mo4880c();
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: d */
    public int mo4881d() {
        return this.f4449f.mo4881d();
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: e */
    public void mo4882e() {
        if (this.f4447d > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f4448e) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f4448e = true;
        this.f4449f.mo4882e();
    }

    /* renamed from: f */
    void m4883f() {
        if (this.f4448e) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call acquire on the main thread");
        }
        this.f4447d++;
    }

    /* renamed from: g */
    void m4884g() {
        if (this.f4447d <= 0) {
            throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
        }
        if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call release on the main thread");
        }
        int i = this.f4447d - 1;
        this.f4447d = i;
        if (i == 0) {
            this.f4445b.mo4857b(this.f4446c, this);
        }
    }

    public String toString() {
        return "EngineResource{isCacheable=" + this.f4444a + ", listener=" + this.f4445b + ", key=" + this.f4446c + ", acquired=" + this.f4447d + ", isRecycled=" + this.f4448e + ", resource=" + this.f4449f + '}';
    }
}
