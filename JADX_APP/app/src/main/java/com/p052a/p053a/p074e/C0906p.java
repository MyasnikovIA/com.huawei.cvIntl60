package com.p052a.p053a.p074e;

import com.p052a.p053a.p077h.p078a.InterfaceC0930h;
import com.p052a.p053a.p081j.C0955i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* renamed from: com.a.a.e.p */
/* loaded from: classes.dex */
public final class C0906p implements InterfaceC0899i {

    /* renamed from: a */
    private final Set<InterfaceC0930h<?>> f4789a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: a */
    public void m5173a(InterfaceC0930h<?> interfaceC0930h) {
        this.f4789a.add(interfaceC0930h);
    }

    /* renamed from: b */
    public void m5175b(InterfaceC0930h<?> interfaceC0930h) {
        this.f4789a.remove(interfaceC0930h);
    }

    @Override // com.p052a.p053a.p074e.InterfaceC0899i
    /* renamed from: c */
    public void mo5133c() {
        Iterator it = C0955i.m5423a(this.f4789a).iterator();
        while (it.hasNext()) {
            ((InterfaceC0930h) it.next()).mo5133c();
        }
    }

    @Override // com.p052a.p053a.p074e.InterfaceC0899i
    /* renamed from: d */
    public void mo5134d() {
        Iterator it = C0955i.m5423a(this.f4789a).iterator();
        while (it.hasNext()) {
            ((InterfaceC0930h) it.next()).mo5134d();
        }
    }

    @Override // com.p052a.p053a.p074e.InterfaceC0899i
    /* renamed from: e */
    public void mo5135e() {
        Iterator it = C0955i.m5423a(this.f4789a).iterator();
        while (it.hasNext()) {
            ((InterfaceC0930h) it.next()).mo5135e();
        }
    }

    /* renamed from: a */
    public List<InterfaceC0930h<?>> m5172a() {
        return new ArrayList(this.f4789a);
    }

    /* renamed from: b */
    public void m5174b() {
        this.f4789a.clear();
    }
}
