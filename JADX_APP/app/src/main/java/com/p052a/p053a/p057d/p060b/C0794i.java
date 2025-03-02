package com.p052a.p053a.p057d.p060b;

import android.os.Looper;
import android.os.MessageQueue;
import android.support.v4.util.Pools;
import android.util.Log;
import com.p052a.p053a.C0890e;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.InterfaceC0889m;
import com.p052a.p053a.p057d.p060b.C0799n;
import com.p052a.p053a.p057d.p060b.RunnableC0791f;
import com.p052a.p053a.p057d.p060b.p062b.C0777b;
import com.p052a.p053a.p057d.p060b.p062b.InterfaceC0776a;
import com.p052a.p053a.p057d.p060b.p062b.InterfaceC0783h;
import com.p052a.p053a.p057d.p060b.p063c.C0787a;
import com.p052a.p053a.p077h.InterfaceC0938e;
import com.p052a.p053a.p081j.C0950d;
import com.p052a.p053a.p081j.C0955i;
import com.p052a.p053a.p081j.p082a.C0946a;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.a.a.d.b.i */
/* loaded from: classes.dex */
public class C0794i implements InterfaceC0783h.a, InterfaceC0796k, C0799n.a {

    /* renamed from: a */
    private final Map<InterfaceC0884h, C0795j<?>> f4387a;

    /* renamed from: b */
    private final C0798m f4388b;

    /* renamed from: c */
    private final InterfaceC0783h f4389c;

    /* renamed from: d */
    private final b f4390d;

    /* renamed from: e */
    private final Map<InterfaceC0884h, WeakReference<C0799n<?>>> f4391e;

    /* renamed from: f */
    private final C0807v f4392f;

    /* renamed from: g */
    private final c f4393g;

    /* renamed from: h */
    private final a f4394h;

    /* renamed from: i */
    private ReferenceQueue<C0799n<?>> f4395i;

    /* renamed from: com.a.a.d.b.i$d */
    public static class d {

        /* renamed from: a */
        private final C0795j<?> f4408a;

        /* renamed from: b */
        private final InterfaceC0938e f4409b;

        public d(InterfaceC0938e interfaceC0938e, C0795j<?> c0795j) {
            this.f4409b = interfaceC0938e;
            this.f4408a = c0795j;
        }

        /* renamed from: a */
        public void m4862a() {
            this.f4408a.m4872b(this.f4409b);
        }
    }

    public C0794i(InterfaceC0783h interfaceC0783h, InterfaceC0776a.a aVar, C0787a c0787a, C0787a c0787a2, C0787a c0787a3) {
        this(interfaceC0783h, aVar, c0787a, c0787a2, c0787a3, null, null, null, null, null, null);
    }

    C0794i(InterfaceC0783h interfaceC0783h, InterfaceC0776a.a aVar, C0787a c0787a, C0787a c0787a2, C0787a c0787a3, Map<InterfaceC0884h, C0795j<?>> map, C0798m c0798m, Map<InterfaceC0884h, WeakReference<C0799n<?>>> map2, b bVar, a aVar2, C0807v c0807v) {
        this.f4389c = interfaceC0783h;
        this.f4393g = new c(aVar);
        this.f4391e = map2 == null ? new HashMap<>() : map2;
        this.f4388b = c0798m == null ? new C0798m() : c0798m;
        this.f4387a = map == null ? new HashMap<>() : map;
        this.f4390d = bVar == null ? new b(c0787a, c0787a2, c0787a3, this) : bVar;
        this.f4394h = aVar2 == null ? new a(this.f4393g) : aVar2;
        this.f4392f = c0807v == null ? new C0807v() : c0807v;
        interfaceC0783h.mo4741a(this);
    }

