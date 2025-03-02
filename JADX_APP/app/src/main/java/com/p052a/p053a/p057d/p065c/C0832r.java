package com.p052a.p053a.p057d.p065c;

import android.support.annotation.Nullable;
import android.support.v4.util.Pools;
import com.p052a.p053a.C0921h;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p081j.C0954h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* renamed from: com.a.a.d.c.r */
/* loaded from: classes.dex */
public class C0832r {

    /* renamed from: a */
    private static final c f4572a = new c();

    /* renamed from: b */
    private static final InterfaceC0828n<Object, Object> f4573b = new a();

    /* renamed from: c */
    private final List<b<?, ?>> f4574c;

    /* renamed from: d */
    private final c f4575d;

    /* renamed from: e */
    private final Set<b<?, ?>> f4576e;

    /* renamed from: f */
    private final Pools.Pool<List<Exception>> f4577f;

    public C0832r(Pools.Pool<List<Exception>> pool) {
        this(pool, f4572a);
    }

    C0832r(Pools.Pool<List<Exception>> pool, c cVar) {
        this.f4574c = new ArrayList();
        this.f4576e = new HashSet();
        this.f4577f = pool;
        this.f4575d = cVar;
    }

    /* renamed from: a */
    synchronized <Model, Data> void m4960a(Class<Model> cls, Class<Data> cls2, InterfaceC0829o<Model, Data> interfaceC0829o) {
        m4957a(cls, cls2, interfaceC0829o, true);
    }

    /* renamed from: a */
    private <Model, Data> void m4957a(Class<Model> cls, Class<Data> cls2, InterfaceC0829o<Model, Data> interfaceC0829o, boolean z) {
        this.f4574c.add(z ? this.f4574c.size() : 0, new b<>(cls, cls2, interfaceC0829o));
    }

    /* renamed from: a */
    synchronized <Model> List<InterfaceC0828n<Model, ?>> m4959a(Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (b<?, ?> bVar : this.f4574c) {
                if (!this.f4576e.contains(bVar) && bVar.m4962a(cls)) {
                    this.f4576e.add(bVar);
                    arrayList.add(m4956a(bVar));
                    this.f4576e.remove(bVar);
                }
            }
        } catch (Throwable th) {
            this.f4576e.clear();
            throw th;
        }
        return arrayList;
    }

    /* renamed from: b */
    synchronized List<Class<?>> m4961b(Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (b<?, ?> bVar : this.f4574c) {
            if (!arrayList.contains(bVar.f4578a) && bVar.m4962a(cls)) {
                arrayList.add(bVar.f4578a);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public synchronized <Model, Data> InterfaceC0828n<Model, Data> m4958a(Class<Model> cls, Class<Data> cls2) {
        InterfaceC0828n<Model, Data> m4955a;
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (b<?, ?> bVar : this.f4574c) {
                if (this.f4576e.contains(bVar)) {
                    z = true;
                } else if (bVar.m4963a(cls, cls2)) {
                    this.f4576e.add(bVar);
                    arrayList.add(m4956a(bVar));
                    this.f4576e.remove(bVar);
                }
            }
            if (arrayList.size() > 1) {
                m4955a = this.f4575d.m4964a(arrayList, this.f4577f);
            } else if (arrayList.size() == 1) {
                m4955a = (InterfaceC0828n) arrayList.get(0);
            } else if (z) {
                m4955a = m4955a();
            } else {
                throw new C0921h.c(cls, cls2);
            }
        } catch (Throwable th) {
            this.f4576e.clear();
            throw th;
        }
        return m4955a;
    }

    /* renamed from: a */
    private <Model, Data> InterfaceC0828n<Model, Data> m4956a(b<?, ?> bVar) {
        return (InterfaceC0828n) C0954h.m5409a(bVar.f4579b.mo4912a(this));
    }

    /* renamed from: a */
    private static <Model, Data> InterfaceC0828n<Model, Data> m4955a() {
        return (InterfaceC0828n<Model, Data>) f4573b;
    }

    /* renamed from: com.a.a.d.c.r$b */
    private static class b<Model, Data> {

        /* renamed from: a */
        final Class<Data> f4578a;

        /* renamed from: b */
        final InterfaceC0829o<Model, Data> f4579b;

        /* renamed from: c */
        private final Class<Model> f4580c;

        public b(Class<Model> cls, Class<Data> cls2, InterfaceC0829o<Model, Data> interfaceC0829o) {
            this.f4580c = cls;
            this.f4578a = cls2;
            this.f4579b = interfaceC0829o;
        }

        /* renamed from: a */
        public boolean m4963a(Class<?> cls, Class<?> cls2) {
            return m4962a(cls) && this.f4578a.isAssignableFrom(cls2);
        }

        /* renamed from: a */
        public boolean m4962a(Class<?> cls) {
            return this.f4580c.isAssignableFrom(cls);
        }
    }

    /* renamed from: com.a.a.d.c.r$c */
    static class c {
        c() {
        }

        /* renamed from: a */
        public <Model, Data> C0831q<Model, Data> m4964a(List<InterfaceC0828n<Model, Data>> list, Pools.Pool<List<Exception>> pool) {
            return new C0831q<>(list, pool);
        }
    }

    /* renamed from: com.a.a.d.c.r$a */
    private static class a implements InterfaceC0828n<Object, Object> {
        a() {
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
        @Nullable
        /* renamed from: a */
        public InterfaceC0828n.a<Object> mo4909a(Object obj, int i, int i2, C0886j c0886j) {
            return null;
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
        /* renamed from: a */
        public boolean mo4910a(Object obj) {
            return false;
        }
    }
}
