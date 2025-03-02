package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.design.R;
import android.support.design.p038a.C0155a;
import android.support.design.p038a.C0156b;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.Space;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.widget.C0719y;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

/* renamed from: android.support.design.widget.j */
/* loaded from: classes.dex */
final class C0281j {

    /* renamed from: a */
    private final Context f1798a;

    /* renamed from: b */
    private final TextInputLayout f1799b;

    /* renamed from: c */
    private LinearLayout f1800c;

    /* renamed from: d */
    private int f1801d;

    /* renamed from: e */
    private FrameLayout f1802e;

    /* renamed from: f */
    private int f1803f;

    /* renamed from: g */
    @Nullable
    private Animator f1804g;

    /* renamed from: h */
    private final float f1805h;

    /* renamed from: i */
    private int f1806i;

    /* renamed from: j */
    private int f1807j;

    /* renamed from: k */
    private CharSequence f1808k;

    /* renamed from: l */
    private boolean f1809l;

    /* renamed from: m */
    private TextView f1810m;

    /* renamed from: n */
    private int f1811n;

    /* renamed from: o */
    private CharSequence f1812o;

    /* renamed from: p */
    private boolean f1813p;

    /* renamed from: q */
    private TextView f1814q;

    /* renamed from: r */
    private int f1815r;

    /* renamed from: s */
    private Typeface f1816s;

    public C0281j(TextInputLayout textInputLayout) {
        this.f1798a = textInputLayout.getContext();
        this.f1799b = textInputLayout;
        this.f1805h = this.f1798a.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
    }

    /* renamed from: a */
    void m2146a(CharSequence charSequence) {
        m2155c();
        this.f1812o = charSequence;
        this.f1814q.setText(charSequence);
        if (this.f1806i != 2) {
            this.f1807j = 2;
        }
        m2134a(this.f1806i, this.f1807j, m2138a(this.f1814q, charSequence));
    }

    /* renamed from: a */
    void m2142a() {
        m2155c();
        if (this.f1806i == 2) {
            this.f1807j = 0;
        }
        m2134a(this.f1806i, this.f1807j, m2138a(this.f1814q, (CharSequence) null));
    }

    /* renamed from: b */
    void m2153b(CharSequence charSequence) {
        m2155c();
        this.f1808k = charSequence;
        this.f1810m.setText(charSequence);
        if (this.f1806i != 1) {
            this.f1807j = 1;
        }
        m2134a(this.f1806i, this.f1807j, m2138a(this.f1810m, charSequence));
    }

    /* renamed from: b */
    void m2149b() {
        this.f1808k = null;
        m2155c();
        if (this.f1806i == 1) {
            if (this.f1813p && !TextUtils.isEmpty(this.f1812o)) {
                this.f1807j = 2;
            } else {
                this.f1807j = 0;
            }
        }
        m2134a(this.f1806i, this.f1807j, m2138a(this.f1810m, (CharSequence) null));
    }

    /* renamed from: a */
    private boolean m2138a(TextView textView, @Nullable CharSequence charSequence) {
        return ViewCompat.isLaidOut(this.f1799b) && this.f1799b.isEnabled() && !(this.f1807j == this.f1806i && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    /* renamed from: a */
    private void m2134a(int i, int i2, boolean z) {
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f1804g = animatorSet;
            ArrayList arrayList = new ArrayList();
            m2137a(arrayList, this.f1813p, this.f1814q, 2, i, i2);
            m2137a(arrayList, this.f1809l, this.f1810m, 1, i, i2);
            C0156b.m1361a(animatorSet, arrayList);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.j.1

                /* renamed from: a */
                final /* synthetic */ int f1817a;

                /* renamed from: b */
                final /* synthetic */ TextView f1818b;

                /* renamed from: c */
                final /* synthetic */ int f1819c;

                /* renamed from: d */
                final /* synthetic */ TextView f1820d;

                AnonymousClass1(int i22, TextView textView, int i3, TextView textView2) {
                    i2 = i22;
                    m2139d = textView;
                    i = i3;
                    m2139d2 = textView2;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    C0281j.this.f1806i = i2;
                    C0281j.this.f1804g = null;
                    if (m2139d != null) {
                        m2139d.setVisibility(4);
                        if (i == 1 && C0281j.this.f1810m != null) {
                            C0281j.this.f1810m.setText((CharSequence) null);
                        }
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    if (m2139d2 != null) {
                        m2139d2.setVisibility(0);
                    }
                }
            });
            animatorSet.start();
        } else {
            m2133a(i3, i22);
        }
        this.f1799b.m2011c();
        this.f1799b.m2007a(z);
        this.f1799b.m2012d();
    }

