package com.p052a.p053a.p077h;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.C0885i;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.InterfaceC0889m;
import com.p052a.p053a.p057d.p060b.AbstractC0793h;
import com.p052a.p053a.p057d.p067d.p068a.AbstractC0851k;
import com.p052a.p053a.p057d.p067d.p068a.C0843c;
import com.p052a.p053a.p057d.p067d.p068a.C0848h;
import com.p052a.p053a.p057d.p067d.p068a.C0849i;
import com.p052a.p053a.p057d.p067d.p068a.C0852l;
import com.p052a.p053a.p057d.p067d.p068a.C0853m;
import com.p052a.p053a.p057d.p067d.p072e.C0868c;
import com.p052a.p053a.p057d.p067d.p072e.C0871f;
import com.p052a.p053a.p080i.C0942a;
import com.p052a.p053a.p081j.C0954h;
import com.p052a.p053a.p081j.C0955i;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.a.a.h.d */
/* loaded from: classes.dex */
public class C0937d implements Cloneable {

    /* renamed from: a */
    private int f4843a;

    /* renamed from: e */
    @Nullable
    private Drawable f4847e;

    /* renamed from: f */
    private int f4848f;

    /* renamed from: g */
    @Nullable
    private Drawable f4849g;

    /* renamed from: h */
    private int f4850h;

    /* renamed from: m */
    private boolean f4855m;

    /* renamed from: o */
    @Nullable
    private Drawable f4857o;

    /* renamed from: p */
    private int f4858p;

    /* renamed from: t */
    private boolean f4862t;

    /* renamed from: u */
    @Nullable
    private Resources.Theme f4863u;

    /* renamed from: v */
    private boolean f4864v;

    /* renamed from: w */
    private boolean f4865w;

    /* renamed from: x */
    private boolean f4866x;

    /* renamed from: b */
    private float f4844b = 1.0f;

    /* renamed from: c */
    @NonNull
    private AbstractC0793h f4845c = AbstractC0793h.f4386e;

    /* renamed from: d */
    @NonNull
    private EnumC0914g f4846d = EnumC0914g.NORMAL;

    /* renamed from: i */
    private boolean f4851i = true;

    /* renamed from: j */
    private int f4852j = -1;

    /* renamed from: k */
    private int f4853k = -1;

    /* renamed from: l */
    @NonNull
    private InterfaceC0884h f4854l = C0942a.m5357a();

    /* renamed from: n */
    private boolean f4856n = true;

    /* renamed from: q */
    @NonNull
    private C0886j f4859q = new C0886j();

    /* renamed from: r */
    @NonNull
    private Map<Class<?>, InterfaceC0889m<?>> f4860r = new HashMap();

    /* renamed from: s */
    @NonNull
    private Class<?> f4861s = Object.class;

    /* renamed from: y */
    private boolean f4867y = true;

    @CheckResult
    /* renamed from: a */
    public static C0937d m5265a(@NonNull AbstractC0793h abstractC0793h) {
        return new C0937d().m5288b(abstractC0793h);
    }

    @CheckResult
    /* renamed from: a */
    public static C0937d m5267a(@NonNull InterfaceC0884h interfaceC0884h) {
        return new C0937d().m5290b(interfaceC0884h);
    }

    @CheckResult
    /* renamed from: a */
    public static C0937d m5268a(@NonNull Class<?> cls) {
        return new C0937d().m5292b(cls);
    }

    /* renamed from: b */
    private static boolean m5270b(int i, int i2) {
        return (i & i2) != 0;
    }

    @CheckResult
    /* renamed from: a */
    public C0937d m5278a(float f) {
        if (this.f4864v) {
            return clone().m5278a(f);
        }
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.f4844b = f;
        this.f4843a |= 2;
        return m5264F();
    }

    @CheckResult
    /* renamed from: b */
    public C0937d m5288b(@NonNull AbstractC0793h abstractC0793h) {
        if (this.f4864v) {
            return clone().m5288b(abstractC0793h);
        }
        this.f4845c = (AbstractC0793h) C0954h.m5409a(abstractC0793h);
        this.f4843a |= 4;
        return m5264F();
    }

    @CheckResult
    /* renamed from: a */
    public C0937d m5284a(@NonNull EnumC0914g enumC0914g) {
        if (this.f4864v) {
            return clone().m5284a(enumC0914g);
        }
        this.f4846d = (EnumC0914g) C0954h.m5409a(enumC0914g);
        this.f4843a |= 8;
        return m5264F();
    }

