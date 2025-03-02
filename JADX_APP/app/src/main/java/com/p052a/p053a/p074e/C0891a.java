package com.p052a.p053a.p074e;

import com.p052a.p053a.p081j.C0955i;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* renamed from: com.a.a.e.a */
/* loaded from: classes.dex */
class C0891a implements InterfaceC0898h {

    /* renamed from: a */
    private final Set<InterfaceC0899i> f4754a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    private boolean f4755b;

    /* renamed from: c */
    private boolean f4756c;

    C0891a() {
    }

    @Override // com.p052a.p053a.p074e.InterfaceC0898h
    /* renamed from: a */
    public void mo5124a(InterfaceC0899i interfaceC0899i) {
        this.f4754a.add(interfaceC0899i);
        if (this.f4756c) {
            interfaceC0899i.mo5135e();
        } else if (this.f4755b) {
            interfaceC0899i.mo5133c();
        } else {
            interfaceC0899i.mo5134d();
        }
    }

    @Override // com.p052a.p053a.p074e.InterfaceC0898h
    /* renamed from: b */
    public void mo5126b(InterfaceC0899i interfaceC0899i) {
        this.f4754a.remove(interfaceC0899i);
    }

    /* renamed from: a */
    void m5123a() {
        this.f4755b = true;
        Iterator it = C0955i.m5423a(this.f4754a).iterator();
        while (it.hasNext()) {
            ((InterfaceC0899i) it.next()).mo5133c();
        }
    }

    /* renamed from: b */
    void m5125b() {
        this.f4755b = false;
        Iterator it = C0955i.m5423a(this.f4754a).iterator();
        while (it.hasNext()) {
            ((InterfaceC0899i) it.next()).mo5134d();
        }
    }

    /* renamed from: c */
    void m5127c() {
        this.f4756c = true;
        Iterator it = C0955i.m5423a(this.f4754a).iterator();
        while (it.hasNext()) {
            ((InterfaceC0899i) it.next()).mo5135e();
        }
    }
}
