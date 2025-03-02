package com.p052a.p053a.p077h;

import android.support.annotation.Nullable;

/* renamed from: com.a.a.h.g */
/* loaded from: classes.dex */
public class C0940g implements InterfaceC0922a, InterfaceC0932b {

    /* renamed from: a */
    private InterfaceC0922a f4903a;

    /* renamed from: b */
    private InterfaceC0922a f4904b;

    /* renamed from: c */
    @Nullable
    private InterfaceC0932b f4905c;

    /* renamed from: d */
    private boolean f4906d;

    public C0940g() {
        this(null);
    }

    public C0940g(InterfaceC0932b interfaceC0932b) {
        this.f4905c = interfaceC0932b;
    }

    /* renamed from: a */
    public void m5344a(InterfaceC0922a interfaceC0922a, InterfaceC0922a interfaceC0922a2) {
        this.f4903a = interfaceC0922a;
        this.f4904b = interfaceC0922a2;
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0932b
    /* renamed from: b */
    public boolean mo5255b(InterfaceC0922a interfaceC0922a) {
        return m5341j() && (interfaceC0922a.equals(this.f4903a) || !this.f4903a.mo5225g());
    }

    /* renamed from: j */
    private boolean m5341j() {
        return this.f4905c == null || this.f4905c.mo5255b(this);
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0932b
    /* renamed from: c */
    public boolean mo5256c(InterfaceC0922a interfaceC0922a) {
        return m5342k() && interfaceC0922a.equals(this.f4903a) && !mo5258d();
    }

    /* renamed from: k */
    private boolean m5342k() {
        return this.f4905c == null || this.f4905c.mo5256c(this);
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0932b
    /* renamed from: d */
    public boolean mo5258d() {
        return m5343l() || mo5225g();
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0932b
    /* renamed from: d */
    public void mo5257d(InterfaceC0922a interfaceC0922a) {
        if (!interfaceC0922a.equals(this.f4904b)) {
            if (this.f4905c != null) {
                this.f4905c.mo5257d(this);
            }
            if (!this.f4904b.mo5224f()) {
                this.f4904b.mo5222c();
            }
        }
    }

    /* renamed from: l */
    private boolean m5343l() {
        return this.f4905c != null && this.f4905c.mo5258d();
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: a */
    public void mo5219a() {
        this.f4906d = true;
        if (!this.f4904b.mo5223e()) {
            this.f4904b.mo5219a();
        }
        if (this.f4906d && !this.f4903a.mo5223e()) {
            this.f4903a.mo5219a();
        }
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: b */
    public void mo5221b() {
        this.f4906d = false;
        this.f4903a.mo5221b();
        this.f4904b.mo5221b();
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: c */
    public void mo5222c() {
        this.f4906d = false;
        this.f4904b.mo5222c();
        this.f4903a.mo5222c();
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: e */
    public boolean mo5223e() {
        return this.f4903a.mo5223e();
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: f */
    public boolean mo5224f() {
        return this.f4903a.mo5224f() || this.f4904b.mo5224f();
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: g */
    public boolean mo5225g() {
        return this.f4903a.mo5225g() || this.f4904b.mo5225g();
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: h */
    public boolean mo5226h() {
        return this.f4903a.mo5226h();
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: i */
    public void mo5227i() {
        this.f4903a.mo5227i();
        this.f4904b.mo5227i();
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: a */
    public boolean mo5220a(InterfaceC0922a interfaceC0922a) {
        if (!(interfaceC0922a instanceof C0940g)) {
            return false;
        }
        C0940g c0940g = (C0940g) interfaceC0922a;
        if (this.f4903a == null) {
            if (c0940g.f4903a != null) {
                return false;
            }
        } else if (!this.f4903a.mo5220a(c0940g.f4903a)) {
            return false;
        }
        if (this.f4904b == null) {
            if (c0940g.f4904b != null) {
                return false;
            }
        } else if (!this.f4904b.mo5220a(c0940g.f4904b)) {
            return false;
        }
        return true;
    }
}
