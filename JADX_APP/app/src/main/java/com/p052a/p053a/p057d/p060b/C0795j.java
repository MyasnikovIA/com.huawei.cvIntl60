package com.p052a.p053a.p057d.p060b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.util.Pools;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.p060b.RunnableC0791f;
import com.p052a.p053a.p057d.p060b.p063c.C0787a;
import com.p052a.p053a.p077h.InterfaceC0938e;
import com.p052a.p053a.p081j.C0955i;
import com.p052a.p053a.p081j.p082a.AbstractC0947b;
import com.p052a.p053a.p081j.p082a.C0946a;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.a.a.d.b.j */
/* loaded from: classes.dex */
class C0795j<R> implements RunnableC0791f.a<R>, C0946a.c {

    /* renamed from: a */
    private static final a f4413a = new a();

    /* renamed from: b */
    private static final Handler f4414b = new Handler(Looper.getMainLooper(), new b());

    /* renamed from: c */
    private final List<InterfaceC0938e> f4415c;

    /* renamed from: d */
    private final AbstractC0947b f4416d;

    /* renamed from: e */
    private final Pools.Pool<C0795j<?>> f4417e;

    /* renamed from: f */
    private final a f4418f;

    /* renamed from: g */
    private final InterfaceC0796k f4419g;

    /* renamed from: h */
    private final C0787a f4420h;

    /* renamed from: i */
    private final C0787a f4421i;

    /* renamed from: j */
    private final C0787a f4422j;

    /* renamed from: k */
    private InterfaceC0884h f4423k;

    /* renamed from: l */
    private boolean f4424l;

    /* renamed from: m */
    private boolean f4425m;

    /* renamed from: n */
    private InterfaceC0804s<?> f4426n;

    /* renamed from: o */
    private EnumC0741a f4427o;

    /* renamed from: p */
    private boolean f4428p;

    /* renamed from: q */
    private C0800o f4429q;

    /* renamed from: r */
    private boolean f4430r;

    /* renamed from: s */
    private List<InterfaceC0938e> f4431s;

    /* renamed from: t */
    private C0799n<?> f4432t;

    /* renamed from: u */
    private RunnableC0791f<R> f4433u;

    /* renamed from: v */
    private volatile boolean f4434v;

    C0795j(C0787a c0787a, C0787a c0787a2, C0787a c0787a3, InterfaceC0796k interfaceC0796k, Pools.Pool<C0795j<?>> pool) {
        this(c0787a, c0787a2, c0787a3, interfaceC0796k, pool, f4413a);
    }

    C0795j(C0787a c0787a, C0787a c0787a2, C0787a c0787a3, InterfaceC0796k interfaceC0796k, Pools.Pool<C0795j<?>> pool, a aVar) {
        this.f4415c = new ArrayList(2);
        this.f4416d = AbstractC0947b.m5387a();
        this.f4420h = c0787a;
        this.f4421i = c0787a2;
        this.f4422j = c0787a3;
        this.f4419g = interfaceC0796k;
        this.f4417e = pool;
        this.f4418f = aVar;
    }

    /* renamed from: a */
    C0795j<R> m4867a(InterfaceC0884h interfaceC0884h, boolean z, boolean z2) {
        this.f4423k = interfaceC0884h;
        this.f4424l = z;
        this.f4425m = z2;
        return this;
    }

    /* renamed from: b */
    public void m4871b(RunnableC0791f<R> runnableC0791f) {
        this.f4433u = runnableC0791f;
        (runnableC0791f.m4824a() ? this.f4420h : m4866f()).execute(runnableC0791f);
    }

    /* renamed from: a */
    public void m4869a(InterfaceC0938e interfaceC0938e) {
        C0955i.m5425a();
        this.f4416d.mo5389b();
        if (this.f4428p) {
            interfaceC0938e.mo5319a(this.f4432t, this.f4427o);
        } else if (this.f4430r) {
            interfaceC0938e.mo5318a(this.f4429q);
        } else {
            this.f4415c.add(interfaceC0938e);
        }
    }

    /* renamed from: b */
    public void m4872b(InterfaceC0938e interfaceC0938e) {
        C0955i.m5425a();
        this.f4416d.mo5389b();
        if (this.f4428p || this.f4430r) {
            m4864c(interfaceC0938e);
            return;
        }
        this.f4415c.remove(interfaceC0938e);
        if (this.f4415c.isEmpty()) {
            m4868a();
        }
    }

    /* renamed from: f */
    private C0787a m4866f() {
        return this.f4425m ? this.f4422j : this.f4421i;
    }

    /* renamed from: c */
    private void m4864c(InterfaceC0938e interfaceC0938e) {
        if (this.f4431s == null) {
            this.f4431s = new ArrayList(2);
        }
        if (!this.f4431s.contains(interfaceC0938e)) {
            this.f4431s.add(interfaceC0938e);
        }
    }

