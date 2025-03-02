package com.p052a.p053a.p077h;

import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.util.Pools;
import android.support.v7.p048a.p049a.C0488a;
import android.util.Log;
import com.p052a.p053a.C0890e;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.p060b.C0794i;
import com.p052a.p053a.p057d.p060b.C0800o;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p077h.p078a.InterfaceC0929g;
import com.p052a.p053a.p077h.p078a.InterfaceC0930h;
import com.p052a.p053a.p077h.p079b.InterfaceC0935c;
import com.p052a.p053a.p081j.C0950d;
import com.p052a.p053a.p081j.C0955i;
import com.p052a.p053a.p081j.p082a.AbstractC0947b;
import com.p052a.p053a.p081j.p082a.C0946a;

/* renamed from: com.a.a.h.f */
/* loaded from: classes.dex */
public final class C0939f<R> implements InterfaceC0922a, InterfaceC0929g, InterfaceC0938e, C0946a.c {

    /* renamed from: a */
    private static final Pools.Pool<C0939f<?>> f4868a = C0946a.m5379a(150, new C0946a.a<C0939f<?>>() { // from class: com.a.a.h.f.1
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p081j.p082a.C0946a.a
        /* renamed from: a */
        public C0939f<?> mo4767b() {
            return new C0939f<>();
        }
    });

    /* renamed from: z */
    private static boolean f4869z = true;

    /* renamed from: b */
    private boolean f4870b;

    /* renamed from: c */
    private final String f4871c = String.valueOf(super.hashCode());

    /* renamed from: d */
    private final AbstractC0947b f4872d = AbstractC0947b.m5387a();

    /* renamed from: e */
    private InterfaceC0932b f4873e;

    /* renamed from: f */
    private C0890e f4874f;

    /* renamed from: g */
    @Nullable
    private Object f4875g;

    /* renamed from: h */
    private Class<R> f4876h;

    /* renamed from: i */
    private C0937d f4877i;

    /* renamed from: j */
    private int f4878j;

    /* renamed from: k */
    private int f4879k;

    /* renamed from: l */
    private EnumC0914g f4880l;

    /* renamed from: m */
    private InterfaceC0930h<R> f4881m;

    /* renamed from: n */
    private InterfaceC0936c<R> f4882n;

    /* renamed from: o */
    private C0794i f4883o;

    /* renamed from: p */
    private InterfaceC0935c<? super R> f4884p;

    /* renamed from: q */
    private InterfaceC0804s<R> f4885q;

    /* renamed from: r */
    private C0794i.d f4886r;

    /* renamed from: s */
    private long f4887s;

    /* renamed from: t */
    private a f4888t;

    /* renamed from: u */
    private Drawable f4889u;

    /* renamed from: v */
    private Drawable f4890v;

    /* renamed from: w */
    private Drawable f4891w;

    /* renamed from: x */
    private int f4892x;

    /* renamed from: y */
    private int f4893y;

    /* renamed from: com.a.a.h.f$a */
    private enum a {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CANCELLED,
        CLEARED,
        PAUSED
    }

    /* renamed from: com.a.a.h.f$1 */
    static class AnonymousClass1 implements C0946a.a<C0939f<?>> {
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p081j.p082a.C0946a.a
        /* renamed from: a */
        public C0939f<?> mo4767b() {
            return new C0939f<>();
        }
    }

    /* renamed from: a */
    public static <R> C0939f<R> m5322a(C0890e c0890e, Object obj, Class<R> cls, C0937d c0937d, int i, int i2, EnumC0914g enumC0914g, InterfaceC0930h<R> interfaceC0930h, InterfaceC0936c<R> interfaceC0936c, InterfaceC0932b interfaceC0932b, C0794i c0794i, InterfaceC0935c<? super R> interfaceC0935c) {
        C0939f<R> c0939f = (C0939f) f4868a.acquire();
        if (c0939f == null) {
            c0939f = new C0939f<>();
        }
        c0939f.m5328b(c0890e, obj, cls, c0937d, i, i2, enumC0914g, interfaceC0930h, interfaceC0936c, interfaceC0932b, c0794i, interfaceC0935c);
        return c0939f;
    }

