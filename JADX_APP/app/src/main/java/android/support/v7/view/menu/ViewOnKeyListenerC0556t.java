package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.InterfaceC0551o;
import android.support.v7.widget.C0669at;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;

/* renamed from: android.support.v7.view.menu.t */
/* loaded from: classes.dex */
final class ViewOnKeyListenerC0556t extends AbstractC0549m implements InterfaceC0551o, View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {

    /* renamed from: e */
    private static final int f2800e = R.layout.abc_popup_menu_item_layout;

    /* renamed from: a */
    final C0669at f2801a;

    /* renamed from: c */
    View f2803c;

    /* renamed from: d */
    ViewTreeObserver f2804d;

    /* renamed from: f */
    private final Context f2805f;

    /* renamed from: g */
    private final C0544h f2806g;

    /* renamed from: h */
    private final C0543g f2807h;

    /* renamed from: i */
    private final boolean f2808i;

    /* renamed from: j */
    private final int f2809j;

    /* renamed from: k */
    private final int f2810k;

    /* renamed from: l */
    private final int f2811l;

    /* renamed from: n */
    private PopupWindow.OnDismissListener f2813n;

    /* renamed from: o */
    private View f2814o;

    /* renamed from: p */
    private InterfaceC0551o.a f2815p;

    /* renamed from: q */
    private boolean f2816q;

    /* renamed from: r */
    private boolean f2817r;

    /* renamed from: s */
    private int f2818s;

    /* renamed from: u */
    private boolean f2820u;

