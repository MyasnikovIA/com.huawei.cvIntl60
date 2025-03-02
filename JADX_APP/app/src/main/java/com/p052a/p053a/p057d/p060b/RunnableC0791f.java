package com.p052a.p053a.p057d.p060b;

import android.os.Build;
import android.support.v4.os.TraceCompat;
import android.support.v4.util.Pools;
import android.util.Log;
import com.p052a.p053a.C0890e;
import com.p052a.p053a.C0921h;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.EnumC0809c;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.InterfaceC0888l;
import com.p052a.p053a.p057d.InterfaceC0889m;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p057d.p058a.InterfaceC0749c;
import com.p052a.p053a.p057d.p060b.C0792g;
import com.p052a.p053a.p057d.p060b.InterfaceC0788d;
import com.p052a.p053a.p057d.p060b.p062b.InterfaceC0776a;
import com.p052a.p053a.p057d.p067d.p068a.C0852l;
import com.p052a.p053a.p081j.C0950d;
import com.p052a.p053a.p081j.C0954h;
import com.p052a.p053a.p081j.p082a.AbstractC0947b;
import com.p052a.p053a.p081j.p082a.C0946a;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: com.a.a.d.b.f */
/* loaded from: classes.dex */
class RunnableC0791f<R> implements InterfaceC0788d.a, C0946a.c, Comparable<RunnableC0791f<?>>, Runnable {

    /* renamed from: A */
    private InterfaceC0748b<?> f4326A;

    /* renamed from: B */
    private volatile InterfaceC0788d f4327B;

    /* renamed from: C */
    private volatile boolean f4328C;

    /* renamed from: D */
    private volatile boolean f4329D;

    /* renamed from: c */
    InterfaceC0884h f4332c;

    /* renamed from: d */
    int f4333d;

    /* renamed from: e */
    int f4334e;

    /* renamed from: f */
    AbstractC0793h f4335f;

    /* renamed from: g */
    C0886j f4336g;

    /* renamed from: h */
    InterfaceC0884h f4337h;

    /* renamed from: k */
    private final d f4340k;

    /* renamed from: l */
    private final Pools.Pool<RunnableC0791f<?>> f4341l;

    /* renamed from: n */
    private C0890e f4343n;

    /* renamed from: o */
    private EnumC0914g f4344o;

    /* renamed from: p */
    private C0797l f4345p;

    /* renamed from: q */
    private a<R> f4346q;

    /* renamed from: r */
    private int f4347r;

    /* renamed from: s */
    private g f4348s;

    /* renamed from: t */
    private f f4349t;

    /* renamed from: u */
    private long f4350u;

    /* renamed from: v */
    private boolean f4351v;

    /* renamed from: w */
    private Thread f4352w;

    /* renamed from: x */
    private InterfaceC0884h f4353x;

    /* renamed from: y */
    private Object f4354y;

    /* renamed from: z */
    private EnumC0741a f4355z;

    /* renamed from: a */
    final C0790e<R> f4330a = new C0790e<>();

    /* renamed from: i */
    private final List<Exception> f4338i = new ArrayList();

    /* renamed from: j */
    private final AbstractC0947b f4339j = AbstractC0947b.m5387a();

    /* renamed from: b */
    final c<?> f4331b = new c<>();

    /* renamed from: m */
    private final e f4342m = new e();

    /* renamed from: com.a.a.d.b.f$a */
    interface a<R> {
        /* renamed from: a */
        void mo4826a(RunnableC0791f<?> runnableC0791f);

        /* renamed from: a */
        void mo4827a(C0800o c0800o);

        /* renamed from: a */
        void mo4828a(InterfaceC0804s<R> interfaceC0804s, EnumC0741a enumC0741a);
    }

    /* renamed from: com.a.a.d.b.f$d */
    interface d {
        /* renamed from: a */
        InterfaceC0776a mo4835a();
    }

