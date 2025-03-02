package android.support.design.p039b;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.design.internal.C0202i;
import android.support.design.p043e.C0183a;
import android.support.design.p044f.C0184a;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.b.c */
/* loaded from: classes.dex */
class C0167c {

    /* renamed from: a */
    private static final boolean f1067a;

    /* renamed from: b */
    private final C0165a f1068b;

    /* renamed from: c */
    private int f1069c;

    /* renamed from: d */
    private int f1070d;

    /* renamed from: e */
    private int f1071e;

    /* renamed from: f */
    private int f1072f;

    /* renamed from: g */
    private int f1073g;

    /* renamed from: h */
    private int f1074h;

    /* renamed from: i */
    @Nullable
    private PorterDuff.Mode f1075i;

    /* renamed from: j */
    @Nullable
    private ColorStateList f1076j;

    /* renamed from: k */
    @Nullable
    private ColorStateList f1077k;

    /* renamed from: l */
    @Nullable
    private ColorStateList f1078l;

    /* renamed from: p */
    @Nullable
    private GradientDrawable f1082p;

    /* renamed from: q */
    @Nullable
    private Drawable f1083q;

    /* renamed from: r */
    @Nullable
    private GradientDrawable f1084r;

    /* renamed from: s */
    @Nullable
    private Drawable f1085s;

    /* renamed from: t */
    @Nullable
    private GradientDrawable f1086t;

    /* renamed from: u */
    @Nullable
    private GradientDrawable f1087u;

    /* renamed from: v */
    @Nullable
    private GradientDrawable f1088v;

    /* renamed from: m */
    private final Paint f1079m = new Paint(1);

    /* renamed from: n */
    private final Rect f1080n = new Rect();

    /* renamed from: o */
    private final RectF f1081o = new RectF();

    /* renamed from: w */
    private boolean f1089w = false;

    static {
        f1067a = Build.VERSION.SDK_INT >= 21;
    }

    public C0167c(C0165a c0165a) {
        this.f1068b = c0165a;
    }

