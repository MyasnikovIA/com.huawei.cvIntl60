package com.p052a.p053a.p074e;

import com.p052a.p053a.p077h.InterfaceC0922a;
import com.p052a.p053a.p081j.C0955i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* renamed from: com.a.a.e.n */
/* loaded from: classes.dex */
public class C0904n {

    /* renamed from: a */
    private final Set<InterfaceC0922a> f4779a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    private final List<InterfaceC0922a> f4780b = new ArrayList();

    /* renamed from: c */
    private boolean f4781c;

    /* renamed from: a */
    public void m5157a(InterfaceC0922a interfaceC0922a) {
        this.f4779a.add(interfaceC0922a);
        if (!this.f4781c) {
            interfaceC0922a.mo5219a();
        } else {
            this.f4780b.add(interfaceC0922a);
        }
    }

    /* renamed from: b */
    public boolean m5159b(InterfaceC0922a interfaceC0922a) {
        if (interfaceC0922a != null) {
            r0 = this.f4780b.remove(interfaceC0922a) || this.f4779a.remove(interfaceC0922a);
            if (r0) {
                interfaceC0922a.mo5222c();
                interfaceC0922a.mo5227i();
            }
        }
        return r0;
    }

    /* renamed from: a */
    public void m5156a() {
        this.f4781c = true;
        for (InterfaceC0922a interfaceC0922a : C0955i.m5423a(this.f4779a)) {
            if (interfaceC0922a.mo5223e()) {
                interfaceC0922a.mo5221b();
                this.f4780b.add(interfaceC0922a);
            }
        }
    }

    /* renamed from: b */
    public void m5158b() {
        this.f4781c = false;
        for (InterfaceC0922a interfaceC0922a : C0955i.m5423a(this.f4779a)) {
            if (!interfaceC0922a.mo5224f() && !interfaceC0922a.mo5226h() && !interfaceC0922a.mo5223e()) {
                interfaceC0922a.mo5219a();
            }
        }
        this.f4780b.clear();
    }

    /* renamed from: c */
    public void m5160c() {
        Iterator it = C0955i.m5423a(this.f4779a).iterator();
        while (it.hasNext()) {
            m5159b((InterfaceC0922a) it.next());
        }
        this.f4780b.clear();
    }

    /* renamed from: d */
    public void m5161d() {
        for (InterfaceC0922a interfaceC0922a : C0955i.m5423a(this.f4779a)) {
            if (!interfaceC0922a.mo5224f() && !interfaceC0922a.mo5226h()) {
                interfaceC0922a.mo5221b();
                if (!this.f4781c) {
                    interfaceC0922a.mo5219a();
                } else {
                    this.f4780b.add(interfaceC0922a);
                }
            }
        }
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f4779a.size() + ", isPaused=" + this.f4781c + "}";
    }
}
