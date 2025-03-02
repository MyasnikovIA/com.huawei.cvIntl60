package com.p052a.p053a;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.ImageView;
import com.p052a.p053a.p057d.p060b.AbstractC0793h;
import com.p052a.p053a.p077h.C0937d;
import com.p052a.p053a.p077h.C0939f;
import com.p052a.p053a.p077h.C0940g;
import com.p052a.p053a.p077h.InterfaceC0922a;
import com.p052a.p053a.p077h.InterfaceC0932b;
import com.p052a.p053a.p077h.InterfaceC0936c;
import com.p052a.p053a.p077h.p078a.InterfaceC0930h;
import com.p052a.p053a.p081j.C0954h;
import com.p052a.p053a.p081j.C0955i;

/* renamed from: com.a.a.i */
/* loaded from: classes.dex */
public class C0941i<TranscodeType> implements Cloneable {

    /* renamed from: a */
    protected static final C0937d f4907a = new C0937d().m5288b(AbstractC0793h.f4384c).m5284a(EnumC0914g.LOW).m5287a(true);

    /* renamed from: b */
    @NonNull
    protected C0937d f4908b;

    /* renamed from: c */
    private final C0890e f4909c;

    /* renamed from: d */
    private final C0944j f4910d;

    /* renamed from: e */
    private final Class<TranscodeType> f4911e;

    /* renamed from: f */
    private final C0937d f4912f;

    /* renamed from: g */
    private final ComponentCallbacks2C0735c f4913g;

    /* renamed from: h */
    @NonNull
    private AbstractC0956k<?, ? super TranscodeType> f4914h;

    /* renamed from: i */
    @Nullable
    private Object f4915i;

    /* renamed from: j */
    @Nullable
    private InterfaceC0936c<TranscodeType> f4916j;

    /* renamed from: k */
    @Nullable
    private C0941i<TranscodeType> f4917k;

    /* renamed from: l */
    @Nullable
    private Float f4918l;

    /* renamed from: m */
    private boolean f4919m = true;

    /* renamed from: n */
    private boolean f4920n;

    /* renamed from: o */
    private boolean f4921o;

    protected C0941i(ComponentCallbacks2C0735c componentCallbacks2C0735c, C0944j c0944j, Class<TranscodeType> cls) {
        this.f4913g = componentCallbacks2C0735c;
        this.f4910d = c0944j;
        this.f4909c = componentCallbacks2C0735c.m4564e();
        this.f4911e = cls;
        this.f4912f = c0944j.m5371h();
        this.f4914h = c0944j.m5366b(cls);
        this.f4908b = this.f4912f;
    }

    /* renamed from: a */
    public C0941i<TranscodeType> m5354a(@NonNull C0937d c0937d) {
        C0954h.m5409a(c0937d);
        this.f4908b = m5353a().m5285a(c0937d);
        return this;
    }

    /* renamed from: a */
    protected C0937d m5353a() {
        return this.f4912f == this.f4908b ? this.f4908b.clone() : this.f4908b;
    }

    /* renamed from: a */
    public C0941i<TranscodeType> m5355a(@Nullable Object obj) {
        return m5350b(obj);
    }

    /* renamed from: b */
    private C0941i<TranscodeType> m5350b(@Nullable Object obj) {
        this.f4915i = obj;
        this.f4920n = true;
        return this;
    }