    /* renamed from: d */
    private boolean m4865d(InterfaceC0938e interfaceC0938e) {
        return this.f4431s != null && this.f4431s.contains(interfaceC0938e);
    }

    /* renamed from: a */
    void m4868a() {
        if (!this.f4430r && !this.f4428p && !this.f4434v) {
            this.f4434v = true;
            this.f4433u.m4825b();
            this.f4419g.mo4854a(this, this.f4423k);
        }
    }

    /* renamed from: b */
    void m4870b() {
        this.f4416d.mo5389b();
        if (this.f4434v) {
            this.f4426n.mo4882e();
            m4863a(false);
            return;
        }
        if (this.f4415c.isEmpty()) {
            throw new IllegalStateException("Received a resource without any callbacks to notify");
        }
        if (this.f4428p) {
            throw new IllegalStateException("Already have resource");
        }
        this.f4432t = this.f4418f.m4875a(this.f4426n, this.f4424l);
        this.f4428p = true;
        this.f4432t.m4883f();
        this.f4419g.mo4856a(this.f4423k, this.f4432t);
        for (InterfaceC0938e interfaceC0938e : this.f4415c) {
            if (!m4865d(interfaceC0938e)) {
                this.f4432t.m4883f();
                interfaceC0938e.mo5319a(this.f4432t, this.f4427o);
            }
        }
        this.f4432t.m4884g();
        m4863a(false);
    }

    /* renamed from: c */
    void m4873c() {
        this.f4416d.mo5389b();
        if (!this.f4434v) {
            throw new IllegalStateException("Not cancelled");
        }
        this.f4419g.mo4854a(this, this.f4423k);
        m4863a(false);
    }

    /* renamed from: a */
    private void m4863a(boolean z) {
        C0955i.m5425a();
        this.f4415c.clear();
        this.f4423k = null;
        this.f4432t = null;
        this.f4426n = null;
        if (this.f4431s != null) {
            this.f4431s.clear();
        }
        this.f4430r = false;
        this.f4434v = false;
        this.f4428p = false;
        this.f4433u.m4823a(z);
        this.f4433u = null;
        this.f4429q = null;
        this.f4427o = null;
        this.f4417e.release(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.p052a.p053a.p057d.p060b.RunnableC0791f.a
    /* renamed from: a */
    public void mo4828a(InterfaceC0804s<R> interfaceC0804s, EnumC0741a enumC0741a) {
        this.f4426n = interfaceC0804s;
        this.f4427o = enumC0741a;
        f4414b.obtainMessage(1, this).sendToTarget();
    }

    @Override // com.p052a.p053a.p057d.p060b.RunnableC0791f.a
    /* renamed from: a */
    public void mo4827a(C0800o c0800o) {
        this.f4429q = c0800o;
        f4414b.obtainMessage(2, this).sendToTarget();
    }

    @Override // com.p052a.p053a.p057d.p060b.RunnableC0791f.a
    /* renamed from: a */
    public void mo4826a(RunnableC0791f<?> runnableC0791f) {
        m4866f().execute(runnableC0791f);
    }

    /* renamed from: e */
    void m4874e() {
        this.f4416d.mo5389b();
        if (this.f4434v) {
            m4863a(false);
            return;
        }
        if (this.f4415c.isEmpty()) {
            throw new IllegalStateException("Received an exception without any callbacks to notify");
        }
        if (this.f4430r) {
            throw new IllegalStateException("Already failed once");
        }
        this.f4430r = true;
        this.f4419g.mo4856a(this.f4423k, (C0799n<?>) null);
        for (InterfaceC0938e interfaceC0938e : this.f4415c) {
            if (!m4865d(interfaceC0938e)) {
                interfaceC0938e.mo5318a(this.f4429q);
            }
        }
        m4863a(false);
    }

    @Override // com.p052a.p053a.p081j.p082a.C0946a.c
    /* renamed from: a_ */
    public AbstractC0947b mo4768a_() {
        return this.f4416d;
    }

    /* renamed from: com.a.a.d.b.j$a */
    static class a {
        a() {
        }

        /* renamed from: a */
        public <R> C0799n<R> m4875a(InterfaceC0804s<R> interfaceC0804s, boolean z) {
            return new C0799n<>(interfaceC0804s, z);
        }
    }

    /* renamed from: com.a.a.d.b.j$b */
    private static class b implements Handler.Callback {
        b() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            C0795j c0795j = (C0795j) message.obj;
            switch (message.what) {
                case 1:
                    c0795j.m4870b();
                    return true;
                case 2:
                    c0795j.m4874e();
                    return true;
                case 3:
                    c0795j.m4873c();
                    return true;
                default:
                    throw new IllegalStateException("Unrecognized message: " + message.what);
            }
        }
    }
}