    /* renamed from: a */
    public <R> d m4853a(C0890e c0890e, Object obj, InterfaceC0884h interfaceC0884h, int i, int i2, Class<?> cls, Class<R> cls2, EnumC0914g enumC0914g, AbstractC0793h abstractC0793h, Map<Class<?>, InterfaceC0889m<?>> map, boolean z, boolean z2, C0886j c0886j, boolean z3, boolean z4, boolean z5, InterfaceC0938e interfaceC0938e) {
        C0955i.m5425a();
        long m5397a = C0950d.m5397a();
        C0797l m4876a = this.f4388b.m4876a(obj, interfaceC0884h, i, i2, map, cls, cls2, c0886j);
        C0799n<?> m4852b = m4852b(m4876a, z3);
        if (m4852b != null) {
            interfaceC0938e.mo5319a(m4852b, EnumC0741a.MEMORY_CACHE);
            if (Log.isLoggable("Engine", 2)) {
                m4851a("Loaded resource from cache", m5397a, m4876a);
            }
            return null;
        }
        C0799n<?> m4849a = m4849a(m4876a, z3);
        if (m4849a != null) {
            interfaceC0938e.mo5319a(m4849a, EnumC0741a.MEMORY_CACHE);
            if (Log.isLoggable("Engine", 2)) {
                m4851a("Loaded resource from active resources", m5397a, m4876a);
            }
            return null;
        }
        C0795j<?> c0795j = this.f4387a.get(m4876a);
        if (c0795j != null) {
            c0795j.m4869a(interfaceC0938e);
            if (Log.isLoggable("Engine", 2)) {
                m4851a("Added to existing load", m5397a, m4876a);
            }
            return new d(interfaceC0938e, c0795j);
        }
        C0795j<R> m4860a = this.f4390d.m4860a(m4876a, z3, z4);
        RunnableC0791f<R> m4858a = this.f4394h.m4858a(c0890e, obj, m4876a, interfaceC0884h, i, i2, cls, cls2, enumC0914g, abstractC0793h, map, z, z2, z5, c0886j, m4860a);
        this.f4387a.put(m4876a, m4860a);
        m4860a.m4869a(interfaceC0938e);
        m4860a.m4871b(m4858a);
        if (Log.isLoggable("Engine", 2)) {
            m4851a("Started new load", m5397a, m4876a);
        }
        return new d(interfaceC0938e, m4860a);
    }

    /* renamed from: a */
    private static void m4851a(String str, long j, InterfaceC0884h interfaceC0884h) {
        Log.v("Engine", str + " in " + C0950d.m5396a(j) + "ms, key: " + interfaceC0884h);
    }

    /* renamed from: a */
    private C0799n<?> m4849a(InterfaceC0884h interfaceC0884h, boolean z) {
        C0799n<?> c0799n;
        if (!z) {
            return null;
        }
        WeakReference<C0799n<?>> weakReference = this.f4391e.get(interfaceC0884h);
        if (weakReference != null) {
            c0799n = weakReference.get();
            if (c0799n != null) {
                c0799n.m4883f();
            } else {
                this.f4391e.remove(interfaceC0884h);
            }
        } else {
            c0799n = null;
        }
        return c0799n;
    }

    /* renamed from: b */
    private C0799n<?> m4852b(InterfaceC0884h interfaceC0884h, boolean z) {
        if (!z) {
            return null;
        }
        C0799n<?> m4848a = m4848a(interfaceC0884h);
        if (m4848a != null) {
            m4848a.m4883f();
            this.f4391e.put(interfaceC0884h, new f(interfaceC0884h, m4848a, m4850a()));
            return m4848a;
        }
        return m4848a;
    }

    /* renamed from: a */
    private C0799n<?> m4848a(InterfaceC0884h interfaceC0884h) {
        InterfaceC0804s<?> mo4739a = this.f4389c.mo4739a(interfaceC0884h);
        if (mo4739a == null) {
            return null;
        }
        if (mo4739a instanceof C0799n) {
            return (C0799n) mo4739a;
        }
        return new C0799n<>(mo4739a, true);
    }

