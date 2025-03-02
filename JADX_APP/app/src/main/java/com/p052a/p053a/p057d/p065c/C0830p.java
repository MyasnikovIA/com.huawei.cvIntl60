package com.p052a.p053a.p057d.p065c;

import android.support.v4.util.Pools;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: com.a.a.d.c.p */
/* loaded from: classes.dex */
public class C0830p {

    /* renamed from: a */
    private final C0832r f4560a;

    /* renamed from: b */
    private final a f4561b;

    public C0830p(Pools.Pool<List<Exception>> pool) {
        this(new C0832r(pool));
    }

    C0830p(C0832r c0832r) {
        this.f4561b = new a();
        this.f4560a = c0832r;
    }

    /* renamed from: a */
    public synchronized <Model, Data> void m4950a(Class<Model> cls, Class<Data> cls2, InterfaceC0829o<Model, Data> interfaceC0829o) {
        this.f4560a.m4960a(cls, cls2, interfaceC0829o);
        this.f4561b.m4952a();
    }

    /* renamed from: a */
    public synchronized <A> List<InterfaceC0828n<A, ?>> m4949a(A a2) {
        ArrayList arrayList;
        List<InterfaceC0828n<A, ?>> m4947b = m4947b((Class) m4946b(a2));
        int size = m4947b.size();
        arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            InterfaceC0828n<A, ?> interfaceC0828n = m4947b.get(i);
            if (interfaceC0828n.mo4910a(a2)) {
                arrayList.add(interfaceC0828n);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public synchronized List<Class<?>> m4948a(Class<?> cls) {
        return this.f4560a.m4961b(cls);
    }

    /* renamed from: b */
    private <A> List<InterfaceC0828n<A, ?>> m4947b(Class<A> cls) {
        List<InterfaceC0828n<A, ?>> m4951a = this.f4561b.m4951a(cls);
        if (m4951a == null) {
            List<InterfaceC0828n<A, ?>> unmodifiableList = Collections.unmodifiableList(this.f4560a.m4959a(cls));
            this.f4561b.m4953a(cls, unmodifiableList);
            return unmodifiableList;
        }
        return m4951a;
    }

    /* renamed from: b */
    private static <A> Class<A> m4946b(A a2) {
        return (Class<A>) a2.getClass();
    }

    /* renamed from: com.a.a.d.c.p$a */
    private static class a {

        /* renamed from: a */
        private final Map<Class<?>, C1868a<?>> f4562a = new HashMap();

        a() {
        }

        /* renamed from: a */
        public void m4952a() {
            this.f4562a.clear();
        }

        /* renamed from: a */
        public <Model> void m4953a(Class<Model> cls, List<InterfaceC0828n<Model, ?>> list) {
            if (this.f4562a.put(cls, new C1868a<>(list)) != null) {
                throw new IllegalStateException("Already cached loaders for model: " + cls);
            }
        }

        /* renamed from: a */
        public <Model> List<InterfaceC0828n<Model, ?>> m4951a(Class<Model> cls) {
            C1868a<?> c1868a = this.f4562a.get(cls);
            if (c1868a == null) {
                return null;
            }
            return (List<InterfaceC0828n<Model, ?>>) c1868a.f4563a;
        }

        /* renamed from: com.a.a.d.c.p$a$a */
        private static class C1868a<Model> {

            /* renamed from: a */
            final List<InterfaceC0828n<Model, ?>> f4563a;

            public C1868a(List<InterfaceC0828n<Model, ?>> list) {
                this.f4563a = list;
            }
        }
    }
}