    @CheckResult
    /* renamed from: a */
    public C0937d m5287a(boolean z) {
        if (this.f4864v) {
            return clone().m5287a(true);
        }
        this.f4851i = z ? false : true;
        this.f4843a |= 256;
        return m5264F();
    }

    @CheckResult
    /* renamed from: a */
    public C0937d m5279a(int i, int i2) {
        if (this.f4864v) {
            return clone().m5279a(i, i2);
        }
        this.f4853k = i;
        this.f4852j = i2;
        this.f4843a |= 512;
        return m5264F();
    }

    @CheckResult
    /* renamed from: b */
    public C0937d m5290b(@NonNull InterfaceC0884h interfaceC0884h) {
        if (this.f4864v) {
            return clone().m5290b(interfaceC0884h);
        }
        this.f4854l = (InterfaceC0884h) C0954h.m5409a(interfaceC0884h);
        this.f4843a |= 1024;
        return m5264F();
    }

    @CheckResult
    /* renamed from: a */
    public C0937d clone() {
        try {
            C0937d c0937d = (C0937d) super.clone();
            c0937d.f4859q = new C0886j();
            c0937d.f4859q.m5116a(this.f4859q);
            c0937d.f4860r = new HashMap();
            c0937d.f4860r.putAll(this.f4860r);
            c0937d.f4862t = false;
            c0937d.f4864v = false;
            return c0937d;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @CheckResult
    /* renamed from: a */
    public <T> C0937d m5282a(@NonNull C0885i<T> c0885i, @NonNull T t) {
        if (this.f4864v) {
            return clone().m5282a((C0885i<C0885i<T>>) c0885i, (C0885i<T>) t);
        }
        C0954h.m5409a(c0885i);
        C0954h.m5409a(t);
        this.f4859q.m5114a(c0885i, t);
        return m5264F();
    }

    @CheckResult
    /* renamed from: b */
    public C0937d m5292b(@NonNull Class<?> cls) {
        if (this.f4864v) {
            return clone().m5292b(cls);
        }
        this.f4861s = (Class) C0954h.m5409a(cls);
        this.f4843a |= 4096;
        return m5264F();
    }

    /* renamed from: b */
    public final boolean m5293b() {
        return this.f4856n;
    }

    /* renamed from: c */
    public final boolean m5294c() {
        return m5269a(2048);
    }

    @CheckResult
    /* renamed from: a */
    public C0937d m5280a(@NonNull AbstractC0851k abstractC0851k) {
        return m5282a((C0885i<C0885i<AbstractC0851k>>) C0852l.f4624b, (C0885i<AbstractC0851k>) C0954h.m5409a(abstractC0851k));
    }

    @CheckResult
    /* renamed from: d */
    public C0937d m5295d() {
        return m5281a(AbstractC0851k.f4614b, new C0848h());
    }

    @CheckResult
    /* renamed from: e */
    public C0937d m5296e() {
        return m5271c(AbstractC0851k.f4613a, new C0853m());
    }

    @CheckResult
    /* renamed from: f */
    public C0937d m5297f() {
        return m5271c(AbstractC0851k.f4617e, new C0849i());
    }

    /* renamed from: a */
    final C0937d m5281a(AbstractC0851k abstractC0851k, InterfaceC0889m<Bitmap> interfaceC0889m) {
        if (this.f4864v) {
            return clone().m5281a(abstractC0851k, interfaceC0889m);
        }
        m5280a(abstractC0851k);
        return m5291b(interfaceC0889m);
    }

    @CheckResult
    /* renamed from: b */
    final C0937d m5289b(AbstractC0851k abstractC0851k, InterfaceC0889m<Bitmap> interfaceC0889m) {
        if (this.f4864v) {
            return clone().m5289b(abstractC0851k, interfaceC0889m);
        }
        m5280a(abstractC0851k);
        return m5283a(interfaceC0889m);
    }

    /* renamed from: c */
    private C0937d m5271c(AbstractC0851k abstractC0851k, InterfaceC0889m<Bitmap> interfaceC0889m) {
        return m5266a(abstractC0851k, interfaceC0889m, false);
    }

    /* renamed from: a */
    private C0937d m5266a(AbstractC0851k abstractC0851k, InterfaceC0889m<Bitmap> interfaceC0889m, boolean z) {
        C0937d m5289b = z ? m5289b(abstractC0851k, interfaceC0889m) : m5281a(abstractC0851k, interfaceC0889m);
        m5289b.f4867y = true;
        return m5289b;
    }

    @CheckResult
    /* renamed from: a */
    public C0937d m5283a(@NonNull InterfaceC0889m<Bitmap> interfaceC0889m) {
        if (this.f4864v) {
            return clone().m5283a(interfaceC0889m);
        }
        m5291b(interfaceC0889m);
        this.f4855m = true;
        this.f4843a |= 131072;
        return m5264F();
    }

    @CheckResult
    /* renamed from: b */
    public C0937d m5291b(InterfaceC0889m<Bitmap> interfaceC0889m) {
        if (this.f4864v) {
            return clone().m5291b(interfaceC0889m);
        }
        m5286a(Bitmap.class, interfaceC0889m);
        m5286a(BitmapDrawable.class, new C0843c(interfaceC0889m));
        m5286a(C0868c.class, new C0871f(interfaceC0889m));
        return m5264F();
    }

    @CheckResult
    /* renamed from: a */
    public <T> C0937d m5286a(Class<T> cls, InterfaceC0889m<T> interfaceC0889m) {
        if (this.f4864v) {
            return clone().m5286a(cls, interfaceC0889m);
        }
        C0954h.m5409a(cls);
        C0954h.m5409a(interfaceC0889m);
        this.f4860r.put(cls, interfaceC0889m);
        this.f4843a |= 2048;
        this.f4856n = true;
        this.f4843a |= 65536;
        this.f4867y = false;
        return m5264F();
    }

    @CheckResult
    /* renamed from: a */
    public C0937d m5285a(C0937d c0937d) {
        if (this.f4864v) {
            return clone().m5285a(c0937d);
        }
        if (m5270b(c0937d.f4843a, 2)) {
            this.f4844b = c0937d.f4844b;
        }
        if (m5270b(c0937d.f4843a, 262144)) {
            this.f4865w = c0937d.f4865w;
        }
        if (m5270b(c0937d.f4843a, 4)) {
            this.f4845c = c0937d.f4845c;
        }
        if (m5270b(c0937d.f4843a, 8)) {
            this.f4846d = c0937d.f4846d;
        }
        if (m5270b(c0937d.f4843a, 16)) {
            this.f4847e = c0937d.f4847e;
        }
        if (m5270b(c0937d.f4843a, 32)) {
            this.f4848f = c0937d.f4848f;
        }
        if (m5270b(c0937d.f4843a, 64)) {
            this.f4849g = c0937d.f4849g;
        }
        if (m5270b(c0937d.f4843a, 128)) {
            this.f4850h = c0937d.f4850h;
        }
        if (m5270b(c0937d.f4843a, 256)) {
            this.f4851i = c0937d.f4851i;
        }
        if (m5270b(c0937d.f4843a, 512)) {
            this.f4853k = c0937d.f4853k;
            this.f4852j = c0937d.f4852j;
        }
        if (m5270b(c0937d.f4843a, 1024)) {
            this.f4854l = c0937d.f4854l;
        }
        if (m5270b(c0937d.f4843a, 4096)) {
            this.f4861s = c0937d.f4861s;
        }
        if (m5270b(c0937d.f4843a, 8192)) {
            this.f4857o = c0937d.f4857o;
        }
        if (m5270b(c0937d.f4843a, 16384)) {
            this.f4858p = c0937d.f4858p;
        }
        if (m5270b(c0937d.f4843a, 32768)) {
            this.f4863u = c0937d.f4863u;
        }
        if (m5270b(c0937d.f4843a, 65536)) {
            this.f4856n = c0937d.f4856n;
        }
        if (m5270b(c0937d.f4843a, 131072)) {
            this.f4855m = c0937d.f4855m;
        }
        if (m5270b(c0937d.f4843a, 2048)) {
            this.f4860r.putAll(c0937d.f4860r);
            this.f4867y = c0937d.f4867y;
        }
        if (m5270b(c0937d.f4843a, 524288)) {
            this.f4866x = c0937d.f4866x;
        }
        if (!this.f4856n) {
            this.f4860r.clear();
            this.f4843a &= -2049;
            this.f4855m = false;
            this.f4843a &= -131073;
            this.f4867y = true;
        }
        this.f4843a |= c0937d.f4843a;
        this.f4859q.m5116a(c0937d.f4859q);
        return m5264F();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0937d)) {
            return false;
        }
        C0937d c0937d = (C0937d) obj;
        return Float.compare(c0937d.f4844b, this.f4844b) == 0 && this.f4848f == c0937d.f4848f && C0955i.m5427a(this.f4847e, c0937d.f4847e) && this.f4850h == c0937d.f4850h && C0955i.m5427a(this.f4849g, c0937d.f4849g) && this.f4858p == c0937d.f4858p && C0955i.m5427a(this.f4857o, c0937d.f4857o) && this.f4851i == c0937d.f4851i && this.f4852j == c0937d.f4852j && this.f4853k == c0937d.f4853k && this.f4855m == c0937d.f4855m && this.f4856n == c0937d.f4856n && this.f4865w == c0937d.f4865w && this.f4866x == c0937d.f4866x && this.f4845c.equals(c0937d.f4845c) && this.f4846d == c0937d.f4846d && this.f4859q.equals(c0937d.f4859q) && this.f4860r.equals(c0937d.f4860r) && this.f4861s.equals(c0937d.f4861s) && C0955i.m5427a(this.f4854l, c0937d.f4854l) && C0955i.m5427a(this.f4863u, c0937d.f4863u);
    }