    @CheckResult
    /* renamed from: b */
    public C0941i<TranscodeType> clone() {
        try {
            C0941i<TranscodeType> c0941i = (C0941i) super.clone();
            c0941i.f4908b = c0941i.f4908b.clone();
            c0941i.f4914h = (AbstractC0956k<?, ? super TranscodeType>) c0941i.f4914h.clone();
            return c0941i;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public <Y extends InterfaceC0930h<TranscodeType>> Y m5352a(@NonNull Y y) {
        return (Y) m5346a(y, m5353a());
    }

    /* renamed from: a */
    private <Y extends InterfaceC0930h<TranscodeType>> Y m5346a(@NonNull Y y, C0937d c0937d) {
        C0955i.m5425a();
        C0954h.m5409a(y);
        if (!this.f4920n) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        InterfaceC0922a m5349b = m5349b(y, c0937d.m5299h());
        InterfaceC0922a mo5230b = y.mo5230b();
        if (m5349b.mo5220a(mo5230b)) {
            m5349b.mo5227i();
            if (!((InterfaceC0922a) C0954h.m5409a(mo5230b)).mo5223e()) {
                mo5230b.mo5219a();
            }
        } else {
            this.f4910d.m5363a((InterfaceC0930h<?>) y);
            y.mo5229a(m5349b);
            this.f4910d.m5364a(y, m5349b);
        }
        return y;
    }

    /* renamed from: a */
    public InterfaceC0930h<TranscodeType> m5351a(ImageView imageView) {
        C0955i.m5425a();
        C0954h.m5409a(imageView);
        C0937d c0937d = this.f4908b;
        if (!c0937d.m5294c() && c0937d.m5293b() && imageView.getScaleType() != null) {
            switch (AnonymousClass1.f4922a[imageView.getScaleType().ordinal()]) {
                case 1:
                    c0937d = c0937d.clone().m5295d();
                    break;
                case 2:
                    c0937d = c0937d.clone().m5297f();
                    break;
                case 3:
                case 4:
                case 5:
                    c0937d = c0937d.clone().m5296e();
                    break;
                case 6:
                    c0937d = c0937d.clone().m5297f();
                    break;
            }
        }
        return m5346a(this.f4909c.m5117a(imageView, this.f4911e), c0937d);
    }

    /* renamed from: com.a.a.i$1 */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4922a;

        static {
            try {
                f4923b[EnumC0914g.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4923b[EnumC0914g.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4923b[EnumC0914g.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4923b[EnumC0914g.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            f4922a = new int[ImageView.ScaleType.values().length];
            try {
                f4922a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f4922a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f4922a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f4922a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f4922a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f4922a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f4922a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f4922a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* renamed from: a */
    private EnumC0914g m5345a(EnumC0914g enumC0914g) {
        switch (enumC0914g) {
            case LOW:
                return EnumC0914g.NORMAL;
            case NORMAL:
                return EnumC0914g.HIGH;
            case HIGH:
            case IMMEDIATE:
                return EnumC0914g.IMMEDIATE;
            default:
                throw new IllegalArgumentException("unknown priority: " + this.f4908b.m5315x());
        }
    }

    /* renamed from: b */
    private InterfaceC0922a m5349b(InterfaceC0930h<TranscodeType> interfaceC0930h, C0937d c0937d) {
        return m5348a(interfaceC0930h, (C0940g) null, this.f4914h, c0937d.m5315x(), c0937d.m5316y(), c0937d.m5272A(), c0937d);
    }

    /* renamed from: a */
    private InterfaceC0922a m5348a(InterfaceC0930h<TranscodeType> interfaceC0930h, @Nullable C0940g c0940g, AbstractC0956k<?, ? super TranscodeType> abstractC0956k, EnumC0914g enumC0914g, int i, int i2, C0937d c0937d) {
        int i3;
        int i4;
        if (this.f4917k != null) {
            if (this.f4921o) {
                throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
            }
            AbstractC0956k<?, ? super TranscodeType> abstractC0956k2 = this.f4917k.f4919m ? abstractC0956k : this.f4917k.f4914h;
            EnumC0914g m5315x = this.f4917k.f4908b.m5314w() ? this.f4917k.f4908b.m5315x() : m5345a(enumC0914g);
            int m5316y = this.f4917k.f4908b.m5316y();
            int m5272A = this.f4917k.f4908b.m5272A();
            if (!C0955i.m5426a(i, i2) || this.f4917k.f4908b.m5317z()) {
                i3 = m5272A;
                i4 = m5316y;
            } else {
                int m5316y2 = c0937d.m5316y();
                i3 = c0937d.m5272A();
                i4 = m5316y2;
            }
            C0940g c0940g2 = new C0940g(c0940g);
            InterfaceC0922a m5347a = m5347a(interfaceC0930h, c0937d, c0940g2, abstractC0956k, enumC0914g, i, i2);
            this.f4921o = true;
            InterfaceC0922a m5348a = this.f4917k.m5348a(interfaceC0930h, c0940g2, abstractC0956k2, m5315x, i4, i3, this.f4917k.f4908b);
            this.f4921o = false;
            c0940g2.m5344a(m5347a, m5348a);
            return c0940g2;
        }
        if (this.f4918l != null) {
            C0940g c0940g3 = new C0940g(c0940g);
            c0940g3.m5344a(m5347a(interfaceC0930h, c0937d, c0940g3, abstractC0956k, enumC0914g, i, i2), m5347a(interfaceC0930h, c0937d.clone().m5278a(this.f4918l.floatValue()), c0940g3, abstractC0956k, m5345a(enumC0914g), i, i2));
            return c0940g3;
        }
        return m5347a(interfaceC0930h, c0937d, c0940g, abstractC0956k, enumC0914g, i, i2);
    }

    /* renamed from: a */
    private InterfaceC0922a m5347a(InterfaceC0930h<TranscodeType> interfaceC0930h, C0937d c0937d, InterfaceC0932b interfaceC0932b, AbstractC0956k<?, ? super TranscodeType> abstractC0956k, EnumC0914g enumC0914g, int i, int i2) {
        return C0939f.m5322a(this.f4909c, this.f4915i, this.f4911e, c0937d, i, i2, enumC0914g, interfaceC0930h, this.f4916j, interfaceC0932b, this.f4909c.m5120b(), abstractC0956k.m5434b());
    }
}
