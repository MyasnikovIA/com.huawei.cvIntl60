package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.MarginLayoutParamsCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.app.AbstractC0512a;
import android.support.v7.appcompat.R;
import android.support.v7.p048a.p049a.C0488a;
import android.support.v7.view.C0532g;
import android.support.v7.view.InterfaceC0528c;
import android.support.v7.view.menu.C0544h;
import android.support.v7.view.menu.C0546j;
import android.support.v7.view.menu.InterfaceC0551o;
import android.support.v7.view.menu.SubMenuC0557u;
import android.support.v7.widget.ActionMenuView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer.C1167C;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {

    /* renamed from: A */
    private int f3367A;

    /* renamed from: B */
    private int f3368B;

    /* renamed from: C */
    private boolean f3369C;

    /* renamed from: D */
    private boolean f3370D;

    /* renamed from: E */
    private final ArrayList<View> f3371E;

    /* renamed from: F */
    private final ArrayList<View> f3372F;

    /* renamed from: G */
    private final int[] f3373G;

    /* renamed from: H */
    private final ActionMenuView.InterfaceC0576e f3374H;

    /* renamed from: I */
    private C0688bl f3375I;

    /* renamed from: J */
    private ActionMenuPresenter f3376J;

    /* renamed from: K */
    private C0645a f3377K;

    /* renamed from: L */
    private InterfaceC0551o.a f3378L;

    /* renamed from: M */
    private C0544h.a f3379M;

    /* renamed from: N */
    private boolean f3380N;

    /* renamed from: O */
    private final Runnable f3381O;

    /* renamed from: a */
    private ActionMenuView f3382a;

    /* renamed from: b */
    ImageButton f3383b;

    /* renamed from: c */
    View f3384c;

    /* renamed from: d */
    int f3385d;

    /* renamed from: e */
    InterfaceC0647c f3386e;

    /* renamed from: f */
    private TextView f3387f;

    /* renamed from: g */
    private TextView f3388g;

    /* renamed from: h */
    private ImageButton f3389h;

    /* renamed from: i */
    private ImageView f3390i;

    /* renamed from: j */
    private Drawable f3391j;

    /* renamed from: k */
    private CharSequence f3392k;

    /* renamed from: l */
    private Context f3393l;

    /* renamed from: m */
    private int f3394m;

    /* renamed from: n */
    private int f3395n;

    /* renamed from: o */
    private int f3396o;

    /* renamed from: p */
    private int f3397p;

    /* renamed from: q */
    private int f3398q;

    /* renamed from: r */
    private int f3399r;

    /* renamed from: s */
    private int f3400s;

    /* renamed from: t */
    private int f3401t;

    /* renamed from: u */
    private C0677ba f3402u;

    /* renamed from: v */
    private int f3403v;

    /* renamed from: w */
    private int f3404w;

    /* renamed from: x */
    private int f3405x;

    /* renamed from: y */
    private CharSequence f3406y;

    /* renamed from: z */
    private CharSequence f3407z;

    /* renamed from: android.support.v7.widget.Toolbar$c */
    public interface InterfaceC0647c {
        /* renamed from: a */
        boolean m3828a(MenuItem menuItem);
    }

    /* renamed from: android.support.v7.widget.Toolbar$1 */
    class C06411 implements ActionMenuView.InterfaceC0576e {
        C06411() {
        }

        @Override // android.support.v7.widget.ActionMenuView.InterfaceC0576e
        /* renamed from: a */
        public boolean mo3024a(MenuItem menuItem) {
            if (Toolbar.this.f3386e != null) {
                return Toolbar.this.f3386e.m3828a(menuItem);
            }
            return false;
        }
    }

    /* renamed from: android.support.v7.widget.Toolbar$2 */
    class RunnableC06422 implements Runnable {
        RunnableC06422() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.m3815d();
        }
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public Toolbar(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3405x = 8388627;
        this.f3371E = new ArrayList<>();
        this.f3372F = new ArrayList<>();
        this.f3373G = new int[2];
        this.f3374H = new ActionMenuView.InterfaceC0576e() { // from class: android.support.v7.widget.Toolbar.1
            C06411() {
            }

            @Override // android.support.v7.widget.ActionMenuView.InterfaceC0576e
            /* renamed from: a */
            public boolean mo3024a(MenuItem menuItem) {
                if (Toolbar.this.f3386e != null) {
                    return Toolbar.this.f3386e.m3828a(menuItem);
                }
                return false;
            }
        };
        this.f3381O = new Runnable() { // from class: android.support.v7.widget.Toolbar.2
            RunnableC06422() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Toolbar.this.m3815d();
            }
        };
        C0687bk m4167a = C0687bk.m4167a(getContext(), attributeSet, R.styleable.Toolbar, i, 0);
        this.f3395n = m4167a.m4185g(R.styleable.Toolbar_titleTextAppearance, 0);
        this.f3396o = m4167a.m4185g(R.styleable.Toolbar_subtitleTextAppearance, 0);
        this.f3405x = m4167a.m4177c(R.styleable.Toolbar_android_gravity, this.f3405x);
        this.f3385d = m4167a.m4177c(R.styleable.Toolbar_buttonGravity, 48);
        int m4179d = m4167a.m4179d(R.styleable.Toolbar_titleMargin, 0);
        m4179d = m4167a.m4186g(R.styleable.Toolbar_titleMargins) ? m4167a.m4179d(R.styleable.Toolbar_titleMargins, m4179d) : m4179d;
        this.f3401t = m4179d;
        this.f3400s = m4179d;
        this.f3399r = m4179d;
        this.f3398q = m4179d;
        int m4179d2 = m4167a.m4179d(R.styleable.Toolbar_titleMarginStart, -1);
        if (m4179d2 >= 0) {
            this.f3398q = m4179d2;
        }
        int m4179d3 = m4167a.m4179d(R.styleable.Toolbar_titleMarginEnd, -1);
        if (m4179d3 >= 0) {
            this.f3399r = m4179d3;
        }
        int m4179d4 = m4167a.m4179d(R.styleable.Toolbar_titleMarginTop, -1);
        if (m4179d4 >= 0) {
            this.f3400s = m4179d4;
        }
        int m4179d5 = m4167a.m4179d(R.styleable.Toolbar_titleMarginBottom, -1);
        if (m4179d5 >= 0) {
            this.f3401t = m4179d5;
        }
        this.f3397p = m4167a.m4181e(R.styleable.Toolbar_maxButtonHeight, -1);
        int m4179d6 = m4167a.m4179d(R.styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int m4179d7 = m4167a.m4179d(R.styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int m4181e = m4167a.m4181e(R.styleable.Toolbar_contentInsetLeft, 0);
        int m4181e2 = m4167a.m4181e(R.styleable.Toolbar_contentInsetRight, 0);
        m3804s();
        this.f3402u.m4106b(m4181e, m4181e2);
        if (m4179d6 != Integer.MIN_VALUE || m4179d7 != Integer.MIN_VALUE) {
            this.f3402u.m4103a(m4179d6, m4179d7);
        }
        this.f3403v = m4167a.m4179d(R.styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.f3404w = m4167a.m4179d(R.styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f3391j = m4167a.m4171a(R.styleable.Toolbar_collapseIcon);
        this.f3392k = m4167a.m4178c(R.styleable.Toolbar_collapseContentDescription);
        CharSequence m4178c = m4167a.m4178c(R.styleable.Toolbar_title);
        if (!TextUtils.isEmpty(m4178c)) {
            setTitle(m4178c);
        }
        CharSequence m4178c2 = m4167a.m4178c(R.styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(m4178c2)) {
            setSubtitle(m4178c2);
        }
        this.f3393l = getContext();
        setPopupTheme(m4167a.m4185g(R.styleable.Toolbar_popupTheme, 0));
        Drawable m4171a = m4167a.m4171a(R.styleable.Toolbar_navigationIcon);
        if (m4171a != null) {
            setNavigationIcon(m4171a);
        }
        CharSequence m4178c3 = m4167a.m4178c(R.styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(m4178c3)) {
            setNavigationContentDescription(m4178c3);
        }
        Drawable m4171a2 = m4167a.m4171a(R.styleable.Toolbar_logo);
        if (m4171a2 != null) {
            setLogo(m4171a2);
        }
        CharSequence m4178c4 = m4167a.m4178c(R.styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(m4178c4)) {
            setLogoDescription(m4178c4);
        }
        if (m4167a.m4186g(R.styleable.Toolbar_titleTextColor)) {
            setTitleTextColor(m4167a.m4175b(R.styleable.Toolbar_titleTextColor, -1));
        }
        if (m4167a.m4186g(R.styleable.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(m4167a.m4175b(R.styleable.Toolbar_subtitleTextColor, -1));
        }
        m4167a.m4172a();
    }

    public void setPopupTheme(@StyleRes int i) {
        if (this.f3394m != i) {
            this.f3394m = i;
            if (i == 0) {
                this.f3393l = getContext();
            } else {
                this.f3393l = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public int getPopupTheme() {
        return this.f3394m;
    }

    public int getTitleMarginStart() {
        return this.f3398q;
    }

    public void setTitleMarginStart(int i) {
        this.f3398q = i;
        requestLayout();
    }

    public int getTitleMarginTop() {
        return this.f3400s;
    }

    public void setTitleMarginTop(int i) {
        this.f3400s = i;
        requestLayout();
    }

    public int getTitleMarginEnd() {
        return this.f3399r;
    }

    public void setTitleMarginEnd(int i) {
        this.f3399r = i;
        requestLayout();
    }

    public int getTitleMarginBottom() {
        return this.f3401t;
    }

    public void setTitleMarginBottom(int i) {
        this.f3401t = i;
        requestLayout();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        m3804s();
        this.f3402u.m4104a(i == 1);
    }

    public void setLogo(@DrawableRes int i) {
        setLogo(C0488a.m2457b(getContext(), i));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public boolean m3811a() {
        return getVisibility() == 0 && this.f3382a != null && this.f3382a.m3011a();
    }

    /* renamed from: b */
    public boolean m3813b() {
        return this.f3382a != null && this.f3382a.m3020g();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: c */
    public boolean m3814c() {
        return this.f3382a != null && this.f3382a.m3021h();
    }

    /* renamed from: d */
    public boolean m3815d() {
        return this.f3382a != null && this.f3382a.m3018e();
    }

    /* renamed from: e */
    public boolean m3816e() {
        return this.f3382a != null && this.f3382a.m3019f();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public void m3809a(C0544h c0544h, ActionMenuPresenter actionMenuPresenter) {
        if (c0544h != null || this.f3382a != null) {
            m3800o();
            C0544h m3017d = this.f3382a.m3017d();
            if (m3017d != c0544h) {
                if (m3017d != null) {
                    m3017d.m2869b(this.f3376J);
                    m3017d.m2869b(this.f3377K);
                }
                if (this.f3377K == null) {
                    this.f3377K = new C0645a();
                }
                actionMenuPresenter.m2995c(true);
                if (c0544h != null) {
                    c0544h.m2860a(actionMenuPresenter, this.f3393l);
                    c0544h.m2860a(this.f3377K, this.f3393l);
                } else {
                    actionMenuPresenter.mo1539a(this.f3393l, (C0544h) null);
                    this.f3377K.mo1539a(this.f3393l, (C0544h) null);
                    actionMenuPresenter.mo1543a(true);
                    this.f3377K.mo1543a(true);
                }
                this.f3382a.setPopupTheme(this.f3394m);
                this.f3382a.setPresenter(actionMenuPresenter);
                this.f3376J = actionMenuPresenter;
            }
        }
    }

    /* renamed from: f */
    public void m3817f() {
        if (this.f3382a != null) {
            this.f3382a.m3022i();
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            m3798m();
            if (!m3797d(this.f3390i)) {
                m3790a((View) this.f3390i, true);
            }
        } else if (this.f3390i != null && m3797d(this.f3390i)) {
            removeView(this.f3390i);
            this.f3372F.remove(this.f3390i);
        }
        if (this.f3390i != null) {
            this.f3390i.setImageDrawable(drawable);
        }
    }

    public Drawable getLogo() {
        if (this.f3390i != null) {
            return this.f3390i.getDrawable();
        }
        return null;
    }

    public void setLogoDescription(@StringRes int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m3798m();
        }
        if (this.f3390i != null) {
            this.f3390i.setContentDescription(charSequence);
        }
    }

    public CharSequence getLogoDescription() {
        if (this.f3390i != null) {
            return this.f3390i.getContentDescription();
        }
        return null;
    }

    /* renamed from: m */
    private void m3798m() {
        if (this.f3390i == null) {
            this.f3390i = new AppCompatImageView(getContext());
        }
    }

    /* renamed from: g */
    public boolean m3818g() {
        return (this.f3377K == null || this.f3377K.f3414b == null) ? false : true;
    }

    /* renamed from: h */
    public void m3819h() {
        C0546j c0546j = this.f3377K == null ? null : this.f3377K.f3414b;
        if (c0546j != null) {
            c0546j.collapseActionView();
        }
    }

    public CharSequence getTitle() {
        return this.f3406y;
    }

    public void setTitle(@StringRes int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f3387f == null) {
                Context context = getContext();
                this.f3387f = new C0719y(context);
                this.f3387f.setSingleLine();
                this.f3387f.setEllipsize(TextUtils.TruncateAt.END);
                if (this.f3395n != 0) {
                    this.f3387f.setTextAppearance(context, this.f3395n);
                }
                if (this.f3367A != 0) {
                    this.f3387f.setTextColor(this.f3367A);
                }
            }
            if (!m3797d(this.f3387f)) {
                m3790a((View) this.f3387f, true);
            }
        } else if (this.f3387f != null && m3797d(this.f3387f)) {
            removeView(this.f3387f);
            this.f3372F.remove(this.f3387f);
        }
        if (this.f3387f != null) {
            this.f3387f.setText(charSequence);
        }
        this.f3406y = charSequence;
    }

    public CharSequence getSubtitle() {
        return this.f3407z;
    }

    public void setSubtitle(@StringRes int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f3388g == null) {
                Context context = getContext();
                this.f3388g = new C0719y(context);
                this.f3388g.setSingleLine();
                this.f3388g.setEllipsize(TextUtils.TruncateAt.END);
                if (this.f3396o != 0) {
                    this.f3388g.setTextAppearance(context, this.f3396o);
                }
                if (this.f3368B != 0) {
                    this.f3388g.setTextColor(this.f3368B);
                }
            }
            if (!m3797d(this.f3388g)) {
                m3790a((View) this.f3388g, true);
            }
        } else if (this.f3388g != null && m3797d(this.f3388g)) {
            removeView(this.f3388g);
            this.f3372F.remove(this.f3388g);
        }
        if (this.f3388g != null) {
            this.f3388g.setText(charSequence);
        }
        this.f3407z = charSequence;
    }

    /* renamed from: a */
    public void m3808a(Context context, @StyleRes int i) {
        this.f3395n = i;
        if (this.f3387f != null) {
            this.f3387f.setTextAppearance(context, i);
        }
    }

    /* renamed from: b */
    public void m3812b(Context context, @StyleRes int i) {
        this.f3396o = i;
        if (this.f3388g != null) {
            this.f3388g.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(@ColorInt int i) {
        this.f3367A = i;
        if (this.f3387f != null) {
            this.f3387f.setTextColor(i);
        }
    }

    public void setSubtitleTextColor(@ColorInt int i) {
        this.f3368B = i;
        if (this.f3388g != null) {
            this.f3388g.setTextColor(i);
        }
    }

    @Nullable
    public CharSequence getNavigationContentDescription() {
        if (this.f3389h != null) {
            return this.f3389h.getContentDescription();
        }
        return null;
    }

    public void setNavigationContentDescription(@StringRes int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m3801p();
        }
        if (this.f3389h != null) {
            this.f3389h.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(@DrawableRes int i) {
        setNavigationIcon(C0488a.m2457b(getContext(), i));
    }

    public void setNavigationIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            m3801p();
            if (!m3797d(this.f3389h)) {
                m3790a((View) this.f3389h, true);
            }
        } else if (this.f3389h != null && m3797d(this.f3389h)) {
            removeView(this.f3389h);
            this.f3372F.remove(this.f3389h);
        }
        if (this.f3389h != null) {
            this.f3389h.setImageDrawable(drawable);
        }
    }

    @Nullable
    public Drawable getNavigationIcon() {
        if (this.f3389h != null) {
            return this.f3389h.getDrawable();
        }
        return null;
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m3801p();
        this.f3389h.setOnClickListener(onClickListener);
    }

    public Menu getMenu() {
        m3799n();
        return this.f3382a.getMenu();
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        m3799n();
        this.f3382a.setOverflowIcon(drawable);
    }

    @Nullable
    public Drawable getOverflowIcon() {
        m3799n();
        return this.f3382a.getOverflowIcon();
    }

    /* renamed from: n */
    private void m3799n() {
        m3800o();
        if (this.f3382a.m3017d() == null) {
            C0544h c0544h = (C0544h) this.f3382a.getMenu();
            if (this.f3377K == null) {
                this.f3377K = new C0645a();
            }
            this.f3382a.setExpandedActionViewsExclusive(true);
            c0544h.m2860a(this.f3377K, this.f3393l);
        }
    }

    /* renamed from: o */
    private void m3800o() {
        if (this.f3382a == null) {
            this.f3382a = new ActionMenuView(getContext());
            this.f3382a.setPopupTheme(this.f3394m);
            this.f3382a.setOnMenuItemClickListener(this.f3374H);
            this.f3382a.m3010a(this.f3378L, this.f3379M);
            C0646b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f2368a = 8388613 | (this.f3385d & 112);
            this.f3382a.setLayoutParams(generateDefaultLayoutParams);
            m3790a((View) this.f3382a, false);
        }
    }

    private MenuInflater getMenuInflater() {
        return new C0532g(getContext());
    }

    public void setOnMenuItemClickListener(InterfaceC0647c interfaceC0647c) {
        this.f3386e = interfaceC0647c;
    }

    /* renamed from: a */
    public void m3807a(int i, int i2) {
        m3804s();
        this.f3402u.m4103a(i, i2);
    }

    public int getContentInsetStart() {
        if (this.f3402u != null) {
            return this.f3402u.m4107c();
        }
        return 0;
    }

    public int getContentInsetEnd() {
        if (this.f3402u != null) {
            return this.f3402u.m4108d();
        }
        return 0;
    }

    public int getContentInsetLeft() {
        if (this.f3402u != null) {
            return this.f3402u.m4102a();
        }
        return 0;
    }

    public int getContentInsetRight() {
        if (this.f3402u != null) {
            return this.f3402u.m4105b();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        return this.f3403v != Integer.MIN_VALUE ? this.f3403v : getContentInsetStart();
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.f3403v) {
            this.f3403v = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public int getContentInsetEndWithActions() {
        return this.f3404w != Integer.MIN_VALUE ? this.f3404w : getContentInsetEnd();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.f3404w) {
            this.f3404w = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f3403v, 0)) : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        boolean z;
        if (this.f3382a != null) {
            C0544h m3017d = this.f3382a.m3017d();
            z = m3017d != null && m3017d.hasVisibleItems();
        } else {
            z = false;
        }
        if (z) {
            return Math.max(getContentInsetEnd(), Math.max(this.f3404w, 0));
        }
        return getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return ViewCompat.getLayoutDirection(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return ViewCompat.getLayoutDirection(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    /* renamed from: p */
    private void m3801p() {
        if (this.f3389h == null) {
            this.f3389h = new C0708n(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            C0646b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f2368a = 8388611 | (this.f3385d & 112);
            this.f3389h.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    /* renamed from: i */
    void m3820i() {
        if (this.f3383b == null) {
            this.f3383b = new C0708n(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.f3383b.setImageDrawable(this.f3391j);
            this.f3383b.setContentDescription(this.f3392k);
            C0646b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f2368a = 8388611 | (this.f3385d & 112);
            generateDefaultLayoutParams.f3416b = 2;
            this.f3383b.setLayoutParams(generateDefaultLayoutParams);
            this.f3383b.setOnClickListener(new View.OnClickListener() { // from class: android.support.v7.widget.Toolbar.3
                ViewOnClickListenerC06433() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Toolbar.this.m3819h();
                }
            });
        }
    }

    /* renamed from: android.support.v7.widget.Toolbar$3 */
    class ViewOnClickListenerC06433 implements View.OnClickListener {
        ViewOnClickListenerC06433() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.m3819h();
        }
    }

    /* renamed from: a */
    private void m3790a(View view, boolean z) {
        C0646b c0646b;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            c0646b = generateDefaultLayoutParams();
        } else if (!checkLayoutParams(layoutParams)) {
            c0646b = generateLayoutParams(layoutParams);
        } else {
            c0646b = (C0646b) layoutParams;
        }
        c0646b.f3416b = 1;
        if (z && this.f3384c != null) {
            view.setLayoutParams(c0646b);
            this.f3372F.add(view);
        } else {
            addView(view, c0646b);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f3377K != null && this.f3377K.f3414b != null) {
            savedState.f3411a = this.f3377K.f3414b.getItemId();
        }
        savedState.f3412b = m3813b();
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        C0544h m3017d = this.f3382a != null ? this.f3382a.m3017d() : null;
        if (savedState.f3411a != 0 && this.f3377K != null && m3017d != null && (findItem = m3017d.findItem(savedState.f3411a)) != null) {
            findItem.expandActionView();
        }
        if (savedState.f3412b) {
            m3802q();
        }
    }

    /* renamed from: q */
    private void m3802q() {
        removeCallbacks(this.f3381O);
        post(this.f3381O);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f3381O);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f3369C = false;
        }
        if (!this.f3369C) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f3369C = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f3369C = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f3370D = false;
        }
        if (!this.f3370D) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f3370D = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f3370D = false;
        }
        return true;
    }

    /* renamed from: a */
    private void m3789a(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, C1167C.ENCODING_PCM_32BIT);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    /* renamed from: a */
    private int m3786a(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    /* renamed from: r */
    private boolean m3803r() {
        if (!this.f3380N) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m3792a(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        char c;
        char c2;
        int i3;
        int i4;
        int i5 = 0;
        int i6 = 0;
        int[] iArr = this.f3373G;
        if (C0695bs.m4245a(this)) {
            c = 0;
            c2 = 1;
        } else {
            c = 1;
            c2 = 0;
        }
        int i7 = 0;
        if (m3792a(this.f3389h)) {
            m3789a(this.f3389h, i, 0, i2, 0, this.f3397p);
            i7 = this.f3389h.getMeasuredWidth() + m3794b(this.f3389h);
            int max = Math.max(0, this.f3389h.getMeasuredHeight() + m3796c(this.f3389h));
            i6 = View.combineMeasuredStates(0, this.f3389h.getMeasuredState());
            i5 = max;
        }
        if (m3792a(this.f3383b)) {
            m3789a(this.f3383b, i, 0, i2, 0, this.f3397p);
            i7 = this.f3383b.getMeasuredWidth() + m3794b(this.f3383b);
            i5 = Math.max(i5, this.f3383b.getMeasuredHeight() + m3796c(this.f3383b));
            i6 = View.combineMeasuredStates(i6, this.f3383b.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max2 = 0 + Math.max(currentContentInsetStart, i7);
        iArr[c2] = Math.max(0, currentContentInsetStart - i7);
        int i8 = 0;
        if (m3792a(this.f3382a)) {
            m3789a(this.f3382a, i, max2, i2, 0, this.f3397p);
            i8 = this.f3382a.getMeasuredWidth() + m3794b(this.f3382a);
            i5 = Math.max(i5, this.f3382a.getMeasuredHeight() + m3796c(this.f3382a));
            i6 = View.combineMeasuredStates(i6, this.f3382a.getMeasuredState());
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max3 = max2 + Math.max(currentContentInsetEnd, i8);
        iArr[c] = Math.max(0, currentContentInsetEnd - i8);
        if (m3792a(this.f3384c)) {
            max3 += m3786a(this.f3384c, i, max3, i2, 0, iArr);
            i5 = Math.max(i5, this.f3384c.getMeasuredHeight() + m3796c(this.f3384c));
            i6 = View.combineMeasuredStates(i6, this.f3384c.getMeasuredState());
        }
        if (m3792a(this.f3390i)) {
            max3 += m3786a(this.f3390i, i, max3, i2, 0, iArr);
            i5 = Math.max(i5, this.f3390i.getMeasuredHeight() + m3796c(this.f3390i));
            i6 = View.combineMeasuredStates(i6, this.f3390i.getMeasuredState());
        }
        int childCount = getChildCount();
        int i9 = 0;
        int i10 = i6;
        while (i9 < childCount) {
            View childAt = getChildAt(i9);
            if (((C0646b) childAt.getLayoutParams()).f3416b != 0) {
                i3 = i10;
                i4 = i5;
            } else if (m3792a(childAt)) {
                max3 += m3786a(childAt, i, max3, i2, 0, iArr);
                int max4 = Math.max(i5, childAt.getMeasuredHeight() + m3796c(childAt));
                i3 = View.combineMeasuredStates(i10, childAt.getMeasuredState());
                i4 = max4;
            } else {
                i3 = i10;
                i4 = i5;
            }
            i9++;
            i10 = i3;
            i5 = i4;
        }
        int i11 = 0;
        int i12 = 0;
        int i13 = this.f3400s + this.f3401t;
        int i14 = this.f3398q + this.f3399r;
        if (m3792a(this.f3387f)) {
            m3786a(this.f3387f, i, max3 + i14, i2, i13, iArr);
            i11 = m3794b(this.f3387f) + this.f3387f.getMeasuredWidth();
            i12 = this.f3387f.getMeasuredHeight() + m3796c(this.f3387f);
            i10 = View.combineMeasuredStates(i10, this.f3387f.getMeasuredState());
        }
        if (m3792a(this.f3388g)) {
            i11 = Math.max(i11, m3786a(this.f3388g, i, max3 + i14, i2, i13 + i12, iArr));
            i12 += this.f3388g.getMeasuredHeight() + m3796c(this.f3388g);
            i10 = View.combineMeasuredStates(i10, this.f3388g.getMeasuredState());
        }
        int max5 = Math.max(i5, i12);
        int paddingLeft = i11 + max3 + getPaddingLeft() + getPaddingRight();
        int paddingTop = max5 + getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, (-16777216) & i10);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, i10 << 16);
        if (m3803r()) {
            resolveSizeAndState2 = 0;
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int max;
        boolean z2 = ViewCompat.getLayoutDirection(this) == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i15 = width - paddingRight;
        int[] iArr = this.f3373G;
        iArr[1] = 0;
        iArr[0] = 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        int min = minimumHeight >= 0 ? Math.min(minimumHeight, i4 - i2) : 0;
        if (!m3792a(this.f3389h)) {
            i5 = i15;
            i6 = paddingLeft;
        } else if (z2) {
            i5 = m3795b(this.f3389h, i15, iArr, min);
            i6 = paddingLeft;
        } else {
            i6 = m3787a(this.f3389h, paddingLeft, iArr, min);
            i5 = i15;
        }
        if (m3792a(this.f3383b)) {
            if (z2) {
                i5 = m3795b(this.f3383b, i5, iArr, min);
            } else {
                i6 = m3787a(this.f3383b, i6, iArr, min);
            }
        }
        if (m3792a(this.f3382a)) {
            if (z2) {
                i6 = m3787a(this.f3382a, i6, iArr, min);
            } else {
                i5 = m3795b(this.f3382a, i5, iArr, min);
            }
        }
        int currentContentInsetLeft = getCurrentContentInsetLeft();
        int currentContentInsetRight = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft - i6);
        iArr[1] = Math.max(0, currentContentInsetRight - ((width - paddingRight) - i5));
        int max2 = Math.max(i6, currentContentInsetLeft);
        int min2 = Math.min(i5, (width - paddingRight) - currentContentInsetRight);
        if (m3792a(this.f3384c)) {
            if (z2) {
                min2 = m3795b(this.f3384c, min2, iArr, min);
            } else {
                max2 = m3787a(this.f3384c, max2, iArr, min);
            }
        }
        if (!m3792a(this.f3390i)) {
            i7 = min2;
            i8 = max2;
        } else if (z2) {
            i7 = m3795b(this.f3390i, min2, iArr, min);
            i8 = max2;
        } else {
            i7 = min2;
            i8 = m3787a(this.f3390i, max2, iArr, min);
        }
        boolean m3792a = m3792a(this.f3387f);
        boolean m3792a2 = m3792a(this.f3388g);
        int i16 = 0;
        if (m3792a) {
            C0646b c0646b = (C0646b) this.f3387f.getLayoutParams();
            i16 = 0 + c0646b.bottomMargin + c0646b.topMargin + this.f3387f.getMeasuredHeight();
        }
        if (m3792a2) {
            C0646b c0646b2 = (C0646b) this.f3388g.getLayoutParams();
            i9 = c0646b2.bottomMargin + c0646b2.topMargin + this.f3388g.getMeasuredHeight() + i16;
        } else {
            i9 = i16;
        }
        if (m3792a || m3792a2) {
            TextView textView = m3792a ? this.f3387f : this.f3388g;
            TextView textView2 = m3792a2 ? this.f3388g : this.f3387f;
            C0646b c0646b3 = (C0646b) textView.getLayoutParams();
            C0646b c0646b4 = (C0646b) textView2.getLayoutParams();
            boolean z3 = (m3792a && this.f3387f.getMeasuredWidth() > 0) || (m3792a2 && this.f3388g.getMeasuredWidth() > 0);
            switch (this.f3405x & 112) {
                case 48:
                    i10 = c0646b3.topMargin + getPaddingTop() + this.f3400s;
                    break;
                case 80:
                    i10 = (((height - paddingBottom) - c0646b4.bottomMargin) - this.f3401t) - i9;
                    break;
                default:
                    int i17 = (((height - paddingTop) - paddingBottom) - i9) / 2;
                    if (i17 < c0646b3.topMargin + this.f3400s) {
                        max = c0646b3.topMargin + this.f3400s;
                    } else {
                        int i18 = (((height - paddingBottom) - i9) - i17) - paddingTop;
                        max = i18 < c0646b3.bottomMargin + this.f3401t ? Math.max(0, i17 - ((c0646b4.bottomMargin + this.f3401t) - i18)) : i17;
                    }
                    i10 = paddingTop + max;
                    break;
            }
            if (z2) {
                int i19 = (z3 ? this.f3398q : 0) - iArr[1];
                int max3 = i7 - Math.max(0, i19);
                iArr[1] = Math.max(0, -i19);
                if (m3792a) {
                    C0646b c0646b5 = (C0646b) this.f3387f.getLayoutParams();
                    int measuredWidth = max3 - this.f3387f.getMeasuredWidth();
                    int measuredHeight = this.f3387f.getMeasuredHeight() + i10;
                    this.f3387f.layout(measuredWidth, i10, max3, measuredHeight);
                    int i20 = measuredWidth - this.f3399r;
                    i10 = measuredHeight + c0646b5.bottomMargin;
                    i13 = i20;
                } else {
                    i13 = max3;
                }
                if (m3792a2) {
                    C0646b c0646b6 = (C0646b) this.f3388g.getLayoutParams();
                    int i21 = c0646b6.topMargin + i10;
                    int measuredWidth2 = max3 - this.f3388g.getMeasuredWidth();
                    int measuredHeight2 = this.f3388g.getMeasuredHeight() + i21;
                    this.f3388g.layout(measuredWidth2, i21, max3, measuredHeight2);
                    int i22 = max3 - this.f3399r;
                    int i23 = c0646b6.bottomMargin + measuredHeight2;
                    i14 = i22;
                } else {
                    i14 = max3;
                }
                i7 = z3 ? Math.min(i13, i14) : max3;
            } else {
                int i24 = (z3 ? this.f3398q : 0) - iArr[0];
                i8 += Math.max(0, i24);
                iArr[0] = Math.max(0, -i24);
                if (m3792a) {
                    C0646b c0646b7 = (C0646b) this.f3387f.getLayoutParams();
                    int measuredWidth3 = this.f3387f.getMeasuredWidth() + i8;
                    int measuredHeight3 = this.f3387f.getMeasuredHeight() + i10;
                    this.f3387f.layout(i8, i10, measuredWidth3, measuredHeight3);
                    int i25 = measuredWidth3 + this.f3399r;
                    int i26 = c0646b7.bottomMargin + measuredHeight3;
                    i11 = i25;
                    i10 = i26;
                } else {
                    i11 = i8;
                }
                if (m3792a2) {
                    C0646b c0646b8 = (C0646b) this.f3388g.getLayoutParams();
                    int i27 = c0646b8.topMargin + i10;
                    int measuredWidth4 = this.f3388g.getMeasuredWidth() + i8;
                    int measuredHeight4 = this.f3388g.getMeasuredHeight() + i27;
                    this.f3388g.layout(i8, i27, measuredWidth4, measuredHeight4);
                    int i28 = this.f3399r + measuredWidth4;
                    int i29 = c0646b8.bottomMargin + measuredHeight4;
                    i12 = i28;
                } else {
                    i12 = i8;
                }
                if (z3) {
                    i8 = Math.max(i11, i12);
                }
            }
        }
        m3791a(this.f3371E, 3);
        int size = this.f3371E.size();
        int i30 = i8;
        for (int i31 = 0; i31 < size; i31++) {
            i30 = m3787a(this.f3371E.get(i31), i30, iArr, min);
        }
        m3791a(this.f3371E, 5);
        int size2 = this.f3371E.size();
        for (int i32 = 0; i32 < size2; i32++) {
            i7 = m3795b(this.f3371E.get(i32), i7, iArr, min);
        }
        m3791a(this.f3371E, 1);
        int m3788a = m3788a(this.f3371E, iArr);
        int i33 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (m3788a / 2);
        int i34 = m3788a + i33;
        if (i33 < i30) {
            i33 = i30;
        } else if (i34 > i7) {
            i33 -= i34 - i7;
        }
        int size3 = this.f3371E.size();
        int i35 = i33;
        for (int i36 = 0; i36 < size3; i36++) {
            i35 = m3787a(this.f3371E.get(i36), i35, iArr, min);
        }
        this.f3371E.clear();
    }

    /* renamed from: a */
    private int m3788a(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        int i5 = i2;
        int i6 = i;
        while (i3 < size) {
            View view = list.get(i3);
            C0646b c0646b = (C0646b) view.getLayoutParams();
            int i7 = c0646b.leftMargin - i6;
            int i8 = c0646b.rightMargin - i5;
            int max = Math.max(0, i7);
            int max2 = Math.max(0, i8);
            i6 = Math.max(0, -i7);
            i5 = Math.max(0, -i8);
            i3++;
            i4 += view.getMeasuredWidth() + max + max2;
        }
        return i4;
    }

    /* renamed from: a */
    private int m3787a(View view, int i, int[] iArr, int i2) {
        C0646b c0646b = (C0646b) view.getLayoutParams();
        int i3 = c0646b.leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int m3785a = m3785a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, m3785a, max + measuredWidth, view.getMeasuredHeight() + m3785a);
        return c0646b.rightMargin + measuredWidth + max;
    }

    /* renamed from: b */
    private int m3795b(View view, int i, int[] iArr, int i2) {
        C0646b c0646b = (C0646b) view.getLayoutParams();
        int i3 = c0646b.rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int m3785a = m3785a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, m3785a, max, view.getMeasuredHeight() + m3785a);
        return max - (c0646b.leftMargin + measuredWidth);
    }

    /* renamed from: a */
    private int m3785a(View view, int i) {
        int max;
        C0646b c0646b = (C0646b) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        switch (m3784a(c0646b.f2368a)) {
            case 48:
                return getPaddingTop() - i2;
            case 80:
                return (((getHeight() - getPaddingBottom()) - measuredHeight) - c0646b.bottomMargin) - i2;
            default:
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i3 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                if (i3 < c0646b.topMargin) {
                    max = c0646b.topMargin;
                } else {
                    int i4 = (((height - paddingBottom) - measuredHeight) - i3) - paddingTop;
                    max = i4 < c0646b.bottomMargin ? Math.max(0, i3 - (c0646b.bottomMargin - i4)) : i3;
                }
                return max + paddingTop;
        }
    }

    /* renamed from: a */
    private int m3784a(int i) {
        int i2 = i & 112;
        switch (i2) {
            case 16:
            case 48:
            case 80:
                return i2;
            default:
                return this.f3405x & 112;
        }
    }

    /* renamed from: a */
    private void m3791a(List<View> list, int i) {
        boolean z = ViewCompat.getLayoutDirection(this) == 1;
        int childCount = getChildCount();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        list.clear();
        if (z) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                C0646b c0646b = (C0646b) childAt.getLayoutParams();
                if (c0646b.f3416b == 0 && m3792a(childAt) && m3793b(c0646b.f2368a) == absoluteGravity) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt2 = getChildAt(i3);
            C0646b c0646b2 = (C0646b) childAt2.getLayoutParams();
            if (c0646b2.f3416b == 0 && m3792a(childAt2) && m3793b(c0646b2.f2368a) == absoluteGravity) {
                list.add(childAt2);
            }
        }
    }

    /* renamed from: b */
    private int m3793b(int i) {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, layoutDirection) & 7;
        switch (absoluteGravity) {
            case 1:
            case 3:
            case 5:
                return absoluteGravity;
            case 2:
            case 4:
            default:
                return layoutDirection == 1 ? 5 : 3;
        }
    }

    /* renamed from: a */
    private boolean m3792a(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* renamed from: b */
    private int m3794b(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams) + MarginLayoutParamsCompat.getMarginStart(marginLayoutParams);
    }

    /* renamed from: c */
    private int m3796c(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.bottomMargin + marginLayoutParams.topMargin;
    }

    @Override // android.view.ViewGroup
    /* renamed from: a */
    public C0646b generateLayoutParams(AttributeSet attributeSet) {
        return new C0646b(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* renamed from: a */
    public C0646b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof C0646b) {
            return new C0646b((C0646b) layoutParams);
        }
        if (layoutParams instanceof AbstractC0512a.a) {
            return new C0646b((AbstractC0512a.a) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new C0646b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new C0646b(layoutParams);
    }

    @Override // android.view.ViewGroup
    /* renamed from: j */
    public C0646b generateDefaultLayoutParams() {
        return new C0646b(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof C0646b);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public InterfaceC0657ah getWrapper() {
        if (this.f3375I == null) {
            this.f3375I = new C0688bl(this, true);
        }
        return this.f3375I;
    }

    /* renamed from: k */
    void m3822k() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((C0646b) childAt.getLayoutParams()).f3416b != 2 && childAt != this.f3382a) {
                removeViewAt(childCount);
                this.f3372F.add(childAt);
            }
        }
    }

    /* renamed from: l */
    void m3823l() {
        for (int size = this.f3372F.size() - 1; size >= 0; size--) {
            addView(this.f3372F.get(size));
        }
        this.f3372F.clear();
    }

    /* renamed from: d */
    private boolean m3797d(View view) {
        return view.getParent() == this || this.f3372F.contains(view);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setCollapsible(boolean z) {
        this.f3380N = z;
        requestLayout();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public void m3810a(InterfaceC0551o.a aVar, C0544h.a aVar2) {
        this.f3378L = aVar;
        this.f3379M = aVar2;
        if (this.f3382a != null) {
            this.f3382a.m3010a(aVar, aVar2);
        }
    }

    /* renamed from: s */
    private void m3804s() {
        if (this.f3402u == null) {
            this.f3402u = new C0677ba();
        }
    }

    ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.f3376J;
    }

    Context getPopupContext() {
        return this.f3393l;
    }

    /* renamed from: android.support.v7.widget.Toolbar$b */
    public static class C0646b extends AbstractC0512a.a {

        /* renamed from: b */
        int f3416b;

        public C0646b(@NonNull Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3416b = 0;
        }

        public C0646b(int i, int i2) {
            super(i, i2);
            this.f3416b = 0;
            this.f2368a = 8388627;
        }

        public C0646b(C0646b c0646b) {
            super((AbstractC0512a.a) c0646b);
            this.f3416b = 0;
            this.f3416b = c0646b.f3416b;
        }

        public C0646b(AbstractC0512a.a aVar) {
            super(aVar);
            this.f3416b = 0;
        }

        public C0646b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f3416b = 0;
            m3827a(marginLayoutParams);
        }

        public C0646b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3416b = 0;
        }

        /* renamed from: a */
        void m3827a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.v7.widget.Toolbar.SavedState.1
            C06441() {
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
        int f3411a;

        /* renamed from: b */
        boolean f3412b;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f3411a = parcel.readInt();
            this.f3412b = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f3411a);
            parcel.writeInt(this.f3412b ? 1 : 0);
        }

        /* renamed from: android.support.v7.widget.Toolbar$SavedState$1 */
        static class C06441 implements Parcelable.ClassLoaderCreator<SavedState> {
            C06441() {
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

    /* renamed from: android.support.v7.widget.Toolbar$a */
    private class C0645a implements InterfaceC0551o {

        /* renamed from: a */
        C0544h f3413a;

        /* renamed from: b */
        C0546j f3414b;

        C0645a() {
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o
        /* renamed from: a */
        public void mo1539a(Context context, C0544h c0544h) {
            if (this.f3413a != null && this.f3414b != null) {
                this.f3413a.mo2880d(this.f3414b);
            }
            this.f3413a = c0544h;
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o
        /* renamed from: a */
        public void mo1543a(boolean z) {
            boolean z2 = false;
            if (this.f3414b != null) {
                if (this.f3413a != null) {
                    int size = this.f3413a.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        if (this.f3413a.getItem(i) != this.f3414b) {
                            i++;
                        } else {
                            z2 = true;
                            break;
                        }
                    }
                }
                if (!z2) {
                    mo1549b(this.f3413a, this.f3414b);
                }
            }
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o
        /* renamed from: a */
        public void mo1542a(InterfaceC0551o.a aVar) {
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o
        /* renamed from: a */
        public boolean mo1546a(SubMenuC0557u subMenuC0557u) {
            return false;
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o
        /* renamed from: a */
        public void mo1541a(C0544h c0544h, boolean z) {
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o
        /* renamed from: a */
        public boolean mo1544a() {
            return false;
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o
        /* renamed from: a */
        public boolean mo1545a(C0544h c0544h, C0546j c0546j) {
            Toolbar.this.m3820i();
            ViewParent parent = Toolbar.this.f3383b.getParent();
            if (parent != Toolbar.this) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(Toolbar.this.f3383b);
                }
                Toolbar.this.addView(Toolbar.this.f3383b);
            }
            Toolbar.this.f3384c = c0546j.getActionView();
            this.f3414b = c0546j;
            ViewParent parent2 = Toolbar.this.f3384c.getParent();
            if (parent2 != Toolbar.this) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(Toolbar.this.f3384c);
                }
                C0646b generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                generateDefaultLayoutParams.f2368a = 8388611 | (Toolbar.this.f3385d & 112);
                generateDefaultLayoutParams.f3416b = 2;
                Toolbar.this.f3384c.setLayoutParams(generateDefaultLayoutParams);
                Toolbar.this.addView(Toolbar.this.f3384c);
            }
            Toolbar.this.m3822k();
            Toolbar.this.requestLayout();
            c0546j.m2915e(true);
            if (Toolbar.this.f3384c instanceof InterfaceC0528c) {
                ((InterfaceC0528c) Toolbar.this.f3384c).mo2743a();
            }
            return true;
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o
        /* renamed from: b */
        public boolean mo1549b(C0544h c0544h, C0546j c0546j) {
            if (Toolbar.this.f3384c instanceof InterfaceC0528c) {
                ((InterfaceC0528c) Toolbar.this.f3384c).mo2744b();
            }
            Toolbar.this.removeView(Toolbar.this.f3384c);
            Toolbar.this.removeView(Toolbar.this.f3383b);
            Toolbar.this.f3384c = null;
            Toolbar.this.m3823l();
            this.f3414b = null;
            Toolbar.this.requestLayout();
            c0546j.m2915e(false);
            return true;
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o
        /* renamed from: b */
        public int mo1547b() {
            return 0;
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o
        /* renamed from: c */
        public Parcelable mo1550c() {
            return null;
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o
        /* renamed from: a */
        public void mo1540a(Parcelable parcelable) {
        }
    }
}
