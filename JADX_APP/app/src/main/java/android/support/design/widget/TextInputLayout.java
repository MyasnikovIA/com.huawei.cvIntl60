package android.support.design.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.annotation.VisibleForTesting;
import android.support.design.R;
import android.support.design.internal.C0201h;
import android.support.design.internal.C0202i;
import android.support.design.p038a.C0155a;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.p048a.p049a.C0488a;
import android.support.v7.widget.C0659aj;
import android.support.v7.widget.C0687bk;
import android.support.v7.widget.C0705k;
import android.support.v7.widget.C0719y;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout {

    /* renamed from: A */
    @ColorInt
    private int f1604A;

    /* renamed from: B */
    @ColorInt
    private int f1605B;

    /* renamed from: C */
    private Drawable f1606C;

    /* renamed from: D */
    private final Rect f1607D;

    /* renamed from: E */
    private final RectF f1608E;

    /* renamed from: F */
    private Typeface f1609F;

    /* renamed from: G */
    private boolean f1610G;

    /* renamed from: H */
    private Drawable f1611H;

    /* renamed from: I */
    private CharSequence f1612I;

    /* renamed from: J */
    private CheckableImageButton f1613J;

    /* renamed from: K */
    private boolean f1614K;

    /* renamed from: L */
    private Drawable f1615L;

    /* renamed from: M */
    private Drawable f1616M;

    /* renamed from: N */
    private ColorStateList f1617N;

    /* renamed from: O */
    private boolean f1618O;

    /* renamed from: P */
    private PorterDuff.Mode f1619P;

    /* renamed from: Q */
    private boolean f1620Q;

    /* renamed from: R */
    private ColorStateList f1621R;

    /* renamed from: S */
    private ColorStateList f1622S;

    /* renamed from: T */
    @ColorInt
    private final int f1623T;

    /* renamed from: U */
    @ColorInt
    private final int f1624U;

    /* renamed from: V */
    @ColorInt
    private int f1625V;

    /* renamed from: W */
    @ColorInt
    private final int f1626W;

    /* renamed from: a */
    EditText f1627a;

    /* renamed from: aa */
    private boolean f1628aa;

    /* renamed from: ab */
    private boolean f1629ab;

    /* renamed from: ac */
    private ValueAnimator f1630ac;

    /* renamed from: ad */
    private boolean f1631ad;

    /* renamed from: ae */
    private boolean f1632ae;

    /* renamed from: af */
    private boolean f1633af;

    /* renamed from: b */
    boolean f1634b;

    /* renamed from: c */
    final C0273b f1635c;

    /* renamed from: d */
    private final FrameLayout f1636d;

    /* renamed from: e */
    private CharSequence f1637e;

    /* renamed from: f */
    private final C0281j f1638f;

    /* renamed from: g */
    private int f1639g;

    /* renamed from: h */
    private boolean f1640h;

    /* renamed from: i */
    private TextView f1641i;

    /* renamed from: j */
    private final int f1642j;

    /* renamed from: k */
    private final int f1643k;

    /* renamed from: l */
    private boolean f1644l;

    /* renamed from: m */
    private CharSequence f1645m;

    /* renamed from: n */
    private boolean f1646n;

    /* renamed from: o */
    private GradientDrawable f1647o;

    /* renamed from: p */
    private final int f1648p;

    /* renamed from: q */
    private final int f1649q;

    /* renamed from: r */
    private int f1650r;

    /* renamed from: s */
    private final int f1651s;

    /* renamed from: t */
    private float f1652t;

    /* renamed from: u */
    private float f1653u;

    /* renamed from: v */
    private float f1654v;

    /* renamed from: w */
    private float f1655w;

    /* renamed from: x */
    private int f1656x;

    /* renamed from: y */
    private final int f1657y;

    /* renamed from: z */
    private final int f1658z;

    public TextInputLayout(Context context) {
        this(context, null);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textInputStyle);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1638f = new C0281j(this);
        this.f1607D = new Rect();
        this.f1608E = new RectF();
        this.f1635c = new C0273b(this);
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        this.f1636d = new FrameLayout(context);
        this.f1636d.setAddStatesFromChildren(true);
        addView(this.f1636d);
        this.f1635c.m2039a(C0155a.f1037a);
        this.f1635c.m2050b(C0155a.f1037a);
        this.f1635c.m2048b(8388659);
        C0687bk m1608b = C0201h.m1608b(context, attributeSet, R.styleable.TextInputLayout, i, R.style.Widget_Design_TextInputLayout, new int[0]);
        this.f1644l = m1608b.m4173a(R.styleable.TextInputLayout_hintEnabled, true);
        setHint(m1608b.m4178c(R.styleable.TextInputLayout_android_hint));
        this.f1629ab = m1608b.m4173a(R.styleable.TextInputLayout_hintAnimationEnabled, true);
        this.f1648p = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_bottom_offset);
        this.f1649q = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.f1651s = m1608b.m4179d(R.styleable.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.f1652t = m1608b.m4174b(R.styleable.TextInputLayout_boxCornerRadiusTopStart, 0.0f);
        this.f1653u = m1608b.m4174b(R.styleable.TextInputLayout_boxCornerRadiusTopEnd, 0.0f);
        this.f1654v = m1608b.m4174b(R.styleable.TextInputLayout_boxCornerRadiusBottomEnd, 0.0f);
        this.f1655w = m1608b.m4174b(R.styleable.TextInputLayout_boxCornerRadiusBottomStart, 0.0f);
        this.f1605B = m1608b.m4175b(R.styleable.TextInputLayout_boxBackgroundColor, 0);
        this.f1625V = m1608b.m4175b(R.styleable.TextInputLayout_boxStrokeColor, 0);
        this.f1657y = context.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_default);
        this.f1658z = context.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_focused);
        this.f1656x = this.f1657y;
        setBoxBackgroundMode(m1608b.m4169a(R.styleable.TextInputLayout_boxBackgroundMode, 0));
        if (m1608b.m4186g(R.styleable.TextInputLayout_android_textColorHint)) {
            ColorStateList m4182e = m1608b.m4182e(R.styleable.TextInputLayout_android_textColorHint);
            this.f1622S = m4182e;
            this.f1621R = m4182e;
        }
        this.f1623T = ContextCompat.getColor(context, R.color.mtrl_textinput_default_box_stroke_color);
        this.f1626W = ContextCompat.getColor(context, R.color.mtrl_textinput_disabled_color);
        this.f1624U = ContextCompat.getColor(context, R.color.mtrl_textinput_hovered_box_stroke_color);
        if (m1608b.m4185g(R.styleable.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(m1608b.m4185g(R.styleable.TextInputLayout_hintTextAppearance, 0));
        }
        int m4185g = m1608b.m4185g(R.styleable.TextInputLayout_errorTextAppearance, 0);
        boolean m4173a = m1608b.m4173a(R.styleable.TextInputLayout_errorEnabled, false);
        int m4185g2 = m1608b.m4185g(R.styleable.TextInputLayout_helperTextTextAppearance, 0);
        boolean m4173a2 = m1608b.m4173a(R.styleable.TextInputLayout_helperTextEnabled, false);
        CharSequence m4178c = m1608b.m4178c(R.styleable.TextInputLayout_helperText);
        boolean m4173a3 = m1608b.m4173a(R.styleable.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(m1608b.m4169a(R.styleable.TextInputLayout_counterMaxLength, -1));
        this.f1643k = m1608b.m4185g(R.styleable.TextInputLayout_counterTextAppearance, 0);
        this.f1642j = m1608b.m4185g(R.styleable.TextInputLayout_counterOverflowTextAppearance, 0);
        this.f1610G = m1608b.m4173a(R.styleable.TextInputLayout_passwordToggleEnabled, false);
        this.f1611H = m1608b.m4171a(R.styleable.TextInputLayout_passwordToggleDrawable);
        this.f1612I = m1608b.m4178c(R.styleable.TextInputLayout_passwordToggleContentDescription);
        if (m1608b.m4186g(R.styleable.TextInputLayout_passwordToggleTint)) {
            this.f1618O = true;
            this.f1617N = m1608b.m4182e(R.styleable.TextInputLayout_passwordToggleTint);
        }
        if (m1608b.m4186g(R.styleable.TextInputLayout_passwordToggleTintMode)) {
            this.f1620Q = true;
            this.f1619P = C0202i.m1612a(m1608b.m4169a(R.styleable.TextInputLayout_passwordToggleTintMode, -1), null);
        }
        m1608b.m4172a();
        setHelperTextEnabled(m4173a2);
        setHelperText(m4178c);
        setHelperTextTextAppearance(m4185g2);
        setErrorEnabled(m4173a);
        setErrorTextAppearance(m4185g);
        setCounterEnabled(m4173a3);
        m2000s();
        ViewCompat.setImportantForAccessibility(this, 2);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            this.f1636d.addView(view, layoutParams2);
            this.f1636d.setLayoutParams(layoutParams);
            m1988g();
            setEditText((EditText) view);
            return;
        }
        super.addView(view, i, layoutParams);
    }

    @NonNull
    private Drawable getBoxBackground() {
        if (this.f1650r == 1 || this.f1650r == 2) {
            return this.f1647o;
        }
        throw new IllegalStateException();
    }

    public void setBoxBackgroundMode(int i) {
        if (i != this.f1650r) {
            this.f1650r = i;
            m1986e();
        }
    }

    /* renamed from: e */
    private void m1986e() {
        m1987f();
        if (this.f1650r != 0) {
            m1988g();
        }
        m1989h();
    }

    /* renamed from: f */
    private void m1987f() {
        if (this.f1650r == 0) {
            this.f1647o = null;
            return;
        }
        if (this.f1650r == 2 && this.f1644l && !(this.f1647o instanceof C0274c)) {
            this.f1647o = new C0274c();
        } else if (!(this.f1647o instanceof GradientDrawable)) {
            this.f1647o = new GradientDrawable();
        }
    }

    public void setBoxStrokeColor(@ColorInt int i) {
        if (this.f1625V != i) {
            this.f1625V = i;
            m2012d();
        }
    }

    public int getBoxStrokeColor() {
        return this.f1625V;
    }

    public void setBoxBackgroundColorResource(@ColorRes int i) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i));
    }

    public void setBoxBackgroundColor(@ColorInt int i) {
        if (this.f1605B != i) {
            this.f1605B = i;
            m1995n();
        }
    }

    public int getBoxBackgroundColor() {
        return this.f1605B;
    }

    public float getBoxCornerRadiusTopStart() {
        return this.f1652t;
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.f1653u;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.f1654v;
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.f1655w;
    }

    private float[] getCornerRadiiAsArray() {
        return !C0202i.m1613a(this) ? new float[]{this.f1652t, this.f1652t, this.f1653u, this.f1653u, this.f1654v, this.f1654v, this.f1655w, this.f1655w} : new float[]{this.f1653u, this.f1653u, this.f1652t, this.f1652t, this.f1655w, this.f1655w, this.f1654v, this.f1654v};
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.f1609F) {
            this.f1609F = typeface;
            this.f1635c.m2043a(typeface);
            this.f1638f.m2144a(typeface);
            if (this.f1641i != null) {
                this.f1641i.setTypeface(typeface);
            }
        }
    }

    @Nullable
    public Typeface getTypeface() {
        return this.f1609F;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        if (this.f1637e == null || this.f1627a == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        boolean z = this.f1646n;
        this.f1646n = false;
        CharSequence hint = this.f1627a.getHint();
        this.f1627a.setHint(this.f1637e);
        try {
            super.dispatchProvideAutofillStructure(viewStructure, i);
        } finally {
            this.f1627a.setHint(hint);
            this.f1646n = z;
        }
    }

    private void setEditText(EditText editText) {
        if (this.f1627a != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (!(editText instanceof C0288q)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f1627a = editText;
        m1986e();
        setTextInputAccessibilityDelegate(new C0271a(this));
        if (!m1998q()) {
            this.f1635c.m2043a(this.f1627a.getTypeface());
        }
        this.f1635c.m2036a(this.f1627a.getTextSize());
        int gravity = this.f1627a.getGravity();
        this.f1635c.m2048b((gravity & (-113)) | 48);
        this.f1635c.m2037a(gravity);
        this.f1627a.addTextChangedListener(new TextWatcher() { // from class: android.support.design.widget.TextInputLayout.1
            C02671() {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                TextInputLayout.this.m2007a(!TextInputLayout.this.f1633af);
                if (TextInputLayout.this.f1634b) {
                    TextInputLayout.this.m2005a(editable.length());
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        if (this.f1621R == null) {
            this.f1621R = this.f1627a.getHintTextColors();
        }
        if (this.f1644l) {
            if (TextUtils.isEmpty(this.f1645m)) {
                this.f1637e = this.f1627a.getHint();
                setHint(this.f1637e);
                this.f1627a.setHint((CharSequence) null);
            }
            this.f1646n = true;
        }
        if (this.f1641i != null) {
            m2005a(this.f1627a.getText().length());
        }
        this.f1638f.m2157d();
        m1997p();
        m1982a(false, true);
    }

    /* renamed from: android.support.design.widget.TextInputLayout$1 */
    class C02671 implements TextWatcher {
        C02671() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            TextInputLayout.this.m2007a(!TextInputLayout.this.f1633af);
            if (TextInputLayout.this.f1634b) {
                TextInputLayout.this.m2005a(editable.length());
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: g */
    private void m1988g() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f1636d.getLayoutParams();
        int m1991j = m1991j();
        if (m1991j != layoutParams.topMargin) {
            layoutParams.topMargin = m1991j;
            this.f1636d.requestLayout();
        }
    }

    /* renamed from: a */
    void m2007a(boolean z) {
        m1982a(z, false);
    }

    /* renamed from: a */
    private void m1982a(boolean z, boolean z2) {
        boolean isEnabled = isEnabled();
        boolean z3 = (this.f1627a == null || TextUtils.isEmpty(this.f1627a.getText())) ? false : true;
        boolean z4 = this.f1627a != null && this.f1627a.hasFocus();
        boolean m2160g = this.f1638f.m2160g();
        if (this.f1621R != null) {
            this.f1635c.m2040a(this.f1621R);
            this.f1635c.m2051b(this.f1621R);
        }
        if (!isEnabled) {
            this.f1635c.m2040a(ColorStateList.valueOf(this.f1626W));
            this.f1635c.m2051b(ColorStateList.valueOf(this.f1626W));
        } else if (m2160g) {
            this.f1635c.m2040a(this.f1638f.m2164k());
        } else if (this.f1640h && this.f1641i != null) {
            this.f1635c.m2040a(this.f1641i.getTextColors());
        } else if (z4 && this.f1622S != null) {
            this.f1635c.m2040a(this.f1622S);
        }
        if (z3 || (isEnabled() && (z4 || m2160g))) {
            if (z2 || this.f1628aa) {
                m1984c(z);
                return;
            }
            return;
        }
        if (z2 || !this.f1628aa) {
            m1985d(z);
        }
    }

    @Nullable
    public EditText getEditText() {
        return this.f1627a;
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.f1644l) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    private void setHintInternal(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.f1645m)) {
            this.f1645m = charSequence;
            this.f1635c.m2044a(charSequence);
            if (!this.f1628aa) {
                m2002u();
            }
        }
    }

    @Nullable
    public CharSequence getHint() {
        if (this.f1644l) {
            return this.f1645m;
        }
        return null;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.f1644l) {
            this.f1644l = z;
            if (!this.f1644l) {
                this.f1646n = false;
                if (!TextUtils.isEmpty(this.f1645m) && TextUtils.isEmpty(this.f1627a.getHint())) {
                    this.f1627a.setHint(this.f1645m);
                }
                setHintInternal(null);
            } else {
                CharSequence hint = this.f1627a.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f1645m)) {
                        setHint(hint);
                    }
                    this.f1627a.setHint((CharSequence) null);
                }
                this.f1646n = true;
            }
            if (this.f1627a != null) {
                m1988g();
            }
        }
    }

    /* renamed from: a */
    boolean m2008a() {
        return this.f1646n;
    }

    public void setHintTextAppearance(@StyleRes int i) {
        this.f1635c.m2053c(i);
        this.f1622S = this.f1635c.m2058h();
        if (this.f1627a != null) {
            m2007a(false);
            m1988g();
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.f1621R = colorStateList;
        this.f1622S = colorStateList;
        if (this.f1627a != null) {
            m2007a(false);
        }
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.f1621R;
    }

    public void setErrorEnabled(boolean z) {
        this.f1638f.m2147a(z);
    }

    public void setErrorTextAppearance(@StyleRes int i) {
        this.f1638f.m2150b(i);
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        this.f1638f.m2143a(colorStateList);
    }

    @ColorInt
    public int getErrorCurrentTextColors() {
        return this.f1638f.m2163j();
    }

    public void setHelperTextTextAppearance(@StyleRes int i) {
        this.f1638f.m2156c(i);
    }

    public void setHelperTextEnabled(boolean z) {
        this.f1638f.m2154b(z);
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (m2010b()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!m2010b()) {
                setHelperTextEnabled(true);
            }
            this.f1638f.m2146a(charSequence);
        }
    }

    /* renamed from: b */
    public boolean m2010b() {
        return this.f1638f.m2159f();
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        this.f1638f.m2151b(colorStateList);
    }

    @ColorInt
    public int getHelperTextCurrentTextColor() {
        return this.f1638f.m2165l();
    }

    public void setError(@Nullable CharSequence charSequence) {
        if (!this.f1638f.m2158e()) {
            if (!TextUtils.isEmpty(charSequence)) {
                setErrorEnabled(true);
            } else {
                return;
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            this.f1638f.m2153b(charSequence);
        } else {
            this.f1638f.m2149b();
        }
    }

    public void setCounterEnabled(boolean z) {
        if (this.f1634b != z) {
            if (z) {
                this.f1641i = new C0719y(getContext());
                this.f1641i.setId(R.id.textinput_counter);
                if (this.f1609F != null) {
                    this.f1641i.setTypeface(this.f1609F);
                }
                this.f1641i.setMaxLines(1);
                m2006a(this.f1641i, this.f1643k);
                this.f1638f.m2145a(this.f1641i, 2);
                if (this.f1627a == null) {
                    m2005a(0);
                } else {
                    m2005a(this.f1627a.getText().length());
                }
            } else {
                this.f1638f.m2152b(this.f1641i, 2);
                this.f1641i = null;
            }
            this.f1634b = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.f1639g != i) {
            if (i > 0) {
                this.f1639g = i;
            } else {
                this.f1639g = -1;
            }
            if (this.f1634b) {
                m2005a(this.f1627a == null ? 0 : this.f1627a.getText().length());
            }
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m1981a(this, z);
        super.setEnabled(z);
    }

    /* renamed from: a */
    private static void m1981a(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m1981a((ViewGroup) childAt, z);
            }
        }
    }

    public int getCounterMaxLength() {
        return this.f1639g;
    }

    @Nullable
    CharSequence getCounterOverflowDescription() {
        if (this.f1634b && this.f1640h && this.f1641i != null) {
            return this.f1641i.getContentDescription();
        }
        return null;
    }

    /* renamed from: a */
    void m2005a(int i) {
        boolean z = this.f1640h;
        if (this.f1639g == -1) {
            this.f1641i.setText(String.valueOf(i));
            this.f1641i.setContentDescription(null);
            this.f1640h = false;
        } else {
            if (ViewCompat.getAccessibilityLiveRegion(this.f1641i) == 1) {
                ViewCompat.setAccessibilityLiveRegion(this.f1641i, 0);
            }
            this.f1640h = i > this.f1639g;
            if (z != this.f1640h) {
                m2006a(this.f1641i, this.f1640h ? this.f1642j : this.f1643k);
                if (this.f1640h) {
                    ViewCompat.setAccessibilityLiveRegion(this.f1641i, 1);
                }
            }
            this.f1641i.setText(getContext().getString(R.string.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.f1639g)));
            this.f1641i.setContentDescription(getContext().getString(R.string.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(this.f1639g)));
        }
        if (this.f1627a != null && z != this.f1640h) {
            m2007a(false);
            m2012d();
            m2011c();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
    
        if (r5.getTextColors().getDefaultColor() == (-65281)) goto L25;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void m2006a(android.widget.TextView r5, @android.support.annotation.StyleRes int r6) {
        /*
            r4 = this;
            r0 = 1
            r1 = 0
            android.support.v4.widget.TextViewCompat.setTextAppearance(r5, r6)     // Catch: java.lang.Exception -> L2d
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L2d
            r3 = 23
            if (r2 < r3) goto L2f
            android.content.res.ColorStateList r2 = r5.getTextColors()     // Catch: java.lang.Exception -> L2d
            int r2 = r2.getDefaultColor()     // Catch: java.lang.Exception -> L2d
            r3 = -65281(0xffffffffffff00ff, float:NaN)
            if (r2 != r3) goto L2f
        L18:
            if (r0 == 0) goto L2c
            int r0 = android.support.design.R.style.TextAppearance_AppCompat_Caption
            android.support.v4.widget.TextViewCompat.setTextAppearance(r5, r0)
            android.content.Context r0 = r4.getContext()
            int r1 = android.support.design.R.color.design_error
            int r0 = android.support.v4.content.ContextCompat.getColor(r0, r1)
            r5.setTextColor(r0)
        L2c:
            return
        L2d:
            r1 = move-exception
            goto L18
        L2f:
            r0 = r1
            goto L18
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.TextInputLayout.m2006a(android.widget.TextView, int):void");
    }

    /* renamed from: h */
    private void m1989h() {
        if (this.f1650r != 0 && this.f1647o != null && this.f1627a != null && getRight() != 0) {
            int left = this.f1627a.getLeft();
            int m1990i = m1990i();
            int right = this.f1627a.getRight();
            int bottom = this.f1627a.getBottom() + this.f1648p;
            if (this.f1650r == 2) {
                left += this.f1658z / 2;
                m1990i -= this.f1658z / 2;
                right -= this.f1658z / 2;
                bottom += this.f1658z / 2;
            }
            this.f1647o.setBounds(left, m1990i, right, bottom);
            m1995n();
            m1993l();
        }
    }

    /* renamed from: i */
    private int m1990i() {
        if (this.f1627a == null) {
            return 0;
        }
        switch (this.f1650r) {
            case 1:
                return this.f1627a.getTop();
            case 2:
                return this.f1627a.getTop() + m1991j();
            default:
                return 0;
        }
    }

    /* renamed from: j */
    private int m1991j() {
        if (!this.f1644l) {
            return 0;
        }
        switch (this.f1650r) {
            case 0:
            case 1:
                return (int) this.f1635c.m2046b();
            case 2:
                return (int) (this.f1635c.m2046b() / 2.0f);
            default:
                return 0;
        }
    }

    /* renamed from: k */
    private int m1992k() {
        switch (this.f1650r) {
            case 1:
                return getBoxBackground().getBounds().top + this.f1651s;
            case 2:
                return getBoxBackground().getBounds().top - m1991j();
            default:
                return getPaddingTop();
        }
    }

    /* renamed from: l */
    private void m1993l() {
        Drawable background;
        if (this.f1627a != null && (background = this.f1627a.getBackground()) != null) {
            if (C0659aj.m3931b(background)) {
                background = background.mutate();
            }
            C0275d.m2070b(this, this.f1627a, new Rect());
            Rect bounds = background.getBounds();
            if (bounds.left != bounds.right) {
                Rect rect = new Rect();
                background.getPadding(rect);
                background.setBounds(bounds.left - rect.left, bounds.top, (rect.right * 2) + bounds.right, this.f1627a.getBottom());
            }
        }
    }

    /* renamed from: m */
    private void m1994m() {
        switch (this.f1650r) {
            case 1:
                this.f1656x = 0;
                break;
            case 2:
                if (this.f1625V == 0) {
                    this.f1625V = this.f1622S.getColorForState(getDrawableState(), this.f1622S.getDefaultColor());
                    break;
                }
                break;
        }
    }

    /* renamed from: n */
    private void m1995n() {
        if (this.f1647o != null) {
            m1994m();
            if (this.f1627a != null && this.f1650r == 2) {
                if (this.f1627a.getBackground() != null) {
                    this.f1606C = this.f1627a.getBackground();
                }
                ViewCompat.setBackground(this.f1627a, null);
            }
            if (this.f1627a != null && this.f1650r == 1 && this.f1606C != null) {
                ViewCompat.setBackground(this.f1627a, this.f1606C);
            }
            if (this.f1656x > -1 && this.f1604A != 0) {
                this.f1647o.setStroke(this.f1656x, this.f1604A);
            }
            this.f1647o.setCornerRadii(getCornerRadiiAsArray());
            this.f1647o.setColor(this.f1605B);
            invalidate();
        }
    }

    /* renamed from: c */
    void m2011c() {
        Drawable background;
        if (this.f1627a != null && (background = this.f1627a.getBackground()) != null) {
            m1996o();
            if (C0659aj.m3931b(background)) {
                background = background.mutate();
            }
            if (this.f1638f.m2160g()) {
                background.setColorFilter(C0705k.m4309a(this.f1638f.m2163j(), PorterDuff.Mode.SRC_IN));
            } else if (this.f1640h && this.f1641i != null) {
                background.setColorFilter(C0705k.m4309a(this.f1641i.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            } else {
                DrawableCompat.clearColorFilter(background);
                this.f1627a.refreshDrawableState();
            }
        }
    }

    /* renamed from: o */
    private void m1996o() {
        Drawable background;
        int i = Build.VERSION.SDK_INT;
        if ((i == 21 || i == 22) && (background = this.f1627a.getBackground()) != null && !this.f1631ad) {
            Drawable newDrawable = background.getConstantState().newDrawable();
            if (background instanceof DrawableContainer) {
                this.f1631ad = C0276e.m2071a((DrawableContainer) background, newDrawable.getConstantState());
            }
            if (!this.f1631ad) {
                ViewCompat.setBackground(this.f1627a, newDrawable);
                this.f1631ad = true;
                m1986e();
            }
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.design.widget.TextInputLayout.SavedState.1
            C02701() {
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        CharSequence f1662a;

        /* renamed from: b */
        boolean f1663b;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1662a = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f1663b = parcel.readInt() == 1;
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.f1662a, parcel, i);
            parcel.writeInt(this.f1663b ? 1 : 0);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f1662a) + "}";
        }

        /* renamed from: android.support.design.widget.TextInputLayout$SavedState$1 */
        static class C02701 implements Parcelable.ClassLoaderCreator<SavedState> {
            C02701() {
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f1638f.m2160g()) {
            savedState.f1662a = getError();
        }
        savedState.f1663b = this.f1614K;
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.f1662a);
        if (savedState.f1663b) {
            m2009b(true);
        }
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.f1633af = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f1633af = false;
    }

    @Nullable
    public CharSequence getError() {
        if (this.f1638f.m2158e()) {
            return this.f1638f.m2161h();
        }
        return null;
    }

    @Nullable
    public CharSequence getHelperText() {
        if (this.f1638f.m2159f()) {
            return this.f1638f.m2162i();
        }
        return null;
    }

    public void setHintAnimationEnabled(boolean z) {
        this.f1629ab = z;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.f1647o != null) {
            this.f1647o.draw(canvas);
        }
        super.draw(canvas);
        if (this.f1644l) {
            this.f1635c.m2041a(canvas);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        m1997p();
        super.onMeasure(i, i2);
    }

    /* renamed from: p */
    private void m1997p() {
        if (this.f1627a != null) {
            if (m1999r()) {
                if (this.f1613J == null) {
                    this.f1613J = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_password_icon, (ViewGroup) this.f1636d, false);
                    this.f1613J.setImageDrawable(this.f1611H);
                    this.f1613J.setContentDescription(this.f1612I);
                    this.f1636d.addView(this.f1613J);
                    this.f1613J.setOnClickListener(new View.OnClickListener() { // from class: android.support.design.widget.TextInputLayout.2
                        ViewOnClickListenerC02682() {
                        }

                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            TextInputLayout.this.m2009b(false);
                        }
                    });
                }
                if (this.f1627a != null && ViewCompat.getMinimumHeight(this.f1627a) <= 0) {
                    this.f1627a.setMinimumHeight(ViewCompat.getMinimumHeight(this.f1613J));
                }
                this.f1613J.setVisibility(0);
                this.f1613J.setChecked(this.f1614K);
                if (this.f1615L == null) {
                    this.f1615L = new ColorDrawable();
                }
                this.f1615L.setBounds(0, 0, this.f1613J.getMeasuredWidth(), 1);
                Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this.f1627a);
                if (compoundDrawablesRelative[2] != this.f1615L) {
                    this.f1616M = compoundDrawablesRelative[2];
                }
                TextViewCompat.setCompoundDrawablesRelative(this.f1627a, compoundDrawablesRelative[0], compoundDrawablesRelative[1], this.f1615L, compoundDrawablesRelative[3]);
                this.f1613J.setPadding(this.f1627a.getPaddingLeft(), this.f1627a.getPaddingTop(), this.f1627a.getPaddingRight(), this.f1627a.getPaddingBottom());
                return;
            }
            if (this.f1613J != null && this.f1613J.getVisibility() == 0) {
                this.f1613J.setVisibility(8);
            }
            if (this.f1615L != null) {
                Drawable[] compoundDrawablesRelative2 = TextViewCompat.getCompoundDrawablesRelative(this.f1627a);
                if (compoundDrawablesRelative2[2] == this.f1615L) {
                    TextViewCompat.setCompoundDrawablesRelative(this.f1627a, compoundDrawablesRelative2[0], compoundDrawablesRelative2[1], this.f1616M, compoundDrawablesRelative2[3]);
                    this.f1615L = null;
                }
            }
        }
    }

    /* renamed from: android.support.design.widget.TextInputLayout$2 */
    class ViewOnClickListenerC02682 implements View.OnClickListener {
        ViewOnClickListenerC02682() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextInputLayout.this.m2009b(false);
        }
    }

    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? C0488a.m2457b(getContext(), i) : null);
    }

    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.f1611H = drawable;
        if (this.f1613J != null) {
            this.f1613J.setImageDrawable(drawable);
        }
    }

    public void setPasswordVisibilityToggleContentDescription(@StringRes int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.f1612I = charSequence;
        if (this.f1613J != null) {
            this.f1613J.setContentDescription(charSequence);
        }
    }

    @Nullable
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f1611H;
    }

    @Nullable
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f1612I;
    }

    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (this.f1610G != z) {
            this.f1610G = z;
            if (!z && this.f1614K && this.f1627a != null) {
                this.f1627a.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            this.f1614K = false;
            m1997p();
        }
    }

    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.f1617N = colorStateList;
        this.f1618O = true;
        m2000s();
    }

    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1619P = mode;
        this.f1620Q = true;
        m2000s();
    }

    /* renamed from: b */
    public void m2009b(boolean z) {
        if (this.f1610G) {
            int selectionEnd = this.f1627a.getSelectionEnd();
            if (m1998q()) {
                this.f1627a.setTransformationMethod(null);
                this.f1614K = true;
            } else {
                this.f1627a.setTransformationMethod(PasswordTransformationMethod.getInstance());
                this.f1614K = false;
            }
            this.f1613J.setChecked(this.f1614K);
            if (z) {
                this.f1613J.jumpDrawablesToCurrentState();
            }
            this.f1627a.setSelection(selectionEnd);
        }
    }

    public void setTextInputAccessibilityDelegate(C0271a c0271a) {
        if (this.f1627a != null) {
            ViewCompat.setAccessibilityDelegate(this.f1627a, c0271a);
        }
    }

    /* renamed from: q */
    private boolean m1998q() {
        return this.f1627a != null && (this.f1627a.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    /* renamed from: r */
    private boolean m1999r() {
        return this.f1610G && (m1998q() || this.f1614K);
    }

    /* renamed from: s */
    private void m2000s() {
        if (this.f1611H != null) {
            if (this.f1618O || this.f1620Q) {
                this.f1611H = DrawableCompat.wrap(this.f1611H).mutate();
                if (this.f1618O) {
                    DrawableCompat.setTintList(this.f1611H, this.f1617N);
                }
                if (this.f1620Q) {
                    DrawableCompat.setTintMode(this.f1611H, this.f1619P);
                }
                if (this.f1613J != null && this.f1613J.getDrawable() != this.f1611H) {
                    this.f1613J.setImageDrawable(this.f1611H);
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f1647o != null) {
            m1989h();
        }
        if (this.f1644l && this.f1627a != null) {
            Rect rect = this.f1607D;
            C0275d.m2070b(this, this.f1627a, rect);
            int compoundPaddingLeft = rect.left + this.f1627a.getCompoundPaddingLeft();
            int compoundPaddingRight = rect.right - this.f1627a.getCompoundPaddingRight();
            int m1992k = m1992k();
            this.f1635c.m2038a(compoundPaddingLeft, rect.top + this.f1627a.getCompoundPaddingTop(), compoundPaddingRight, rect.bottom - this.f1627a.getCompoundPaddingBottom());
            this.f1635c.m2049b(compoundPaddingLeft, m1992k, compoundPaddingRight, (i4 - i2) - getPaddingBottom());
            this.f1635c.m2057g();
            if (m2001t() && !this.f1628aa) {
                m2002u();
            }
        }
    }

    /* renamed from: c */
    private void m1984c(boolean z) {
        if (this.f1630ac != null && this.f1630ac.isRunning()) {
            this.f1630ac.cancel();
        }
        if (z && this.f1629ab) {
            m2004a(1.0f);
        } else {
            this.f1635c.m2047b(1.0f);
        }
        this.f1628aa = false;
        if (m2001t()) {
            m2002u();
        }
    }

    /* renamed from: t */
    private boolean m2001t() {
        return this.f1644l && !TextUtils.isEmpty(this.f1645m) && (this.f1647o instanceof C0274c);
    }

    /* renamed from: u */
    private void m2002u() {
        if (m2001t()) {
            RectF rectF = this.f1608E;
            this.f1635c.m2042a(rectF);
            m1980a(rectF);
            ((C0274c) this.f1647o).m2065a(rectF);
        }
    }

    /* renamed from: v */
    private void m2003v() {
        if (m2001t()) {
            ((C0274c) this.f1647o).m2067b();
        }
    }

    /* renamed from: a */
    private void m1980a(RectF rectF) {
        rectF.left -= this.f1649q;
        rectF.top -= this.f1649q;
        rectF.right += this.f1649q;
        rectF.bottom += this.f1649q;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (!this.f1632ae) {
            this.f1632ae = true;
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            m2007a(ViewCompat.isLaidOut(this) && isEnabled());
            m2011c();
            m1989h();
            m2012d();
            if (this.f1635c != null ? this.f1635c.m2045a(drawableState) | false : false) {
                invalidate();
            }
            this.f1632ae = false;
        }
    }

    /* renamed from: d */
    void m2012d() {
        if (this.f1647o != null && this.f1650r != 0) {
            boolean z = this.f1627a != null && this.f1627a.hasFocus();
            boolean z2 = this.f1627a != null && this.f1627a.isHovered();
            if (this.f1650r == 2) {
                if (!isEnabled()) {
                    this.f1604A = this.f1626W;
                } else if (this.f1638f.m2160g()) {
                    this.f1604A = this.f1638f.m2163j();
                } else if (this.f1640h && this.f1641i != null) {
                    this.f1604A = this.f1641i.getCurrentTextColor();
                } else if (z) {
                    this.f1604A = this.f1625V;
                } else if (z2) {
                    this.f1604A = this.f1624U;
                } else {
                    this.f1604A = this.f1623T;
                }
                if ((z2 || z) && isEnabled()) {
                    this.f1656x = this.f1658z;
                } else {
                    this.f1656x = this.f1657y;
                }
                m1995n();
            }
        }
    }

    /* renamed from: d */
    private void m1985d(boolean z) {
        if (this.f1630ac != null && this.f1630ac.isRunning()) {
            this.f1630ac.cancel();
        }
        if (z && this.f1629ab) {
            m2004a(0.0f);
        } else {
            this.f1635c.m2047b(0.0f);
        }
        if (m2001t() && ((C0274c) this.f1647o).m2066a()) {
            m2003v();
        }
        this.f1628aa = true;
    }

    @VisibleForTesting
    /* renamed from: a */
    void m2004a(float f) {
        if (this.f1635c.m2055e() != f) {
            if (this.f1630ac == null) {
                this.f1630ac = new ValueAnimator();
                this.f1630ac.setInterpolator(C0155a.f1038b);
                this.f1630ac.setDuration(167L);
                this.f1630ac.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.TextInputLayout.3
                    C02693() {
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        TextInputLayout.this.f1635c.m2047b(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    }
                });
            }
            this.f1630ac.setFloatValues(this.f1635c.m2055e(), f);
            this.f1630ac.start();
        }
    }

    /* renamed from: android.support.design.widget.TextInputLayout$3 */
    class C02693 implements ValueAnimator.AnimatorUpdateListener {
        C02693() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.f1635c.m2047b(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    @VisibleForTesting
    final int getHintCurrentCollapsedTextColor() {
        return this.f1635c.m2056f();
    }

    @VisibleForTesting
    final float getHintCollapsedTextHeight() {
        return this.f1635c.m2046b();
    }

    @VisibleForTesting
    final int getErrorTextCurrentColor() {
        return this.f1638f.m2163j();
    }

    /* renamed from: android.support.design.widget.TextInputLayout$a */
    public static class C0271a extends AccessibilityDelegateCompat {

        /* renamed from: a */
        private final TextInputLayout f1664a;

        public C0271a(TextInputLayout textInputLayout) {
            this.f1664a = textInputLayout;
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            boolean z = false;
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            EditText editText = this.f1664a.getEditText();
            Editable text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f1664a.getHint();
            CharSequence error = this.f1664a.getError();
            CharSequence counterOverflowDescription = this.f1664a.getCounterOverflowDescription();
            boolean z2 = !TextUtils.isEmpty(text);
            boolean z3 = !TextUtils.isEmpty(hint);
            boolean z4 = !TextUtils.isEmpty(error);
            boolean z5 = z4 || !TextUtils.isEmpty(counterOverflowDescription);
            if (z2) {
                accessibilityNodeInfoCompat.setText(text);
            } else if (z3) {
                accessibilityNodeInfoCompat.setText(hint);
            }
            if (z3) {
                accessibilityNodeInfoCompat.setHintText(hint);
                if (!z2 && z3) {
                    z = true;
                }
                accessibilityNodeInfoCompat.setShowingHintText(z);
            }
            if (z5) {
                accessibilityNodeInfoCompat.setError(z4 ? error : counterOverflowDescription);
                accessibilityNodeInfoCompat.setContentInvalid(true);
            }
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            EditText editText = this.f1664a.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            if (TextUtils.isEmpty(text)) {
                text = this.f1664a.getHint();
            }
            if (!TextUtils.isEmpty(text)) {
                accessibilityEvent.getText().add(text);
            }
        }
    }
}
