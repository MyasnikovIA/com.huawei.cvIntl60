package com.p052a.p053a.p077h.p078a;

import com.p052a.p053a.p081j.C0955i;

/* renamed from: com.a.a.h.a.f */
/* loaded from: classes.dex */
public abstract class AbstractC0928f<Z> extends AbstractC0923a<Z> {

    /* renamed from: a */
    private final int f4829a;

    /* renamed from: b */
    private final int f4830b;

    public AbstractC0928f() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public AbstractC0928f(int i, int i2) {
        this.f4829a = i;
        this.f4830b = i2;
    }

    @Override // com.p052a.p053a.p077h.p078a.InterfaceC0930h
    /* renamed from: a */
    public final void mo5239a(InterfaceC0929g interfaceC0929g) {
        if (!C0955i.m5426a(this.f4829a, this.f4830b)) {
            throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.f4829a + " and height: " + this.f4830b + ", either provide dimensions in the constructor or call override()");
        }
        interfaceC0929g.mo5241a(this.f4829a, this.f4830b);
    }

    @Override // com.p052a.p053a.p077h.p078a.InterfaceC0930h
    /* renamed from: b */
    public void mo5240b(InterfaceC0929g interfaceC0929g) {
    }
}
