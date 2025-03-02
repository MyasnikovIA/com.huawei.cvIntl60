package com.p052a.p053a.p057d.p060b;

import com.p052a.p053a.C0890e;
import com.p052a.p053a.C0921h;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0839d;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.InterfaceC0888l;
import com.p052a.p053a.p057d.InterfaceC0889m;
import com.p052a.p053a.p057d.p060b.RunnableC0791f;
import com.p052a.p053a.p057d.p060b.p062b.InterfaceC0776a;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p057d.p067d.C0860b;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: com.a.a.d.b.e */
/* loaded from: classes.dex */
final class C0790e<Transcode> {

    /* renamed from: a */
    private final List<InterfaceC0828n.a<?>> f4308a = new ArrayList();

    /* renamed from: b */
    private final List<InterfaceC0884h> f4309b = new ArrayList();

    /* renamed from: c */
    private C0890e f4310c;

    /* renamed from: d */
    private Object f4311d;

    /* renamed from: e */
    private int f4312e;

    /* renamed from: f */
    private int f4313f;

    /* renamed from: g */
    private Class<?> f4314g;

    /* renamed from: h */
    private RunnableC0791f.d f4315h;

    /* renamed from: i */
    private C0886j f4316i;

    /* renamed from: j */
    private Map<Class<?>, InterfaceC0889m<?>> f4317j;

    /* renamed from: k */
    private Class<Transcode> f4318k;

    /* renamed from: l */
    private boolean f4319l;

    /* renamed from: m */
    private boolean f4320m;

    /* renamed from: n */
    private InterfaceC0884h f4321n;

    /* renamed from: o */
    private EnumC0914g f4322o;

    /* renamed from: p */
    private AbstractC0793h f4323p;

    /* renamed from: q */
    private boolean f4324q;

    /* renamed from: r */
    private boolean f4325r;

    C0790e() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    <R> C0790e<R> m4780a(C0890e c0890e, Object obj, InterfaceC0884h interfaceC0884h, int i, int i2, AbstractC0793h abstractC0793h, Class<?> cls, Class<R> cls2, EnumC0914g enumC0914g, C0886j c0886j, Map<Class<?>, InterfaceC0889m<?>> map, boolean z, boolean z2, RunnableC0791f.d dVar) {
        this.f4310c = c0890e;
        this.f4311d = obj;
        this.f4321n = interfaceC0884h;
        this.f4312e = i;
        this.f4313f = i2;
        this.f4323p = abstractC0793h;
        this.f4314g = cls;
        this.f4315h = dVar;
        this.f4318k = cls2;
        this.f4322o = enumC0914g;
        this.f4316i = c0886j;
        this.f4317j = map;
        this.f4324q = z;
        this.f4325r = z2;
        return this;
    }

    /* renamed from: a */
    void m4783a() {
        this.f4310c = null;
        this.f4311d = null;
        this.f4321n = null;
        this.f4314g = null;
        this.f4318k = null;
        this.f4316i = null;
        this.f4322o = null;
        this.f4317j = null;
        this.f4323p = null;
        this.f4308a.clear();
        this.f4319l = false;
        this.f4309b.clear();
        this.f4320m = false;
    }

    /* renamed from: b */
    InterfaceC0776a m4787b() {
        return this.f4315h.mo4835a();
    }

    /* renamed from: c */
    AbstractC0793h m4790c() {
        return this.f4323p;
    }

    /* renamed from: d */
    EnumC0914g m4792d() {
        return this.f4322o;
    }

    /* renamed from: e */
    C0886j m4793e() {
        return this.f4316i;
    }

    /* renamed from: f */
    InterfaceC0884h m4794f() {
        return this.f4321n;
    }

    /* renamed from: g */
    int m4795g() {
        return this.f4312e;
    }

    /* renamed from: h */
    int m4796h() {
        return this.f4313f;
    }

    /* renamed from: i */
    List<Class<?>> m4797i() {
        return this.f4310c.m5121c().m5217b(this.f4311d.getClass(), this.f4314g, this.f4318k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    boolean m4786a(Class<?> cls) {
        return m4788b(cls) != null;
    }

    /* renamed from: b */
    <Data> C0802q<Data, ?, Transcode> m4788b(Class<Data> cls) {
        return this.f4310c.m5121c().m5202a(cls, this.f4314g, this.f4318k);
    }

    /* renamed from: j */
    boolean m4798j() {
        return this.f4325r;
    }

    /* renamed from: c */
    <Z> InterfaceC0889m<Z> m4791c(Class<Z> cls) {
        InterfaceC0889m<Z> interfaceC0889m = (InterfaceC0889m) this.f4317j.get(cls);
        if (interfaceC0889m == null) {
            if (this.f4317j.isEmpty() && this.f4324q) {
                throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
            }
            return C0860b.m5049a();
        }
        return interfaceC0889m;
    }

    /* renamed from: a */
    boolean m4784a(InterfaceC0804s<?> interfaceC0804s) {
        return this.f4310c.m5121c().m5214a(interfaceC0804s);
    }

    /* renamed from: b */
    <Z> InterfaceC0888l<Z> m4789b(InterfaceC0804s<Z> interfaceC0804s) {
        return this.f4310c.m5121c().m5216b((InterfaceC0804s) interfaceC0804s);
    }

    /* renamed from: a */
    List<InterfaceC0828n<File, ?>> m4782a(File file) {
        return this.f4310c.m5121c().m5218c(file);
    }

    /* renamed from: a */
    boolean m4785a(InterfaceC0884h interfaceC0884h) {
        List<InterfaceC0828n.a<?>> m4799k = m4799k();
        int size = m4799k.size();
        for (int i = 0; i < size; i++) {
            if (m4799k.get(i).f4557a.equals(interfaceC0884h)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: k */
    List<InterfaceC0828n.a<?>> m4799k() {
        if (!this.f4319l) {
            this.f4319l = true;
            this.f4308a.clear();
            List m5218c = this.f4310c.m5121c().m5218c(this.f4311d);
            int size = m5218c.size();
            for (int i = 0; i < size; i++) {
                InterfaceC0828n.a<?> mo4909a = ((InterfaceC0828n) m5218c.get(i)).mo4909a(this.f4311d, this.f4312e, this.f4313f, this.f4316i);
                if (mo4909a != null) {
                    this.f4308a.add(mo4909a);
                }
            }
        }
        return this.f4308a;
    }

    /* renamed from: l */
    List<InterfaceC0884h> m4800l() {
        if (!this.f4320m) {
            this.f4320m = true;
            this.f4309b.clear();
            List<InterfaceC0828n.a<?>> m4799k = m4799k();
            int size = m4799k.size();
            for (int i = 0; i < size; i++) {
                InterfaceC0828n.a<?> aVar = m4799k.get(i);
                if (!this.f4309b.contains(aVar.f4557a)) {
                    this.f4309b.add(aVar.f4557a);
                }
                for (int i2 = 0; i2 < aVar.f4558b.size(); i2++) {
                    if (!this.f4309b.contains(aVar.f4558b.get(i2))) {
                        this.f4309b.add(aVar.f4558b.get(i2));
                    }
                }
            }
        }
        return this.f4309b;
    }

    /* renamed from: a */
    <X> InterfaceC0839d<X> m4781a(X x) {
        return this.f4310c.m5121c().m5203a((C0921h) x);
    }
}
