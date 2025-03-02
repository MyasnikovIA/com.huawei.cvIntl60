package android.support.v7.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.NavUtils;
import android.support.v4.view.KeyEventDispatcher;
import android.support.v4.view.LayoutInflaterCompat;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.PointerIconCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.p048a.p049a.C0488a;
import android.support.v7.view.AbstractC0527b;
import android.support.v7.view.C0529d;
import android.support.v7.view.C0530e;
import android.support.v7.view.C0531f;
import android.support.v7.view.WindowCallbackC0534i;
import android.support.v7.view.menu.C0542f;
import android.support.v7.view.menu.C0544h;
import android.support.v7.view.menu.InterfaceC0551o;
import android.support.v7.view.menu.InterfaceC0552p;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.C0687bk;
import android.support.v7.widget.C0692bp;
import android.support.v7.widget.C0695bs;
import android.support.v7.widget.ContentFrameLayout;
import android.support.v7.widget.InterfaceC0656ag;
import android.support.v7.widget.InterfaceC0662am;
import android.support.v7.widget.ViewStubCompat;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
class AppCompatDelegateImpl extends AbstractC0515d implements C0544h.a, LayoutInflater.Factory2 {

    /* renamed from: t */
    private static final boolean f2276t;

    /* renamed from: u */
    private static final int[] f2277u;

    /* renamed from: v */
    private static boolean f2278v;

    /* renamed from: B */
    private boolean f2280B;

    /* renamed from: C */
    private ViewGroup f2281C;

    /* renamed from: D */
    private TextView f2282D;

    /* renamed from: E */
    private View f2283E;

    /* renamed from: F */
    private boolean f2284F;

    /* renamed from: G */
    private boolean f2285G;

    /* renamed from: H */
    private boolean f2286H;

    /* renamed from: I */
    private PanelFeatureState[] f2287I;

    /* renamed from: J */
    private PanelFeatureState f2288J;

    /* renamed from: K */
    private boolean f2289K;

    /* renamed from: M */
    private boolean f2291M;

    /* renamed from: N */
    private C0508d f2292N;

    /* renamed from: P */
    private boolean f2294P;

    /* renamed from: Q */
    private Rect f2295Q;

    /* renamed from: R */
    private Rect f2296R;

    /* renamed from: S */
    private AppCompatViewInflater f2297S;

    /* renamed from: a */
    final Context f2298a;

    /* renamed from: b */
    final Window f2299b;

    /* renamed from: c */
    final Window.Callback f2300c;

    /* renamed from: d */
    final Window.Callback f2301d;

    /* renamed from: e */
    final InterfaceC0514c f2302e;

    /* renamed from: f */
    AbstractC0512a f2303f;

    /* renamed from: g */
    AbstractC0527b f2304g;

    /* renamed from: h */
    ActionBarContextView f2305h;

    /* renamed from: i */
    PopupWindow f2306i;

    /* renamed from: j */
    Runnable f2307j;

    /* renamed from: l */
    boolean f2309l;

    /* renamed from: m */
    boolean f2310m;

    /* renamed from: n */
    boolean f2311n;

    /* renamed from: o */
    boolean f2312o;

    /* renamed from: p */
    boolean f2313p;

    /* renamed from: q */
    boolean f2314q;

    /* renamed from: r */
    boolean f2315r;

    /* renamed from: s */
    int f2316s;

    /* renamed from: w */
    private CharSequence f2317w;

    /* renamed from: x */
    private InterfaceC0656ag f2318x;

    /* renamed from: y */
    private C0505a f2319y;

    /* renamed from: z */
    private C0510f f2320z;

    /* renamed from: k */
    ViewPropertyAnimatorCompat f2308k = null;

    /* renamed from: A */
    private boolean f2279A = true;

    /* renamed from: L */
    private int f2290L = -100;