    public int hashCode() {
        return C0955i.m5419a(this.f4863u, C0955i.m5419a(this.f4854l, C0955i.m5419a(this.f4861s, C0955i.m5419a(this.f4860r, C0955i.m5419a(this.f4859q, C0955i.m5419a(this.f4846d, C0955i.m5419a(this.f4845c, C0955i.m5420a(this.f4866x, C0955i.m5420a(this.f4865w, C0955i.m5420a(this.f4856n, C0955i.m5420a(this.f4855m, C0955i.m5428b(this.f4853k, C0955i.m5428b(this.f4852j, C0955i.m5420a(this.f4851i, C0955i.m5419a(this.f4857o, C0955i.m5428b(this.f4858p, C0955i.m5419a(this.f4849g, C0955i.m5428b(this.f4850h, C0955i.m5419a(this.f4847e, C0955i.m5428b(this.f4848f, C0955i.m5414a(this.f4844b)))))))))))))))))))));
    }

    /* renamed from: g */
    public C0937d m5298g() {
        this.f4862t = true;
        return this;
    }

    /* renamed from: h */
    public C0937d m5299h() {
        if (this.f4862t && !this.f4864v) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.f4864v = true;
        return m5298g();
    }

    /* renamed from: F */
    private C0937d m5264F() {
        if (this.f4862t) {
            throw new IllegalStateException("You cannot modify locked RequestOptions, consider clone()");
        }
        return this;
    }