    /* renamed from: android.support.design.widget.j$1 */
    class AnonymousClass1 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ int f1817a;

        /* renamed from: b */
        final /* synthetic */ TextView f1818b;

        /* renamed from: c */
        final /* synthetic */ int f1819c;

        /* renamed from: d */
        final /* synthetic */ TextView f1820d;

        AnonymousClass1(int i22, TextView textView, int i3, TextView textView2) {
            i2 = i22;
            m2139d = textView;
            i = i3;
            m2139d2 = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C0281j.this.f1806i = i2;
            C0281j.this.f1804g = null;
            if (m2139d != null) {
                m2139d.setVisibility(4);
                if (i == 1 && C0281j.this.f1810m != null) {
                    C0281j.this.f1810m.setText((CharSequence) null);
                }
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (m2139d2 != null) {
                m2139d2.setVisibility(0);
            }
        }
    }

    /* renamed from: a */
    private void m2133a(int i, int i2) {
        TextView m2139d;
        TextView m2139d2;
        if (i != i2) {
            if (i2 != 0 && (m2139d2 = m2139d(i2)) != null) {
                m2139d2.setVisibility(0);
                m2139d2.setAlpha(1.0f);
            }
            if (i != 0 && (m2139d = m2139d(i)) != null) {
                m2139d.setVisibility(4);
                if (i == 1) {
                    m2139d.setText((CharSequence) null);
                }
            }
            this.f1806i = i2;
        }
    }

    /* renamed from: a */
    private void m2137a(List<Animator> list, boolean z, TextView textView, int i, int i2, int i3) {
        if (textView != null && z) {
            if (i == i3 || i == i2) {
                list.add(m2131a(textView, i3 == i));
                if (i3 == i) {
                    list.add(m2130a(textView));
                }
            }
        }
    }