    /* renamed from: com.a.a.d.b.f$f */
    private enum f {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* renamed from: com.a.a.d.b.f$g */
    private enum g {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    RunnableC0791f(d dVar, Pools.Pool<RunnableC0791f<?>> pool) {
        this.f4340k = dVar;
        this.f4341l = pool;
    }

    /* renamed from: a */
    RunnableC0791f<R> m4822a(C0890e c0890e, Object obj, C0797l c0797l, InterfaceC0884h interfaceC0884h, int i, int i2, Class<?> cls, Class<R> cls2, EnumC0914g enumC0914g, AbstractC0793h abstractC0793h, Map<Class<?>, InterfaceC0889m<?>> map, boolean z, boolean z2, boolean z3, C0886j c0886j, a<R> aVar, int i3) {
        this.f4330a.m4780a(c0890e, obj, interfaceC0884h, i, i2, abstractC0793h, cls, cls2, enumC0914g, c0886j, map, z, z2, this.f4340k);
        this.f4343n = c0890e;
        this.f4332c = interfaceC0884h;
        this.f4344o = enumC0914g;
        this.f4345p = c0797l;
        this.f4333d = i;
        this.f4334e = i2;
        this.f4335f = abstractC0793h;
        this.f4351v = z3;
        this.f4336g = c0886j;
        this.f4346q = aVar;
        this.f4347r = i3;
        this.f4349t = f.INITIALIZE;
        return this;
    }

    /* renamed from: a */
    boolean m4824a() {
        g m4801a = m4801a(g.INITIALIZE);
        return m4801a == g.RESOURCE_CACHE || m4801a == g.DATA_CACHE;
    }

    /* renamed from: a */
    void m4823a(boolean z) {
        if (this.f4342m.m4838a(z)) {
            m4813g();
        }
    }

    /* renamed from: e */
    private void m4811e() {
        if (this.f4342m.m4837a()) {
            m4813g();
        }
    }

    /* renamed from: f */
    private void m4812f() {
        if (this.f4342m.m4839b()) {
            m4813g();
        }
    }

