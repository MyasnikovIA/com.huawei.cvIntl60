package com.p052a.p053a.p057d.p058a;

import com.p052a.p053a.p057d.p058a.InterfaceC0749c;
import com.p052a.p053a.p081j.C0954h;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.a.a.d.a.d */
/* loaded from: classes.dex */
public class C0750d {

    /* renamed from: b */
    private static final InterfaceC0749c.a<?> f4173b = new InterfaceC0749c.a<Object>() { // from class: com.a.a.d.a.d.1
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0749c.a
        /* renamed from: a */
        public InterfaceC0749c<Object> mo4634a(Object obj) {
            return new a(obj);
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0749c.a
        /* renamed from: a */
        public Class<Object> mo4635a() {
            throw new UnsupportedOperationException("Not implemented");
        }
    };

    /* renamed from: a */
    private final Map<Class<?>, InterfaceC0749c.a<?>> f4174a = new HashMap();

    /* renamed from: com.a.a.d.a.d$1 */
    static class AnonymousClass1 implements InterfaceC0749c.a<Object> {
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0749c.a
        /* renamed from: a */
        public InterfaceC0749c<Object> mo4634a(Object obj) {
            return new a(obj);
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0749c.a
        /* renamed from: a */
        public Class<Object> mo4635a() {
            throw new UnsupportedOperationException("Not implemented");
        }
    }

    /* renamed from: a */
    public synchronized void m4637a(InterfaceC0749c.a<?> aVar) {
        this.f4174a.put(aVar.mo4635a(), aVar);
    }

    /* renamed from: a */
    public synchronized <T> InterfaceC0749c<T> m4636a(T t) {
        InterfaceC0749c.a<?> aVar;
        C0954h.m5409a(t);
        aVar = this.f4174a.get(t.getClass());
        if (aVar == null) {
            Iterator<InterfaceC0749c.a<?>> it = this.f4174a.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                InterfaceC0749c.a<?> next = it.next();
                if (next.mo4635a().isAssignableFrom(t.getClass())) {
                    aVar = next;
                    break;
                }
            }
        }
        if (aVar == null) {
            aVar = f4173b;
        }
        return (InterfaceC0749c<T>) aVar.mo4634a(t);
    }

    /* renamed from: com.a.a.d.a.d$a */
    private static class a implements InterfaceC0749c<Object> {

        /* renamed from: a */
        private final Object f4175a;

        public a(Object obj) {
            this.f4175a = obj;
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0749c
        /* renamed from: a */
        public Object mo4632a() {
            return this.f4175a;
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0749c
        /* renamed from: b */
        public void mo4633b() {
        }
    }
}
