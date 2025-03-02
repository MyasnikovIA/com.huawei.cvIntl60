package com.p052a.p053a.p057d.p067d.p072e;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.p052a.p053a.C0941i;
import com.p052a.p053a.C0944j;
import com.p052a.p053a.ComponentCallbacks2C0735c;
import com.p052a.p053a.p055b.InterfaceC0730a;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.InterfaceC0889m;
import com.p052a.p053a.p057d.p060b.AbstractC0793h;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import com.p052a.p053a.p077h.C0937d;
import com.p052a.p053a.p077h.p078a.AbstractC0928f;
import com.p052a.p053a.p077h.p078a.InterfaceC0930h;
import com.p052a.p053a.p077h.p079b.InterfaceC0934b;
import com.p052a.p053a.p080i.C0943b;
import com.p052a.p053a.p081j.C0954h;
import com.p052a.p053a.p081j.C0955i;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.a.a.d.d.e.g */
/* loaded from: classes.dex */
class C0872g {

    /* renamed from: a */
    final C0944j f4695a;

    /* renamed from: b */
    private final InterfaceC0730a f4696b;

    /* renamed from: c */
    private final Handler f4697c;

    /* renamed from: d */
    private final List<b> f4698d;

    /* renamed from: e */
    private final InterfaceC0765e f4699e;

    /* renamed from: f */
    private boolean f4700f;

    /* renamed from: g */
    private boolean f4701g;

    /* renamed from: h */
    private boolean f4702h;

    /* renamed from: i */
    private C0941i<Bitmap> f4703i;

    /* renamed from: j */
    private a f4704j;

    /* renamed from: k */
    private boolean f4705k;

    /* renamed from: l */
    private a f4706l;

    /* renamed from: m */
    private Bitmap f4707m;

    /* renamed from: n */
    private InterfaceC0889m<Bitmap> f4708n;

    /* renamed from: com.a.a.d.d.e.g$b */
    public interface b {
        /* renamed from: f */
        void mo5069f();
    }

    public C0872g(ComponentCallbacks2C0735c componentCallbacks2C0735c, InterfaceC0730a interfaceC0730a, int i, int i2, InterfaceC0889m<Bitmap> interfaceC0889m, Bitmap bitmap) {
        this(componentCallbacks2C0735c.m4556a(), ComponentCallbacks2C0735c.m4551b(componentCallbacks2C0735c.m4562c()), interfaceC0730a, null, m5072a(ComponentCallbacks2C0735c.m4551b(componentCallbacks2C0735c.m4562c()), i, i2), interfaceC0889m, bitmap);
    }

