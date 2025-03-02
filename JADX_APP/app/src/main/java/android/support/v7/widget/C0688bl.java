package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v7.appcompat.R;
import android.support.v7.p048a.p049a.C0488a;
import android.support.v7.view.menu.C0537a;
import android.support.v7.view.menu.C0544h;
import android.support.v7.view.menu.InterfaceC0551o;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.bl */
/* loaded from: classes.dex */
public class C0688bl implements InterfaceC0657ah {

    /* renamed from: a */
    Toolbar f3756a;

    /* renamed from: b */
    CharSequence f3757b;

    /* renamed from: c */
    Window.Callback f3758c;

    /* renamed from: d */
    boolean f3759d;

    /* renamed from: e */
    private int f3760e;

    /* renamed from: f */
    private View f3761f;

    /* renamed from: g */
    private View f3762g;

    /* renamed from: h */
    private Drawable f3763h;

    /* renamed from: i */
    private Drawable f3764i;

    /* renamed from: j */
    private Drawable f3765j;

    /* renamed from: k */
    private boolean f3766k;

    /* renamed from: l */
    private CharSequence f3767l;

    /* renamed from: m */
    private CharSequence f3768m;

    /* renamed from: n */
    private ActionMenuPresenter f3769n;

    /* renamed from: o */
    private int f3770o;

    /* renamed from: p */
    private int f3771p;

    /* renamed from: q */
    private Drawable f3772q;

    public C0688bl(Toolbar toolbar, boolean z) {
        this(toolbar, z, R.string.abc_action_bar_up_description, R.drawable.abc_ic_ab_back_material);
    }

    public C0688bl(Toolbar toolbar, boolean z, int i, int i2) {
        this.f3770o = 0;
        this.f3771p = 0;
        this.f3756a = toolbar;
        this.f3757b = toolbar.getTitle();
        this.f3767l = toolbar.getSubtitle();
        this.f3766k = this.f3757b != null;
        this.f3765j = toolbar.getNavigationIcon();
        C0687bk m4167a = C0687bk.m4167a(toolbar.getContext(), null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        this.f3772q = m4167a.m4171a(R.styleable.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence m4178c = m4167a.m4178c(R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(m4178c)) {
                m4194b(m4178c);
            }
            CharSequence m4178c2 = m4167a.m4178c(R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(m4178c2)) {
                m4196c(m4178c2);
            }
            Drawable m4171a = m4167a.m4171a(R.styleable.ActionBar_logo);
            if (m4171a != null) {
                m4193b(m4171a);
            }
            Drawable m4171a2 = m4167a.m4171a(R.styleable.ActionBar_icon);
            if (m4171a2 != null) {
                mo3888a(m4171a2);
            }
            if (this.f3765j == null && this.f3772q != null) {
                m4195c(this.f3772q);
            }
            mo3898c(m4167a.m4169a(R.styleable.ActionBar_displayOptions, 0));
            int m4185g = m4167a.m4185g(R.styleable.ActionBar_customNavigationLayout, 0);
            if (m4185g != 0) {
                m4192a(LayoutInflater.from(this.f3756a.getContext()).inflate(m4185g, (ViewGroup) this.f3756a, false));
                mo3898c(this.f3760e | 16);
            }
            int m4183f = m4167a.m4183f(R.styleable.ActionBar_height, 0);
            if (m4183f > 0) {
                ViewGroup.LayoutParams layoutParams = this.f3756a.getLayoutParams();
                layoutParams.height = m4183f;
                this.f3756a.setLayoutParams(layoutParams);
            }
            int m4179d = m4167a.m4179d(R.styleable.ActionBar_contentInsetStart, -1);
            int m4179d2 = m4167a.m4179d(R.styleable.ActionBar_contentInsetEnd, -1);
            if (m4179d >= 0 || m4179d2 >= 0) {
                this.f3756a.m3807a(Math.max(m4179d, 0), Math.max(m4179d2, 0));
            }
            int m4185g2 = m4167a.m4185g(R.styleable.ActionBar_titleTextStyle, 0);
            if (m4185g2 != 0) {
                this.f3756a.m3808a(this.f3756a.getContext(), m4185g2);
            }
            int m4185g3 = m4167a.m4185g(R.styleable.ActionBar_subtitleTextStyle, 0);
            if (m4185g3 != 0) {
                this.f3756a.m3812b(this.f3756a.getContext(), m4185g3);
            }
            int m4185g4 = m4167a.m4185g(R.styleable.ActionBar_popupTheme, 0);
            if (m4185g4 != 0) {
                this.f3756a.setPopupTheme(m4185g4);
            }
        } else {
            this.f3760e = m4188r();
        }
        m4167a.m4172a();
        m4198e(i);
        this.f3768m = this.f3756a.getNavigationContentDescription();
        this.f3756a.setNavigationOnClickListener(new View.OnClickListener() { // from class: android.support.v7.widget.bl.1

            /* renamed from: a */
            final C0537a f3773a;

            AnonymousClass1() {
                this.f3773a = new C0537a(C0688bl.this.f3756a.getContext(), 0, android.R.id.home, 0, 0, C0688bl.this.f3757b);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C0688bl.this.f3758c != null && C0688bl.this.f3759d) {
                    C0688bl.this.f3758c.onMenuItemSelected(0, this.f3773a);
                }
            }
        });
    }