    @NonNull
    /* renamed from: i */
    public final Map<Class<?>, InterfaceC0889m<?>> m5300i() {
        return this.f4860r;
    }

    /* renamed from: j */
    public final boolean m5301j() {
        return this.f4855m;
    }

    @NonNull
    /* renamed from: k */
    public final C0886j m5302k() {
        return this.f4859q;
    }

    @NonNull
    /* renamed from: l */
    public final Class<?> m5303l() {
        return this.f4861s;
    }

    @NonNull
    /* renamed from: m */
    public final AbstractC0793h m5304m() {
        return this.f4845c;
    }

    @Nullable
    /* renamed from: n */
    public final Drawable m5305n() {
        return this.f4847e;
    }

    /* renamed from: o */
    public final int m5306o() {
        return this.f4848f;
    }

    /* renamed from: p */
    public final int m5307p() {
        return this.f4850h;
    }

    @Nullable
    /* renamed from: q */
    public final Drawable m5308q() {
        return this.f4849g;
    }

    /* renamed from: r */
    public final int m5309r() {
        return this.f4858p;
    }

    @Nullable
    /* renamed from: s */
    public final Drawable m5310s() {
        return this.f4857o;
    }

    @Nullable
    /* renamed from: t */
    public final Resources.Theme m5311t() {
        return this.f4863u;
    }

    /* renamed from: u */
    public final boolean m5312u() {
        return this.f4851i;
    }

    @NonNull
    /* renamed from: v */
    public final InterfaceC0884h m5313v() {
        return this.f4854l;
    }

    /* renamed from: w */
    public final boolean m5314w() {
        return m5269a(8);
    }

    @NonNull
    /* renamed from: x */
    public final EnumC0914g m5315x() {
        return this.f4846d;
    }

    /* renamed from: y */
    public final int m5316y() {
        return this.f4853k;
    }

    /* renamed from: z */
    public final boolean m5317z() {
        return C0955i.m5426a(this.f4853k, this.f4852j);
    }

    /* renamed from: A */
    public final int m5272A() {
        return this.f4852j;
    }

    /* renamed from: B */
    public final float m5273B() {
        return this.f4844b;
    }

    /* renamed from: C */
    public boolean m5274C() {
        return this.f4867y;
    }

    /* renamed from: a */
    private boolean m5269a(int i) {
        return m5270b(this.f4843a, i);
    }

    /* renamed from: D */
    public final boolean m5275D() {
        return this.f4865w;
    }

    /* renamed from: E */
    public final boolean m5276E() {
        return this.f4866x;
    }
}
