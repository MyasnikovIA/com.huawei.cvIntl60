package android.support.v7.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.view.ViewPropertyAnimatorUpdateListener;
import android.support.v7.app.AbstractC0512a;
import android.support.v7.view.AbstractC0527b;
import android.support.v7.view.C0526a;
import android.support.v7.view.C0532g;
import android.support.v7.view.C0533h;
import android.support.v7.view.menu.C0544h;
import android.support.v7.widget.ActionBarContainer;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ActionBarOverlayLayout;
import android.support.v7.widget.C0679bc;
import android.support.v7.widget.InterfaceC0657ah;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.app.j */
/* loaded from: classes.dex */
public class C0521j extends AbstractC0512a implements ActionBarOverlayLayout.InterfaceC0563a {

    /* renamed from: s */
    static final /* synthetic */ boolean f2407s;

    /* renamed from: t */
    private static final Interpolator f2408t;

    /* renamed from: u */
    private static final Interpolator f2409u;

    /* renamed from: A */
    private boolean f2410A;

    /* renamed from: B */
    private boolean f2411B;

    /* renamed from: D */
    private boolean f2413D;

    /* renamed from: F */
    private boolean f2415F;

    /* renamed from: H */
    private boolean f2417H;

    /* renamed from: a */
    Context f2418a;

    /* renamed from: b */
    ActionBarOverlayLayout f2419b;

    /* renamed from: c */
    ActionBarContainer f2420c;

    /* renamed from: d */
    InterfaceC0657ah f2421d;

    /* renamed from: e */
    ActionBarContextView f2422e;

    /* renamed from: f */
    View f2423f;

    /* renamed from: g */
    C0679bc f2424g;

    /* renamed from: h */
    a f2425h;

    /* renamed from: i */
    AbstractC0527b f2426i;

    /* renamed from: j */
    AbstractC0527b.a f2427j;

    /* renamed from: l */
    boolean f2429l;

    /* renamed from: m */
    boolean f2430m;

    /* renamed from: n */
    C0533h f2431n;

    /* renamed from: o */
    boolean f2432o;

    /* renamed from: v */
    private Context f2436v;

    /* renamed from: w */
    private Activity f2437w;

    /* renamed from: x */
    private Dialog f2438x;

    /* renamed from: y */
    private ArrayList<Object> f2439y = new ArrayList<>();

    /* renamed from: z */
    private int f2440z = -1;

    /* renamed from: C */
    private ArrayList<AbstractC0512a.b> f2412C = new ArrayList<>();

    /* renamed from: E */
    private int f2414E = 0;

    /* renamed from: k */
    boolean f2428k = true;

    /* renamed from: G */
    private boolean f2416G = true;