    /* renamed from: android.support.v7.widget.bl$1 */
    class AnonymousClass1 implements View.OnClickListener {

        /* renamed from: a */
        final C0537a f3773a;

        AnonymousClass1() {
            this.f3773a = new C0537a(C0688bl.this.f3756a.getContext(), 0, android.R.id.home, 0, 0, C0688bl.this.f3757b);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0688bl.this.f3758c != null && C0688bl.this.f3759d) {
                C0688bl.this.f3758c.onMenuItemSelected(0, this.f3773a);
            }
        }
    }

    /* renamed from: e */
    public void m4198e(int i) {
        if (i != this.f3771p) {
            this.f3771p = i;
            if (TextUtils.isEmpty(this.f3756a.getNavigationContentDescription())) {
                m4199f(this.f3771p);
            }
        }
    }

    /* renamed from: r */
    private int m4188r() {
        if (this.f3756a.getNavigationIcon() == null) {
            return 11;
        }
        this.f3772q = this.f3756a.getNavigationIcon();
        return 15;
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: a */
    public ViewGroup mo3886a() {
        return this.f3756a;
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: b */
    public Context mo3895b() {
        return this.f3756a.getContext();
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: c */
    public boolean mo3899c() {
        return this.f3756a.m3818g();
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: d */
    public void mo3900d() {
        this.f3756a.m3819h();
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: a */
    public void mo3892a(Window.Callback callback) {
        this.f3758c = callback;
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: a */
    public void mo3893a(CharSequence charSequence) {
        if (!this.f3766k) {
            m4187e(charSequence);
        }
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: e */
    public CharSequence mo3902e() {
        return this.f3756a.getTitle();
    }

    /* renamed from: b */
    public void m4194b(CharSequence charSequence) {
        this.f3766k = true;
        m4187e(charSequence);
    }

    /* renamed from: e */
    private void m4187e(CharSequence charSequence) {
        this.f3757b = charSequence;
        if ((this.f3760e & 8) != 0) {
            this.f3756a.setTitle(charSequence);
        }
    }

    /* renamed from: c */
    public void m4196c(CharSequence charSequence) {
        this.f3767l = charSequence;
        if ((this.f3760e & 8) != 0) {
            this.f3756a.setSubtitle(charSequence);
        }
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: f */
    public void mo3903f() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: g */
    public void mo3904g() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: a */
    public void mo3887a(int i) {
        mo3888a(i != 0 ? C0488a.m2457b(mo3895b(), i) : null);
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: a */
    public void mo3888a(Drawable drawable) {
        this.f3763h = drawable;
        m4189s();
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: b */
    public void mo3896b(int i) {
        m4193b(i != 0 ? C0488a.m2457b(mo3895b(), i) : null);
    }

    /* renamed from: b */
    public void m4193b(Drawable drawable) {
        this.f3764i = drawable;
        m4189s();
    }

    /* renamed from: s */
    private void m4189s() {
        Drawable drawable = null;
        if ((this.f3760e & 2) != 0) {
            if ((this.f3760e & 1) != 0) {
                drawable = this.f3764i != null ? this.f3764i : this.f3763h;
            } else {
                drawable = this.f3763h;
            }
        }
        this.f3756a.setLogo(drawable);
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: h */
    public boolean mo3905h() {
        return this.f3756a.m3811a();
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: i */
    public boolean mo3906i() {
        return this.f3756a.m3813b();
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: j */
    public boolean mo3907j() {
        return this.f3756a.m3814c();
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: k */
    public boolean mo3908k() {
        return this.f3756a.m3815d();
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: l */
    public boolean mo3909l() {
        return this.f3756a.m3816e();
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: m */
    public void mo3910m() {
        this.f3759d = true;
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: a */
    public void mo3891a(Menu menu, InterfaceC0551o.a aVar) {
        if (this.f3769n == null) {
            this.f3769n = new ActionMenuPresenter(this.f3756a.getContext());
            this.f3769n.m2793a(R.id.action_menu_presenter);
        }
        this.f3769n.mo1542a(aVar);
        this.f3756a.m3809a((C0544h) menu, this.f3769n);
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: n */
    public void mo3911n() {
        this.f3756a.m3817f();
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: o */
    public int mo3912o() {
        return this.f3760e;
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: c */
    public void mo3898c(int i) {
        int i2 = this.f3760e ^ i;
        this.f3760e = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m4191u();
                }
                m4190t();
            }
            if ((i2 & 3) != 0) {
                m4189s();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f3756a.setTitle(this.f3757b);
                    this.f3756a.setSubtitle(this.f3767l);
                } else {
                    this.f3756a.setTitle((CharSequence) null);
                    this.f3756a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) != 0 && this.f3762g != null) {
                if ((i & 16) != 0) {
                    this.f3756a.addView(this.f3762g);
                } else {
                    this.f3756a.removeView(this.f3762g);
                }
            }
        }
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: a */
    public void mo3890a(C0679bc c0679bc) {
        if (this.f3761f != null && this.f3761f.getParent() == this.f3756a) {
            this.f3756a.removeView(this.f3761f);
        }
        this.f3761f = c0679bc;
        if (c0679bc != null && this.f3770o == 2) {
            this.f3756a.addView(this.f3761f, 0);
            Toolbar.C0646b c0646b = (Toolbar.C0646b) this.f3761f.getLayoutParams();
            c0646b.width = -2;
            c0646b.height = -2;
            c0646b.f2368a = 8388691;
            c0679bc.setAllowCollapse(true);
        }
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: a */
    public void mo3894a(boolean z) {
        this.f3756a.setCollapsible(z);
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: b */
    public void mo3897b(boolean z) {
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: p */
    public int mo3913p() {
        return this.f3770o;
    }

    /* renamed from: a */
    public void m4192a(View view) {
        if (this.f3762g != null && (this.f3760e & 16) != 0) {
            this.f3756a.removeView(this.f3762g);
        }
        this.f3762g = view;
        if (view != null && (this.f3760e & 16) != 0) {
            this.f3756a.addView(this.f3762g);
        }
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: a */
    public ViewPropertyAnimatorCompat mo3885a(int i, long j) {
        return ViewCompat.animate(this.f3756a).alpha(i == 0 ? 1.0f : 0.0f).setDuration(j).setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.widget.bl.2

            /* renamed from: a */
            final /* synthetic */ int f3775a;

            /* renamed from: c */
            private boolean f3777c = false;

            AnonymousClass2(int i2) {
                i = i2;
            }

            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
            public void onAnimationStart(View view) {
                C0688bl.this.f3756a.setVisibility(0);
            }

            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                if (!this.f3777c) {
                    C0688bl.this.f3756a.setVisibility(i);
                }
            }

            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
            public void onAnimationCancel(View view) {
                this.f3777c = true;
            }
        });
    }

    /* renamed from: android.support.v7.widget.bl$2 */
    class AnonymousClass2 extends ViewPropertyAnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ int f3775a;

        /* renamed from: c */
        private boolean f3777c = false;

        AnonymousClass2(int i2) {
            i = i2;
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            C0688bl.this.f3756a.setVisibility(0);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            if (!this.f3777c) {
                C0688bl.this.f3756a.setVisibility(i);
            }
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
            this.f3777c = true;
        }
    }

    /* renamed from: c */
    public void m4195c(Drawable drawable) {
        this.f3765j = drawable;
        m4190t();
    }

    /* renamed from: t */
    private void m4190t() {
        if ((this.f3760e & 4) != 0) {
            this.f3756a.setNavigationIcon(this.f3765j != null ? this.f3765j : this.f3772q);
        } else {
            this.f3756a.setNavigationIcon((Drawable) null);
        }
    }

    /* renamed from: d */
    public void m4197d(CharSequence charSequence) {
        this.f3768m = charSequence;
        m4191u();
    }

    /* renamed from: f */
    public void m4199f(int i) {
        m4197d(i == 0 ? null : mo3895b().getString(i));
    }

    /* renamed from: u */
    private void m4191u() {
        if ((this.f3760e & 4) != 0) {
            if (TextUtils.isEmpty(this.f3768m)) {
                this.f3756a.setNavigationContentDescription(this.f3771p);
            } else {
                this.f3756a.setNavigationContentDescription(this.f3768m);
            }
        }
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: d */
    public void mo3901d(int i) {
        this.f3756a.setVisibility(i);
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: a */
    public void mo3889a(InterfaceC0551o.a aVar, C0544h.a aVar2) {
        this.f3756a.m3810a(aVar, aVar2);
    }

    @Override // android.support.v7.widget.InterfaceC0657ah
    /* renamed from: q */
    public Menu mo3914q() {
        return this.f3756a.getMenu();
    }
}