    /* renamed from: O */
    private final Runnable f2293O = new Runnable() { // from class: android.support.v7.app.AppCompatDelegateImpl.2
        RunnableC04982() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if ((AppCompatDelegateImpl.this.f2316s & 1) != 0) {
                AppCompatDelegateImpl.this.m2543g(0);
            }
            if ((AppCompatDelegateImpl.this.f2316s & 4096) != 0) {
                AppCompatDelegateImpl.this.m2543g(108);
            }
            AppCompatDelegateImpl.this.f2315r = false;
            AppCompatDelegateImpl.this.f2316s = 0;
        }
    };

    static {
        f2276t = Build.VERSION.SDK_INT < 21;
        f2277u = new int[]{R.attr.windowBackground};
        if (f2276t && !f2278v) {
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: android.support.v7.app.AppCompatDelegateImpl.1

                /* renamed from: a */
                final /* synthetic */ Thread.UncaughtExceptionHandler f2321a;

                C04971(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
                    defaultUncaughtExceptionHandler = uncaughtExceptionHandler;
                }

                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread, Throwable th) {
                    if (m2554a(th)) {
                        Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                        notFoundException.initCause(th.getCause());
                        notFoundException.setStackTrace(th.getStackTrace());
                        defaultUncaughtExceptionHandler.uncaughtException(thread, notFoundException);
                        return;
                    }
                    defaultUncaughtExceptionHandler.uncaughtException(thread, th);
                }

                /* renamed from: a */
                private boolean m2554a(Throwable th) {
                    String message;
                    if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                        return false;
                    }
                    return message.contains("drawable") || message.contains("Drawable");
                }
            });
            f2278v = true;
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImpl$1 */
    static class C04971 implements Thread.UncaughtExceptionHandler {

        /* renamed from: a */
        final /* synthetic */ Thread.UncaughtExceptionHandler f2321a;

        C04971(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            defaultUncaughtExceptionHandler = uncaughtExceptionHandler;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (m2554a(th)) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                notFoundException.initCause(th.getCause());
                notFoundException.setStackTrace(th.getStackTrace());
                defaultUncaughtExceptionHandler.uncaughtException(thread, notFoundException);
                return;
            }
            defaultUncaughtExceptionHandler.uncaughtException(thread, th);
        }

        /* renamed from: a */
        private boolean m2554a(Throwable th) {
            String message;
            if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                return false;
            }
            return message.contains("drawable") || message.contains("Drawable");
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImpl$2 */
    class RunnableC04982 implements Runnable {
        RunnableC04982() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if ((AppCompatDelegateImpl.this.f2316s & 1) != 0) {
                AppCompatDelegateImpl.this.m2543g(0);
            }
            if ((AppCompatDelegateImpl.this.f2316s & 4096) != 0) {
                AppCompatDelegateImpl.this.m2543g(108);
            }
            AppCompatDelegateImpl.this.f2315r = false;
            AppCompatDelegateImpl.this.f2316s = 0;
        }
    }

    AppCompatDelegateImpl(Context context, Window window, InterfaceC0514c interfaceC0514c) {
        this.f2298a = context;
        this.f2299b = window;
        this.f2302e = interfaceC0514c;
        this.f2300c = this.f2299b.getCallback();
        if (this.f2300c instanceof C0507c) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        this.f2301d = new C0507c(this.f2300c);
        this.f2299b.setCallback(this.f2301d);
        C0687bk m4166a = C0687bk.m4166a(context, (AttributeSet) null, f2277u);
        Drawable m4176b = m4166a.m4176b(0);
        if (m4176b != null) {
            this.f2299b.setBackgroundDrawable(m4176b);
        }
        m4166a.m4172a();
    }

    @Override // android.support.v7.app.AbstractC0515d
    /* renamed from: a */
    public void mo2518a(Bundle bundle) {
        String str;
        if (this.f2300c instanceof Activity) {
            try {
                str = NavUtils.getParentActivityName((Activity) this.f2300c);
            } catch (IllegalArgumentException e) {
                str = null;
            }
            if (str != null) {
                AbstractC0512a m2542g = m2542g();
                if (m2542g == null) {
                    this.f2294P = true;
                } else {
                    m2542g.mo2587c(true);
                }
            }
        }
        if (bundle != null && this.f2290L == -100) {
            this.f2290L = bundle.getInt("appcompat:local_night_mode", -100);
        }
    }

    /* renamed from: f */
    public AbstractC0512a m2540f() {
        m2503p();
        return this.f2303f;
    }

    /* renamed from: g */
    final AbstractC0512a m2542g() {
        return this.f2303f;
    }

    /* renamed from: h */
    final Window.Callback m2545h() {
        return this.f2299b.getCallback();
    }

    /* renamed from: p */
    private void m2503p() {
        m2504q();
        if (this.f2309l && this.f2303f == null) {
            if (this.f2300c instanceof Activity) {
                this.f2303f = new C0521j((Activity) this.f2300c, this.f2310m);
            } else if (this.f2300c instanceof Dialog) {
                this.f2303f = new C0521j((Dialog) this.f2300c);
            }
            if (this.f2303f != null) {
                this.f2303f.mo2587c(this.f2294P);
            }
        }
    }

    /* renamed from: i */
    final Context m2547i() {
        Context context = null;
        AbstractC0512a m2540f = m2540f();
        if (m2540f != null) {
            context = m2540f.mo2579a();
        }
        if (context == null) {
            return this.f2298a;
        }
        return context;
    }

    @Override // android.support.v7.app.AbstractC0515d
    @Nullable
    /* renamed from: a */
    public <T extends View> T mo2514a(@IdRes int i) {
        m2504q();
        return (T) this.f2299b.findViewById(i);
    }

    @Override // android.support.v7.app.AbstractC0515d
    /* renamed from: a */
    public void mo2516a() {
        AbstractC0512a m2540f = m2540f();
        if (m2540f != null) {
            m2540f.mo2589d(false);
        }
        if (this.f2292N != null) {
            this.f2292N.m2576d();
        }
    }

    @Override // android.support.v7.app.AbstractC0515d
    /* renamed from: a */
    public void mo2521a(View view) {
        m2504q();
        ViewGroup viewGroup = (ViewGroup) this.f2281C.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f2300c.onContentChanged();
    }

    @Override // android.support.v7.app.AbstractC0515d
    /* renamed from: b */
    public void mo2530b(int i) {
        m2504q();
        ViewGroup viewGroup = (ViewGroup) this.f2281C.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f2298a).inflate(i, viewGroup);
        this.f2300c.onContentChanged();
    }

    @Override // android.support.v7.app.AbstractC0515d
    /* renamed from: a */
    public void mo2522a(View view, ViewGroup.LayoutParams layoutParams) {
        m2504q();
        ViewGroup viewGroup = (ViewGroup) this.f2281C.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f2300c.onContentChanged();
    }

    @Override // android.support.v7.app.AbstractC0515d
    /* renamed from: b */
    public void mo2532b(View view, ViewGroup.LayoutParams layoutParams) {
        m2504q();
        ((ViewGroup) this.f2281C.findViewById(R.id.content)).addView(view, layoutParams);
        this.f2300c.onContentChanged();
    }

    /* renamed from: q */
    private void m2504q() {
        if (!this.f2280B) {
            this.f2281C = m2505r();
            CharSequence m2548j = m2548j();
            if (!TextUtils.isEmpty(m2548j)) {
                if (this.f2318x != null) {
                    this.f2318x.setWindowTitle(m2548j);
                } else if (m2542g() != null) {
                    m2542g().mo2582a(m2548j);
                } else if (this.f2282D != null) {
                    this.f2282D.setText(m2548j);
                }
            }
            m2506s();
            m2523a(this.f2281C);
            this.f2280B = true;
            PanelFeatureState m2511a = m2511a(0, false);
            if (this.f2314q) {
                return;
            }
            if (m2511a == null || m2511a.f2338j == null) {
                m2500j(108);
            }
        }
    }

    /* renamed from: r */
    private ViewGroup m2505r() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        Context context;
        TypedArray obtainStyledAttributes = this.f2298a.obtainStyledAttributes(android.support.v7.appcompat.R.styleable.AppCompatTheme);
        if (!obtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowActionBar)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowNoTitle, false)) {
            mo2535c(1);
        } else if (obtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowActionBar, false)) {
            mo2535c(108);
        }
        if (obtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            mo2535c(109);
        }
        if (obtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            mo2535c(10);
        }
        this.f2312o = obtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.AppCompatTheme_android_windowIsFloating, false);
        obtainStyledAttributes.recycle();
        this.f2299b.getDecorView();
        LayoutInflater from = LayoutInflater.from(this.f2298a);
        if (!this.f2313p) {
            if (this.f2312o) {
                ViewGroup viewGroup3 = (ViewGroup) from.inflate(android.support.v7.appcompat.R.layout.abc_dialog_title_material, (ViewGroup) null);
                this.f2310m = false;
                this.f2309l = false;
                viewGroup2 = viewGroup3;
            } else if (this.f2309l) {
                TypedValue typedValue = new TypedValue();
                this.f2298a.getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.actionBarTheme, typedValue, true);
                if (typedValue.resourceId != 0) {
                    context = new C0529d(this.f2298a, typedValue.resourceId);
                } else {
                    context = this.f2298a;
                }
                ViewGroup viewGroup4 = (ViewGroup) LayoutInflater.from(context).inflate(android.support.v7.appcompat.R.layout.abc_screen_toolbar, (ViewGroup) null);
                this.f2318x = (InterfaceC0656ag) viewGroup4.findViewById(android.support.v7.appcompat.R.id.decor_content_parent);
                this.f2318x.setWindowCallback(m2545h());
                if (this.f2310m) {
                    this.f2318x.mo2971a(109);
                }
                if (this.f2284F) {
                    this.f2318x.mo2971a(2);
                }
                if (this.f2285G) {
                    this.f2318x.mo2971a(5);
                }
                viewGroup2 = viewGroup4;
            } else {
                viewGroup2 = null;
            }
        } else {
            if (this.f2311n) {
                viewGroup = (ViewGroup) from.inflate(android.support.v7.appcompat.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null);
            } else {
                viewGroup = (ViewGroup) from.inflate(android.support.v7.appcompat.R.layout.abc_screen_simple, (ViewGroup) null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new OnApplyWindowInsetsListener() { // from class: android.support.v7.app.AppCompatDelegateImpl.3
                    C04993() {
                    }

                    @Override // android.support.v4.view.OnApplyWindowInsetsListener
                    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
                        int m2544h = AppCompatDelegateImpl.this.m2544h(systemWindowInsetTop);
                        if (systemWindowInsetTop != m2544h) {
                            windowInsetsCompat = windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), m2544h, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                        }
                        return ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
                    }
                });
                viewGroup2 = viewGroup;
            } else {
                ((InterfaceC0662am) viewGroup).setOnFitSystemWindowsListener(new InterfaceC0662am.a() { // from class: android.support.v7.app.AppCompatDelegateImpl.4
                    C05004() {
                    }

                    @Override // android.support.v7.widget.InterfaceC0662am.a
                    /* renamed from: a */
                    public void mo2555a(Rect rect) {
                        rect.top = AppCompatDelegateImpl.this.m2544h(rect.top);
                    }
                });
                viewGroup2 = viewGroup;
            }
        }
        if (viewGroup2 == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f2309l + ", windowActionBarOverlay: " + this.f2310m + ", android:windowIsFloating: " + this.f2312o + ", windowActionModeOverlay: " + this.f2311n + ", windowNoTitle: " + this.f2313p + " }");
        }
        if (this.f2318x == null) {
            this.f2282D = (TextView) viewGroup2.findViewById(android.support.v7.appcompat.R.id.title);
        }
        C0695bs.m4246b(viewGroup2);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup2.findViewById(android.support.v7.appcompat.R.id.action_bar_activity_content);
        ViewGroup viewGroup5 = (ViewGroup) this.f2299b.findViewById(R.id.content);
        if (viewGroup5 != null) {
            while (viewGroup5.getChildCount() > 0) {
                View childAt = viewGroup5.getChildAt(0);
                viewGroup5.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup5.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup5 instanceof FrameLayout) {
                ((FrameLayout) viewGroup5).setForeground(null);
            }
        }
        this.f2299b.setContentView(viewGroup2);
        contentFrameLayout.setAttachListener(new ContentFrameLayout.InterfaceC0580a() { // from class: android.support.v7.app.AppCompatDelegateImpl.5
            C05015() {
            }

            @Override // android.support.v7.widget.ContentFrameLayout.InterfaceC0580a
            /* renamed from: a */
            public void mo2556a() {
            }

            @Override // android.support.v7.widget.ContentFrameLayout.InterfaceC0580a
            /* renamed from: b */
            public void mo2557b() {
                AppCompatDelegateImpl.this.m2553o();
            }
        });
        return viewGroup2;
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImpl$3 */
    class C04993 implements OnApplyWindowInsetsListener {
        C04993() {
        }

        @Override // android.support.v4.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int m2544h = AppCompatDelegateImpl.this.m2544h(systemWindowInsetTop);
            if (systemWindowInsetTop != m2544h) {
                windowInsetsCompat = windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), m2544h, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            }
            return ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImpl$4 */
    class C05004 implements InterfaceC0662am.a {
        C05004() {
        }

        @Override // android.support.v7.widget.InterfaceC0662am.a
        /* renamed from: a */
        public void mo2555a(Rect rect) {
            rect.top = AppCompatDelegateImpl.this.m2544h(rect.top);
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImpl$5 */
    class C05015 implements ContentFrameLayout.InterfaceC0580a {
        C05015() {
        }

        @Override // android.support.v7.widget.ContentFrameLayout.InterfaceC0580a
        /* renamed from: a */
        public void mo2556a() {
        }

        @Override // android.support.v7.widget.ContentFrameLayout.InterfaceC0580a
        /* renamed from: b */
        public void mo2557b() {
            AppCompatDelegateImpl.this.m2553o();
        }
    }

    /* renamed from: a */
    void m2523a(ViewGroup viewGroup) {
    }

    /* renamed from: s */
    private void m2506s() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.f2281C.findViewById(R.id.content);
        View decorView = this.f2299b.getDecorView();
        contentFrameLayout.m3055a(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f2298a.obtainStyledAttributes(android.support.v7.appcompat.R.styleable.AppCompatTheme);
        obtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    @Override // android.support.v7.app.AbstractC0515d
    /* renamed from: c */
    public boolean mo2535c(int i) {
        int m2501k = m2501k(i);
        if (this.f2313p && m2501k == 108) {
            return false;
        }
        if (this.f2309l && m2501k == 1) {
            this.f2309l = false;
        }
        switch (m2501k) {
            case 1:
                m2507t();
                this.f2313p = true;
                return true;
            case 2:
                m2507t();
                this.f2284F = true;
                return true;
            case 5:
                m2507t();
                this.f2285G = true;
                return true;
            case 10:
                m2507t();
                this.f2311n = true;
                return true;
            case 108:
                m2507t();
                this.f2309l = true;
                return true;
            case 109:
                m2507t();
                this.f2310m = true;
                return true;
            default:
                return this.f2299b.requestFeature(m2501k);
        }
    }

    @Override // android.support.v7.app.AbstractC0515d
    /* renamed from: a */
    public final void mo2524a(CharSequence charSequence) {
        this.f2317w = charSequence;
        if (this.f2318x != null) {
            this.f2318x.setWindowTitle(charSequence);
        } else if (m2542g() != null) {
            m2542g().mo2582a(charSequence);
        } else if (this.f2282D != null) {
            this.f2282D.setText(charSequence);
        }
    }

    /* renamed from: j */
    final CharSequence m2548j() {
        return this.f2300c instanceof Activity ? ((Activity) this.f2300c).getTitle() : this.f2317w;
    }

    /* renamed from: d */
    void m2537d(int i) {
        if (i == 108) {
            AbstractC0512a m2540f = m2540f();
            if (m2540f != null) {
                m2540f.mo2590e(false);
                return;
            }
            return;
        }
        if (i == 0) {
            PanelFeatureState m2511a = m2511a(i, true);
            if (m2511a.f2343o) {
                m2519a(m2511a, false);
            }
        }
    }

    /* renamed from: e */
    void m2539e(int i) {
        AbstractC0512a m2540f;
        if (i == 108 && (m2540f = m2540f()) != null) {
            m2540f.mo2590e(true);
        }
    }

    @Override // android.support.v7.view.menu.C0544h.a
    /* renamed from: a */
    public boolean mo2526a(C0544h c0544h, MenuItem menuItem) {
        PanelFeatureState m2512a;
        Window.Callback m2545h = m2545h();
        if (m2545h == null || this.f2314q || (m2512a = m2512a((Menu) c0544h.mo2894q())) == null) {
            return false;
        }
        return m2545h.onMenuItemSelected(m2512a.f2329a, menuItem);
    }

    @Override // android.support.v7.view.menu.C0544h.a
    /* renamed from: a */
    public void mo2520a(C0544h c0544h) {
        m2491a(c0544h, true);
    }

    /* renamed from: a */
    public AbstractC0527b m2513a(@NonNull AbstractC0527b.a aVar) {
        if (aVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (this.f2304g != null) {
            this.f2304g.mo2657c();
        }
        C0506b c0506b = new C0506b(aVar);
        AbstractC0512a m2540f = m2540f();
        if (m2540f != null) {
            this.f2304g = m2540f.mo2580a(c0506b);
            if (this.f2304g != null && this.f2302e != null) {
                this.f2302e.mo2606a(this.f2304g);
            }
        }
        if (this.f2304g == null) {
            this.f2304g = m2528b(c0506b);
        }
        return this.f2304g;
    }

    @Override // android.support.v7.app.AbstractC0515d
    /* renamed from: b */
    public void mo2529b() {
        AbstractC0512a m2540f = m2540f();
        if (m2540f == null || !m2540f.mo2586b()) {
            m2500j(0);
        }
    }

    /* renamed from: b */
    AbstractC0527b m2528b(@NonNull AbstractC0527b.a aVar) {
        AbstractC0527b abstractC0527b;
        Context context;
        m2551m();
        if (this.f2304g != null) {
            this.f2304g.mo2657c();
        }
        if (!(aVar instanceof C0506b)) {
            aVar = new C0506b(aVar);
        }
        if (this.f2302e == null || this.f2314q) {
            abstractC0527b = null;
        } else {
            try {
                abstractC0527b = this.f2302e.mo2605a(aVar);
            } catch (AbstractMethodError e) {
                abstractC0527b = null;
            }
        }
        if (abstractC0527b != null) {
            this.f2304g = abstractC0527b;
        } else {
            if (this.f2305h == null) {
                if (this.f2312o) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.f2298a.getTheme();
                    theme.resolveAttribute(android.support.v7.appcompat.R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme newTheme = this.f2298a.getResources().newTheme();
                        newTheme.setTo(theme);
                        newTheme.applyStyle(typedValue.resourceId, true);
                        context = new C0529d(this.f2298a, 0);
                        context.getTheme().setTo(newTheme);
                    } else {
                        context = this.f2298a;
                    }
                    this.f2305h = new ActionBarContextView(context);
                    this.f2306i = new PopupWindow(context, (AttributeSet) null, android.support.v7.appcompat.R.attr.actionModePopupWindowStyle);
                    PopupWindowCompat.setWindowLayoutType(this.f2306i, 2);
                    this.f2306i.setContentView(this.f2305h);
                    this.f2306i.setWidth(-1);
                    context.getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.actionBarSize, typedValue, true);
                    this.f2305h.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                    this.f2306i.setHeight(-2);
                    this.f2307j = new Runnable() { // from class: android.support.v7.app.AppCompatDelegateImpl.6
                        RunnableC05026() {
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            AppCompatDelegateImpl.this.f2306i.showAtLocation(AppCompatDelegateImpl.this.f2305h, 55, 0, 0);
                            AppCompatDelegateImpl.this.m2551m();
                            if (AppCompatDelegateImpl.this.m2549k()) {
                                AppCompatDelegateImpl.this.f2305h.setAlpha(0.0f);
                                AppCompatDelegateImpl.this.f2308k = ViewCompat.animate(AppCompatDelegateImpl.this.f2305h).alpha(1.0f);
                                AppCompatDelegateImpl.this.f2308k.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.app.AppCompatDelegateImpl.6.1
                                    AnonymousClass1() {
                                    }

                                    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                                    public void onAnimationStart(View view) {
                                        AppCompatDelegateImpl.this.f2305h.setVisibility(0);
                                    }

                                    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                                    public void onAnimationEnd(View view) {
                                        AppCompatDelegateImpl.this.f2305h.setAlpha(1.0f);
                                        AppCompatDelegateImpl.this.f2308k.setListener(null);
                                        AppCompatDelegateImpl.this.f2308k = null;
                                    }
                                });
                                return;
                            }
                            AppCompatDelegateImpl.this.f2305h.setAlpha(1.0f);
                            AppCompatDelegateImpl.this.f2305h.setVisibility(0);
                        }

                        /* renamed from: android.support.v7.app.AppCompatDelegateImpl$6$1 */
                        class AnonymousClass1 extends ViewPropertyAnimatorListenerAdapter {
                            AnonymousClass1() {
                            }

                            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                            public void onAnimationStart(View view) {
                                AppCompatDelegateImpl.this.f2305h.setVisibility(0);
                            }

                            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                            public void onAnimationEnd(View view) {
                                AppCompatDelegateImpl.this.f2305h.setAlpha(1.0f);
                                AppCompatDelegateImpl.this.f2308k.setListener(null);
                                AppCompatDelegateImpl.this.f2308k = null;
                            }
                        }
                    };
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.f2281C.findViewById(android.support.v7.appcompat.R.id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(m2547i()));
                        this.f2305h = (ActionBarContextView) viewStubCompat.m3829a();
                    }
                }
            }
            if (this.f2305h != null) {
                m2551m();
                this.f2305h.m2960c();
                C0530e c0530e = new C0530e(this.f2305h.getContext(), this.f2305h, aVar, this.f2306i == null);
                if (aVar.mo2569a(c0530e, c0530e.mo2654b())) {
                    c0530e.mo2658d();
                    this.f2305h.m2957a(c0530e);
                    this.f2304g = c0530e;
                    if (m2549k()) {
                        this.f2305h.setAlpha(0.0f);
                        this.f2308k = ViewCompat.animate(this.f2305h).alpha(1.0f);
                        this.f2308k.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.app.AppCompatDelegateImpl.7
                            C05037() {
                            }

                            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                            public void onAnimationStart(View view) {
                                AppCompatDelegateImpl.this.f2305h.setVisibility(0);
                                AppCompatDelegateImpl.this.f2305h.sendAccessibilityEvent(32);
                                if (AppCompatDelegateImpl.this.f2305h.getParent() instanceof View) {
                                    ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.f2305h.getParent());
                                }
                            }

                            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                            public void onAnimationEnd(View view) {
                                AppCompatDelegateImpl.this.f2305h.setAlpha(1.0f);
                                AppCompatDelegateImpl.this.f2308k.setListener(null);
                                AppCompatDelegateImpl.this.f2308k = null;
                            }
                        });
                    } else {
                        this.f2305h.setAlpha(1.0f);
                        this.f2305h.setVisibility(0);
                        this.f2305h.sendAccessibilityEvent(32);
                        if (this.f2305h.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View) this.f2305h.getParent());
                        }
                    }
                    if (this.f2306i != null) {
                        this.f2299b.getDecorView().post(this.f2307j);
                    }
                } else {
                    this.f2304g = null;
                }
            }
        }
        if (this.f2304g != null && this.f2302e != null) {
            this.f2302e.mo2606a(this.f2304g);
        }
        return this.f2304g;
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImpl$6 */
    class RunnableC05026 implements Runnable {
        RunnableC05026() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl.this.f2306i.showAtLocation(AppCompatDelegateImpl.this.f2305h, 55, 0, 0);
            AppCompatDelegateImpl.this.m2551m();
            if (AppCompatDelegateImpl.this.m2549k()) {
                AppCompatDelegateImpl.this.f2305h.setAlpha(0.0f);
                AppCompatDelegateImpl.this.f2308k = ViewCompat.animate(AppCompatDelegateImpl.this.f2305h).alpha(1.0f);
                AppCompatDelegateImpl.this.f2308k.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.app.AppCompatDelegateImpl.6.1
                    AnonymousClass1() {
                    }

                    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                    public void onAnimationStart(View view) {
                        AppCompatDelegateImpl.this.f2305h.setVisibility(0);
                    }

                    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                    public void onAnimationEnd(View view) {
                        AppCompatDelegateImpl.this.f2305h.setAlpha(1.0f);
                        AppCompatDelegateImpl.this.f2308k.setListener(null);
                        AppCompatDelegateImpl.this.f2308k = null;
                    }
                });
                return;
            }
            AppCompatDelegateImpl.this.f2305h.setAlpha(1.0f);
            AppCompatDelegateImpl.this.f2305h.setVisibility(0);
        }

        /* renamed from: android.support.v7.app.AppCompatDelegateImpl$6$1 */
        class AnonymousClass1 extends ViewPropertyAnimatorListenerAdapter {
            AnonymousClass1() {
            }

            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
            public void onAnimationStart(View view) {
                AppCompatDelegateImpl.this.f2305h.setVisibility(0);
            }

            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                AppCompatDelegateImpl.this.f2305h.setAlpha(1.0f);
                AppCompatDelegateImpl.this.f2308k.setListener(null);
                AppCompatDelegateImpl.this.f2308k = null;
            }
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImpl$7 */
    class C05037 extends ViewPropertyAnimatorListenerAdapter {
        C05037() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            AppCompatDelegateImpl.this.f2305h.setVisibility(0);
            AppCompatDelegateImpl.this.f2305h.sendAccessibilityEvent(32);
            if (AppCompatDelegateImpl.this.f2305h.getParent() instanceof View) {
                ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.f2305h.getParent());
            }
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            AppCompatDelegateImpl.this.f2305h.setAlpha(1.0f);
            AppCompatDelegateImpl.this.f2308k.setListener(null);
            AppCompatDelegateImpl.this.f2308k = null;
        }
    }

    /* renamed from: k */
    final boolean m2549k() {
        return this.f2280B && this.f2281C != null && ViewCompat.isLaidOut(this.f2281C);
    }

    /* renamed from: l */
    public boolean m2550l() {
        return this.f2279A;
    }

    /* renamed from: m */
    void m2551m() {
        if (this.f2308k != null) {
            this.f2308k.cancel();
        }
    }

    /* renamed from: n */
    boolean m2552n() {
        if (this.f2304g != null) {
            this.f2304g.mo2657c();
            return true;
        }
        AbstractC0512a m2540f = m2540f();
        return m2540f != null && m2540f.mo2588c();
    }

    /* renamed from: a */
    boolean m2525a(int i, KeyEvent keyEvent) {
        AbstractC0512a m2540f = m2540f();
        if (m2540f != null && m2540f.mo2584a(i, keyEvent)) {
            return true;
        }
        if (this.f2288J != null && m2493a(this.f2288J, keyEvent.getKeyCode(), keyEvent, 1)) {
            if (this.f2288J == null) {
                return true;
            }
            this.f2288J.f2342n = true;
            return true;
        }
        if (this.f2288J == null) {
            PanelFeatureState m2511a = m2511a(0, true);
            m2496b(m2511a, keyEvent);
            boolean m2493a = m2493a(m2511a, keyEvent.getKeyCode(), keyEvent, 1);
            m2511a.f2341m = false;
            if (m2493a) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    boolean m2527a(KeyEvent keyEvent) {
        View decorView;
        if (((this.f2300c instanceof KeyEventDispatcher.Component) || (this.f2300c instanceof DialogC0516e)) && (decorView = this.f2299b.getDecorView()) != null && KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f2300c.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? m2536c(keyCode, keyEvent) : m2533b(keyCode, keyEvent);
    }

    /* renamed from: b */
    boolean m2533b(int i, KeyEvent keyEvent) {
        switch (i) {
            case 4:
                boolean z = this.f2289K;
                this.f2289K = false;
                PanelFeatureState m2511a = m2511a(0, false);
                if (m2511a != null && m2511a.f2343o) {
                    if (z) {
                        return true;
                    }
                    m2519a(m2511a, true);
                    return true;
                }
                if (m2552n()) {
                    return true;
                }
                break;
            case 82:
                m2499e(0, keyEvent);
                return true;
        }
        return false;
    }

    /* renamed from: c */
    boolean m2536c(int i, KeyEvent keyEvent) {
        switch (i) {
            case 4:
                this.f2289K = (keyEvent.getFlags() & 128) != 0;
                break;
            case 82:
                m2498d(0, keyEvent);
                return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public View m2515a(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        boolean z;
        boolean m2494a;
        if (this.f2297S == null) {
            String string = this.f2298a.obtainStyledAttributes(android.support.v7.appcompat.R.styleable.AppCompatTheme).getString(android.support.v7.appcompat.R.styleable.AppCompatTheme_viewInflaterClass);
            if (string == null || AppCompatViewInflater.class.getName().equals(string)) {
                this.f2297S = new AppCompatViewInflater();
            } else {
                try {
                    this.f2297S = (AppCompatViewInflater) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f2297S = new AppCompatViewInflater();
                }
            }
        }
        if (f2276t) {
            if (attributeSet instanceof XmlPullParser) {
                m2494a = ((XmlPullParser) attributeSet).getDepth() > 1;
            } else {
                m2494a = m2494a((ViewParent) view);
            }
            z = m2494a;
        } else {
            z = false;
        }
        return this.f2297S.createView(view, str, context, attributeSet, z, f2276t, true, C0692bp.m4214a());
    }

    /* renamed from: a */
    private boolean m2494a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f2299b.getDecorView();
        for (ViewParent viewParent2 = viewParent; viewParent2 != null; viewParent2 = viewParent2.getParent()) {
            if (viewParent2 == decorView || !(viewParent2 instanceof View) || ViewCompat.isAttachedToWindow((View) viewParent2)) {
                return false;
            }
        }
        return true;
    }

    @Override // android.support.v7.app.AbstractC0515d
    /* renamed from: c */
    public void mo2534c() {
        LayoutInflater from = LayoutInflater.from(this.f2298a);
        if (from.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(from, this);
        } else if (!(from.getFactory2() instanceof AppCompatDelegateImpl)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return m2515a(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* renamed from: a */
    private void m2490a(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        ViewGroup.LayoutParams layoutParams;
        int i = -1;
        if (!panelFeatureState.f2343o && !this.f2314q) {
            if (panelFeatureState.f2329a == 0) {
                if ((this.f2298a.getResources().getConfiguration().screenLayout & 15) == 4) {
                    return;
                }
            }
            Window.Callback m2545h = m2545h();
            if (m2545h != null && !m2545h.onMenuOpened(panelFeatureState.f2329a, panelFeatureState.f2338j)) {
                m2519a(panelFeatureState, true);
                return;
            }
            WindowManager windowManager = (WindowManager) this.f2298a.getSystemService("window");
            if (windowManager != null && m2496b(panelFeatureState, keyEvent)) {
                if (panelFeatureState.f2335g == null || panelFeatureState.f2345q) {
                    if (panelFeatureState.f2335g == null) {
                        if (!m2492a(panelFeatureState) || panelFeatureState.f2335g == null) {
                            return;
                        }
                    } else if (panelFeatureState.f2345q && panelFeatureState.f2335g.getChildCount() > 0) {
                        panelFeatureState.f2335g.removeAllViews();
                    }
                    if (m2497c(panelFeatureState) && panelFeatureState.m2561a()) {
                        ViewGroup.LayoutParams layoutParams2 = panelFeatureState.f2336h.getLayoutParams();
                        ViewGroup.LayoutParams layoutParams3 = layoutParams2 == null ? new ViewGroup.LayoutParams(-2, -2) : layoutParams2;
                        panelFeatureState.f2335g.setBackgroundResource(panelFeatureState.f2330b);
                        ViewParent parent = panelFeatureState.f2336h.getParent();
                        if (parent != null && (parent instanceof ViewGroup)) {
                            ((ViewGroup) parent).removeView(panelFeatureState.f2336h);
                        }
                        panelFeatureState.f2335g.addView(panelFeatureState.f2336h, layoutParams3);
                        if (!panelFeatureState.f2336h.hasFocus()) {
                            panelFeatureState.f2336h.requestFocus();
                        }
                        i = -2;
                    } else {
                        return;
                    }
                } else if (panelFeatureState.f2337i == null || (layoutParams = panelFeatureState.f2337i.getLayoutParams()) == null || layoutParams.width != -1) {
                    i = -2;
                }
                panelFeatureState.f2342n = false;
                WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i, -2, panelFeatureState.f2332d, panelFeatureState.f2333e, PointerIconCompat.TYPE_HAND, 8519680, -3);
                layoutParams4.gravity = panelFeatureState.f2331c;
                layoutParams4.windowAnimations = panelFeatureState.f2334f;
                windowManager.addView(panelFeatureState.f2335g, layoutParams4);
                panelFeatureState.f2343o = true;
            }
        }
    }

    /* renamed from: a */
    private boolean m2492a(PanelFeatureState panelFeatureState) {
        panelFeatureState.m2559a(m2547i());
        panelFeatureState.f2335g = new C0509e(panelFeatureState.f2340l);
        panelFeatureState.f2331c = 81;
        return true;
    }

    /* renamed from: a */
    private void m2491a(C0544h c0544h, boolean z) {
        if (this.f2318x != null && this.f2318x.mo2977e() && (!ViewConfiguration.get(this.f2298a).hasPermanentMenuKey() || this.f2318x.mo2979g())) {
            Window.Callback m2545h = m2545h();
            if (!this.f2318x.mo2978f() || !z) {
                if (m2545h != null && !this.f2314q) {
                    if (this.f2315r && (this.f2316s & 1) != 0) {
                        this.f2299b.getDecorView().removeCallbacks(this.f2293O);
                        this.f2293O.run();
                    }
                    PanelFeatureState m2511a = m2511a(0, true);
                    if (m2511a.f2338j != null && !m2511a.f2346r && m2545h.onPreparePanel(0, m2511a.f2337i, m2511a.f2338j)) {
                        m2545h.onMenuOpened(108, m2511a.f2338j);
                        this.f2318x.mo2980h();
                        return;
                    }
                    return;
                }
                return;
            }
            this.f2318x.mo2981i();
            if (!this.f2314q) {
                m2545h.onPanelClosed(108, m2511a(0, true).f2338j);
                return;
            }
            return;
        }
        PanelFeatureState m2511a2 = m2511a(0, true);
        m2511a2.f2345q = true;
        m2519a(m2511a2, false);
        m2490a(m2511a2, (KeyEvent) null);
    }

    /* renamed from: b */
    private boolean m2495b(PanelFeatureState panelFeatureState) {
        Context c0529d;
        Context context = this.f2298a;
        if ((panelFeatureState.f2329a == 0 || panelFeatureState.f2329a == 108) && this.f2318x != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(android.support.v7.appcompat.R.attr.actionBarTheme, typedValue, true);
            Resources.Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(android.support.v7.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(android.support.v7.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (theme2 == null) {
                    theme2 = context.getResources().newTheme();
                    theme2.setTo(theme);
                }
                theme2.applyStyle(typedValue.resourceId, true);
            }
            Resources.Theme theme3 = theme2;
            if (theme3 != null) {
                c0529d = new C0529d(context, 0);
                c0529d.getTheme().setTo(theme3);
                C0544h c0544h = new C0544h(c0529d);
                c0544h.mo2857a(this);
                panelFeatureState.m2560a(c0544h);
                return true;
            }
        }
        c0529d = context;
        C0544h c0544h2 = new C0544h(c0529d);
        c0544h2.mo2857a(this);
        panelFeatureState.m2560a(c0544h2);
        return true;
    }

    /* renamed from: c */
    private boolean m2497c(PanelFeatureState panelFeatureState) {
        if (panelFeatureState.f2337i != null) {
            panelFeatureState.f2336h = panelFeatureState.f2337i;
            return true;
        }
        if (panelFeatureState.f2338j == null) {
            return false;
        }
        if (this.f2320z == null) {
            this.f2320z = new C0510f();
        }
        panelFeatureState.f2336h = (View) panelFeatureState.m2558a(this.f2320z);
        return panelFeatureState.f2336h != null;
    }

    /* renamed from: b */
    private boolean m2496b(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        if (this.f2314q) {
            return false;
        }
        if (panelFeatureState.f2341m) {
            return true;
        }
        if (this.f2288J != null && this.f2288J != panelFeatureState) {
            m2519a(this.f2288J, false);
        }
        Window.Callback m2545h = m2545h();
        if (m2545h != null) {
            panelFeatureState.f2337i = m2545h.onCreatePanelView(panelFeatureState.f2329a);
        }
        boolean z = panelFeatureState.f2329a == 0 || panelFeatureState.f2329a == 108;
        if (z && this.f2318x != null) {
            this.f2318x.mo2982j();
        }
        if (panelFeatureState.f2337i == null && (!z || !(m2542g() instanceof C0518g))) {
            if (panelFeatureState.f2338j == null || panelFeatureState.f2346r) {
                if (panelFeatureState.f2338j == null && (!m2495b(panelFeatureState) || panelFeatureState.f2338j == null)) {
                    return false;
                }
                if (z && this.f2318x != null) {
                    if (this.f2319y == null) {
                        this.f2319y = new C0505a();
                    }
                    this.f2318x.mo2972a(panelFeatureState.f2338j, this.f2319y);
                }
                panelFeatureState.f2338j.m2885h();
                if (!m2545h.onCreatePanelMenu(panelFeatureState.f2329a, panelFeatureState.f2338j)) {
                    panelFeatureState.m2560a((C0544h) null);
                    if (!z || this.f2318x == null) {
                        return false;
                    }
                    this.f2318x.mo2972a(null, this.f2319y);
                    return false;
                }
                panelFeatureState.f2346r = false;
            }
            panelFeatureState.f2338j.m2885h();
            if (panelFeatureState.f2347s != null) {
                panelFeatureState.f2338j.m2878d(panelFeatureState.f2347s);
                panelFeatureState.f2347s = null;
            }
            if (!m2545h.onPreparePanel(0, panelFeatureState.f2337i, panelFeatureState.f2338j)) {
                if (z && this.f2318x != null) {
                    this.f2318x.mo2972a(null, this.f2319y);
                }
                panelFeatureState.f2338j.m2886i();
                return false;
            }
            panelFeatureState.f2344p = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.f2338j.setQwertyMode(panelFeatureState.f2344p);
            panelFeatureState.f2338j.m2886i();
        }
        panelFeatureState.f2341m = true;
        panelFeatureState.f2342n = false;
        this.f2288J = panelFeatureState;
        return true;
    }

    /* renamed from: b */
    void m2531b(C0544h c0544h) {
        if (!this.f2286H) {
            this.f2286H = true;
            this.f2318x.mo2983k();
            Window.Callback m2545h = m2545h();
            if (m2545h != null && !this.f2314q) {
                m2545h.onPanelClosed(108, c0544h);
            }
            this.f2286H = false;
        }
    }

    /* renamed from: f */
    void m2541f(int i) {
        m2519a(m2511a(i, true), true);
    }

    /* renamed from: a */
    void m2519a(PanelFeatureState panelFeatureState, boolean z) {
        if (z && panelFeatureState.f2329a == 0 && this.f2318x != null && this.f2318x.mo2978f()) {
            m2531b(panelFeatureState.f2338j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f2298a.getSystemService("window");
        if (windowManager != null && panelFeatureState.f2343o && panelFeatureState.f2335g != null) {
            windowManager.removeView(panelFeatureState.f2335g);
            if (z) {
                m2517a(panelFeatureState.f2329a, panelFeatureState, null);
            }
        }
        panelFeatureState.f2341m = false;
        panelFeatureState.f2342n = false;
        panelFeatureState.f2343o = false;
        panelFeatureState.f2336h = null;
        panelFeatureState.f2345q = true;
        if (this.f2288J == panelFeatureState) {
            this.f2288J = null;
        }
    }

    /* renamed from: d */
    private boolean m2498d(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            PanelFeatureState m2511a = m2511a(i, true);
            if (!m2511a.f2343o) {
                return m2496b(m2511a, keyEvent);
            }
        }
        return false;
    }

    /* renamed from: e */
    private boolean m2499e(int i, KeyEvent keyEvent) {
        boolean z;
        boolean z2 = true;
        if (this.f2304g != null) {
            return false;
        }
        PanelFeatureState m2511a = m2511a(i, true);
        if (i == 0 && this.f2318x != null && this.f2318x.mo2977e() && !ViewConfiguration.get(this.f2298a).hasPermanentMenuKey()) {
            if (!this.f2318x.mo2978f()) {
                if (!this.f2314q && m2496b(m2511a, keyEvent)) {
                    z2 = this.f2318x.mo2980h();
                }
                z2 = false;
            } else {
                z2 = this.f2318x.mo2981i();
            }
        } else if (m2511a.f2343o || m2511a.f2342n) {
            boolean z3 = m2511a.f2343o;
            m2519a(m2511a, true);
            z2 = z3;
        } else {
            if (m2511a.f2341m) {
                if (m2511a.f2346r) {
                    m2511a.f2341m = false;
                    z = m2496b(m2511a, keyEvent);
                } else {
                    z = true;
                }
                if (z) {
                    m2490a(m2511a, keyEvent);
                }
            }
            z2 = false;
        }
        if (z2) {
            AudioManager audioManager = (AudioManager) this.f2298a.getSystemService("audio");
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
            } else {
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
            }
        }
        return z2;
    }

    /* renamed from: a */
    void m2517a(int i, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i >= 0 && i < this.f2287I.length) {
                panelFeatureState = this.f2287I[i];
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.f2338j;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.f2343o) && !this.f2314q) {
            this.f2300c.onPanelClosed(i, menu);
        }
    }

    /* renamed from: a */
    PanelFeatureState m2512a(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.f2287I;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null && panelFeatureState.f2338j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    /* renamed from: a */
    protected PanelFeatureState m2511a(int i, boolean z) {
        PanelFeatureState[] panelFeatureStateArr = this.f2287I;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.f2287I = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i);
        panelFeatureStateArr[i] = panelFeatureState2;
        return panelFeatureState2;
    }

    /* renamed from: a */
    private boolean m2493a(PanelFeatureState panelFeatureState, int i, KeyEvent keyEvent, int i2) {
        boolean z = false;
        if (!keyEvent.isSystem()) {
            if ((panelFeatureState.f2341m || m2496b(panelFeatureState, keyEvent)) && panelFeatureState.f2338j != null) {
                z = panelFeatureState.f2338j.performShortcut(i, keyEvent, i2);
            }
            if (z && (i2 & 1) == 0 && this.f2318x == null) {
                m2519a(panelFeatureState, true);
            }
        }
        return z;
    }

    /* renamed from: j */
    private void m2500j(int i) {
        this.f2316s |= 1 << i;
        if (!this.f2315r) {
            ViewCompat.postOnAnimation(this.f2299b.getDecorView(), this.f2293O);
            this.f2315r = true;
        }
    }

    /* renamed from: g */
    void m2543g(int i) {
        PanelFeatureState m2511a;
        PanelFeatureState m2511a2 = m2511a(i, true);
        if (m2511a2.f2338j != null) {
            Bundle bundle = new Bundle();
            m2511a2.f2338j.m2873c(bundle);
            if (bundle.size() > 0) {
                m2511a2.f2347s = bundle;
            }
            m2511a2.f2338j.m2885h();
            m2511a2.f2338j.clear();
        }
        m2511a2.f2346r = true;
        m2511a2.f2345q = true;
        if ((i == 108 || i == 0) && this.f2318x != null && (m2511a = m2511a(0, false)) != null) {
            m2511a.f2341m = false;
            m2496b(m2511a, (KeyEvent) null);
        }
    }

    /* renamed from: h */
    int m2544h(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        if (this.f2305h == null || !(this.f2305h.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f2305h.getLayoutParams();
            if (this.f2305h.isShown()) {
                if (this.f2295Q == null) {
                    this.f2295Q = new Rect();
                    this.f2296R = new Rect();
                }
                Rect rect = this.f2295Q;
                Rect rect2 = this.f2296R;
                rect.set(0, i, 0, 0);
                C0695bs.m4244a(this.f2281C, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i : 0)) {
                    marginLayoutParams.topMargin = i;
                    if (this.f2283E == null) {
                        this.f2283E = new View(this.f2298a);
                        this.f2283E.setBackgroundColor(this.f2298a.getResources().getColor(android.support.v7.appcompat.R.color.abc_input_method_navigation_guard));
                        this.f2281C.addView(this.f2283E, -1, new ViewGroup.LayoutParams(-1, i));
                        z2 = true;
                    } else {
                        ViewGroup.LayoutParams layoutParams = this.f2283E.getLayoutParams();
                        if (layoutParams.height != i) {
                            layoutParams.height = i;
                            this.f2283E.setLayoutParams(layoutParams);
                        }
                        z2 = true;
                    }
                } else {
                    z2 = false;
                }
                boolean z4 = this.f2283E != null;
                if (!this.f2311n && z4) {
                    i = 0;
                }
                z3 = z4;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = true;
                z3 = false;
            } else {
                z2 = false;
                z3 = false;
            }
            if (z2) {
                this.f2305h.setLayoutParams(marginLayoutParams);
            }
            z = z3;
        }
        if (this.f2283E != null) {
            this.f2283E.setVisibility(z ? 0 : 8);
        }
        return i;
    }

    /* renamed from: t */
    private void m2507t() {
        if (this.f2280B) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    /* renamed from: k */
    private int m2501k(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            return 109;
        }
        return i;
    }

    /* renamed from: o */
    void m2553o() {
        if (this.f2318x != null) {
            this.f2318x.mo2983k();
        }
        if (this.f2306i != null) {
            this.f2299b.getDecorView().removeCallbacks(this.f2307j);
            if (this.f2306i.isShowing()) {
                try {
                    this.f2306i.dismiss();
                } catch (IllegalArgumentException e) {
                }
            }
            this.f2306i = null;
        }
        m2551m();
        PanelFeatureState m2511a = m2511a(0, false);
        if (m2511a != null && m2511a.f2338j != null) {
            m2511a.f2338j.close();
        }
    }

    @Override // android.support.v7.app.AbstractC0515d
    /* renamed from: d */
    public boolean mo2538d() {
        boolean z = false;
        int m2508u = m2508u();
        int m2546i = m2546i(m2508u);
        if (m2546i != -1) {
            z = m2502l(m2546i);
        }
        if (m2508u == 0) {
            m2509v();
            this.f2292N.m2575c();
        }
        this.f2291M = true;
        return z;
    }

    /* renamed from: i */
    int m2546i(int i) {
        switch (i) {
            case -100:
                return -1;
            case 0:
                if (Build.VERSION.SDK_INT >= 23 && ((UiModeManager) this.f2298a.getSystemService(UiModeManager.class)).getNightMode() == 0) {
                    return -1;
                }
                m2509v();
                return this.f2292N.m2573a();
            default:
                return i;
        }
    }

    /* renamed from: u */
    private int m2508u() {
        return this.f2290L != -100 ? this.f2290L : m2609e();
    }

    /* renamed from: l */
    private boolean m2502l(int i) {
        Resources resources = this.f2298a.getResources();
        Configuration configuration = resources.getConfiguration();
        int i2 = configuration.uiMode & 48;
        int i3 = i == 2 ? 32 : 16;
        if (i2 != i3) {
            if (m2510w()) {
                ((Activity) this.f2298a).recreate();
            } else {
                Configuration configuration2 = new Configuration(configuration);
                DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
                resources.updateConfiguration(configuration2, displayMetrics);
                if (Build.VERSION.SDK_INT < 26) {
                    C0517f.m2614a(resources);
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: v */
    private void m2509v() {
        if (this.f2292N == null) {
            this.f2292N = new C0508d(C0520i.m2623a(this.f2298a));
        }
    }

    /* renamed from: w */
    private boolean m2510w() {
        if (!this.f2291M || !(this.f2298a instanceof Activity)) {
            return false;
        }
        try {
            return (this.f2298a.getPackageManager().getActivityInfo(new ComponentName(this.f2298a, this.f2298a.getClass()), 0).configChanges & 512) == 0;
        } catch (PackageManager.NameNotFoundException e) {
            Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
            return true;
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImpl$b */
    class C0506b implements AbstractC0527b.a {

        /* renamed from: b */
        private AbstractC0527b.a f2353b;

        public C0506b(AbstractC0527b.a aVar) {
            this.f2353b = aVar;
        }

        @Override // android.support.v7.view.AbstractC0527b.a
        /* renamed from: a */
        public boolean mo2569a(AbstractC0527b abstractC0527b, Menu menu) {
            return this.f2353b.mo2569a(abstractC0527b, menu);
        }

        @Override // android.support.v7.view.AbstractC0527b.a
        /* renamed from: b */
        public boolean mo2571b(AbstractC0527b abstractC0527b, Menu menu) {
            return this.f2353b.mo2571b(abstractC0527b, menu);
        }

        @Override // android.support.v7.view.AbstractC0527b.a
        /* renamed from: a */
        public boolean mo2570a(AbstractC0527b abstractC0527b, MenuItem menuItem) {
            return this.f2353b.mo2570a(abstractC0527b, menuItem);
        }

        @Override // android.support.v7.view.AbstractC0527b.a
        /* renamed from: a */
        public void mo2568a(AbstractC0527b abstractC0527b) {
            this.f2353b.mo2568a(abstractC0527b);
            if (AppCompatDelegateImpl.this.f2306i != null) {
                AppCompatDelegateImpl.this.f2299b.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.f2307j);
            }
            if (AppCompatDelegateImpl.this.f2305h != null) {
                AppCompatDelegateImpl.this.m2551m();
                AppCompatDelegateImpl.this.f2308k = ViewCompat.animate(AppCompatDelegateImpl.this.f2305h).alpha(0.0f);
                AppCompatDelegateImpl.this.f2308k.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.app.AppCompatDelegateImpl.b.1
                    AnonymousClass1() {
                    }

                    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                    public void onAnimationEnd(View view) {
                        AppCompatDelegateImpl.this.f2305h.setVisibility(8);
                        if (AppCompatDelegateImpl.this.f2306i != null) {
                            AppCompatDelegateImpl.this.f2306i.dismiss();
                        } else if (AppCompatDelegateImpl.this.f2305h.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.f2305h.getParent());
                        }
                        AppCompatDelegateImpl.this.f2305h.removeAllViews();
                        AppCompatDelegateImpl.this.f2308k.setListener(null);
                        AppCompatDelegateImpl.this.f2308k = null;
                    }
                });
            }
            if (AppCompatDelegateImpl.this.f2302e != null) {
                AppCompatDelegateImpl.this.f2302e.mo2607b(AppCompatDelegateImpl.this.f2304g);
            }
            AppCompatDelegateImpl.this.f2304g = null;
        }

        /* renamed from: android.support.v7.app.AppCompatDelegateImpl$b$1 */
        class AnonymousClass1 extends ViewPropertyAnimatorListenerAdapter {
            AnonymousClass1() {
            }

            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                AppCompatDelegateImpl.this.f2305h.setVisibility(8);
                if (AppCompatDelegateImpl.this.f2306i != null) {
                    AppCompatDelegateImpl.this.f2306i.dismiss();
                } else if (AppCompatDelegateImpl.this.f2305h.getParent() instanceof View) {
                    ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.f2305h.getParent());
                }
                AppCompatDelegateImpl.this.f2305h.removeAllViews();
                AppCompatDelegateImpl.this.f2308k.setListener(null);
                AppCompatDelegateImpl.this.f2308k = null;
            }
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImpl$f */
    private final class C0510f implements InterfaceC0551o.a {
        C0510f() {
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o.a
        /* renamed from: a */
        public void mo2566a(C0544h c0544h, boolean z) {
            C0544h mo2894q = c0544h.mo2894q();
            boolean z2 = mo2894q != c0544h;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z2) {
                c0544h = mo2894q;
            }
            PanelFeatureState m2512a = appCompatDelegateImpl.m2512a((Menu) c0544h);
            if (m2512a != null) {
                if (z2) {
                    AppCompatDelegateImpl.this.m2517a(m2512a.f2329a, m2512a, mo2894q);
                    AppCompatDelegateImpl.this.m2519a(m2512a, true);
                } else {
                    AppCompatDelegateImpl.this.m2519a(m2512a, z);
                }
            }
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o.a
        /* renamed from: a */
        public boolean mo2567a(C0544h c0544h) {
            Window.Callback m2545h;
            if (c0544h == null && AppCompatDelegateImpl.this.f2309l && (m2545h = AppCompatDelegateImpl.this.m2545h()) != null && !AppCompatDelegateImpl.this.f2314q) {
                m2545h.onMenuOpened(108, c0544h);
                return true;
            }
            return true;
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImpl$a */
    private final class C0505a implements InterfaceC0551o.a {
        C0505a() {
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o.a
        /* renamed from: a */
        public boolean mo2567a(C0544h c0544h) {
            Window.Callback m2545h = AppCompatDelegateImpl.this.m2545h();
            if (m2545h != null) {
                m2545h.onMenuOpened(108, c0544h);
                return true;
            }
            return true;
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o.a
        /* renamed from: a */
        public void mo2566a(C0544h c0544h, boolean z) {
            AppCompatDelegateImpl.this.m2531b(c0544h);
        }
    }

    protected static final class PanelFeatureState {

        /* renamed from: a */
        int f2329a;

        /* renamed from: b */
        int f2330b;

        /* renamed from: c */
        int f2331c;

        /* renamed from: d */
        int f2332d;

        /* renamed from: e */
        int f2333e;

        /* renamed from: f */
        int f2334f;

        /* renamed from: g */
        ViewGroup f2335g;

        /* renamed from: h */
        View f2336h;

        /* renamed from: i */
        View f2337i;

        /* renamed from: j */
        C0544h f2338j;

        /* renamed from: k */
        C0542f f2339k;

        /* renamed from: l */
        Context f2340l;

        /* renamed from: m */
        boolean f2341m;

        /* renamed from: n */
        boolean f2342n;

        /* renamed from: o */
        boolean f2343o;

        /* renamed from: p */
        public boolean f2344p;

        /* renamed from: q */
        boolean f2345q = false;

        /* renamed from: r */
        boolean f2346r;

        /* renamed from: s */
        Bundle f2347s;

        PanelFeatureState(int i) {
            this.f2329a = i;
        }

        /* renamed from: a */
        public boolean m2561a() {
            if (this.f2336h == null) {
                return false;
            }
            return this.f2337i != null || this.f2339k.m2831d().getCount() > 0;
        }

        /* renamed from: a */
        void m2559a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(android.support.v7.appcompat.R.attr.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            }
            newTheme.resolveAttribute(android.support.v7.appcompat.R.attr.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            } else {
                newTheme.applyStyle(android.support.v7.appcompat.R.style.Theme_AppCompat_CompactMenu, true);
            }
            C0529d c0529d = new C0529d(context, 0);
            c0529d.getTheme().setTo(newTheme);
            this.f2340l = c0529d;
            TypedArray obtainStyledAttributes = c0529d.obtainStyledAttributes(android.support.v7.appcompat.R.styleable.AppCompatTheme);
            this.f2330b = obtainStyledAttributes.getResourceId(android.support.v7.appcompat.R.styleable.AppCompatTheme_panelBackground, 0);
            this.f2334f = obtainStyledAttributes.getResourceId(android.support.v7.appcompat.R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        void m2560a(C0544h c0544h) {
            if (c0544h != this.f2338j) {
                if (this.f2338j != null) {
                    this.f2338j.m2869b(this.f2339k);
                }
                this.f2338j = c0544h;
                if (c0544h == null || this.f2339k == null) {
                    return;
                }
                c0544h.m2859a(this.f2339k);
            }
        }

        /* renamed from: a */
        InterfaceC0552p m2558a(InterfaceC0551o.a aVar) {
            if (this.f2338j == null) {
                return null;
            }
            if (this.f2339k == null) {
                this.f2339k = new C0542f(this.f2340l, android.support.v7.appcompat.R.layout.abc_list_menu_item_layout);
                this.f2339k.mo1542a(aVar);
                this.f2338j.m2859a(this.f2339k);
            }
            return this.f2339k.m2828a(this.f2335g);
        }

        private static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.v7.app.AppCompatDelegateImpl.PanelFeatureState.SavedState.1
                C05041() {
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* renamed from: a */
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.m2562a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a */
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.m2562a(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a */
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };

            /* renamed from: a */
            int f2348a;

            /* renamed from: b */
            boolean f2349b;

            /* renamed from: c */
            Bundle f2350c;

            SavedState() {
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f2348a);
                parcel.writeInt(this.f2349b ? 1 : 0);
                if (this.f2349b) {
                    parcel.writeBundle(this.f2350c);
                }
            }

            /* renamed from: a */
            static SavedState m2562a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.f2348a = parcel.readInt();
                savedState.f2349b = parcel.readInt() == 1;
                if (savedState.f2349b) {
                    savedState.f2350c = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            /* renamed from: android.support.v7.app.AppCompatDelegateImpl$PanelFeatureState$SavedState$1 */
            static class C05041 implements Parcelable.ClassLoaderCreator<SavedState> {
                C05041() {
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* renamed from: a */
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.m2562a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a */
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.m2562a(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: a */
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            }
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImpl$e */
    private class C0509e extends ContentFrameLayout {
        public C0509e(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m2527a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !m2577a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImpl.this.m2541f(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(C0488a.m2457b(getContext(), i));
        }

        /* renamed from: a */
        private boolean m2577a(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImpl$c */
    class C0507c extends WindowCallbackC0534i {
        C0507c(Window.Callback callback) {
            super(callback);
        }

        @Override // android.support.v7.view.WindowCallbackC0534i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m2527a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.support.v7.view.WindowCallbackC0534i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.m2525a(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // android.support.v7.view.WindowCallbackC0534i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof C0544h)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // android.support.v7.view.WindowCallbackC0534i, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // android.support.v7.view.WindowCallbackC0534i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            C0544h c0544h = menu instanceof C0544h ? (C0544h) menu : null;
            if (i == 0 && c0544h == null) {
                return false;
            }
            if (c0544h != null) {
                c0544h.m2874c(true);
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (c0544h != null) {
                c0544h.m2874c(false);
                return onPreparePanel;
            }
            return onPreparePanel;
        }

        @Override // android.support.v7.view.WindowCallbackC0534i, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            AppCompatDelegateImpl.this.m2539e(i);
            return true;
        }

        @Override // android.support.v7.view.WindowCallbackC0534i, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            AppCompatDelegateImpl.this.m2537d(i);
        }

        @Override // android.support.v7.view.WindowCallbackC0534i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            if (AppCompatDelegateImpl.this.m2550l()) {
                return m2572a(callback);
            }
            return super.onWindowStartingActionMode(callback);
        }

        /* renamed from: a */
        final ActionMode m2572a(ActionMode.Callback callback) {
            C0531f.a aVar = new C0531f.a(AppCompatDelegateImpl.this.f2298a, callback);
            AbstractC0527b m2513a = AppCompatDelegateImpl.this.m2513a(aVar);
            if (m2513a != null) {
                return aVar.m2750b(m2513a);
            }
            return null;
        }

        @Override // android.support.v7.view.WindowCallbackC0534i, android.view.Window.Callback
        @RequiresApi(23)
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            if (AppCompatDelegateImpl.this.m2550l()) {
                switch (i) {
                    case 0:
                        return m2572a(callback);
                }
            }
            return super.onWindowStartingActionMode(callback, i);
        }

        @Override // android.support.v7.view.WindowCallbackC0534i, android.view.Window.Callback
        @RequiresApi(24)
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            PanelFeatureState m2511a = AppCompatDelegateImpl.this.m2511a(0, true);
            if (m2511a != null && m2511a.f2338j != null) {
                super.onProvideKeyboardShortcuts(list, m2511a.f2338j, i);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: android.support.v7.app.AppCompatDelegateImpl$d */
    final class C0508d {

        /* renamed from: b */
        private C0520i f2357b;

        /* renamed from: c */
        private boolean f2358c;

        /* renamed from: d */
        private BroadcastReceiver f2359d;

        /* renamed from: e */
        private IntentFilter f2360e;

        C0508d(C0520i c0520i) {
            this.f2357b = c0520i;
            this.f2358c = c0520i.m2627a();
        }

        /* renamed from: a */
        int m2573a() {
            this.f2358c = this.f2357b.m2627a();
            return this.f2358c ? 2 : 1;
        }

        /* renamed from: b */
        void m2574b() {
            boolean m2627a = this.f2357b.m2627a();
            if (m2627a != this.f2358c) {
                this.f2358c = m2627a;
                AppCompatDelegateImpl.this.mo2538d();
            }
        }

        /* renamed from: c */
        void m2575c() {
            m2576d();
            if (this.f2359d == null) {
                this.f2359d = new BroadcastReceiver() { // from class: android.support.v7.app.AppCompatDelegateImpl.d.1
                    AnonymousClass1() {
                    }

                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        C0508d.this.m2574b();
                    }
                };
            }
            if (this.f2360e == null) {
                this.f2360e = new IntentFilter();
                this.f2360e.addAction("android.intent.action.TIME_SET");
                this.f2360e.addAction("android.intent.action.TIMEZONE_CHANGED");
                this.f2360e.addAction("android.intent.action.TIME_TICK");
            }
            AppCompatDelegateImpl.this.f2298a.registerReceiver(this.f2359d, this.f2360e);
        }

        /* renamed from: android.support.v7.app.AppCompatDelegateImpl$d$1 */
        class AnonymousClass1 extends BroadcastReceiver {
            AnonymousClass1() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                C0508d.this.m2574b();
            }
        }

        /* renamed from: d */
        void m2576d() {
            if (this.f2359d != null) {
                AppCompatDelegateImpl.this.f2298a.unregisterReceiver(this.f2359d);
                this.f2359d = null;
            }
        }
    }
}