    /* renamed from: a */
    public void m4855a(InterfaceC0804s<?> interfaceC0804s) {
        C0955i.m5425a();
        if (interfaceC0804s instanceof C0799n) {
            ((C0799n) interfaceC0804s).m4884g();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0796k
    /* renamed from: a */
    public void mo4856a(InterfaceC0884h interfaceC0884h, C0799n<?> c0799n) {
        C0955i.m5425a();
        if (c0799n != null) {
            c0799n.m4877a(interfaceC0884h, this);
            if (c0799n.m4878a()) {
                this.f4391e.put(interfaceC0884h, new f(interfaceC0884h, c0799n, m4850a()));
            }
        }
        this.f4387a.remove(interfaceC0884h);
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0796k
    /* renamed from: a */
    public void mo4854a(C0795j c0795j, InterfaceC0884h interfaceC0884h) {
        C0955i.m5425a();
        if (c0795j.equals(this.f4387a.get(interfaceC0884h))) {
            this.f4387a.remove(interfaceC0884h);
        }
    }

    @Override // com.p052a.p053a.p057d.p060b.p062b.InterfaceC0783h.a
    /* renamed from: b */
    public void mo4745b(InterfaceC0804s<?> interfaceC0804s) {
        C0955i.m5425a();
        this.f4392f.m4906a(interfaceC0804s);
    }

    @Override // com.p052a.p053a.p057d.p060b.C0799n.a
    /* renamed from: b */
    public void mo4857b(InterfaceC0884h interfaceC0884h, C0799n c0799n) {
        C0955i.m5425a();
        this.f4391e.remove(interfaceC0884h);
        if (c0799n.m4878a()) {
            this.f4389c.mo4743b(interfaceC0884h, c0799n);
        } else {
            this.f4392f.m4906a(c0799n);
        }
    }

    /* renamed from: a */
    private ReferenceQueue<C0799n<?>> m4850a() {
        if (this.f4395i == null) {
            this.f4395i = new ReferenceQueue<>();
            Looper.myQueue().addIdleHandler(new e(this.f4391e, this.f4395i));
        }
        return this.f4395i;
    }

    /* renamed from: com.a.a.d.b.i$c */
    private static class c implements RunnableC0791f.d {

        /* renamed from: a */
        private final InterfaceC0776a.a f4406a;

        /* renamed from: b */
        private volatile InterfaceC0776a f4407b;

        public c(InterfaceC0776a.a aVar) {
            this.f4406a = aVar;
        }

        @Override // com.p052a.p053a.p057d.p060b.RunnableC0791f.d
        /* renamed from: a */
        public InterfaceC0776a mo4835a() {
            if (this.f4407b == null) {
                synchronized (this) {
                    if (this.f4407b == null) {
                        this.f4407b = this.f4406a.mo4729a();
                    }
                    if (this.f4407b == null) {
                        this.f4407b = new C0777b();
                    }
                }
            }
            return this.f4407b;
        }
    }

    /* renamed from: com.a.a.d.b.i$f */
    private static class f extends WeakReference<C0799n<?>> {

        /* renamed from: a */
        final InterfaceC0884h f4412a;

        public f(InterfaceC0884h interfaceC0884h, C0799n<?> c0799n, ReferenceQueue<? super C0799n<?>> referenceQueue) {
            super(c0799n, referenceQueue);
            this.f4412a = interfaceC0884h;
        }
    }

    /* renamed from: com.a.a.d.b.i$e */
    private static class e implements MessageQueue.IdleHandler {

        /* renamed from: a */
        private final Map<InterfaceC0884h, WeakReference<C0799n<?>>> f4410a;

        /* renamed from: b */
        private final ReferenceQueue<C0799n<?>> f4411b;

        public e(Map<InterfaceC0884h, WeakReference<C0799n<?>>> map, ReferenceQueue<C0799n<?>> referenceQueue) {
            this.f4410a = map;
            this.f4411b = referenceQueue;
        }

        @Override // android.os.MessageQueue.IdleHandler
        public boolean queueIdle() {
            f fVar = (f) this.f4411b.poll();
            if (fVar != null) {
                this.f4410a.remove(fVar.f4412a);
                return true;
            }
            return true;
        }
    }

    /* renamed from: com.a.a.d.b.i$a */
    static class a {

        /* renamed from: a */
        final RunnableC0791f.d f4396a;

        /* renamed from: b */
        final Pools.Pool<RunnableC0791f<?>> f4397b = C0946a.m5379a(150, new C0946a.a<RunnableC0791f<?>>() { // from class: com.a.a.d.b.i.a.1
            AnonymousClass1() {
            }

            @Override // com.p052a.p053a.p081j.p082a.C0946a.a
            /* renamed from: a */
            public RunnableC0791f<?> mo4767b() {
                return new RunnableC0791f<>(a.this.f4396a, a.this.f4397b);
            }
        });

        /* renamed from: c */
        private int f4398c;

        /* renamed from: com.a.a.d.b.i$a$1 */
        class AnonymousClass1 implements C0946a.a<RunnableC0791f<?>> {
            AnonymousClass1() {
            }

            @Override // com.p052a.p053a.p081j.p082a.C0946a.a
            /* renamed from: a */
            public RunnableC0791f<?> mo4767b() {
                return new RunnableC0791f<>(a.this.f4396a, a.this.f4397b);
            }
        }

        a(RunnableC0791f.d dVar) {
            this.f4396a = dVar;
        }

        /* renamed from: a */
        <R> RunnableC0791f<R> m4858a(C0890e c0890e, Object obj, C0797l c0797l, InterfaceC0884h interfaceC0884h, int i, int i2, Class<?> cls, Class<R> cls2, EnumC0914g enumC0914g, AbstractC0793h abstractC0793h, Map<Class<?>, InterfaceC0889m<?>> map, boolean z, boolean z2, boolean z3, C0886j c0886j, RunnableC0791f.a<R> aVar) {
            RunnableC0791f<?> acquire = this.f4397b.acquire();
            int i3 = this.f4398c;
            this.f4398c = i3 + 1;
            return (RunnableC0791f<R>) acquire.m4822a(c0890e, obj, c0797l, interfaceC0884h, i, i2, cls, cls2, enumC0914g, abstractC0793h, map, z, z2, z3, c0886j, aVar, i3);
        }
    }

    /* renamed from: com.a.a.d.b.i$b */
    static class b {

        /* renamed from: a */
        final C0787a f4400a;

        /* renamed from: b */
        final C0787a f4401b;

        /* renamed from: c */
        final C0787a f4402c;

        /* renamed from: d */
        final InterfaceC0796k f4403d;

        /* renamed from: e */
        final Pools.Pool<C0795j<?>> f4404e = C0946a.m5379a(150, new C0946a.a<C0795j<?>>() { // from class: com.a.a.d.b.i.b.1
            AnonymousClass1() {
            }

            @Override // com.p052a.p053a.p081j.p082a.C0946a.a
            /* renamed from: a */
            public C0795j<?> mo4767b() {
                return new C0795j<>(b.this.f4400a, b.this.f4401b, b.this.f4402c, b.this.f4403d, b.this.f4404e);
            }
        });

        /* renamed from: com.a.a.d.b.i$b$1 */
        class AnonymousClass1 implements C0946a.a<C0795j<?>> {
            AnonymousClass1() {
            }

            @Override // com.p052a.p053a.p081j.p082a.C0946a.a
            /* renamed from: a */
            public C0795j<?> mo4767b() {
                return new C0795j<>(b.this.f4400a, b.this.f4401b, b.this.f4402c, b.this.f4403d, b.this.f4404e);
            }
        }

        b(C0787a c0787a, C0787a c0787a2, C0787a c0787a3, InterfaceC0796k interfaceC0796k) {
            this.f4400a = c0787a;
            this.f4401b = c0787a2;
            this.f4402c = c0787a3;
            this.f4403d = interfaceC0796k;
        }

        /* renamed from: a */
        <R> C0795j<R> m4860a(InterfaceC0884h interfaceC0884h, boolean z, boolean z2) {
            return (C0795j<R>) this.f4404e.acquire().m4867a(interfaceC0884h, z, z2);
        }
    }
}