    /* renamed from: a */
    public void m1400a(TypedArray typedArray) {
        this.f1069c = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetLeft, 0);
        this.f1070d = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetRight, 0);
        this.f1071e = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetTop, 0);
        this.f1072f = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetBottom, 0);
        this.f1073g = typedArray.getDimensionPixelSize(R.styleable.MaterialButton_cornerRadius, 0);
        this.f1074h = typedArray.getDimensionPixelSize(R.styleable.MaterialButton_strokeWidth, 0);
        this.f1075i = C0202i.m1612a(typedArray.getInt(R.styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f1076j = C0183a.m1501a(this.f1068b.getContext(), typedArray, R.styleable.MaterialButton_backgroundTint);
        this.f1077k = C0183a.m1501a(this.f1068b.getContext(), typedArray, R.styleable.MaterialButton_strokeColor);
        this.f1078l = C0183a.m1501a(this.f1068b.getContext(), typedArray, R.styleable.MaterialButton_rippleColor);
        this.f1079m.setStyle(Paint.Style.STROKE);
        this.f1079m.setStrokeWidth(this.f1074h);
        this.f1079m.setColor(this.f1077k != null ? this.f1077k.getColorForState(this.f1068b.getDrawableState(), 0) : 0);
        int paddingStart = ViewCompat.getPaddingStart(this.f1068b);
        int paddingTop = this.f1068b.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f1068b);
        int paddingBottom = this.f1068b.getPaddingBottom();
        this.f1068b.setInternalBackground(f1067a ? m1392k() : m1390i());
        ViewCompat.setPaddingRelative(this.f1068b, paddingStart + this.f1069c, paddingTop + this.f1071e, paddingEnd + this.f1070d, paddingBottom + this.f1072f);
    }

    /* renamed from: a */
    void m1396a() {
        this.f1089w = true;
        this.f1068b.setSupportBackgroundTintList(this.f1076j);
        this.f1068b.setSupportBackgroundTintMode(this.f1075i);
    }

    /* renamed from: b */
    boolean m1405b() {
        return this.f1089w;
    }

    /* renamed from: a */
    void m1401a(@Nullable Canvas canvas) {
        if (canvas != null && this.f1077k != null && this.f1074h > 0) {
            this.f1080n.set(this.f1068b.getBackground().getBounds());
            this.f1081o.set(this.f1080n.left + (this.f1074h / 2.0f) + this.f1069c, this.f1080n.top + (this.f1074h / 2.0f) + this.f1071e, (this.f1080n.right - (this.f1074h / 2.0f)) - this.f1070d, (this.f1080n.bottom - (this.f1074h / 2.0f)) - this.f1072f);
            float f = this.f1073g - (this.f1074h / 2.0f);
            canvas.drawRoundRect(this.f1081o, f, f, this.f1079m);
        }
    }

    /* renamed from: i */
    private Drawable m1390i() {
        this.f1082p = new GradientDrawable();
        this.f1082p.setCornerRadius(this.f1073g + 1.0E-5f);
        this.f1082p.setColor(-1);
        this.f1083q = DrawableCompat.wrap(this.f1082p);
        DrawableCompat.setTintList(this.f1083q, this.f1076j);
        if (this.f1075i != null) {
            DrawableCompat.setTintMode(this.f1083q, this.f1075i);
        }
        this.f1084r = new GradientDrawable();
        this.f1084r.setCornerRadius(this.f1073g + 1.0E-5f);
        this.f1084r.setColor(-1);
        this.f1085s = DrawableCompat.wrap(this.f1084r);
        DrawableCompat.setTintList(this.f1085s, this.f1078l);
        return m1389a(new LayerDrawable(new Drawable[]{this.f1083q, this.f1085s}));
    }

    /* renamed from: a */
    private InsetDrawable m1389a(Drawable drawable) {
        return new InsetDrawable(drawable, this.f1069c, this.f1071e, this.f1070d, this.f1072f);
    }

    /* renamed from: a */
    void m1399a(@Nullable ColorStateList colorStateList) {
        if (this.f1076j != colorStateList) {
            this.f1076j = colorStateList;
            if (f1067a) {
                m1391j();
            } else if (this.f1083q != null) {
                DrawableCompat.setTintList(this.f1083q, this.f1076j);
            }
        }
    }

    /* renamed from: c */
    ColorStateList m1406c() {
        return this.f1076j;
    }

    /* renamed from: a */
    void m1402a(@Nullable PorterDuff.Mode mode) {
        if (this.f1075i != mode) {
            this.f1075i = mode;
            if (f1067a) {
                m1391j();
            } else if (this.f1083q != null && this.f1075i != null) {
                DrawableCompat.setTintMode(this.f1083q, this.f1075i);
            }
        }
    }

    /* renamed from: d */
    PorterDuff.Mode m1409d() {
        return this.f1075i;
    }

    /* renamed from: j */
    private void m1391j() {
        if (this.f1086t != null) {
            DrawableCompat.setTintList(this.f1086t, this.f1076j);
            if (this.f1075i != null) {
                DrawableCompat.setTintMode(this.f1086t, this.f1075i);
            }
        }
    }

    @TargetApi(21)
    /* renamed from: k */
    private Drawable m1392k() {
        this.f1086t = new GradientDrawable();
        this.f1086t.setCornerRadius(this.f1073g + 1.0E-5f);
        this.f1086t.setColor(-1);
        m1391j();
        this.f1087u = new GradientDrawable();
        this.f1087u.setCornerRadius(this.f1073g + 1.0E-5f);
        this.f1087u.setColor(0);
        this.f1087u.setStroke(this.f1074h, this.f1077k);
        InsetDrawable m1389a = m1389a(new LayerDrawable(new Drawable[]{this.f1086t, this.f1087u}));
        this.f1088v = new GradientDrawable();
        this.f1088v.setCornerRadius(this.f1073g + 1.0E-5f);
        this.f1088v.setColor(-1);
        return new C0166b(C0184a.m1505a(this.f1078l), m1389a, this.f1088v);
    }

    /* renamed from: a */
    void m1398a(int i, int i2) {
        if (this.f1088v != null) {
            this.f1088v.setBounds(this.f1069c, this.f1071e, i2 - this.f1070d, i - this.f1072f);
        }
    }

    /* renamed from: a */
    void m1397a(int i) {
        if (f1067a && this.f1086t != null) {
            this.f1086t.setColor(i);
        } else if (!f1067a && this.f1082p != null) {
            this.f1082p.setColor(i);
        }
    }

    /* renamed from: b */
    void m1404b(@Nullable ColorStateList colorStateList) {
        if (this.f1078l != colorStateList) {
            this.f1078l = colorStateList;
            if (f1067a && (this.f1068b.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f1068b.getBackground()).setColor(colorStateList);
            } else if (!f1067a && this.f1085s != null) {
                DrawableCompat.setTintList(this.f1085s, colorStateList);
            }
        }
    }

    @Nullable
    /* renamed from: e */
    ColorStateList m1410e() {
        return this.f1078l;
    }

    /* renamed from: c */
    void m1408c(@Nullable ColorStateList colorStateList) {
        if (this.f1077k != colorStateList) {
            this.f1077k = colorStateList;
            this.f1079m.setColor(colorStateList != null ? colorStateList.getColorForState(this.f1068b.getDrawableState(), 0) : 0);
            m1393l();
        }
    }

    @Nullable
    /* renamed from: f */
    ColorStateList m1411f() {
        return this.f1077k;
    }

    /* renamed from: b */
    void m1403b(int i) {
        if (this.f1074h != i) {
            this.f1074h = i;
            this.f1079m.setStrokeWidth(i);
            m1393l();
        }
    }

    /* renamed from: g */
    int m1412g() {
        return this.f1074h;
    }

    /* renamed from: l */
    private void m1393l() {
        if (f1067a && this.f1087u != null) {
            this.f1068b.setInternalBackground(m1392k());
        } else if (!f1067a) {
            this.f1068b.invalidate();
        }
    }

    /* renamed from: c */
    void m1407c(int i) {
        if (this.f1073g != i) {
            this.f1073g = i;
            if (f1067a && this.f1086t != null && this.f1087u != null && this.f1088v != null) {
                if (Build.VERSION.SDK_INT == 21) {
                    m1395n().setCornerRadius(i + 1.0E-5f);
                    m1394m().setCornerRadius(i + 1.0E-5f);
                }
                this.f1086t.setCornerRadius(i + 1.0E-5f);
                this.f1087u.setCornerRadius(i + 1.0E-5f);
                this.f1088v.setCornerRadius(i + 1.0E-5f);
                return;
            }
            if (!f1067a && this.f1082p != null && this.f1084r != null) {
                this.f1082p.setCornerRadius(i + 1.0E-5f);
                this.f1084r.setCornerRadius(i + 1.0E-5f);
                this.f1068b.invalidate();
            }
        }
    }

    /* renamed from: h */
    int m1413h() {
        return this.f1073g;
    }

    @Nullable
    /* renamed from: m */
    private GradientDrawable m1394m() {
        if (!f1067a || this.f1068b.getBackground() == null) {
            return null;
        }
        return (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) this.f1068b.getBackground()).getDrawable(0)).getDrawable()).getDrawable(1);
    }

    @Nullable
    /* renamed from: n */
    private GradientDrawable m1395n() {
        if (!f1067a || this.f1068b.getBackground() == null) {
            return null;
        }
        return (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) this.f1068b.getBackground()).getDrawable(0)).getDrawable()).getDrawable(0);
    }
}