    C0939f() {
    }

    /* renamed from: b */
    private void m5328b(C0890e c0890e, Object obj, Class<R> cls, C0937d c0937d, int i, int i2, EnumC0914g enumC0914g, InterfaceC0930h<R> interfaceC0930h, InterfaceC0936c<R> interfaceC0936c, InterfaceC0932b interfaceC0932b, C0794i c0794i, InterfaceC0935c<? super R> interfaceC0935c) {
        this.f4874f = c0890e;
        this.f4875g = obj;
        this.f4876h = cls;
        this.f4877i = c0937d;
        this.f4878j = i;
        this.f4879k = i2;
        this.f4880l = enumC0914g;
        this.f4881m = interfaceC0930h;
        this.f4882n = interfaceC0936c;
        this.f4873e = interfaceC0932b;
        this.f4883o = c0794i;
        this.f4884p = interfaceC0935c;
        this.f4888t = a.PENDING;
    }

    @Override // com.p052a.p053a.p081j.p082a.C0946a.c
    /* renamed from: a_ */
    public AbstractC0947b mo4768a_() {
        return this.f4872d;
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: i */
    public void mo5227i() {
        m5330k();
        this.f4874f = null;
        this.f4875g = null;
        this.f4876h = null;
        this.f4877i = null;
        this.f4878j = -1;
        this.f4879k = -1;
        this.f4881m = null;
        this.f4882n = null;
        this.f4873e = null;
        this.f4884p = null;
        this.f4886r = null;
        this.f4889u = null;
        this.f4890v = null;
        this.f4891w = null;
        this.f4892x = -1;
        this.f4893y = -1;
        f4868a.release(this);
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: a */
    public void mo5219a() {
        m5330k();
        this.f4872d.mo5389b();
        this.f4887s = C0950d.m5397a();
        if (this.f4875g == null) {
            if (C0955i.m5426a(this.f4878j, this.f4879k)) {
                this.f4892x = this.f4878j;
                this.f4893y = this.f4879k;
            }
            m5323a(new C0800o("Received null model"), m5333n() == null ? 5 : 3);
            return;
        }
        if (this.f4888t == a.RUNNING) {
            throw new IllegalArgumentException("Cannot restart a running request");
        }
        if (this.f4888t == a.COMPLETE) {
            mo5319a((InterfaceC0804s<?>) this.f4885q, EnumC0741a.MEMORY_CACHE);
            return;
        }
        this.f4888t = a.WAITING_FOR_SIZE;
        if (C0955i.m5426a(this.f4878j, this.f4879k)) {
            mo5241a(this.f4878j, this.f4879k);
        } else {
            this.f4881m.mo5239a((InterfaceC0929g) this);
        }
        if ((this.f4888t == a.RUNNING || this.f4888t == a.WAITING_FOR_SIZE) && m5336q()) {
            this.f4881m.mo5231b(m5332m());
        }
        if (Log.isLoggable("Request", 2)) {
            m5326a("finished run method in " + C0950d.m5396a(this.f4887s));
        }
    }

    /* renamed from: j */
    void m5339j() {
        m5330k();
        this.f4872d.mo5389b();
        this.f4881m.mo5240b(this);
        this.f4888t = a.CANCELLED;
        if (this.f4886r != null) {
            this.f4886r.m4862a();
            this.f4886r = null;
        }
    }

    /* renamed from: k */
    private void m5330k() {
        if (this.f4870b) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you must do so, consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: c */
    public void mo5222c() {
        C0955i.m5425a();
        m5330k();
        if (this.f4888t != a.CLEARED) {
            m5339j();
            if (this.f4885q != null) {
                m5324a((InterfaceC0804s<?>) this.f4885q);
            }
            if (m5336q()) {
                this.f4881m.mo5228a(m5332m());
            }
            this.f4888t = a.CLEARED;
        }
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: b */
    public void mo5221b() {
        mo5222c();
        this.f4888t = a.PAUSED;
    }

    /* renamed from: a */
    private void m5324a(InterfaceC0804s<?> interfaceC0804s) {
        this.f4883o.m4855a(interfaceC0804s);
        this.f4885q = null;
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: e */
    public boolean mo5223e() {
        return this.f4888t == a.RUNNING || this.f4888t == a.WAITING_FOR_SIZE;
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: f */
    public boolean mo5224f() {
        return this.f4888t == a.COMPLETE;
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: g */
    public boolean mo5225g() {
        return mo5224f();
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: h */
    public boolean mo5226h() {
        return this.f4888t == a.CANCELLED || this.f4888t == a.CLEARED;
    }

    /* renamed from: l */
    private Drawable m5331l() {
        if (this.f4889u == null) {
            this.f4889u = this.f4877i.m5305n();
            if (this.f4889u == null && this.f4877i.m5306o() > 0) {
                this.f4889u = m5321a(this.f4877i.m5306o());
            }
        }
        return this.f4889u;
    }

    /* renamed from: m */
    private Drawable m5332m() {
        if (this.f4890v == null) {
            this.f4890v = this.f4877i.m5308q();
            if (this.f4890v == null && this.f4877i.m5307p() > 0) {
                this.f4890v = m5321a(this.f4877i.m5307p());
            }
        }
        return this.f4890v;
    }

    /* renamed from: n */
    private Drawable m5333n() {
        if (this.f4891w == null) {
            this.f4891w = this.f4877i.m5310s();
            if (this.f4891w == null && this.f4877i.m5309r() > 0) {
                this.f4891w = m5321a(this.f4877i.m5309r());
            }
        }
        return this.f4891w;
    }

    /* renamed from: a */
    private Drawable m5321a(@DrawableRes int i) {
        return f4869z ? m5327b(i) : m5329c(i);
    }

    /* renamed from: b */
    private Drawable m5327b(@DrawableRes int i) {
        try {
            return C0488a.m2457b(this.f4874f, i);
        } catch (NoClassDefFoundError e) {
            f4869z = false;
            return m5329c(i);
        }
    }

    /* renamed from: c */
    private Drawable m5329c(@DrawableRes int i) {
        return ResourcesCompat.getDrawable(this.f4874f.getResources(), i, this.f4877i.m5311t());
    }

    /* renamed from: o */
    private void m5334o() {
        if (m5336q()) {
            Drawable drawable = null;
            if (this.f4875g == null) {
                drawable = m5333n();
            }
            if (drawable == null) {
                drawable = m5331l();
            }
            if (drawable == null) {
                drawable = m5332m();
            }
            this.f4881m.mo5232c(drawable);
        }
    }

    @Override // com.p052a.p053a.p077h.p078a.InterfaceC0929g
    /* renamed from: a */
    public void mo5241a(int i, int i2) {
        this.f4872d.mo5389b();
        if (Log.isLoggable("Request", 2)) {
            m5326a("Got onSizeReady in " + C0950d.m5396a(this.f4887s));
        }
        if (this.f4888t == a.WAITING_FOR_SIZE) {
            this.f4888t = a.RUNNING;
            float m5273B = this.f4877i.m5273B();
            this.f4892x = m5320a(i, m5273B);
            this.f4893y = m5320a(i2, m5273B);
            if (Log.isLoggable("Request", 2)) {
                m5326a("finished setup for calling load in " + C0950d.m5396a(this.f4887s));
            }
            this.f4886r = this.f4883o.m4853a(this.f4874f, this.f4875g, this.f4877i.m5313v(), this.f4892x, this.f4893y, this.f4877i.m5303l(), this.f4876h, this.f4880l, this.f4877i.m5304m(), this.f4877i.m5300i(), this.f4877i.m5301j(), this.f4877i.m5274C(), this.f4877i.m5302k(), this.f4877i.m5312u(), this.f4877i.m5275D(), this.f4877i.m5276E(), this);
            if (Log.isLoggable("Request", 2)) {
                m5326a("finished onSizeReady in " + C0950d.m5396a(this.f4887s));
            }
        }
    }

    /* renamed from: a */
    private static int m5320a(int i, float f) {
        return i == Integer.MIN_VALUE ? i : Math.round(i * f);
    }

    /* renamed from: p */
    private boolean m5335p() {
        return this.f4873e == null || this.f4873e.mo5255b(this);
    }

    /* renamed from: q */
    private boolean m5336q() {
        return this.f4873e == null || this.f4873e.mo5256c(this);
    }

    /* renamed from: r */
    private boolean m5337r() {
        return this.f4873e == null || !this.f4873e.mo5258d();
    }

    /* renamed from: s */
    private void m5338s() {
        if (this.f4873e != null) {
            this.f4873e.mo5257d(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.p052a.p053a.p077h.InterfaceC0938e
    /* renamed from: a */
    public void mo5319a(InterfaceC0804s<?> interfaceC0804s, EnumC0741a enumC0741a) {
        this.f4872d.mo5389b();
        this.f4886r = null;
        if (interfaceC0804s == null) {
            mo5318a(new C0800o("Expected to receive a Resource<R> with an object of " + this.f4876h + " inside, but instead got null."));
            return;
        }
        Object mo4880c = interfaceC0804s.mo4880c();
        if (mo4880c == null || !this.f4876h.isAssignableFrom(mo4880c.getClass())) {
            m5324a(interfaceC0804s);
            mo5318a(new C0800o("Expected to receive an object of " + this.f4876h + " but instead got " + (mo4880c != null ? mo4880c.getClass() : "") + "{" + mo4880c + "} inside Resource{" + interfaceC0804s + "}." + (mo4880c != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.")));
        } else if (!m5335p()) {
            m5324a(interfaceC0804s);
            this.f4888t = a.COMPLETE;
        } else {
            m5325a(interfaceC0804s, mo4880c, enumC0741a);
        }
    }

    /* renamed from: a */
    private void m5325a(InterfaceC0804s<R> interfaceC0804s, R r, EnumC0741a enumC0741a) {
        boolean m5337r = m5337r();
        this.f4888t = a.COMPLETE;
        this.f4885q = interfaceC0804s;
        if (this.f4874f.m5122d() <= 3) {
            Log.d("Glide", "Finished loading " + r.getClass().getSimpleName() + " from " + enumC0741a + " for " + this.f4875g + " with size [" + this.f4892x + "x" + this.f4893y + "] in " + C0950d.m5396a(this.f4887s) + " ms");
        }
        this.f4870b = true;
        try {
            if (this.f4882n == null || !this.f4882n.m5263a(r, this.f4875g, this.f4881m, enumC0741a, m5337r)) {
                this.f4881m.mo5094a(r, this.f4884p.mo5261a(enumC0741a, m5337r));
            }
            this.f4870b = false;
            m5338s();
        } catch (Throwable th) {
            this.f4870b = false;
            throw th;
        }
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0938e
    /* renamed from: a */
    public void mo5318a(C0800o c0800o) {
        m5323a(c0800o, 5);
    }

    /* renamed from: a */
    private void m5323a(C0800o c0800o, int i) {
        this.f4872d.mo5389b();
        int m5122d = this.f4874f.m5122d();
        if (m5122d <= i) {
            Log.w("Glide", "Load failed for " + this.f4875g + " with size [" + this.f4892x + "x" + this.f4893y + "]", c0800o);
            if (m5122d <= 4) {
                c0800o.m4893a("Glide");
            }
        }
        this.f4886r = null;
        this.f4888t = a.FAILED;
        this.f4870b = true;
        try {
            if (this.f4882n == null || !this.f4882n.m5262a(c0800o, this.f4875g, this.f4881m, m5337r())) {
                m5334o();
            }
        } finally {
            this.f4870b = false;
        }
    }

    @Override // com.p052a.p053a.p077h.InterfaceC0922a
    /* renamed from: a */
    public boolean mo5220a(InterfaceC0922a interfaceC0922a) {
        if (!(interfaceC0922a instanceof C0939f)) {
            return false;
        }
        C0939f c0939f = (C0939f) interfaceC0922a;
        return this.f4878j == c0939f.f4878j && this.f4879k == c0939f.f4879k && C0955i.m5431b(this.f4875g, c0939f.f4875g) && this.f4876h.equals(c0939f.f4876h) && this.f4877i.equals(c0939f.f4877i) && this.f4880l == c0939f.f4880l;
    }

    /* renamed from: a */
    private void m5326a(String str) {
        Log.v("Request", str + " this: " + this.f4871c);
    }
}