    /* renamed from: b */
    final ViewTreeObserver.OnGlobalLayoutListener f2802b = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.view.menu.t.1
        AnonymousClass1() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (ViewOnKeyListenerC0556t.this.mo2822f() && !ViewOnKeyListenerC0556t.this.f2801a.m4026c()) {
                View view = ViewOnKeyListenerC0556t.this.f2803c;
                if (view == null || !view.isShown()) {
                    ViewOnKeyListenerC0556t.this.mo2821e();
                } else {
                    ViewOnKeyListenerC0556t.this.f2801a.mo2820d();
                }
            }
        }
    };

    /* renamed from: m */
    private final View.OnAttachStateChangeListener f2812m = new View.OnAttachStateChangeListener() { // from class: android.support.v7.view.menu.t.2
        AnonymousClass2() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (ViewOnKeyListenerC0556t.this.f2804d != null) {
                if (!ViewOnKeyListenerC0556t.this.f2804d.isAlive()) {
                    ViewOnKeyListenerC0556t.this.f2804d = view.getViewTreeObserver();
                }
                ViewOnKeyListenerC0556t.this.f2804d.removeGlobalOnLayoutListener(ViewOnKeyListenerC0556t.this.f2802b);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };

    /* renamed from: t */
    private int f2819t = 0;

    /* renamed from: android.support.v7.view.menu.t$1 */
    class AnonymousClass1 implements ViewTreeObserver.OnGlobalLayoutListener {
        AnonymousClass1() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (ViewOnKeyListenerC0556t.this.mo2822f() && !ViewOnKeyListenerC0556t.this.f2801a.m4026c()) {
                View view = ViewOnKeyListenerC0556t.this.f2803c;
                if (view == null || !view.isShown()) {
                    ViewOnKeyListenerC0556t.this.mo2821e();
                } else {
                    ViewOnKeyListenerC0556t.this.f2801a.mo2820d();
                }
            }
        }
    }

    /* renamed from: android.support.v7.view.menu.t$2 */
    class AnonymousClass2 implements View.OnAttachStateChangeListener {
        AnonymousClass2() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (ViewOnKeyListenerC0556t.this.f2804d != null) {
                if (!ViewOnKeyListenerC0556t.this.f2804d.isAlive()) {
                    ViewOnKeyListenerC0556t.this.f2804d = view.getViewTreeObserver();
                }
                ViewOnKeyListenerC0556t.this.f2804d.removeGlobalOnLayoutListener(ViewOnKeyListenerC0556t.this.f2802b);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public ViewOnKeyListenerC0556t(Context context, C0544h c0544h, View view, int i, int i2, boolean z) {
        this.f2805f = context;
        this.f2806g = c0544h;
        this.f2808i = z;
        this.f2807h = new C0543g(c0544h, LayoutInflater.from(context), this.f2808i, f2800e);
        this.f2810k = i;
        this.f2811l = i2;
        Resources resources = context.getResources();
        this.f2809j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f2814o = view;
        this.f2801a = new C0669at(this.f2805f, null, this.f2810k, this.f2811l);
        c0544h.m2860a(this, context);
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: b */
    public void mo2817b(boolean z) {
        this.f2807h.m2836a(z);
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: a */
    public void mo2812a(int i) {
        this.f2819t = i;
    }

    /* renamed from: j */
    private boolean m2950j() {
        if (mo2822f()) {
            return true;
        }
        if (this.f2816q || this.f2814o == null) {
            return false;
        }
        this.f2803c = this.f2814o;
        this.f2801a.m4020a((PopupWindow.OnDismissListener) this);
        this.f2801a.m4018a((AdapterView.OnItemClickListener) this);
        this.f2801a.m4021a(true);
        View view = this.f2803c;
        boolean z = this.f2804d == null;
        this.f2804d = view.getViewTreeObserver();
        if (z) {
            this.f2804d.addOnGlobalLayoutListener(this.f2802b);
        }
        view.addOnAttachStateChangeListener(this.f2812m);
        this.f2801a.m4023b(view);
        this.f2801a.m4028e(this.f2819t);
        if (!this.f2817r) {
            this.f2818s = m2928a(this.f2807h, null, this.f2805f, this.f2809j);
            this.f2817r = true;
        }
        this.f2801a.m4030g(this.f2818s);
        this.f2801a.m4032h(2);
        this.f2801a.m4016a(m2932i());
        this.f2801a.mo2820d();
        ListView g = this.f2801a.mo2823g();
        g.setOnKeyListener(this);
        if (this.f2820u && this.f2806g.m2891n() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f2805f).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) g, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            if (textView != null) {
                textView.setText(this.f2806g.m2891n());
            }
            frameLayout.setEnabled(false);
            g.addHeaderView(frameLayout, null, false);
        }
        this.f2801a.mo4019a((ListAdapter) this.f2807h);
        this.f2801a.mo2820d();
        return true;
    }

    @Override // android.support.v7.view.menu.InterfaceC0555s
    /* renamed from: d */
    public void mo2820d() {
        if (!m2950j()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0555s
    /* renamed from: e */
    public void mo2821e() {
        if (mo2822f()) {
            this.f2801a.mo2821e();
        }
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: a */
    public void mo2813a(C0544h c0544h) {
    }

    @Override // android.support.v7.view.menu.InterfaceC0555s
    /* renamed from: f */
    public boolean mo2822f() {
        return !this.f2816q && this.f2801a.mo2822f();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f2816q = true;
        this.f2806g.close();
        if (this.f2804d != null) {
            if (!this.f2804d.isAlive()) {
                this.f2804d = this.f2803c.getViewTreeObserver();
            }
            this.f2804d.removeGlobalOnLayoutListener(this.f2802b);
            this.f2804d = null;
        }
        this.f2803c.removeOnAttachStateChangeListener(this.f2812m);
        if (this.f2813n != null) {
            this.f2813n.onDismiss();
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1543a(boolean z) {
        this.f2817r = false;
        if (this.f2807h != null) {
            this.f2807h.notifyDataSetChanged();
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1542a(InterfaceC0551o.a aVar) {
        this.f2815p = aVar;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1546a(SubMenuC0557u subMenuC0557u) {
        if (subMenuC0557u.hasVisibleItems()) {
            C0550n c0550n = new C0550n(this.f2805f, subMenuC0557u, this.f2803c, this.f2808i, this.f2810k, this.f2811l);
            c0550n.m2937a(this.f2815p);
            c0550n.m2940a(AbstractC0549m.m2930b(subMenuC0557u));
            c0550n.m2939a(this.f2813n);
            this.f2813n = null;
            this.f2806g.m2870b(false);
            int j = this.f2801a.m4035j();
            int k = this.f2801a.m4036k();
            if ((Gravity.getAbsoluteGravity(this.f2819t, ViewCompat.getLayoutDirection(this.f2814o)) & 7) == 5) {
                j += this.f2814o.getWidth();
            }
            if (c0550n.m2941a(j, k)) {
                if (this.f2815p != null) {
                    this.f2815p.mo2567a(subMenuC0557u);
                }
                return true;
            }
        }
        return false;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1541a(C0544h c0544h, boolean z) {
        if (c0544h == this.f2806g) {
            mo2821e();
            if (this.f2815p != null) {
                this.f2815p.mo2566a(c0544h, z);
            }
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1544a() {
        return false;
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

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: a */
    public void mo2814a(View view) {
        this.f2814o = view;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        mo2821e();
        return true;
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: a */
    public void mo2815a(PopupWindow.OnDismissListener onDismissListener) {
        this.f2813n = onDismissListener;
    }

    @Override // android.support.v7.view.menu.InterfaceC0555s
    /* renamed from: g */
    public ListView mo2823g() {
        return this.f2801a.mo2823g();
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: b */
    public void mo2816b(int i) {
        this.f2801a.m4025c(i);
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: c */
    public void mo2818c(int i) {
        this.f2801a.m4027d(i);
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: c */
    public void mo2819c(boolean z) {
        this.f2820u = z;
    }
}