    /* renamed from: p */
    final ViewPropertyAnimatorListener f2433p = new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.app.j.1
        AnonymousClass1() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            if (C0521j.this.f2428k && C0521j.this.f2423f != null) {
                C0521j.this.f2423f.setTranslationY(0.0f);
                C0521j.this.f2420c.setTranslationY(0.0f);
            }
            C0521j.this.f2420c.setVisibility(8);
            C0521j.this.f2420c.setTransitioning(false);
            C0521j.this.f2431n = null;
            C0521j.this.m2638d();
            if (C0521j.this.f2419b != null) {
                ViewCompat.requestApplyInsets(C0521j.this.f2419b);
            }
        }
    };

    /* renamed from: q */
    final ViewPropertyAnimatorListener f2434q = new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.app.j.2
        AnonymousClass2() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            C0521j.this.f2431n = null;
            C0521j.this.f2420c.requestLayout();
        }
    };

    /* renamed from: r */
    final ViewPropertyAnimatorUpdateListener f2435r = new ViewPropertyAnimatorUpdateListener() { // from class: android.support.v7.app.j.3
        AnonymousClass3() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorUpdateListener
        public void onAnimationUpdate(View view) {
            ((View) C0521j.this.f2420c.getParent()).invalidate();
        }
    };

    static {
        f2407s = !C0521j.class.desiredAssertionStatus();
        f2408t = new AccelerateInterpolator();
        f2409u = new DecelerateInterpolator();
    }

    /* renamed from: android.support.v7.app.j$1 */
    class AnonymousClass1 extends ViewPropertyAnimatorListenerAdapter {
        AnonymousClass1() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            if (C0521j.this.f2428k && C0521j.this.f2423f != null) {
                C0521j.this.f2423f.setTranslationY(0.0f);
                C0521j.this.f2420c.setTranslationY(0.0f);
            }
            C0521j.this.f2420c.setVisibility(8);
            C0521j.this.f2420c.setTransitioning(false);
            C0521j.this.f2431n = null;
            C0521j.this.m2638d();
            if (C0521j.this.f2419b != null) {
                ViewCompat.requestApplyInsets(C0521j.this.f2419b);
            }
        }
    }

    /* renamed from: android.support.v7.app.j$2 */
    class AnonymousClass2 extends ViewPropertyAnimatorListenerAdapter {
        AnonymousClass2() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            C0521j.this.f2431n = null;
            C0521j.this.f2420c.requestLayout();
        }
    }

    /* renamed from: android.support.v7.app.j$3 */
    class AnonymousClass3 implements ViewPropertyAnimatorUpdateListener {
        AnonymousClass3() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorUpdateListener
        public void onAnimationUpdate(View view) {
            ((View) C0521j.this.f2420c.getParent()).invalidate();
        }
    }

    public C0521j(Activity activity, boolean z) {
        this.f2437w = activity;
        View decorView = activity.getWindow().getDecorView();
        m2628a(decorView);
        if (!z) {
            this.f2423f = decorView.findViewById(R.id.content);
        }
    }

    public C0521j(Dialog dialog) {
        this.f2438x = dialog;
        m2628a(dialog.getWindow().getDecorView());
    }

    /* renamed from: a */
    private void m2628a(View view) {
        this.f2419b = (ActionBarOverlayLayout) view.findViewById(android.support.v7.appcompat.R.id.decor_content_parent);
        if (this.f2419b != null) {
            this.f2419b.setActionBarVisibilityCallback(this);
        }
        this.f2421d = m2630b(view.findViewById(android.support.v7.appcompat.R.id.action_bar));
        this.f2422e = (ActionBarContextView) view.findViewById(android.support.v7.appcompat.R.id.action_context_bar);
        this.f2420c = (ActionBarContainer) view.findViewById(android.support.v7.appcompat.R.id.action_bar_container);
        if (this.f2421d == null || this.f2422e == null || this.f2420c == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f2418a = this.f2421d.mo3895b();
        boolean z = (this.f2421d.mo3912o() & 4) != 0;
        if (z) {
            this.f2410A = true;
        }
        C0526a m2732a = C0526a.m2732a(this.f2418a);
        mo2583a(m2732a.m2738f() || z);
        m2633k(m2732a.m2736d());
        TypedArray obtainStyledAttributes = this.f2418a.obtainStyledAttributes(null, android.support.v7.appcompat.R.styleable.ActionBar, android.support.v7.appcompat.R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.ActionBar_hideOnContentScroll, false)) {
            mo2585b(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            mo2581a(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private InterfaceC0657ah m2630b(View view) {
        if (view instanceof InterfaceC0657ah) {
            return (InterfaceC0657ah) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + (view != 0 ? view.getClass().getSimpleName() : "null"));
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: a */
    public void mo2581a(float f) {
        ViewCompat.setElevation(this.f2420c, f);
    }

    /* renamed from: k */
    private void m2633k(boolean z) {
        this.f2413D = z;
        if (!this.f2413D) {
            this.f2421d.mo3890a((C0679bc) null);
            this.f2420c.setTabContainer(this.f2424g);
        } else {
            this.f2420c.setTabContainer(null);
            this.f2421d.mo3890a(this.f2424g);
        }
        boolean z2 = m2639e() == 2;
        if (this.f2424g != null) {
            if (z2) {
                this.f2424g.setVisibility(0);
                if (this.f2419b != null) {
                    ViewCompat.requestApplyInsets(this.f2419b);
                }
            } else {
                this.f2424g.setVisibility(8);
            }
        }
        this.f2421d.mo3894a(!this.f2413D && z2);
        this.f2419b.setHasNonEmbeddedTabs(!this.f2413D && z2);
    }

    /* renamed from: d */
    void m2638d() {
        if (this.f2427j != null) {
            this.f2427j.mo2568a(this.f2426i);
            this.f2426i = null;
            this.f2427j = null;
        }
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.InterfaceC0563a
    /* renamed from: a */
    public void mo2636a(int i) {
        this.f2414E = i;
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: d */
    public void mo2589d(boolean z) {
        this.f2417H = z;
        if (!z && this.f2431n != null) {
            this.f2431n.m2770c();
        }
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: e */
    public void mo2590e(boolean z) {
        if (z != this.f2411B) {
            this.f2411B = z;
            int size = this.f2412C.size();
            for (int i = 0; i < size; i++) {
                this.f2412C.get(i).m2591a(z);
            }
        }
    }

    /* renamed from: f */
    public void m2641f(boolean z) {
        m2637a(z ? 4 : 0, 4);
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: a */
    public void mo2583a(boolean z) {
        this.f2421d.mo3897b(z);
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: a */
    public void mo2582a(CharSequence charSequence) {
        this.f2421d.mo3893a(charSequence);
    }

    /* renamed from: a */
    public void m2637a(int i, int i2) {
        int mo3912o = this.f2421d.mo3912o();
        if ((i2 & 4) != 0) {
            this.f2410A = true;
        }
        this.f2421d.mo3898c((mo3912o & (i2 ^ (-1))) | (i & i2));
    }

    /* renamed from: e */
    public int m2639e() {
        return this.f2421d.mo3913p();
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: a */
    public AbstractC0527b mo2580a(AbstractC0527b.a aVar) {
        if (this.f2425h != null) {
            this.f2425h.mo2657c();
        }
        this.f2419b.setHideOnContentScrollEnabled(false);
        this.f2422e.m2960c();
        a aVar2 = new a(this.f2422e.getContext(), aVar);
        if (!aVar2.m2659e()) {
            return null;
        }
        this.f2425h = aVar2;
        aVar2.mo2658d();
        this.f2422e.m2957a(aVar2);
        m2648j(true);
        this.f2422e.sendAccessibilityEvent(32);
        return aVar2;
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.InterfaceC0563a
    /* renamed from: g */
    public void mo2643g(boolean z) {
        this.f2428k = z;
    }

    /* renamed from: j */
    private void m2631j() {
        if (!this.f2415F) {
            this.f2415F = true;
            if (this.f2419b != null) {
                this.f2419b.setShowingForActionMode(true);
            }
            m2634l(false);
        }
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.InterfaceC0563a
    /* renamed from: f */
    public void mo2640f() {
        if (this.f2430m) {
            this.f2430m = false;
            m2634l(true);
        }
    }

    /* renamed from: k */
    private void m2632k() {
        if (this.f2415F) {
            this.f2415F = false;
            if (this.f2419b != null) {
                this.f2419b.setShowingForActionMode(false);
            }
            m2634l(false);
        }
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.InterfaceC0563a
    /* renamed from: g */
    public void mo2642g() {
        if (!this.f2430m) {
            this.f2430m = true;
            m2634l(true);
        }
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: b */
    public void mo2585b(boolean z) {
        if (z && !this.f2419b.m2973a()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.f2432o = z;
        this.f2419b.setHideOnContentScrollEnabled(z);
    }

    /* renamed from: a */
    static boolean m2629a(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    /* renamed from: l */
    private void m2634l(boolean z) {
        if (m2629a(this.f2429l, this.f2430m, this.f2415F)) {
            if (!this.f2416G) {
                this.f2416G = true;
                m2645h(z);
                return;
            }
            return;
        }
        if (this.f2416G) {
            this.f2416G = false;
            m2647i(z);
        }
    }

    /* renamed from: h */
    public void m2645h(boolean z) {
        if (this.f2431n != null) {
            this.f2431n.m2770c();
        }
        this.f2420c.setVisibility(0);
        if (this.f2414E == 0 && (this.f2417H || z)) {
            this.f2420c.setTranslationY(0.0f);
            float f = -this.f2420c.getHeight();
            if (z) {
                this.f2420c.getLocationInWindow(new int[]{0, 0});
                f -= r1[1];
            }
            this.f2420c.setTranslationY(f);
            C0533h c0533h = new C0533h();
            ViewPropertyAnimatorCompat translationY = ViewCompat.animate(this.f2420c).translationY(0.0f);
            translationY.setUpdateListener(this.f2435r);
            c0533h.m2764a(translationY);
            if (this.f2428k && this.f2423f != null) {
                this.f2423f.setTranslationY(f);
                c0533h.m2764a(ViewCompat.animate(this.f2423f).translationY(0.0f));
            }
            c0533h.m2767a(f2409u);
            c0533h.m2763a(250L);
            c0533h.m2766a(this.f2434q);
            this.f2431n = c0533h;
            c0533h.m2768a();
        } else {
            this.f2420c.setAlpha(1.0f);
            this.f2420c.setTranslationY(0.0f);
            if (this.f2428k && this.f2423f != null) {
                this.f2423f.setTranslationY(0.0f);
            }
            this.f2434q.onAnimationEnd(null);
        }
        if (this.f2419b != null) {
            ViewCompat.requestApplyInsets(this.f2419b);
        }
    }

    /* renamed from: i */
    public void m2647i(boolean z) {
        if (this.f2431n != null) {
            this.f2431n.m2770c();
        }
        if (this.f2414E == 0 && (this.f2417H || z)) {
            this.f2420c.setAlpha(1.0f);
            this.f2420c.setTransitioning(true);
            C0533h c0533h = new C0533h();
            float f = -this.f2420c.getHeight();
            if (z) {
                this.f2420c.getLocationInWindow(new int[]{0, 0});
                f -= r2[1];
            }
            ViewPropertyAnimatorCompat translationY = ViewCompat.animate(this.f2420c).translationY(f);
            translationY.setUpdateListener(this.f2435r);
            c0533h.m2764a(translationY);
            if (this.f2428k && this.f2423f != null) {
                c0533h.m2764a(ViewCompat.animate(this.f2423f).translationY(f));
            }
            c0533h.m2767a(f2408t);
            c0533h.m2763a(250L);
            c0533h.m2766a(this.f2433p);
            this.f2431n = c0533h;
            c0533h.m2768a();
            return;
        }
        this.f2433p.onAnimationEnd(null);
    }

    /* renamed from: j */
    public void m2648j(boolean z) {
        ViewPropertyAnimatorCompat mo3885a;
        ViewPropertyAnimatorCompat mo2956a;
        if (z) {
            m2631j();
        } else {
            m2632k();
        }
        if (m2635l()) {
            if (z) {
                mo2956a = this.f2421d.mo3885a(4, 100L);
                mo3885a = this.f2422e.mo2956a(0, 200L);
            } else {
                mo3885a = this.f2421d.mo3885a(0, 200L);
                mo2956a = this.f2422e.mo2956a(8, 100L);
            }
            C0533h c0533h = new C0533h();
            c0533h.m2765a(mo2956a, mo3885a);
            c0533h.m2768a();
            return;
        }
        if (z) {
            this.f2421d.mo3901d(4);
            this.f2422e.setVisibility(0);
        } else {
            this.f2421d.mo3901d(0);
            this.f2422e.setVisibility(8);
        }
    }

    /* renamed from: l */
    private boolean m2635l() {
        return ViewCompat.isLaidOut(this.f2420c);
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: a */
    public Context mo2579a() {
        if (this.f2436v == null) {
            TypedValue typedValue = new TypedValue();
            this.f2418a.getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f2436v = new ContextThemeWrapper(this.f2418a, i);
            } else {
                this.f2436v = this.f2418a;
            }
        }
        return this.f2436v;
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.InterfaceC0563a
    /* renamed from: h */
    public void mo2644h() {
        if (this.f2431n != null) {
            this.f2431n.m2770c();
            this.f2431n = null;
        }
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.InterfaceC0563a
    /* renamed from: i */
    public void mo2646i() {
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: c */
    public boolean mo2588c() {
        if (this.f2421d == null || !this.f2421d.mo3899c()) {
            return false;
        }
        this.f2421d.mo3900d();
        return true;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: android.support.v7.app.j$a */
    public class a extends AbstractC0527b implements C0544h.a {

        /* renamed from: b */
        private final Context f2445b;

        /* renamed from: c */
        private final C0544h f2446c;

        /* renamed from: d */
        private AbstractC0527b.a f2447d;

        /* renamed from: e */
        private WeakReference<View> f2448e;

        public a(Context context, AbstractC0527b.a aVar) {
            this.f2445b = context;
            this.f2447d = aVar;
            this.f2446c = new C0544h(context).m2849a(1);
            this.f2446c.mo2857a(this);
        }

        @Override // android.support.v7.view.AbstractC0527b
        /* renamed from: a */
        public MenuInflater mo2649a() {
            return new C0532g(this.f2445b);
        }

        @Override // android.support.v7.view.AbstractC0527b
        /* renamed from: b */
        public Menu mo2654b() {
            return this.f2446c;
        }

        @Override // android.support.v7.view.AbstractC0527b
        /* renamed from: c */
        public void mo2657c() {
            if (C0521j.this.f2425h == this) {
                if (!C0521j.m2629a(C0521j.this.f2429l, C0521j.this.f2430m, false)) {
                    C0521j.this.f2426i = this;
                    C0521j.this.f2427j = this.f2447d;
                } else {
                    this.f2447d.mo2568a(this);
                }
                this.f2447d = null;
                C0521j.this.m2648j(false);
                C0521j.this.f2422e.m2959b();
                C0521j.this.f2421d.mo3886a().sendAccessibilityEvent(32);
                C0521j.this.f2419b.setHideOnContentScrollEnabled(C0521j.this.f2432o);
                C0521j.this.f2425h = null;
            }
        }

        @Override // android.support.v7.view.AbstractC0527b
        /* renamed from: d */
        public void mo2658d() {
            if (C0521j.this.f2425h == this) {
                this.f2446c.m2885h();
                try {
                    this.f2447d.mo2571b(this, this.f2446c);
                } finally {
                    this.f2446c.m2886i();
                }
            }
        }

        /* renamed from: e */
        public boolean m2659e() {
            this.f2446c.m2885h();
            try {
                return this.f2447d.mo2569a(this, this.f2446c);
            } finally {
                this.f2446c.m2886i();
            }
        }

        @Override // android.support.v7.view.AbstractC0527b
        /* renamed from: a */
        public void mo2651a(View view) {
            C0521j.this.f2422e.setCustomView(view);
            this.f2448e = new WeakReference<>(view);
        }

        @Override // android.support.v7.view.AbstractC0527b
        /* renamed from: a */
        public void mo2652a(CharSequence charSequence) {
            C0521j.this.f2422e.setSubtitle(charSequence);
        }

        @Override // android.support.v7.view.AbstractC0527b
        /* renamed from: b */
        public void mo2656b(CharSequence charSequence) {
            C0521j.this.f2422e.setTitle(charSequence);
        }

        @Override // android.support.v7.view.AbstractC0527b
        /* renamed from: a */
        public void mo2650a(int i) {
            mo2656b(C0521j.this.f2418a.getResources().getString(i));
        }

        @Override // android.support.v7.view.AbstractC0527b
        /* renamed from: b */
        public void mo2655b(int i) {
            mo2652a((CharSequence) C0521j.this.f2418a.getResources().getString(i));
        }

        @Override // android.support.v7.view.AbstractC0527b
        /* renamed from: f */
        public CharSequence mo2660f() {
            return C0521j.this.f2422e.getTitle();
        }

        @Override // android.support.v7.view.AbstractC0527b
        /* renamed from: g */
        public CharSequence mo2661g() {
            return C0521j.this.f2422e.getSubtitle();
        }

        @Override // android.support.v7.view.AbstractC0527b
        /* renamed from: a */
        public void mo2653a(boolean z) {
            super.mo2653a(z);
            C0521j.this.f2422e.setTitleOptional(z);
        }

        @Override // android.support.v7.view.AbstractC0527b
        /* renamed from: h */
        public boolean mo2662h() {
            return C0521j.this.f2422e.m2961d();
        }

        @Override // android.support.v7.view.AbstractC0527b
        /* renamed from: i */
        public View mo2663i() {
            if (this.f2448e != null) {
                return this.f2448e.get();
            }
            return null;
        }

        @Override // android.support.v7.view.menu.C0544h.a
        /* renamed from: a */
        public boolean mo2526a(C0544h c0544h, MenuItem menuItem) {
            if (this.f2447d != null) {
                return this.f2447d.mo2570a(this, menuItem);
            }
            return false;
        }

        @Override // android.support.v7.view.menu.C0544h.a
        /* renamed from: a */
        public void mo2520a(C0544h c0544h) {
            if (this.f2447d != null) {
                mo2658d();
                C0521j.this.f2422e.mo2958a();
            }
        }
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: c */
    public void mo2587c(boolean z) {
        if (!this.f2410A) {
            m2641f(z);
        }
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: a */
    public boolean mo2584a(int i, KeyEvent keyEvent) {
        Menu mo2654b;
        if (this.f2425h == null || (mo2654b = this.f2425h.mo2654b()) == null) {
            return false;
        }
        mo2654b.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return mo2654b.performShortcut(i, keyEvent, 0);
    }
}