    C0872g(InterfaceC0765e interfaceC0765e, C0944j c0944j, InterfaceC0730a interfaceC0730a, Handler handler, C0941i<Bitmap> c0941i, InterfaceC0889m<Bitmap> interfaceC0889m, Bitmap bitmap) {
        this.f4698d = new ArrayList();
        this.f4700f = false;
        this.f4701g = false;
        this.f4702h = false;
        this.f4695a = c0944j;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new c()) : handler;
        this.f4699e = interfaceC0765e;
        this.f4697c = handler;
        this.f4703i = c0941i;
        this.f4696b = interfaceC0730a;
        m5082a(interfaceC0889m, bitmap);
    }

    /* renamed from: a */
    void m5082a(InterfaceC0889m<Bitmap> interfaceC0889m, Bitmap bitmap) {
        this.f4708n = (InterfaceC0889m) C0954h.m5409a(interfaceC0889m);
        this.f4707m = (Bitmap) C0954h.m5409a(bitmap);
        this.f4703i = this.f4703i.m5354a(new C0937d().m5283a(interfaceC0889m));
    }

    /* renamed from: a */
    Bitmap m5079a() {
        return this.f4707m;
    }

    /* renamed from: a */
    void m5081a(b bVar) {
        if (this.f4705k) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        boolean isEmpty = this.f4698d.isEmpty();
        if (this.f4698d.contains(bVar)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        this.f4698d.add(bVar);
        if (isEmpty) {
            m5075l();
        }
    }

    /* renamed from: b */
    void m5084b(b bVar) {
        this.f4698d.remove(bVar);
        if (this.f4698d.isEmpty()) {
            m5076m();
        }
    }

    /* renamed from: b */
    int m5083b() {
        return m5091i().getWidth();
    }

    /* renamed from: c */
    int m5085c() {
        return m5091i().getHeight();
    }

    /* renamed from: d */
    int m5086d() {
        return this.f4696b.mo4510g() + m5074k();
    }

    /* renamed from: e */
    int m5087e() {
        if (this.f4704j != null) {
            return this.f4704j.f4709a;
        }
        return -1;
    }

    /* renamed from: k */
    private int m5074k() {
        return C0955i.m5416a(m5091i().getWidth(), m5091i().getHeight(), m5091i().getConfig());
    }

    /* renamed from: f */
    ByteBuffer m5088f() {
        return this.f4696b.mo4504a().asReadOnlyBuffer();
    }

    /* renamed from: g */
    int m5089g() {
        return this.f4696b.mo4507d();
    }

    /* renamed from: l */
    private void m5075l() {
        if (!this.f4700f) {
            this.f4700f = true;
            this.f4705k = false;
            m5077n();
        }
    }

    /* renamed from: m */
    private void m5076m() {
        this.f4700f = false;
    }

    /* renamed from: h */
    void m5090h() {
        this.f4698d.clear();
        m5078o();
        m5076m();
        if (this.f4704j != null) {
            this.f4695a.m5363a((InterfaceC0930h<?>) this.f4704j);
            this.f4704j = null;
        }
        if (this.f4706l != null) {
            this.f4695a.m5363a((InterfaceC0930h<?>) this.f4706l);
            this.f4706l = null;
        }
        this.f4696b.mo4512i();
        this.f4705k = true;
    }

    /* renamed from: i */
    Bitmap m5091i() {
        return this.f4704j != null ? this.f4704j.m5092a() : this.f4707m;
    }

    /* renamed from: n */
    private void m5077n() {
        if (this.f4700f && !this.f4701g) {
            if (this.f4702h) {
                this.f4696b.mo4509f();
                this.f4702h = false;
            }
            this.f4701g = true;
            long mo4506c = this.f4696b.mo4506c() + SystemClock.uptimeMillis();
            this.f4696b.mo4505b();
            this.f4706l = new a(this.f4697c, this.f4696b.mo4508e(), mo4506c);
            this.f4703i.clone().m5354a(C0937d.m5267a(m5073j())).m5355a(this.f4696b).m5352a((C0941i<Bitmap>) this.f4706l);
        }
    }

    /* renamed from: o */
    private void m5078o() {
        if (this.f4707m != null) {
            this.f4699e.mo4679a(this.f4707m);
            this.f4707m = null;
        }
    }

    /* renamed from: a */
    void m5080a(a aVar) {
        if (this.f4705k) {
            this.f4697c.obtainMessage(2, aVar).sendToTarget();
            return;
        }
        if (aVar.m5092a() != null) {
            m5078o();
            a aVar2 = this.f4704j;
            this.f4704j = aVar;
            for (int size = this.f4698d.size() - 1; size >= 0; size--) {
                this.f4698d.get(size).mo5069f();
            }
            if (aVar2 != null) {
                this.f4697c.obtainMessage(2, aVar2).sendToTarget();
            }
        }
        this.f4701g = false;
        m5077n();
    }

    /* renamed from: com.a.a.d.d.e.g$c */
    private class c implements Handler.Callback {
        c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                C0872g.this.m5080a((a) message.obj);
                return true;
            }
            if (message.what == 2) {
                C0872g.this.f4695a.m5363a((InterfaceC0930h<?>) message.obj);
            }
            return false;
        }
    }

    /* renamed from: com.a.a.d.d.e.g$a */
    static class a extends AbstractC0928f<Bitmap> {

        /* renamed from: a */
        final int f4709a;

        /* renamed from: b */
        private final Handler f4710b;

        /* renamed from: c */
        private final long f4711c;

        /* renamed from: d */
        private Bitmap f4712d;

        @Override // com.p052a.p053a.p077h.p078a.InterfaceC0930h
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo5094a(Object obj, InterfaceC0934b interfaceC0934b) {
            m5093a((Bitmap) obj, (InterfaceC0934b<? super Bitmap>) interfaceC0934b);
        }

        a(Handler handler, int i, long j) {
            this.f4710b = handler;
            this.f4709a = i;
            this.f4711c = j;
        }

        /* renamed from: a */
        Bitmap m5092a() {
            return this.f4712d;
        }

        /* renamed from: a */
        public void m5093a(Bitmap bitmap, InterfaceC0934b<? super Bitmap> interfaceC0934b) {
            this.f4712d = bitmap;
            this.f4710b.sendMessageAtTime(this.f4710b.obtainMessage(1, this), this.f4711c);
        }
    }

    /* renamed from: a */
    private static C0941i<Bitmap> m5072a(C0944j c0944j, int i, int i2) {
        return c0944j.m5369f().m5354a(C0937d.m5265a(AbstractC0793h.f4383b).m5287a(true).m5279a(i, i2));
    }

    /* renamed from: j */
    static InterfaceC0884h m5073j() {
        return new C0943b(Double.valueOf(Math.random()));
    }
}