    /* renamed from: a */
    private ObjectAnimator m2131a(TextView textView, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z ? 1.0f : 0.0f);
        ofFloat.setDuration(167L);
        ofFloat.setInterpolator(C0155a.f1037a);
        return ofFloat;
    }

    /* renamed from: a */
    private ObjectAnimator m2130a(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f1805h, 0.0f);
        ofFloat.setDuration(217L);
        ofFloat.setInterpolator(C0155a.f1040d);
        return ofFloat;
    }

    /* renamed from: c */
    void m2155c() {
        if (this.f1804g != null) {
            this.f1804g.cancel();
        }
    }

    /* renamed from: a */
    boolean m2148a(int i) {
        return i == 0 || i == 1;
    }

    @Nullable
    /* renamed from: d */
    private TextView m2139d(int i) {
        switch (i) {
            case 1:
                return this.f1810m;
            case 2:
                return this.f1814q;
            default:
                return null;
        }
    }

    /* renamed from: d */
    void m2157d() {
        if (m2141m()) {
            ViewCompat.setPaddingRelative(this.f1800c, ViewCompat.getPaddingStart(this.f1799b.getEditText()), 0, ViewCompat.getPaddingEnd(this.f1799b.getEditText()), 0);
        }
    }

    /* renamed from: m */
    private boolean m2141m() {
        return (this.f1800c == null || this.f1799b.getEditText() == null) ? false : true;
    }

    /* renamed from: a */
    void m2145a(TextView textView, int i) {
        if (this.f1800c == null && this.f1802e == null) {
            this.f1800c = new LinearLayout(this.f1798a);
            this.f1800c.setOrientation(0);
            this.f1799b.addView(this.f1800c, -1, -2);
            this.f1802e = new FrameLayout(this.f1798a);
            this.f1800c.addView(this.f1802e, -1, new FrameLayout.LayoutParams(-2, -2));
            this.f1800c.addView(new Space(this.f1798a), new LinearLayout.LayoutParams(0, 0, 1.0f));
            if (this.f1799b.getEditText() != null) {
                m2157d();
            }
        }
        if (m2148a(i)) {
            this.f1802e.setVisibility(0);
            this.f1802e.addView(textView);
            this.f1803f++;
        } else {
            this.f1800c.addView(textView, i);
        }
        this.f1800c.setVisibility(0);
        this.f1801d++;
    }

    /* renamed from: b */
    void m2152b(TextView textView, int i) {
        if (this.f1800c != null) {
            if (m2148a(i) && this.f1802e != null) {
                this.f1803f--;
                m2135a(this.f1802e, this.f1803f);
                this.f1802e.removeView(textView);
            } else {
                this.f1800c.removeView(textView);
            }
            this.f1801d--;
            m2135a(this.f1800c, this.f1801d);
        }
    }

    /* renamed from: a */
    private void m2135a(ViewGroup viewGroup, int i) {
        if (i == 0) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: a */
    void m2147a(boolean z) {
        if (this.f1809l != z) {
            m2155c();
            if (z) {
                this.f1810m = new C0719y(this.f1798a);
                this.f1810m.setId(R.id.textinput_error);
                if (this.f1816s != null) {
                    this.f1810m.setTypeface(this.f1816s);
                }
                m2150b(this.f1811n);
                this.f1810m.setVisibility(4);
                ViewCompat.setAccessibilityLiveRegion(this.f1810m, 1);
                m2145a(this.f1810m, 0);
            } else {
                m2149b();
                m2152b(this.f1810m, 0);
                this.f1810m = null;
                this.f1799b.m2011c();
                this.f1799b.m2012d();
            }
            this.f1809l = z;
        }
    }

    /* renamed from: e */
    boolean m2158e() {
        return this.f1809l;
    }

    /* renamed from: f */
    boolean m2159f() {
        return this.f1813p;
    }

    /* renamed from: b */
    void m2154b(boolean z) {
        if (this.f1813p != z) {
            m2155c();
            if (z) {
                this.f1814q = new C0719y(this.f1798a);
                this.f1814q.setId(R.id.textinput_helper_text);
                if (this.f1816s != null) {
                    this.f1814q.setTypeface(this.f1816s);
                }
                this.f1814q.setVisibility(4);
                ViewCompat.setAccessibilityLiveRegion(this.f1814q, 1);
                m2156c(this.f1815r);
                m2145a(this.f1814q, 1);
            } else {
                m2142a();
                m2152b(this.f1814q, 1);
                this.f1814q = null;
                this.f1799b.m2011c();
                this.f1799b.m2012d();
            }
            this.f1813p = z;
        }
    }

    /* renamed from: g */
    boolean m2160g() {
        return m2140e(this.f1807j);
    }

    /* renamed from: e */
    private boolean m2140e(int i) {
        return (i != 1 || this.f1810m == null || TextUtils.isEmpty(this.f1808k)) ? false : true;
    }

    /* renamed from: h */
    CharSequence m2161h() {
        return this.f1808k;
    }

    /* renamed from: i */
    CharSequence m2162i() {
        return this.f1812o;
    }

    /* renamed from: a */
    void m2144a(Typeface typeface) {
        if (typeface != this.f1816s) {
            this.f1816s = typeface;
            m2136a(this.f1810m, typeface);
            m2136a(this.f1814q, typeface);
        }
    }

    /* renamed from: a */
    private void m2136a(@Nullable TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    @ColorInt
    /* renamed from: j */
    int m2163j() {
        if (this.f1810m != null) {
            return this.f1810m.getCurrentTextColor();
        }
        return -1;
    }

    @Nullable
    /* renamed from: k */
    ColorStateList m2164k() {
        if (this.f1810m != null) {
            return this.f1810m.getTextColors();
        }
        return null;
    }

    /* renamed from: a */
    void m2143a(@Nullable ColorStateList colorStateList) {
        if (this.f1810m != null) {
            this.f1810m.setTextColor(colorStateList);
        }
    }

    /* renamed from: b */
    void m2150b(@StyleRes int i) {
        this.f1811n = i;
        if (this.f1810m != null) {
            this.f1799b.m2006a(this.f1810m, i);
        }
    }

    @ColorInt
    /* renamed from: l */
    int m2165l() {
        if (this.f1814q != null) {
            return this.f1814q.getCurrentTextColor();
        }
        return -1;
    }

    /* renamed from: b */
    void m2151b(@Nullable ColorStateList colorStateList) {
        if (this.f1814q != null) {
            this.f1814q.setTextColor(colorStateList);
        }
    }

    /* renamed from: c */
    void m2156c(@StyleRes int i) {
        this.f1815r = i;
        if (this.f1814q != null) {
            TextViewCompat.setTextAppearance(this.f1814q, i);
        }
    }
}