    /* renamed from: g */
    private void m4813g() {
        this.f4342m.m4840c();
        this.f4331b.m4834b();
        this.f4330a.m4783a();
        this.f4328C = false;
        this.f4343n = null;
        this.f4332c = null;
        this.f4336g = null;
        this.f4344o = null;
        this.f4345p = null;
        this.f4346q = null;
        this.f4348s = null;
        this.f4327B = null;
        this.f4352w = null;
        this.f4337h = null;
        this.f4354y = null;
        this.f4355z = null;
        this.f4326A = null;
        this.f4350u = 0L;
        this.f4329D = false;
        this.f4338i.clear();
        this.f4341l.release(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(RunnableC0791f<?> runnableC0791f) {
        int m4814h = m4814h() - runnableC0791f.m4814h();
        if (m4814h == 0) {
            return this.f4347r - runnableC0791f.f4347r;
        }
        return m4814h;
    }

    /* renamed from: h */
    private int m4814h() {
        return this.f4344o.ordinal();
    }

    /* renamed from: b */
    public void m4825b() {
        this.f4329D = true;
        InterfaceC0788d interfaceC0788d = this.f4327B;
        if (interfaceC0788d != null) {
            interfaceC0788d.mo4652b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public void run() {
        boolean z = true;
        z = true;
        TraceCompat.beginSection("DecodeJob#run");
        InterfaceC0748b<?> interfaceC0748b = this.f4326A;
        try {
            try {
                if (this.f4329D) {
                    m4818l();
                    r0 = interfaceC0748b == null || this.f4326A == null || interfaceC0748b.equals(this.f4326A);
                    String str = "Fetchers don't match!, old: " + interfaceC0748b + " new: " + this.f4326A;
                    C0954h.m5413a(r0, str);
                    if (interfaceC0748b != null) {
                        interfaceC0748b.mo4609a();
                    }
                    TraceCompat.endSection();
                    z = str;
                } else {
                    m4815i();
                    r0 = interfaceC0748b == null || this.f4326A == null || interfaceC0748b.equals(this.f4326A);
                    String str2 = "Fetchers don't match!, old: " + interfaceC0748b + " new: " + this.f4326A;
                    C0954h.m5413a(r0, str2);
                    if (interfaceC0748b != null) {
                        interfaceC0748b.mo4609a();
                    }
                    TraceCompat.endSection();
                    z = str2;
                }
            } catch (RuntimeException e2) {
                if (Log.isLoggable("DecodeJob", 3)) {
                    Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.f4329D + ", stage: " + this.f4348s, e2);
                }
                if (this.f4348s != g.ENCODE) {
                    m4818l();
                }
                if (!this.f4329D) {
                    throw e2;
                }
                if (interfaceC0748b == null || this.f4326A == null || interfaceC0748b.equals(this.f4326A)) {
                    r0 = z ? 1 : 0;
                }
                C0954h.m5413a(r0, "Fetchers don't match!, old: " + interfaceC0748b + " new: " + this.f4326A);
                if (interfaceC0748b != null) {
                    interfaceC0748b.mo4609a();
                }
                TraceCompat.endSection();
            }
        } catch (Throwable th) {
            if (interfaceC0748b == null || this.f4326A == null || interfaceC0748b.equals(this.f4326A)) {
                r0 = z;
            }
            C0954h.m5413a(r0, "Fetchers don't match!, old: " + interfaceC0748b + " new: " + this.f4326A);
            if (interfaceC0748b != null) {
                interfaceC0748b.mo4609a();
            }
            TraceCompat.endSection();
            throw th;
        }
    }

    /* renamed from: i */
    private void m4815i() {
        switch (this.f4349t) {
            case INITIALIZE:
                this.f4348s = m4801a(g.INITIALIZE);
                this.f4327B = m4816j();
                m4817k();
                return;
            case SWITCH_TO_SOURCE_SERVICE:
                m4817k();
                return;
            case DECODE_DATA:
                m4820n();
                return;
            default:
                throw new IllegalStateException("Unrecognized run reason: " + this.f4349t);
        }
    }

    /* renamed from: j */
    private InterfaceC0788d m4816j() {
        switch (this.f4348s) {
            case RESOURCE_CACHE:
                return new C0805t(this.f4330a, this);
            case DATA_CACHE:
                return new C0760a(this.f4330a, this);
            case SOURCE:
                return new C0808w(this.f4330a, this);
            case FINISHED:
                return null;
            default:
                throw new IllegalStateException("Unrecognized stage: " + this.f4348s);
        }
    }

    /* renamed from: k */
    private void m4817k() {
        this.f4352w = Thread.currentThread();
        this.f4350u = C0950d.m5397a();
        boolean z = false;
        while (!this.f4329D && this.f4327B != null && !(z = this.f4327B.mo4651a())) {
            this.f4348s = m4801a(this.f4348s);
            this.f4327B = m4816j();
            if (this.f4348s == g.SOURCE) {
                mo4779c();
                return;
            }
        }
        if ((this.f4348s == g.FINISHED || this.f4329D) && !z) {
            m4818l();
        }
    }

    /* renamed from: l */
    private void m4818l() {
        m4819m();
        this.f4346q.mo4827a(new C0800o("Failed to load resource", new ArrayList(this.f4338i)));
        m4812f();
    }

    /* renamed from: a */
    private void m4806a(InterfaceC0804s<R> interfaceC0804s, EnumC0741a enumC0741a) {
        m4819m();
        this.f4346q.mo4828a(interfaceC0804s, enumC0741a);
    }

    /* renamed from: m */
    private void m4819m() {
        this.f4339j.mo5389b();
        if (this.f4328C) {
            throw new IllegalStateException("Already notified");
        }
        this.f4328C = true;
    }

    /* renamed from: a */
    private g m4801a(g gVar) {
        switch (gVar) {
            case RESOURCE_CACHE:
                return this.f4335f.mo4847b() ? g.DATA_CACHE : m4801a(g.DATA_CACHE);
            case DATA_CACHE:
                return this.f4351v ? g.FINISHED : g.SOURCE;
            case SOURCE:
            case FINISHED:
                return g.FINISHED;
            case INITIALIZE:
                return this.f4335f.mo4844a() ? g.RESOURCE_CACHE : m4801a(g.RESOURCE_CACHE);
            default:
                throw new IllegalArgumentException("Unrecognized stage: " + gVar);
        }
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0788d.a
    /* renamed from: c */
    public void mo4779c() {
        this.f4349t = f.SWITCH_TO_SOURCE_SERVICE;
        this.f4346q.mo4826a((RunnableC0791f<?>) this);
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0788d.a
    /* renamed from: a */
    public void mo4778a(InterfaceC0884h interfaceC0884h, Object obj, InterfaceC0748b<?> interfaceC0748b, EnumC0741a enumC0741a, InterfaceC0884h interfaceC0884h2) {
        this.f4337h = interfaceC0884h;
        this.f4354y = obj;
        this.f4326A = interfaceC0748b;
        this.f4355z = enumC0741a;
        this.f4353x = interfaceC0884h2;
        if (Thread.currentThread() != this.f4352w) {
            this.f4349t = f.DECODE_DATA;
            this.f4346q.mo4826a((RunnableC0791f<?>) this);
        } else {
            TraceCompat.beginSection("DecodeJob.decodeFromRetrievedData");
            try {
                m4820n();
            } finally {
                TraceCompat.endSection();
            }
        }
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0788d.a
    /* renamed from: a */
    public void mo4777a(InterfaceC0884h interfaceC0884h, Exception exc, InterfaceC0748b<?> interfaceC0748b, EnumC0741a enumC0741a) {
        interfaceC0748b.mo4609a();
        C0800o c0800o = new C0800o("Fetching data failed", exc);
        c0800o.m4892a(interfaceC0884h, enumC0741a, interfaceC0748b.mo4626d());
        this.f4338i.add(c0800o);
        if (Thread.currentThread() != this.f4352w) {
            this.f4349t = f.SWITCH_TO_SOURCE_SERVICE;
            this.f4346q.mo4826a((RunnableC0791f<?>) this);
        } else {
            m4817k();
        }
    }

    /* renamed from: n */
    private void m4820n() {
        InterfaceC0804s<R> interfaceC0804s;
        if (Log.isLoggable("DecodeJob", 2)) {
            m4808a("Retrieved data", this.f4350u, "data: " + this.f4354y + ", cache key: " + this.f4337h + ", fetcher: " + this.f4326A);
        }
        try {
            interfaceC0804s = m4802a(this.f4326A, (InterfaceC0748b<?>) this.f4354y, this.f4355z);
        } catch (C0800o e2) {
            e2.m4891a(this.f4353x, this.f4355z);
            this.f4338i.add(e2);
            interfaceC0804s = null;
        }
        if (interfaceC0804s != null) {
            m4810b(interfaceC0804s, this.f4355z);
        } else {
            m4817k();
        }
    }

    /* renamed from: b */
    private void m4810b(InterfaceC0804s<R> interfaceC0804s, EnumC0741a enumC0741a) {
        if (interfaceC0804s instanceof InterfaceC0801p) {
            ((InterfaceC0801p) interfaceC0804s).mo4896a();
        }
        C0803r c0803r = null;
        if (this.f4331b.m4833a()) {
            C0803r m4899a = C0803r.m4899a(interfaceC0804s);
            c0803r = m4899a;
            interfaceC0804s = m4899a;
        }
        m4806a((InterfaceC0804s) interfaceC0804s, enumC0741a);
        this.f4348s = g.ENCODE;
        try {
            if (this.f4331b.m4833a()) {
                this.f4331b.m4831a(this.f4340k, this.f4336g);
            }
        } finally {
            if (c0803r != null) {
                c0803r.m4902a();
            }
            m4811e();
        }
    }

    /* renamed from: a */
    private <Data> InterfaceC0804s<R> m4802a(InterfaceC0748b<?> interfaceC0748b, Data data, EnumC0741a enumC0741a) {
        if (data != null) {
            try {
                long m5397a = C0950d.m5397a();
                InterfaceC0804s<R> m4803a = m4803a((RunnableC0791f<R>) data, enumC0741a);
                if (Log.isLoggable("DecodeJob", 2)) {
                    m4807a("Decoded result " + m4803a, m5397a);
                }
                return m4803a;
            } finally {
                interfaceC0748b.mo4609a();
            }
        }
        return null;
    }

    /* renamed from: a */
    private <Data> InterfaceC0804s<R> m4803a(Data data, EnumC0741a enumC0741a) {
        return m4804a((RunnableC0791f<R>) data, enumC0741a, (C0802q<RunnableC0791f<R>, ResourceType, R>) this.f4330a.m4788b(data.getClass()));
    }

    /* renamed from: a */
    private C0886j m4805a(EnumC0741a enumC0741a) {
        C0886j c0886j = this.f4336g;
        if (Build.VERSION.SDK_INT >= 26 && c0886j.m5115a(C0852l.f4626d) == null) {
            if (enumC0741a == EnumC0741a.RESOURCE_DISK_CACHE || this.f4330a.m4798j()) {
                C0886j c0886j2 = new C0886j();
                c0886j2.m5116a(this.f4336g);
                c0886j2.m5114a(C0852l.f4626d, true);
                return c0886j2;
            }
            return c0886j;
        }
        return c0886j;
    }

    /* renamed from: a */
    private <Data, ResourceType> InterfaceC0804s<R> m4804a(Data data, EnumC0741a enumC0741a, C0802q<Data, ResourceType, R> c0802q) {
        C0886j m4805a = m4805a(enumC0741a);
        InterfaceC0749c<Data> m5215b = this.f4343n.m5121c().m5215b((C0921h) data);
        try {
            return c0802q.m4898a(m5215b, m4805a, this.f4333d, this.f4334e, new b(enumC0741a));
        } finally {
            m5215b.mo4633b();
        }
    }

    /* renamed from: a */
    private void m4807a(String str, long j) {
        m4808a(str, j, (String) null);
    }

    /* renamed from: a */
    private void m4808a(String str, long j, String str2) {
        Log.v("DecodeJob", str + " in " + C0950d.m5396a(j) + ", load key: " + this.f4345p + (str2 != null ? ", " + str2 : "") + ", thread: " + Thread.currentThread().getName());
    }

    @Override // com.p052a.p053a.p081j.p082a.C0946a.c
    /* renamed from: a_ */
    public AbstractC0947b mo4768a_() {
        return this.f4339j;
    }

    /* renamed from: com.a.a.d.b.f$b */
    private final class b<Z> implements C0792g.a<Z> {

        /* renamed from: b */
        private final EnumC0741a f4359b;

        b(EnumC0741a enumC0741a) {
            this.f4359b = enumC0741a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.p052a.p053a.p057d.p060b.C0792g.a
        /* renamed from: a */
        public InterfaceC0804s<Z> mo4830a(InterfaceC0804s<Z> interfaceC0804s) {
            InterfaceC0804s<Z> interfaceC0804s2;
            InterfaceC0889m<Z> interfaceC0889m;
            EnumC0809c enumC0809c;
            InterfaceC0888l interfaceC0888l;
            InterfaceC0884h c0806u;
            Class<Z> m4829b = m4829b(interfaceC0804s);
            if (this.f4359b != EnumC0741a.RESOURCE_DISK_CACHE) {
                interfaceC0889m = RunnableC0791f.this.f4330a.m4791c(m4829b);
                interfaceC0804s2 = interfaceC0889m.mo4973a(RunnableC0791f.this.f4343n, interfaceC0804s, RunnableC0791f.this.f4333d, RunnableC0791f.this.f4334e);
            } else {
                interfaceC0804s2 = interfaceC0804s;
                interfaceC0889m = null;
            }
            if (!interfaceC0804s.equals(interfaceC0804s2)) {
                interfaceC0804s.mo4882e();
            }
            if (RunnableC0791f.this.f4330a.m4784a((InterfaceC0804s<?>) interfaceC0804s2)) {
                InterfaceC0888l m4789b = RunnableC0791f.this.f4330a.m4789b(interfaceC0804s2);
                enumC0809c = m4789b.mo4971a(RunnableC0791f.this.f4336g);
                interfaceC0888l = m4789b;
            } else {
                enumC0809c = EnumC0809c.NONE;
                interfaceC0888l = null;
            }
            if (RunnableC0791f.this.f4335f.mo4846a(!RunnableC0791f.this.f4330a.m4785a(RunnableC0791f.this.f4337h), this.f4359b, enumC0809c)) {
                if (interfaceC0888l == null) {
                    throw new C0921h.d(interfaceC0804s2.mo4880c().getClass());
                }
                if (enumC0809c == EnumC0809c.SOURCE) {
                    c0806u = new C0775b(RunnableC0791f.this.f4337h, RunnableC0791f.this.f4332c);
                } else if (enumC0809c == EnumC0809c.TRANSFORMED) {
                    c0806u = new C0806u(RunnableC0791f.this.f4337h, RunnableC0791f.this.f4332c, RunnableC0791f.this.f4333d, RunnableC0791f.this.f4334e, interfaceC0889m, m4829b, RunnableC0791f.this.f4336g);
                } else {
                    throw new IllegalArgumentException("Unknown strategy: " + enumC0809c);
                }
                C0803r m4899a = C0803r.m4899a(interfaceC0804s2);
                RunnableC0791f.this.f4331b.m4832a(c0806u, interfaceC0888l, m4899a);
                return m4899a;
            }
            return interfaceC0804s2;
        }

        /* renamed from: b */
        private Class<Z> m4829b(InterfaceC0804s<Z> interfaceC0804s) {
            return (Class<Z>) interfaceC0804s.mo4880c().getClass();
        }
    }

    /* renamed from: com.a.a.d.b.f$e */
    private static class e {

        /* renamed from: a */
        private boolean f4363a;

        /* renamed from: b */
        private boolean f4364b;

        /* renamed from: c */
        private boolean f4365c;

        e() {
        }

        /* renamed from: a */
        synchronized boolean m4838a(boolean z) {
            this.f4363a = true;
            return m4836b(z);
        }

        /* renamed from: a */
        synchronized boolean m4837a() {
            this.f4364b = true;
            return m4836b(false);
        }

        /* renamed from: b */
        synchronized boolean m4839b() {
            this.f4365c = true;
            return m4836b(false);
        }

        /* renamed from: c */
        synchronized void m4840c() {
            this.f4364b = false;
            this.f4363a = false;
            this.f4365c = false;
        }

        /* renamed from: b */
        private boolean m4836b(boolean z) {
            return (this.f4365c || z || this.f4364b) && this.f4363a;
        }
    }

    /* renamed from: com.a.a.d.b.f$c */
    private static class c<Z> {

        /* renamed from: a */
        private InterfaceC0884h f4360a;

        /* renamed from: b */
        private InterfaceC0888l<Z> f4361b;

        /* renamed from: c */
        private C0803r<Z> f4362c;

        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        <X> void m4832a(InterfaceC0884h interfaceC0884h, InterfaceC0888l<X> interfaceC0888l, C0803r<X> c0803r) {
            this.f4360a = interfaceC0884h;
            this.f4361b = interfaceC0888l;
            this.f4362c = c0803r;
        }

        /* renamed from: a */
        void m4831a(d dVar, C0886j c0886j) {
            TraceCompat.beginSection("DecodeJob.encode");
            try {
                dVar.mo4835a().mo4728a(this.f4360a, new C0786c(this.f4361b, this.f4362c, c0886j));
            } finally {
                this.f4362c.m4902a();
                TraceCompat.endSection();
            }
        }

        /* renamed from: a */
        boolean m4833a() {
            return this.f4362c != null;
        }

        /* renamed from: b */
        void m4834b() {
            this.f4360a = null;
            this.f4361b = null;
            this.f4362c = null;
        }
    }
}
