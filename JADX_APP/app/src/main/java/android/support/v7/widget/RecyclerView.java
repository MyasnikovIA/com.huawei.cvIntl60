package android.support.v7.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.v4.os.TraceCompat;
import android.support.v4.util.Preconditions;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingChild2;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.ScrollingView;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.support.v7.widget.C0655af;
import android.support.v7.widget.C0693bq;
import android.support.v7.widget.C0694br;
import android.support.v7.widget.C0698d;
import android.support.v7.widget.RunnableC0664ao;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import com.google.android.exoplayer.C1167C;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements NestedScrollingChild2, ScrollingView {

    /* renamed from: L */
    static final Interpolator f3031L;

    /* renamed from: M */
    private static final int[] f3032M = {R.attr.nestedScrollingEnabled};

    /* renamed from: N */
    private static final int[] f3033N = {R.attr.clipToPadding};

    /* renamed from: O */
    private static final boolean f3034O;

    /* renamed from: P */
    private static final boolean f3035P;

    /* renamed from: Q */
    private static final Class<?>[] f3036Q;

    /* renamed from: a */
    static final boolean f3037a;

    /* renamed from: b */
    static final boolean f3038b;

    /* renamed from: c */
    static final boolean f3039c;

    /* renamed from: d */
    static final boolean f3040d;

    /* renamed from: A */
    final RunnableC0616v f3041A;

    /* renamed from: B */
    RunnableC0664ao f3042B;

    /* renamed from: C */
    RunnableC0664ao.a f3043C;

    /* renamed from: D */
    final C0614t f3044D;

    /* renamed from: E */
    boolean f3045E;

    /* renamed from: F */
    boolean f3046F;

    /* renamed from: G */
    boolean f3047G;

    /* renamed from: H */
    C0672aw f3048H;

    /* renamed from: I */
    final int[] f3049I;

    /* renamed from: J */
    final int[] f3050J;

    /* renamed from: K */
    @VisibleForTesting
    final List<AbstractC0617w> f3051K;

    /* renamed from: R */
    private final C0612r f3052R;

    /* renamed from: S */
    private SavedState f3053S;

    /* renamed from: T */
    private final Rect f3054T;

    /* renamed from: U */
    private final ArrayList<InterfaceC0607m> f3055U;

    /* renamed from: V */
    private InterfaceC0607m f3056V;

    /* renamed from: W */
    private int f3057W;

    /* renamed from: aA */
    private List<AbstractC0608n> f3058aA;

    /* renamed from: aB */
    private AbstractC0600f.b f3059aB;

    /* renamed from: aC */
    private InterfaceC0598d f3060aC;

    /* renamed from: aD */
    private final int[] f3061aD;

    /* renamed from: aE */
    private NestedScrollingChildHelper f3062aE;

    /* renamed from: aF */
    private final int[] f3063aF;

    /* renamed from: aG */
    private final int[] f3064aG;

    /* renamed from: aH */
    private Runnable f3065aH;

    /* renamed from: aI */
    private final C0694br.b f3066aI;

    /* renamed from: aa */
    private boolean f3067aa;

    /* renamed from: ab */
    private int f3068ab;

    /* renamed from: ac */
    private final AccessibilityManager f3069ac;

    /* renamed from: ad */
    private List<InterfaceC0605k> f3070ad;

    /* renamed from: ae */
    private int f3071ae;

    /* renamed from: af */
    private int f3072af;

    /* renamed from: ag */
    @NonNull
    private C0599e f3073ag;

    /* renamed from: ah */
    private EdgeEffect f3074ah;

    /* renamed from: ai */
    private EdgeEffect f3075ai;

    /* renamed from: aj */
    private EdgeEffect f3076aj;

    /* renamed from: ak */
    private EdgeEffect f3077ak;

    /* renamed from: al */
    private int f3078al;

    /* renamed from: am */
    private int f3079am;

    /* renamed from: an */
    private VelocityTracker f3080an;

    /* renamed from: ao */
    private int f3081ao;

    /* renamed from: ap */
    private int f3082ap;

    /* renamed from: aq */
    private int f3083aq;

    /* renamed from: ar */
    private int f3084ar;

    /* renamed from: as */
    private int f3085as;

    /* renamed from: at */
    private AbstractC0606l f3086at;

    /* renamed from: au */
    private final int f3087au;

    /* renamed from: av */
    private final int f3088av;

    /* renamed from: aw */
    private float f3089aw;

    /* renamed from: ax */
    private float f3090ax;

    /* renamed from: ay */
    private boolean f3091ay;

    /* renamed from: az */
    private AbstractC0608n f3092az;

    /* renamed from: e */
    final C0610p f3093e;

    /* renamed from: f */
    C0698d f3094f;

    /* renamed from: g */
    C0655af f3095g;

    /* renamed from: h */
    final C0694br f3096h;

    /* renamed from: i */
    boolean f3097i;

    /* renamed from: j */
    final Runnable f3098j;

    /* renamed from: k */
    final Rect f3099k;

    /* renamed from: l */
    final RectF f3100l;

    /* renamed from: m */
    AbstractC0595a f3101m;

    /* renamed from: n */
    @VisibleForTesting
    AbstractC0603i f3102n;

    /* renamed from: o */
    InterfaceC0611q f3103o;

    /* renamed from: p */
    final ArrayList<AbstractC0602h> f3104p;

    /* renamed from: q */
    boolean f3105q;

    /* renamed from: r */
    boolean f3106r;

    /* renamed from: s */
    boolean f3107s;

    /* renamed from: t */
    @VisibleForTesting
    boolean f3108t;

    /* renamed from: u */
    boolean f3109u;

    /* renamed from: v */
    boolean f3110v;

    /* renamed from: w */
    boolean f3111w;

    /* renamed from: x */
    boolean f3112x;

    /* renamed from: y */
    boolean f3113y;

    /* renamed from: z */
    AbstractC0600f f3114z;

    /* renamed from: android.support.v7.widget.RecyclerView$d */
    public interface InterfaceC0598d {
        /* renamed from: a */
        int m3348a(int i, int i2);
    }

    /* renamed from: android.support.v7.widget.RecyclerView$k */
    public interface InterfaceC0605k {
        /* renamed from: a */
        void m3492a(@NonNull View view);

        /* renamed from: b */
        void m3493b(@NonNull View view);
    }

    /* renamed from: android.support.v7.widget.RecyclerView$l */
    public static abstract class AbstractC0606l {
        /* renamed from: a */
        public abstract boolean m3494a(int i, int i2);
    }

    /* renamed from: android.support.v7.widget.RecyclerView$m */
    public interface InterfaceC0607m {
        /* renamed from: a */
        void mo3495a(boolean z);

        /* renamed from: a */
        boolean mo3496a(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);

        /* renamed from: b */
        void mo3497b(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);
    }

    /* renamed from: android.support.v7.widget.RecyclerView$q */
    public interface InterfaceC0611q {
        /* renamed from: a */
        void m3551a(@NonNull AbstractC0617w abstractC0617w);
    }

    /* renamed from: android.support.v7.widget.RecyclerView$u */
    public static abstract class AbstractC0615u {
        @Nullable
        /* renamed from: a */
        public abstract View m3575a(@NonNull C0610p c0610p, int i, int i2);
    }

    static {
        f3037a = Build.VERSION.SDK_INT == 18 || Build.VERSION.SDK_INT == 19 || Build.VERSION.SDK_INT == 20;
        f3038b = Build.VERSION.SDK_INT >= 23;
        f3039c = Build.VERSION.SDK_INT >= 16;
        f3040d = Build.VERSION.SDK_INT >= 21;
        f3034O = Build.VERSION.SDK_INT <= 15;
        f3035P = Build.VERSION.SDK_INT <= 15;
        f3036Q = new Class[]{Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
        f3031L = new Interpolator() { // from class: android.support.v7.widget.RecyclerView.3
            InterpolatorC05903() {
            }

            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        };
    }

    /* renamed from: android.support.v7.widget.RecyclerView$1 */
    class RunnableC05881 implements Runnable {
        RunnableC05881() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (RecyclerView.this.f3108t && !RecyclerView.this.isLayoutRequested()) {
                if (!RecyclerView.this.f3105q) {
                    RecyclerView.this.requestLayout();
                } else if (RecyclerView.this.f3110v) {
                    RecyclerView.this.f3109u = true;
                } else {
                    RecyclerView.this.m3269d();
                }
            }
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$2 */
    class RunnableC05892 implements Runnable {
        RunnableC05892() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (RecyclerView.this.f3114z != null) {
                RecyclerView.this.f3114z.mo3353a();
            }
            RecyclerView.this.f3047G = false;
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$3 */
    static class InterpolatorC05903 implements Interpolator {
        InterpolatorC05903() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$4 */
    class C05914 implements C0694br.b {
        C05914() {
        }

        @Override // android.support.v7.widget.C0694br.b
        /* renamed from: a */
        public void mo3307a(AbstractC0617w abstractC0617w, @NonNull AbstractC0600f.c cVar, @Nullable AbstractC0600f.c cVar2) {
            RecyclerView.this.f3093e.m3538c(abstractC0617w);
            RecyclerView.this.m3258b(abstractC0617w, cVar, cVar2);
        }

        @Override // android.support.v7.widget.C0694br.b
        /* renamed from: b */
        public void mo3308b(AbstractC0617w abstractC0617w, AbstractC0600f.c cVar, AbstractC0600f.c cVar2) {
            RecyclerView.this.m3245a(abstractC0617w, cVar, cVar2);
        }

        @Override // android.support.v7.widget.C0694br.b
        /* renamed from: c */
        public void mo3309c(AbstractC0617w abstractC0617w, @NonNull AbstractC0600f.c cVar, @NonNull AbstractC0600f.c cVar2) {
            abstractC0617w.m3596a(false);
            if (RecyclerView.this.f3112x) {
                if (RecyclerView.this.f3114z.mo3356a(abstractC0617w, abstractC0617w, cVar, cVar2)) {
                    RecyclerView.this.m3297p();
                }
            } else if (RecyclerView.this.f3114z.mo3360c(abstractC0617w, cVar, cVar2)) {
                RecyclerView.this.m3297p();
            }
        }

        @Override // android.support.v7.widget.C0694br.b
        /* renamed from: a */
        public void mo3306a(AbstractC0617w abstractC0617w) {
            RecyclerView.this.f3102n.m3416a(abstractC0617w.f3217a, RecyclerView.this.f3093e);
        }
    }

    public RecyclerView(@NonNull Context context) {
        this(context, null);
    }

    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        boolean z = true;
        this.f3052R = new C0612r();
        this.f3093e = new C0610p();
        this.f3096h = new C0694br();
        this.f3098j = new Runnable() { // from class: android.support.v7.widget.RecyclerView.1
            RunnableC05881() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (RecyclerView.this.f3108t && !RecyclerView.this.isLayoutRequested()) {
                    if (!RecyclerView.this.f3105q) {
                        RecyclerView.this.requestLayout();
                    } else if (RecyclerView.this.f3110v) {
                        RecyclerView.this.f3109u = true;
                    } else {
                        RecyclerView.this.m3269d();
                    }
                }
            }
        };
        this.f3099k = new Rect();
        this.f3054T = new Rect();
        this.f3100l = new RectF();
        this.f3104p = new ArrayList<>();
        this.f3055U = new ArrayList<>();
        this.f3057W = 0;
        this.f3112x = false;
        this.f3113y = false;
        this.f3071ae = 0;
        this.f3072af = 0;
        this.f3073ag = new C0599e();
        this.f3114z = new C0658ai();
        this.f3078al = 0;
        this.f3079am = -1;
        this.f3089aw = Float.MIN_VALUE;
        this.f3090ax = Float.MIN_VALUE;
        this.f3091ay = true;
        this.f3041A = new RunnableC0616v();
        this.f3043C = f3040d ? new RunnableC0664ao.a() : null;
        this.f3044D = new C0614t();
        this.f3045E = false;
        this.f3046F = false;
        this.f3059aB = new C0601g();
        this.f3047G = false;
        this.f3061aD = new int[2];
        this.f3063aF = new int[2];
        this.f3049I = new int[2];
        this.f3064aG = new int[2];
        this.f3050J = new int[2];
        this.f3051K = new ArrayList();
        this.f3065aH = new Runnable() { // from class: android.support.v7.widget.RecyclerView.2
            RunnableC05892() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (RecyclerView.this.f3114z != null) {
                    RecyclerView.this.f3114z.mo3353a();
                }
                RecyclerView.this.f3047G = false;
            }
        };
        this.f3066aI = new C0694br.b() { // from class: android.support.v7.widget.RecyclerView.4
            C05914() {
            }

            @Override // android.support.v7.widget.C0694br.b
            /* renamed from: a */
            public void mo3307a(AbstractC0617w abstractC0617w, @NonNull AbstractC0600f.c cVar, @Nullable AbstractC0600f.c cVar2) {
                RecyclerView.this.f3093e.m3538c(abstractC0617w);
                RecyclerView.this.m3258b(abstractC0617w, cVar, cVar2);
            }

            @Override // android.support.v7.widget.C0694br.b
            /* renamed from: b */
            public void mo3308b(AbstractC0617w abstractC0617w, AbstractC0600f.c cVar, AbstractC0600f.c cVar2) {
                RecyclerView.this.m3245a(abstractC0617w, cVar, cVar2);
            }

            @Override // android.support.v7.widget.C0694br.b
            /* renamed from: c */
            public void mo3309c(AbstractC0617w abstractC0617w, @NonNull AbstractC0600f.c cVar, @NonNull AbstractC0600f.c cVar2) {
                abstractC0617w.m3596a(false);
                if (RecyclerView.this.f3112x) {
                    if (RecyclerView.this.f3114z.mo3356a(abstractC0617w, abstractC0617w, cVar, cVar2)) {
                        RecyclerView.this.m3297p();
                    }
                } else if (RecyclerView.this.f3114z.mo3360c(abstractC0617w, cVar, cVar2)) {
                    RecyclerView.this.m3297p();
                }
            }

            @Override // android.support.v7.widget.C0694br.b
            /* renamed from: a */
            public void mo3306a(AbstractC0617w abstractC0617w) {
                RecyclerView.this.f3102n.m3416a(abstractC0617w.f3217a, RecyclerView.this.f3093e);
            }
        };
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f3033N, i, 0);
            this.f3097i = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        } else {
            this.f3097i = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f3085as = viewConfiguration.getScaledTouchSlop();
        this.f3089aw = ViewConfigurationCompat.getScaledHorizontalScrollFactor(viewConfiguration, context);
        this.f3090ax = ViewConfigurationCompat.getScaledVerticalScrollFactor(viewConfiguration, context);
        this.f3087au = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f3088av = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.f3114z.m3354a(this.f3059aB);
        m3253b();
        m3226z();
        m3225y();
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
        this.f3069ac = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new C0672aw(this));
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, android.support.v7.recyclerview.R.styleable.RecyclerView, i, 0);
            String string = obtainStyledAttributes2.getString(android.support.v7.recyclerview.R.styleable.RecyclerView_layoutManager);
            if (obtainStyledAttributes2.getInt(android.support.v7.recyclerview.R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
                setDescendantFocusability(262144);
            }
            this.f3107s = obtainStyledAttributes2.getBoolean(android.support.v7.recyclerview.R.styleable.RecyclerView_fastScrollEnabled, false);
            if (this.f3107s) {
                m3237a((StateListDrawable) obtainStyledAttributes2.getDrawable(android.support.v7.recyclerview.R.styleable.RecyclerView_fastScrollVerticalThumbDrawable), obtainStyledAttributes2.getDrawable(android.support.v7.recyclerview.R.styleable.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) obtainStyledAttributes2.getDrawable(android.support.v7.recyclerview.R.styleable.RecyclerView_fastScrollHorizontalThumbDrawable), obtainStyledAttributes2.getDrawable(android.support.v7.recyclerview.R.styleable.RecyclerView_fastScrollHorizontalTrackDrawable));
            }
            obtainStyledAttributes2.recycle();
            m3205a(context, string, attributeSet, i, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, f3032M, i, 0);
                z = obtainStyledAttributes3.getBoolean(0, true);
                obtainStyledAttributes3.recycle();
            }
        } else {
            setDescendantFocusability(262144);
        }
        setNestedScrollingEnabled(z);
    }

    /* renamed from: a */
    String m3230a() {
        return " " + super.toString() + ", adapter:" + this.f3101m + ", layout:" + this.f3102n + ", context:" + getContext();
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: y */
    private void m3225y() {
        if (ViewCompat.getImportantForAutofill(this) == 0) {
            ViewCompat.setImportantForAutofill(this, 8);
        }
    }

    @Nullable
    public C0672aw getCompatAccessibilityDelegate() {
        return this.f3048H;
    }

    public void setAccessibilityDelegateCompat(@Nullable C0672aw c0672aw) {
        this.f3048H = c0672aw;
        ViewCompat.setAccessibilityDelegate(this, this.f3048H);
    }

    /* renamed from: a */
    private void m3205a(Context context, String str, AttributeSet attributeSet, int i, int i2) {
        ClassLoader classLoader;
        Constructor constructor;
        Object[] objArr;
        if (str != null) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                String m3202a = m3202a(context, trim);
                try {
                    if (isInEditMode()) {
                        classLoader = getClass().getClassLoader();
                    } else {
                        classLoader = context.getClassLoader();
                    }
                    Class<? extends U> asSubclass = classLoader.loadClass(m3202a).asSubclass(AbstractC0603i.class);
                    try {
                        constructor = asSubclass.getConstructor(f3036Q);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(i), Integer.valueOf(i2)};
                    } catch (NoSuchMethodException e) {
                        try {
                            constructor = asSubclass.getConstructor(new Class[0]);
                            objArr = null;
                        } catch (NoSuchMethodException e2) {
                            e2.initCause(e);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + m3202a, e2);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((AbstractC0603i) constructor.newInstance(objArr));
                } catch (ClassCastException e3) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + m3202a, e3);
                } catch (ClassNotFoundException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + m3202a, e4);
                } catch (IllegalAccessException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + m3202a, e5);
                } catch (InstantiationException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + m3202a, e6);
                } catch (InvocationTargetException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + m3202a, e7);
                }
            }
        }
    }

    /* renamed from: a */
    private String m3202a(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        return !str.contains(".") ? RecyclerView.class.getPackage().getName() + '.' + str : str;
    }

    /* renamed from: android.support.v7.widget.RecyclerView$5 */
    class C05925 implements C0655af.b {
        C05925() {
        }

        @Override // android.support.v7.widget.C0655af.b
        /* renamed from: a */
        public int mo3310a() {
            return RecyclerView.this.getChildCount();
        }

        @Override // android.support.v7.widget.C0655af.b
        /* renamed from: a */
        public void mo3313a(View view, int i) {
            RecyclerView.this.addView(view, i);
            RecyclerView.this.m3293l(view);
        }

        @Override // android.support.v7.widget.C0655af.b
        /* renamed from: a */
        public int mo3311a(View view) {
            return RecyclerView.this.indexOfChild(view);
        }

        @Override // android.support.v7.widget.C0655af.b
        /* renamed from: a */
        public void mo3312a(int i) {
            View childAt = RecyclerView.this.getChildAt(i);
            if (childAt != null) {
                RecyclerView.this.m3291k(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeViewAt(i);
        }

        @Override // android.support.v7.widget.C0655af.b
        /* renamed from: b */
        public View mo3316b(int i) {
            return RecyclerView.this.getChildAt(i);
        }

        @Override // android.support.v7.widget.C0655af.b
        /* renamed from: b */
        public void mo3317b() {
            int mo3310a = mo3310a();
            for (int i = 0; i < mo3310a; i++) {
                View mo3316b = mo3316b(i);
                RecyclerView.this.m3291k(mo3316b);
                mo3316b.clearAnimation();
            }
            RecyclerView.this.removeAllViews();
        }

        @Override // android.support.v7.widget.C0655af.b
        /* renamed from: b */
        public AbstractC0617w mo3315b(View view) {
            return RecyclerView.m3220e(view);
        }

        @Override // android.support.v7.widget.C0655af.b
        /* renamed from: a */
        public void mo3314a(View view, int i, ViewGroup.LayoutParams layoutParams) {
            AbstractC0617w m3220e = RecyclerView.m3220e(view);
            if (m3220e != null) {
                if (!m3220e.m3616r() && !m3220e.m3601c()) {
                    throw new IllegalArgumentException("Called attach on a child which is not detached: " + m3220e + RecyclerView.this.m3230a());
                }
                m3220e.m3611m();
            }
            RecyclerView.this.attachViewToParent(view, i, layoutParams);
        }

        @Override // android.support.v7.widget.C0655af.b
        /* renamed from: c */
        public void mo3318c(int i) {
            AbstractC0617w m3220e;
            View mo3316b = mo3316b(i);
            if (mo3316b != null && (m3220e = RecyclerView.m3220e(mo3316b)) != null) {
                if (m3220e.m3616r() && !m3220e.m3601c()) {
                    throw new IllegalArgumentException("called detach on an already detached child " + m3220e + RecyclerView.this.m3230a());
                }
                m3220e.m3599b(256);
            }
            RecyclerView.this.detachViewFromParent(i);
        }

        @Override // android.support.v7.widget.C0655af.b
        /* renamed from: c */
        public void mo3319c(View view) {
            AbstractC0617w m3220e = RecyclerView.m3220e(view);
            if (m3220e != null) {
                m3220e.m3594a(RecyclerView.this);
            }
        }

        @Override // android.support.v7.widget.C0655af.b
        /* renamed from: d */
        public void mo3320d(View view) {
            AbstractC0617w m3220e = RecyclerView.m3220e(view);
            if (m3220e != null) {
                m3220e.m3600b(RecyclerView.this);
            }
        }
    }

    /* renamed from: z */
    private void m3226z() {
        this.f3095g = new C0655af(new C0655af.b() { // from class: android.support.v7.widget.RecyclerView.5
            C05925() {
            }

            @Override // android.support.v7.widget.C0655af.b
            /* renamed from: a */
            public int mo3310a() {
                return RecyclerView.this.getChildCount();
            }

            @Override // android.support.v7.widget.C0655af.b
            /* renamed from: a */
            public void mo3313a(View view, int i) {
                RecyclerView.this.addView(view, i);
                RecyclerView.this.m3293l(view);
            }

            @Override // android.support.v7.widget.C0655af.b
            /* renamed from: a */
            public int mo3311a(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            @Override // android.support.v7.widget.C0655af.b
            /* renamed from: a */
            public void mo3312a(int i) {
                View childAt = RecyclerView.this.getChildAt(i);
                if (childAt != null) {
                    RecyclerView.this.m3291k(childAt);
                    childAt.clearAnimation();
                }
                RecyclerView.this.removeViewAt(i);
            }

            @Override // android.support.v7.widget.C0655af.b
            /* renamed from: b */
            public View mo3316b(int i) {
                return RecyclerView.this.getChildAt(i);
            }

            @Override // android.support.v7.widget.C0655af.b
            /* renamed from: b */
            public void mo3317b() {
                int mo3310a = mo3310a();
                for (int i = 0; i < mo3310a; i++) {
                    View mo3316b = mo3316b(i);
                    RecyclerView.this.m3291k(mo3316b);
                    mo3316b.clearAnimation();
                }
                RecyclerView.this.removeAllViews();
            }

            @Override // android.support.v7.widget.C0655af.b
            /* renamed from: b */
            public AbstractC0617w mo3315b(View view) {
                return RecyclerView.m3220e(view);
            }

            @Override // android.support.v7.widget.C0655af.b
            /* renamed from: a */
            public void mo3314a(View view, int i, ViewGroup.LayoutParams layoutParams) {
                AbstractC0617w m3220e = RecyclerView.m3220e(view);
                if (m3220e != null) {
                    if (!m3220e.m3616r() && !m3220e.m3601c()) {
                        throw new IllegalArgumentException("Called attach on a child which is not detached: " + m3220e + RecyclerView.this.m3230a());
                    }
                    m3220e.m3611m();
                }
                RecyclerView.this.attachViewToParent(view, i, layoutParams);
            }

            @Override // android.support.v7.widget.C0655af.b
            /* renamed from: c */
            public void mo3318c(int i) {
                AbstractC0617w m3220e;
                View mo3316b = mo3316b(i);
                if (mo3316b != null && (m3220e = RecyclerView.m3220e(mo3316b)) != null) {
                    if (m3220e.m3616r() && !m3220e.m3601c()) {
                        throw new IllegalArgumentException("called detach on an already detached child " + m3220e + RecyclerView.this.m3230a());
                    }
                    m3220e.m3599b(256);
                }
                RecyclerView.this.detachViewFromParent(i);
            }

            @Override // android.support.v7.widget.C0655af.b
            /* renamed from: c */
            public void mo3319c(View view) {
                AbstractC0617w m3220e = RecyclerView.m3220e(view);
                if (m3220e != null) {
                    m3220e.m3594a(RecyclerView.this);
                }
            }

            @Override // android.support.v7.widget.C0655af.b
            /* renamed from: d */
            public void mo3320d(View view) {
                AbstractC0617w m3220e = RecyclerView.m3220e(view);
                if (m3220e != null) {
                    m3220e.m3600b(RecyclerView.this);
                }
            }
        });
    }

    /* renamed from: android.support.v7.widget.RecyclerView$6 */
    class C05936 implements C0698d.a {
        C05936() {
        }

        @Override // android.support.v7.widget.C0698d.a
        /* renamed from: a */
        public AbstractC0617w mo3321a(int i) {
            AbstractC0617w m3228a = RecyclerView.this.m3228a(i, true);
            if (m3228a == null || RecyclerView.this.f3095g.m3871c(m3228a.f3217a)) {
                return null;
            }
            return m3228a;
        }

        @Override // android.support.v7.widget.C0698d.a
        /* renamed from: a */
        public void mo3322a(int i, int i2) {
            RecyclerView.this.m3235a(i, i2, true);
            RecyclerView.this.f3045E = true;
            RecyclerView.this.f3044D.f3194c += i2;
        }

        @Override // android.support.v7.widget.C0698d.a
        /* renamed from: b */
        public void mo3325b(int i, int i2) {
            RecyclerView.this.m3235a(i, i2, false);
            RecyclerView.this.f3045E = true;
        }

        @Override // android.support.v7.widget.C0698d.a
        /* renamed from: a */
        public void mo3323a(int i, int i2, Object obj) {
            RecyclerView.this.m3234a(i, i2, obj);
            RecyclerView.this.f3046F = true;
        }

        @Override // android.support.v7.widget.C0698d.a
        /* renamed from: a */
        public void mo3324a(C0698d.b bVar) {
            m3328c(bVar);
        }

        /* renamed from: c */
        void m3328c(C0698d.b bVar) {
            switch (bVar.f3844a) {
                case 1:
                    RecyclerView.this.f3102n.mo3087a(RecyclerView.this, bVar.f3845b, bVar.f3847d);
                    break;
                case 2:
                    RecyclerView.this.f3102n.mo3094b(RecyclerView.this, bVar.f3845b, bVar.f3847d);
                    break;
                case 4:
                    RecyclerView.this.f3102n.mo3089a(RecyclerView.this, bVar.f3845b, bVar.f3847d, bVar.f3846c);
                    break;
                case 8:
                    RecyclerView.this.f3102n.mo3088a(RecyclerView.this, bVar.f3845b, bVar.f3847d, 1);
                    break;
            }
        }

        @Override // android.support.v7.widget.C0698d.a
        /* renamed from: b */
        public void mo3326b(C0698d.b bVar) {
            m3328c(bVar);
        }

        @Override // android.support.v7.widget.C0698d.a
        /* renamed from: c */
        public void mo3327c(int i, int i2) {
            RecyclerView.this.m3281g(i, i2);
            RecyclerView.this.f3045E = true;
        }

        @Override // android.support.v7.widget.C0698d.a
        /* renamed from: d */
        public void mo3329d(int i, int i2) {
            RecyclerView.this.m3278f(i, i2);
            RecyclerView.this.f3045E = true;
        }
    }

    /* renamed from: b */
    void m3253b() {
        this.f3094f = new C0698d(new C0698d.a() { // from class: android.support.v7.widget.RecyclerView.6
            C05936() {
            }

            @Override // android.support.v7.widget.C0698d.a
            /* renamed from: a */
            public AbstractC0617w mo3321a(int i) {
                AbstractC0617w m3228a = RecyclerView.this.m3228a(i, true);
                if (m3228a == null || RecyclerView.this.f3095g.m3871c(m3228a.f3217a)) {
                    return null;
                }
                return m3228a;
            }

            @Override // android.support.v7.widget.C0698d.a
            /* renamed from: a */
            public void mo3322a(int i, int i2) {
                RecyclerView.this.m3235a(i, i2, true);
                RecyclerView.this.f3045E = true;
                RecyclerView.this.f3044D.f3194c += i2;
            }

            @Override // android.support.v7.widget.C0698d.a
            /* renamed from: b */
            public void mo3325b(int i, int i2) {
                RecyclerView.this.m3235a(i, i2, false);
                RecyclerView.this.f3045E = true;
            }

            @Override // android.support.v7.widget.C0698d.a
            /* renamed from: a */
            public void mo3323a(int i, int i2, Object obj) {
                RecyclerView.this.m3234a(i, i2, obj);
                RecyclerView.this.f3046F = true;
            }

            @Override // android.support.v7.widget.C0698d.a
            /* renamed from: a */
            public void mo3324a(C0698d.b bVar) {
                m3328c(bVar);
            }

            /* renamed from: c */
            void m3328c(C0698d.b bVar) {
                switch (bVar.f3844a) {
                    case 1:
                        RecyclerView.this.f3102n.mo3087a(RecyclerView.this, bVar.f3845b, bVar.f3847d);
                        break;
                    case 2:
                        RecyclerView.this.f3102n.mo3094b(RecyclerView.this, bVar.f3845b, bVar.f3847d);
                        break;
                    case 4:
                        RecyclerView.this.f3102n.mo3089a(RecyclerView.this, bVar.f3845b, bVar.f3847d, bVar.f3846c);
                        break;
                    case 8:
                        RecyclerView.this.f3102n.mo3088a(RecyclerView.this, bVar.f3845b, bVar.f3847d, 1);
                        break;
                }
            }

            @Override // android.support.v7.widget.C0698d.a
            /* renamed from: b */
            public void mo3326b(C0698d.b bVar) {
                m3328c(bVar);
            }

            @Override // android.support.v7.widget.C0698d.a
            /* renamed from: c */
            public void mo3327c(int i, int i2) {
                RecyclerView.this.m3281g(i, i2);
                RecyclerView.this.f3045E = true;
            }

            @Override // android.support.v7.widget.C0698d.a
            /* renamed from: d */
            public void mo3329d(int i, int i2) {
                RecyclerView.this.m3278f(i, i2);
                RecyclerView.this.f3045E = true;
            }
        });
    }

    public void setHasFixedSize(boolean z) {
        this.f3106r = z;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.f3097i) {
            m3290k();
        }
        this.f3097i = z;
        super.setClipToPadding(z);
        if (this.f3108t) {
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f3097i;
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        switch (i) {
            case 0:
                break;
            case 1:
                this.f3085as = viewConfiguration.getScaledPagingTouchSlop();
                return;
            default:
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
                break;
        }
        this.f3085as = viewConfiguration.getScaledTouchSlop();
    }

    /* renamed from: a */
    public void m3238a(@Nullable AbstractC0595a abstractC0595a, boolean z) {
        setLayoutFrozen(false);
        m3206a(abstractC0595a, true, z);
        m3266c(true);
        requestLayout();
    }

    public void setAdapter(@Nullable AbstractC0595a abstractC0595a) {
        setLayoutFrozen(false);
        m3206a(abstractC0595a, false, true);
        m3266c(false);
        requestLayout();
    }

    /* renamed from: c */
    void m3264c() {
        if (this.f3114z != null) {
            this.f3114z.mo3361d();
        }
        if (this.f3102n != null) {
            this.f3102n.m3438c(this.f3093e);
            this.f3102n.m3430b(this.f3093e);
        }
        this.f3093e.m3519a();
    }

    /* renamed from: a */
    private void m3206a(@Nullable AbstractC0595a abstractC0595a, boolean z, boolean z2) {
        if (this.f3101m != null) {
            this.f3101m.m3337b(this.f3052R);
            this.f3101m.m3339b(this);
        }
        if (!z || z2) {
            m3264c();
        }
        this.f3094f.m4275a();
        AbstractC0595a abstractC0595a2 = this.f3101m;
        this.f3101m = abstractC0595a;
        if (abstractC0595a != null) {
            abstractC0595a.m3334a(this.f3052R);
            abstractC0595a.m3336a(this);
        }
        if (this.f3102n != null) {
            this.f3102n.m3403a(abstractC0595a2, this.f3101m);
        }
        this.f3093e.m3523a(abstractC0595a2, this.f3101m, z);
        this.f3044D.f3197f = true;
    }

    @Nullable
    public AbstractC0595a getAdapter() {
        return this.f3101m;
    }

    public void setRecyclerListener(@Nullable InterfaceC0611q interfaceC0611q) {
        this.f3103o = interfaceC0611q;
    }

    @Override // android.view.View
    public int getBaseline() {
        return this.f3102n != null ? this.f3102n.m3476u() : super.getBaseline();
    }

    public void setLayoutManager(@Nullable AbstractC0603i abstractC0603i) {
        if (abstractC0603i != this.f3102n) {
            m3276f();
            if (this.f3102n != null) {
                if (this.f3114z != null) {
                    this.f3114z.mo3361d();
                }
                this.f3102n.m3438c(this.f3093e);
                this.f3102n.m3430b(this.f3093e);
                this.f3093e.m3519a();
                if (this.f3105q) {
                    this.f3102n.m3432b(this, this.f3093e);
                }
                this.f3102n.m3431b((RecyclerView) null);
                this.f3102n = null;
            } else {
                this.f3093e.m3519a();
            }
            this.f3095g.m3860a();
            this.f3102n = abstractC0603i;
            if (abstractC0603i != null) {
                if (abstractC0603i.f3143q != null) {
                    throw new IllegalArgumentException("LayoutManager " + abstractC0603i + " is already attached to a RecyclerView:" + abstractC0603i.f3143q.m3230a());
                }
                this.f3102n.m3431b(this);
                if (this.f3105q) {
                    this.f3102n.m3439c(this);
                }
            }
            this.f3093e.m3531b();
            requestLayout();
        }
    }

    public void setOnFlingListener(@Nullable AbstractC0606l abstractC0606l) {
        this.f3086at = abstractC0606l;
    }

    @Nullable
    public AbstractC0606l getOnFlingListener() {
        return this.f3086at;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f3053S != null) {
            savedState.m3330a(this.f3053S);
        } else if (this.f3102n != null) {
            savedState.f3120a = this.f3102n.mo3154d();
        } else {
            savedState.f3120a = null;
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        this.f3053S = (SavedState) parcelable;
        super.onRestoreInstanceState(this.f3053S.getSuperState());
        if (this.f3102n != null && this.f3053S.f3120a != null) {
            this.f3102n.mo3140a(this.f3053S.f3120a);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    /* renamed from: e */
    private void m3221e(AbstractC0617w abstractC0617w) {
        View view = abstractC0617w.f3217a;
        boolean z = view.getParent() == this;
        this.f3093e.m3538c(m3252b(view));
        if (abstractC0617w.m3616r()) {
            this.f3095g.m3863a(view, -1, view.getLayoutParams(), true);
        } else if (!z) {
            this.f3095g.m3865a(view, true);
        } else {
            this.f3095g.m3873d(view);
        }
    }

    /* renamed from: a */
    boolean m3250a(View view) {
        m3272e();
        boolean m3876f = this.f3095g.m3876f(view);
        if (m3876f) {
            AbstractC0617w m3220e = m3220e(view);
            this.f3093e.m3538c(m3220e);
            this.f3093e.m3533b(m3220e);
        }
        m3247a(!m3876f);
        return m3876f;
    }

    @Nullable
    public AbstractC0603i getLayoutManager() {
        return this.f3102n;
    }

    @NonNull
    public C0609o getRecycledViewPool() {
        return this.f3093e.m3547g();
    }

    public void setRecycledViewPool(@Nullable C0609o c0609o) {
        this.f3093e.m3524a(c0609o);
    }

    public void setViewCacheExtension(@Nullable AbstractC0615u abstractC0615u) {
        this.f3093e.m3525a(abstractC0615u);
    }

    public void setItemViewCacheSize(int i) {
        this.f3093e.m3520a(i);
    }

    public int getScrollState() {
        return this.f3078al;
    }

    void setScrollState(int i) {
        if (i != this.f3078al) {
            this.f3078al = i;
            if (i != 2) {
                m3188B();
            }
            m3280g(i);
        }
    }

    /* renamed from: a */
    public void m3240a(@NonNull AbstractC0602h abstractC0602h, int i) {
        if (this.f3102n != null) {
            this.f3102n.mo3143a("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f3104p.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            this.f3104p.add(abstractC0602h);
        } else {
            this.f3104p.add(i, abstractC0602h);
        }
        m3299r();
        requestLayout();
    }

    /* renamed from: a */
    public void m3239a(@NonNull AbstractC0602h abstractC0602h) {
        m3240a(abstractC0602h, -1);
    }

    public int getItemDecorationCount() {
        return this.f3104p.size();
    }

    /* renamed from: b */
    public void m3255b(@NonNull AbstractC0602h abstractC0602h) {
        if (this.f3102n != null) {
            this.f3102n.mo3143a("Cannot remove item decoration during a scroll  or layout");
        }
        this.f3104p.remove(abstractC0602h);
        if (this.f3104p.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        m3299r();
        requestLayout();
    }

    public void setChildDrawingOrderCallback(@Nullable InterfaceC0598d interfaceC0598d) {
        if (interfaceC0598d != this.f3060aC) {
            this.f3060aC = interfaceC0598d;
            setChildrenDrawingOrderEnabled(this.f3060aC != null);
        }
    }

    @Deprecated
    public void setOnScrollListener(@Nullable AbstractC0608n abstractC0608n) {
        this.f3092az = abstractC0608n;
    }

    /* renamed from: a */
    public void m3242a(@NonNull AbstractC0608n abstractC0608n) {
        if (this.f3058aA == null) {
            this.f3058aA = new ArrayList();
        }
        this.f3058aA.add(abstractC0608n);
    }

    /* renamed from: b */
    public void m3257b(@NonNull AbstractC0608n abstractC0608n) {
        if (this.f3058aA != null) {
            this.f3058aA.remove(abstractC0608n);
        }
    }

    /* renamed from: a */
    public void m3231a(int i) {
        if (!this.f3110v) {
            m3276f();
            if (this.f3102n == null) {
                Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
            } else {
                this.f3102n.mo3156e(i);
                awakenScrollBars();
            }
        }
    }

    /* renamed from: b */
    void m3254b(int i) {
        if (this.f3102n != null) {
            this.f3102n.mo3156e(i);
            awakenScrollBars();
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        if (this.f3102n == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (!this.f3110v) {
            boolean mo3157e = this.f3102n.mo3157e();
            boolean mo3160f = this.f3102n.mo3160f();
            if (mo3157e || mo3160f) {
                if (!mo3157e) {
                    i = 0;
                }
                if (!mo3160f) {
                    i2 = 0;
                }
                m3248a(i, i2, (MotionEvent) null);
            }
        }
    }

    /* renamed from: a */
    void m3236a(int i, int i2, @Nullable int[] iArr) {
        m3272e();
        m3292l();
        TraceCompat.beginSection("RV Scroll");
        m3243a(this.f3044D);
        int mo3072a = i != 0 ? this.f3102n.mo3072a(i, this.f3093e, this.f3044D) : 0;
        int mo3092b = i2 != 0 ? this.f3102n.mo3092b(i2, this.f3093e, this.f3044D) : 0;
        TraceCompat.endSection();
        m3304w();
        m3294m();
        m3247a(false);
        if (iArr != null) {
            iArr[0] = mo3072a;
            iArr[1] = mo3092b;
        }
    }

    /* renamed from: d */
    void m3269d() {
        if (!this.f3108t || this.f3112x) {
            TraceCompat.beginSection("RV FullInvalidate");
            m3298q();
            TraceCompat.endSection();
            return;
        }
        if (this.f3094f.m4283d()) {
            if (this.f3094f.m4278a(4) && !this.f3094f.m4278a(11)) {
                TraceCompat.beginSection("RV PartialInvalidate");
                m3272e();
                m3292l();
                this.f3094f.m4280b();
                if (!this.f3109u) {
                    if (m3187A()) {
                        m3298q();
                    } else {
                        this.f3094f.m4282c();
                    }
                }
                m3247a(true);
                m3294m();
                TraceCompat.endSection();
                return;
            }
            if (this.f3094f.m4283d()) {
                TraceCompat.beginSection("RV FullInvalidate");
                m3298q();
                TraceCompat.endSection();
            }
        }
    }

    /* renamed from: A */
    private boolean m3187A() {
        int m3866b = this.f3095g.m3866b();
        for (int i = 0; i < m3866b; i++) {
            AbstractC0617w m3220e = m3220e(this.f3095g.m3868b(i));
            if (m3220e != null && !m3220e.m3601c() && m3220e.m3624z()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    boolean m3248a(int i, int i2, MotionEvent motionEvent) {
        int i3;
        int i4;
        int i5;
        int i6;
        m3269d();
        if (this.f3101m != null) {
            m3236a(i, i2, this.f3050J);
            i4 = this.f3050J[0];
            i3 = this.f3050J[1];
            i6 = i - i4;
            i5 = i2 - i3;
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
            i6 = 0;
        }
        if (!this.f3104p.isEmpty()) {
            invalidate();
        }
        if (dispatchNestedScroll(i4, i3, i6, i5, this.f3063aF, 0)) {
            this.f3083aq -= this.f3063aF[0];
            this.f3084ar -= this.f3063aF[1];
            if (motionEvent != null) {
                motionEvent.offsetLocation(this.f3063aF[0], this.f3063aF[1]);
            }
            int[] iArr = this.f3064aG;
            iArr[0] = iArr[0] + this.f3063aF[0];
            int[] iArr2 = this.f3064aG;
            iArr2[1] = iArr2[1] + this.f3063aF[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null && !MotionEventCompat.isFromSource(motionEvent, 8194)) {
                m3203a(motionEvent.getX(), i6, motionEvent.getY(), i5);
            }
            m3265c(i, i2);
        }
        if (i4 != 0 || i3 != 0) {
            m3288i(i4, i3);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (i4 == 0 && i3 == 0) ? false : true;
    }

    @Override // android.view.View, android.support.v4.view.ScrollingView
    public int computeHorizontalScrollOffset() {
        if (this.f3102n != null && this.f3102n.mo3157e()) {
            return this.f3102n.mo3149c(this.f3044D);
        }
        return 0;
    }

    @Override // android.view.View, android.support.v4.view.ScrollingView
    public int computeHorizontalScrollExtent() {
        if (this.f3102n != null && this.f3102n.mo3157e()) {
            return this.f3102n.mo3155e(this.f3044D);
        }
        return 0;
    }

    @Override // android.view.View, android.support.v4.view.ScrollingView
    public int computeHorizontalScrollRange() {
        if (this.f3102n != null && this.f3102n.mo3157e()) {
            return this.f3102n.mo3162g(this.f3044D);
        }
        return 0;
    }

    @Override // android.view.View, android.support.v4.view.ScrollingView
    public int computeVerticalScrollOffset() {
        if (this.f3102n != null && this.f3102n.mo3160f()) {
            return this.f3102n.mo3152d(this.f3044D);
        }
        return 0;
    }

    @Override // android.view.View, android.support.v4.view.ScrollingView
    public int computeVerticalScrollExtent() {
        if (this.f3102n != null && this.f3102n.mo3160f()) {
            return this.f3102n.mo3159f(this.f3044D);
        }
        return 0;
    }

    @Override // android.view.View, android.support.v4.view.ScrollingView
    public int computeVerticalScrollRange() {
        if (this.f3102n != null && this.f3102n.mo3160f()) {
            return this.f3102n.mo3163h(this.f3044D);
        }
        return 0;
    }

    /* renamed from: e */
    void m3272e() {
        this.f3057W++;
        if (this.f3057W == 1 && !this.f3110v) {
            this.f3109u = false;
        }
    }

    /* renamed from: a */
    void m3247a(boolean z) {
        if (this.f3057W < 1) {
            this.f3057W = 1;
        }
        if (!z && !this.f3110v) {
            this.f3109u = false;
        }
        if (this.f3057W == 1) {
            if (z && this.f3109u && !this.f3110v && this.f3102n != null && this.f3101m != null) {
                m3298q();
            }
            if (!this.f3110v) {
                this.f3109u = false;
            }
        }
        this.f3057W--;
    }

    public void setLayoutFrozen(boolean z) {
        if (z != this.f3110v) {
            m3246a("Do not setLayoutFrozen in layout or scroll");
            if (!z) {
                this.f3110v = false;
                if (this.f3109u && this.f3102n != null && this.f3101m != null) {
                    requestLayout();
                }
                this.f3109u = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.f3110v = true;
            this.f3067aa = true;
            m3276f();
        }
    }

    /* renamed from: a */
    public void m3232a(@Px int i, @Px int i2) {
        m3233a(i, i2, (Interpolator) null);
    }

    /* renamed from: a */
    public void m3233a(@Px int i, @Px int i2, @Nullable Interpolator interpolator) {
        if (this.f3102n == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (!this.f3110v) {
            if (!this.f3102n.mo3157e()) {
                i = 0;
            }
            int i3 = this.f3102n.mo3160f() ? i2 : 0;
            if (i != 0 || i3 != 0) {
                this.f3041A.m3585a(i, i3, interpolator);
            }
        }
    }

    /* renamed from: b */
    public boolean m3260b(int i, int i2) {
        if (this.f3102n == null) {
            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.f3110v) {
            return false;
        }
        boolean mo3157e = this.f3102n.mo3157e();
        boolean mo3160f = this.f3102n.mo3160f();
        if (!mo3157e || Math.abs(i) < this.f3087au) {
            i = 0;
        }
        if (!mo3160f || Math.abs(i2) < this.f3087au) {
            i2 = 0;
        }
        if ((i == 0 && i2 == 0) || dispatchNestedPreFling(i, i2)) {
            return false;
        }
        boolean z = mo3157e || mo3160f;
        dispatchNestedFling(i, i2, z);
        if (this.f3086at != null && this.f3086at.m3494a(i, i2)) {
            return true;
        }
        if (!z) {
            return false;
        }
        int i3 = mo3157e ? 1 : 0;
        if (mo3160f) {
            i3 |= 2;
        }
        startNestedScroll(i3, 1);
        this.f3041A.m3581a(Math.max(-this.f3088av, Math.min(i, this.f3088av)), Math.max(-this.f3088av, Math.min(i2, this.f3088av)));
        return true;
    }

    /* renamed from: f */
    public void m3276f() {
        setScrollState(0);
        m3188B();
    }

    /* renamed from: B */
    private void m3188B() {
        this.f3041A.m3586b();
        if (this.f3102n != null) {
            this.f3102n.m3398H();
        }
    }

    public int getMinFlingVelocity() {
        return this.f3087au;
    }

    public int getMaxFlingVelocity() {
        return this.f3088av;
    }

    /* renamed from: a */
    private void m3203a(float f, float f2, float f3, float f4) {
        boolean z = true;
        boolean z2 = false;
        if (f2 < 0.0f) {
            m3279g();
            EdgeEffectCompat.onPull(this.f3074ah, (-f2) / getWidth(), 1.0f - (f3 / getHeight()));
            z2 = true;
        } else if (f2 > 0.0f) {
            m3283h();
            EdgeEffectCompat.onPull(this.f3076aj, f2 / getWidth(), f3 / getHeight());
            z2 = true;
        }
        if (f4 < 0.0f) {
            m3287i();
            EdgeEffectCompat.onPull(this.f3075ai, (-f4) / getHeight(), f / getWidth());
        } else if (f4 > 0.0f) {
            m3289j();
            EdgeEffectCompat.onPull(this.f3077ak, f4 / getHeight(), 1.0f - (f / getWidth()));
        } else {
            z = z2;
        }
        if (z || f2 != 0.0f || f4 != 0.0f) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* renamed from: C */
    private void m3189C() {
        boolean z = false;
        if (this.f3074ah != null) {
            this.f3074ah.onRelease();
            z = this.f3074ah.isFinished();
        }
        if (this.f3075ai != null) {
            this.f3075ai.onRelease();
            z |= this.f3075ai.isFinished();
        }
        if (this.f3076aj != null) {
            this.f3076aj.onRelease();
            z |= this.f3076aj.isFinished();
        }
        if (this.f3077ak != null) {
            this.f3077ak.onRelease();
            z |= this.f3077ak.isFinished();
        }
        if (z) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* renamed from: c */
    void m3265c(int i, int i2) {
        boolean z = false;
        if (this.f3074ah != null && !this.f3074ah.isFinished() && i > 0) {
            this.f3074ah.onRelease();
            z = this.f3074ah.isFinished();
        }
        if (this.f3076aj != null && !this.f3076aj.isFinished() && i < 0) {
            this.f3076aj.onRelease();
            z |= this.f3076aj.isFinished();
        }
        if (this.f3075ai != null && !this.f3075ai.isFinished() && i2 > 0) {
            this.f3075ai.onRelease();
            z |= this.f3075ai.isFinished();
        }
        if (this.f3077ak != null && !this.f3077ak.isFinished() && i2 < 0) {
            this.f3077ak.onRelease();
            z |= this.f3077ak.isFinished();
        }
        if (z) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* renamed from: d */
    void m3271d(int i, int i2) {
        if (i < 0) {
            m3279g();
            this.f3074ah.onAbsorb(-i);
        } else if (i > 0) {
            m3283h();
            this.f3076aj.onAbsorb(i);
        }
        if (i2 < 0) {
            m3287i();
            this.f3075ai.onAbsorb(-i2);
        } else if (i2 > 0) {
            m3289j();
            this.f3077ak.onAbsorb(i2);
        }
        if (i != 0 || i2 != 0) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* renamed from: g */
    void m3279g() {
        if (this.f3074ah == null) {
            this.f3074ah = this.f3073ag.m3349a(this, 0);
            if (this.f3097i) {
                this.f3074ah.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                this.f3074ah.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    /* renamed from: h */
    void m3283h() {
        if (this.f3076aj == null) {
            this.f3076aj = this.f3073ag.m3349a(this, 2);
            if (this.f3097i) {
                this.f3076aj.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                this.f3076aj.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    /* renamed from: i */
    void m3287i() {
        if (this.f3075ai == null) {
            this.f3075ai = this.f3073ag.m3349a(this, 1);
            if (this.f3097i) {
                this.f3075ai.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                this.f3075ai.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    /* renamed from: j */
    void m3289j() {
        if (this.f3077ak == null) {
            this.f3077ak = this.f3073ag.m3349a(this, 3);
            if (this.f3097i) {
                this.f3077ak.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                this.f3077ak.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    /* renamed from: k */
    void m3290k() {
        this.f3077ak = null;
        this.f3075ai = null;
        this.f3076aj = null;
        this.f3074ah = null;
    }

    public void setEdgeEffectFactory(@NonNull C0599e c0599e) {
        Preconditions.checkNotNull(c0599e);
        this.f3073ag = c0599e;
        m3290k();
    }

    @NonNull
    public C0599e getEdgeEffectFactory() {
        return this.f3073ag;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i) {
        View view2;
        boolean z;
        boolean z2;
        View m3445d = this.f3102n.m3445d(view, i);
        if (m3445d != null) {
            return m3445d;
        }
        boolean z3 = (this.f3101m == null || this.f3102n == null || m3296o() || this.f3110v) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z3 && (i == 2 || i == 1)) {
            if (this.f3102n.mo3160f()) {
                int i2 = i == 2 ? 130 : 33;
                z = focusFinder.findNextFocus(this, view, i2) == null;
                if (f3034O) {
                    i = i2;
                }
            } else {
                z = false;
            }
            if (z || !this.f3102n.mo3157e()) {
                z2 = z;
            } else {
                int i3 = (i == 2) ^ (this.f3102n.m3475t() == 1) ? 66 : 17;
                z2 = focusFinder.findNextFocus(this, view, i3) == null;
                if (f3034O) {
                    i = i3;
                }
            }
            if (z2) {
                m3269d();
                if (m3263c(view) == null) {
                    return null;
                }
                m3272e();
                this.f3102n.mo3078a(view, i, this.f3093e, this.f3044D);
                m3247a(false);
            }
            view2 = focusFinder.findNextFocus(this, view, i);
        } else {
            View findNextFocus = focusFinder.findNextFocus(this, view, i);
            if (findNextFocus == null && z3) {
                m3269d();
                if (m3263c(view) == null) {
                    return null;
                }
                m3272e();
                view2 = this.f3102n.mo3078a(view, i, this.f3093e, this.f3044D);
                m3247a(false);
            } else {
                view2 = findNextFocus;
            }
        }
        if (view2 != null && !view2.hasFocusable()) {
            if (getFocusedChild() == null) {
                return super.focusSearch(view, i);
            }
            m3212a(view2, (View) null);
            return view;
        }
        if (!m3216a(view, view2, i)) {
            view2 = super.focusSearch(view, i);
        }
        return view2;
    }

    /* renamed from: a */
    private boolean m3216a(View view, View view2, int i) {
        int i2;
        char c = 65535;
        boolean z = false;
        if (view2 == null || view2 == this) {
            return false;
        }
        if (m3263c(view2) == null) {
            return false;
        }
        if (view == null || m3263c(view) == null) {
            return true;
        }
        this.f3099k.set(0, 0, view.getWidth(), view.getHeight());
        this.f3054T.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.f3099k);
        offsetDescendantRectToMyCoords(view2, this.f3054T);
        int i3 = this.f3102n.m3475t() == 1 ? -1 : 1;
        if ((this.f3099k.left < this.f3054T.left || this.f3099k.right <= this.f3054T.left) && this.f3099k.right < this.f3054T.right) {
            i2 = 1;
        } else {
            i2 = ((this.f3099k.right > this.f3054T.right || this.f3099k.left >= this.f3054T.right) && this.f3099k.left > this.f3054T.left) ? -1 : 0;
        }
        if ((this.f3099k.top < this.f3054T.top || this.f3099k.bottom <= this.f3054T.top) && this.f3099k.bottom < this.f3054T.bottom) {
            c = 1;
        } else if ((this.f3099k.bottom <= this.f3054T.bottom && this.f3099k.top < this.f3054T.bottom) || this.f3099k.top <= this.f3054T.top) {
            c = 0;
        }
        switch (i) {
            case 1:
                if (c < 0 || (c == 0 && i3 * i2 <= 0)) {
                    z = true;
                }
                return z;
            case 2:
                if (c > 0 || (c == 0 && i3 * i2 >= 0)) {
                    z = true;
                }
                return z;
            case 17:
                return i2 < 0;
            case 33:
                return c < 0;
            case 66:
                return i2 > 0;
            case 130:
                return c > 0;
            default:
                throw new IllegalArgumentException("Invalid direction: " + i + m3230a());
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f3102n.m3421a(this, this.f3044D, view, view2) && view2 != null) {
            m3212a(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    /* renamed from: a */
    private void m3212a(@NonNull View view, @Nullable View view2) {
        View view3 = view2 != null ? view2 : view;
        this.f3099k.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C0604j) {
            C0604j c0604j = (C0604j) layoutParams;
            if (!c0604j.f3160e) {
                Rect rect = c0604j.f3159d;
                this.f3099k.left -= rect.left;
                this.f3099k.right += rect.right;
                this.f3099k.top -= rect.top;
                Rect rect2 = this.f3099k;
                rect2.bottom = rect.bottom + rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.f3099k);
            offsetRectIntoDescendantCoords(view, this.f3099k);
        }
        this.f3102n.m3423a(this, view, this.f3099k, !this.f3108t, view2 == null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.f3102n.m3422a(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (this.f3102n == null || !this.f3102n.m3425a(this, arrayList, i, i2)) {
            super.addFocusables(arrayList, i, i2);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (m3296o()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004f, code lost:
    
        if (r0 >= 30.0f) goto L42;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onAttachedToWindow() {
        /*
            r4 = this;
            r0 = 1
            r1 = 0
            super.onAttachedToWindow()
            r4.f3071ae = r1
            r4.f3105q = r0
            boolean r2 = r4.f3108t
            if (r2 == 0) goto L68
            boolean r2 = r4.isLayoutRequested()
            if (r2 != 0) goto L68
        L13:
            r4.f3108t = r0
            android.support.v7.widget.RecyclerView$i r0 = r4.f3102n
            if (r0 == 0) goto L1e
            android.support.v7.widget.RecyclerView$i r0 = r4.f3102n
            r0.m3439c(r4)
        L1e:
            r4.f3047G = r1
            boolean r0 = android.support.v7.widget.RecyclerView.f3040d
            if (r0 == 0) goto L67
            java.lang.ThreadLocal<android.support.v7.widget.ao> r0 = android.support.v7.widget.RunnableC0664ao.f3557a
            java.lang.Object r0 = r0.get()
            android.support.v7.widget.ao r0 = (android.support.v7.widget.RunnableC0664ao) r0
            r4.f3042B = r0
            android.support.v7.widget.ao r0 = r4.f3042B
            if (r0 != 0) goto L62
            android.support.v7.widget.ao r0 = new android.support.v7.widget.ao
            r0.<init>()
            r4.f3042B = r0
            android.view.Display r0 = android.support.v4.view.ViewCompat.getDisplay(r4)
            r1 = 1114636288(0x42700000, float:60.0)
            boolean r2 = r4.isInEditMode()
            if (r2 != 0) goto L6a
            if (r0 == 0) goto L6a
            float r0 = r0.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 < 0) goto L6a
        L51:
            android.support.v7.widget.ao r1 = r4.f3042B
            r2 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r0 = r2 / r0
            long r2 = (long) r0
            r1.f3561d = r2
            java.lang.ThreadLocal<android.support.v7.widget.ao> r0 = android.support.v7.widget.RunnableC0664ao.f3557a
            android.support.v7.widget.ao r1 = r4.f3042B
            r0.set(r1)
        L62:
            android.support.v7.widget.ao r0 = r4.f3042B
            r0.m3981a(r4)
        L67:
            return
        L68:
            r0 = r1
            goto L13
        L6a:
            r0 = r1
            goto L51
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView.onAttachedToWindow():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f3114z != null) {
            this.f3114z.mo3361d();
        }
        m3276f();
        this.f3105q = false;
        if (this.f3102n != null) {
            this.f3102n.m3432b(this, this.f3093e);
        }
        this.f3051K.clear();
        removeCallbacks(this.f3065aH);
        this.f3096h.m4232b();
        if (f3040d && this.f3042B != null) {
            this.f3042B.m3983b(this);
            this.f3042B = null;
        }
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.f3105q;
    }

    /* renamed from: a */
    void m3246a(String str) {
        if (m3296o()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + m3230a());
            }
            throw new IllegalStateException(str);
        }
        if (this.f3072af > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + m3230a()));
        }
    }

    /* renamed from: a */
    public void m3241a(@NonNull InterfaceC0607m interfaceC0607m) {
        this.f3055U.add(interfaceC0607m);
    }

    /* renamed from: b */
    public void m3256b(@NonNull InterfaceC0607m interfaceC0607m) {
        this.f3055U.remove(interfaceC0607m);
        if (this.f3056V == interfaceC0607m) {
            this.f3056V = null;
        }
    }

    /* renamed from: a */
    private boolean m3215a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.f3056V = null;
        }
        int size = this.f3055U.size();
        for (int i = 0; i < size; i++) {
            InterfaceC0607m interfaceC0607m = this.f3055U.get(i);
            if (interfaceC0607m.mo3496a(this, motionEvent) && action != 3) {
                this.f3056V = interfaceC0607m;
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private boolean m3217b(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (this.f3056V != null) {
            if (action == 0) {
                this.f3056V = null;
            } else {
                this.f3056V.mo3497b(this, motionEvent);
                if (action == 3 || action == 1) {
                    this.f3056V = null;
                }
                return true;
            }
        }
        if (action != 0) {
            int size = this.f3055U.size();
            for (int i = 0; i < size; i++) {
                InterfaceC0607m interfaceC0607m = this.f3055U.get(i);
                if (interfaceC0607m.mo3496a(this, motionEvent)) {
                    this.f3056V = interfaceC0607m;
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.f3110v) {
            return false;
        }
        if (m3215a(motionEvent)) {
            m3191E();
            return true;
        }
        if (this.f3102n == null) {
            return false;
        }
        boolean mo3157e = this.f3102n.mo3157e();
        boolean mo3160f = this.f3102n.mo3160f();
        if (this.f3080an == null) {
            this.f3080an = VelocityTracker.obtain();
        }
        this.f3080an.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        switch (actionMasked) {
            case 0:
                if (this.f3067aa) {
                    this.f3067aa = false;
                }
                this.f3079am = motionEvent.getPointerId(0);
                int x = (int) (motionEvent.getX() + 0.5f);
                this.f3083aq = x;
                this.f3081ao = x;
                int y = (int) (motionEvent.getY() + 0.5f);
                this.f3084ar = y;
                this.f3082ap = y;
                if (this.f3078al == 2) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    setScrollState(1);
                }
                int[] iArr = this.f3064aG;
                this.f3064aG[1] = 0;
                iArr[0] = 0;
                int i = mo3157e ? 1 : 0;
                if (mo3160f) {
                    i |= 2;
                }
                startNestedScroll(i, 0);
                break;
            case 1:
                this.f3080an.clear();
                stopNestedScroll(0);
                break;
            case 2:
                int findPointerIndex = motionEvent.findPointerIndex(this.f3079am);
                if (findPointerIndex < 0) {
                    Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f3079am + " not found. Did any MotionEvents get skipped?");
                    return false;
                }
                int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                if (this.f3078al != 1) {
                    int i2 = x2 - this.f3081ao;
                    int i3 = y2 - this.f3082ap;
                    if (!mo3157e || Math.abs(i2) <= this.f3085as) {
                        z = false;
                    } else {
                        this.f3083aq = x2;
                        z = true;
                    }
                    if (mo3160f && Math.abs(i3) > this.f3085as) {
                        this.f3084ar = y2;
                        z = true;
                    }
                    if (z) {
                        setScrollState(1);
                        break;
                    }
                }
                break;
            case 3:
                m3191E();
                break;
            case 5:
                this.f3079am = motionEvent.getPointerId(actionIndex);
                int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                this.f3083aq = x3;
                this.f3081ao = x3;
                int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                this.f3084ar = y3;
                this.f3082ap = y3;
                break;
            case 6:
                m3219c(motionEvent);
                break;
        }
        return this.f3078al == 1;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.f3055U.size();
        for (int i = 0; i < size; i++) {
            this.f3055U.get(i).mo3495a(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int i;
        int i2;
        boolean z2 = false;
        if (this.f3110v || this.f3067aa) {
            return false;
        }
        if (m3217b(motionEvent)) {
            m3191E();
            return true;
        }
        if (this.f3102n == null) {
            return false;
        }
        boolean mo3157e = this.f3102n.mo3157e();
        boolean mo3160f = this.f3102n.mo3160f();
        if (this.f3080an == null) {
            this.f3080an = VelocityTracker.obtain();
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            int[] iArr = this.f3064aG;
            this.f3064aG[1] = 0;
            iArr[0] = 0;
        }
        obtain.offsetLocation(this.f3064aG[0], this.f3064aG[1]);
        switch (actionMasked) {
            case 0:
                this.f3079am = motionEvent.getPointerId(0);
                int x = (int) (motionEvent.getX() + 0.5f);
                this.f3083aq = x;
                this.f3081ao = x;
                int y = (int) (motionEvent.getY() + 0.5f);
                this.f3084ar = y;
                this.f3082ap = y;
                int i3 = mo3157e ? 1 : 0;
                if (mo3160f) {
                    i3 |= 2;
                }
                startNestedScroll(i3, 0);
                break;
            case 1:
                this.f3080an.addMovement(obtain);
                this.f3080an.computeCurrentVelocity(1000, this.f3088av);
                float f = mo3157e ? -this.f3080an.getXVelocity(this.f3079am) : 0.0f;
                float f2 = mo3160f ? -this.f3080an.getYVelocity(this.f3079am) : 0.0f;
                if ((f == 0.0f && f2 == 0.0f) || !m3260b((int) f, (int) f2)) {
                    setScrollState(0);
                }
                m3190D();
                z2 = true;
                break;
            case 2:
                int findPointerIndex = motionEvent.findPointerIndex(this.f3079am);
                if (findPointerIndex < 0) {
                    Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f3079am + " not found. Did any MotionEvents get skipped?");
                    return false;
                }
                int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                int i4 = this.f3083aq - x2;
                int i5 = this.f3084ar - y2;
                if (dispatchNestedPreScroll(i4, i5, this.f3049I, this.f3063aF, 0)) {
                    i4 -= this.f3049I[0];
                    i5 -= this.f3049I[1];
                    obtain.offsetLocation(this.f3063aF[0], this.f3063aF[1]);
                    int[] iArr2 = this.f3064aG;
                    iArr2[0] = iArr2[0] + this.f3063aF[0];
                    int[] iArr3 = this.f3064aG;
                    iArr3[1] = iArr3[1] + this.f3063aF[1];
                }
                if (this.f3078al != 1) {
                    if (!mo3157e || Math.abs(i4) <= this.f3085as) {
                        z = false;
                    } else {
                        if (i4 > 0) {
                            i2 = i4 - this.f3085as;
                        } else {
                            i2 = this.f3085as + i4;
                        }
                        z = true;
                        i4 = i2;
                    }
                    if (mo3160f && Math.abs(i5) > this.f3085as) {
                        if (i5 > 0) {
                            i = i5 - this.f3085as;
                        } else {
                            i = this.f3085as + i5;
                        }
                        z = true;
                        i5 = i;
                    }
                    if (z) {
                        setScrollState(1);
                    }
                }
                if (this.f3078al == 1) {
                    this.f3083aq = x2 - this.f3063aF[0];
                    this.f3084ar = y2 - this.f3063aF[1];
                    if (m3248a(mo3157e ? i4 : 0, mo3160f ? i5 : 0, obtain)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    if (this.f3042B != null && (i4 != 0 || i5 != 0)) {
                        this.f3042B.m3982a(this, i4, i5);
                        break;
                    }
                }
                break;
            case 3:
                m3191E();
                break;
            case 5:
                this.f3079am = motionEvent.getPointerId(actionIndex);
                int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                this.f3083aq = x3;
                this.f3081ao = x3;
                int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                this.f3084ar = y3;
                this.f3082ap = y3;
                break;
            case 6:
                m3219c(motionEvent);
                break;
        }
        if (!z2) {
            this.f3080an.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    /* renamed from: D */
    private void m3190D() {
        if (this.f3080an != null) {
            this.f3080an.clear();
        }
        stopNestedScroll(0);
        m3189C();
    }

    /* renamed from: E */
    private void m3191E() {
        m3190D();
        setScrollState(0);
    }

    /* renamed from: c */
    private void m3219c(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f3079am) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f3079am = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.f3083aq = x;
            this.f3081ao = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.f3084ar = y;
            this.f3082ap = y;
        }
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        float f2;
        float f3;
        if (this.f3102n != null && !this.f3110v && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                float f4 = this.f3102n.mo3160f() ? -motionEvent.getAxisValue(9) : 0.0f;
                if (this.f3102n.mo3157e()) {
                    f = motionEvent.getAxisValue(10);
                    f2 = f4;
                } else {
                    f = 0.0f;
                    f2 = f4;
                }
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                float axisValue = motionEvent.getAxisValue(26);
                if (this.f3102n.mo3160f()) {
                    f3 = -axisValue;
                    axisValue = 0.0f;
                } else if (this.f3102n.mo3157e()) {
                    f3 = 0.0f;
                } else {
                    axisValue = 0.0f;
                    f3 = 0.0f;
                }
                f = axisValue;
                f2 = f3;
            } else {
                f = 0.0f;
                f2 = 0.0f;
            }
            if (f2 != 0.0f || f != 0.0f) {
                m3248a((int) (this.f3089aw * f), (int) (this.f3090ax * f2), motionEvent);
            }
        }
        return false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z = false;
        if (this.f3102n == null) {
            m3274e(i, i2);
            return;
        }
        if (this.f3102n.mo3151c()) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f3102n.m3405a(this.f3093e, this.f3044D, i, i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            if (!z && this.f3101m != null) {
                if (this.f3044D.f3195d == 1) {
                    m3199M();
                }
                this.f3102n.m3437c(i, i2);
                this.f3044D.f3200i = true;
                m3200N();
                this.f3102n.m3446d(i, i2);
                if (this.f3102n.mo3168l()) {
                    this.f3102n.m3437c(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), C1167C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), C1167C.ENCODING_PCM_32BIT));
                    this.f3044D.f3200i = true;
                    m3200N();
                    this.f3102n.m3446d(i, i2);
                    return;
                }
                return;
            }
            return;
        }
        if (this.f3106r) {
            this.f3102n.m3405a(this.f3093e, this.f3044D, i, i2);
            return;
        }
        if (this.f3111w) {
            m3272e();
            m3292l();
            m3194H();
            m3294m();
            if (this.f3044D.f3202k) {
                this.f3044D.f3198g = true;
            } else {
                this.f3094f.m4284e();
                this.f3044D.f3198g = false;
            }
            this.f3111w = false;
            m3247a(false);
        } else if (this.f3044D.f3202k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        if (this.f3101m != null) {
            this.f3044D.f3196e = this.f3101m.mo1587a();
        } else {
            this.f3044D.f3196e = 0;
        }
        m3272e();
        this.f3102n.m3405a(this.f3093e, this.f3044D, i, i2);
        m3247a(false);
        this.f3044D.f3198g = false;
    }

    /* renamed from: e */
    void m3274e(int i, int i2) {
        setMeasuredDimension(AbstractC0603i.m3382a(i, getPaddingLeft() + getPaddingRight(), ViewCompat.getMinimumWidth(this)), AbstractC0603i.m3382a(i2, getPaddingTop() + getPaddingBottom(), ViewCompat.getMinimumHeight(this)));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3 || i2 != i4) {
            m3290k();
        }
    }

    public void setItemAnimator(@Nullable AbstractC0600f abstractC0600f) {
        if (this.f3114z != null) {
            this.f3114z.mo3361d();
            this.f3114z.m3354a(null);
        }
        this.f3114z = abstractC0600f;
        if (this.f3114z != null) {
            this.f3114z.m3354a(this.f3059aB);
        }
    }

    /* renamed from: l */
    void m3292l() {
        this.f3071ae++;
    }

    /* renamed from: m */
    void m3294m() {
        m3259b(true);
    }

    /* renamed from: b */
    void m3259b(boolean z) {
        this.f3071ae--;
        if (this.f3071ae < 1) {
            this.f3071ae = 0;
            if (z) {
                m3192F();
                m3305x();
            }
        }
    }

    /* renamed from: n */
    boolean m3295n() {
        return this.f3069ac != null && this.f3069ac.isEnabled();
    }

    /* renamed from: F */
    private void m3192F() {
        int i = this.f3068ab;
        this.f3068ab = 0;
        if (i != 0 && m3295n()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(2048);
            AccessibilityEventCompat.setContentChangeTypes(obtain, i);
            sendAccessibilityEventUnchecked(obtain);
        }
    }

    /* renamed from: o */
    public boolean m3296o() {
        return this.f3071ae > 0;
    }

    /* renamed from: a */
    boolean m3251a(AccessibilityEvent accessibilityEvent) {
        if (!m3296o()) {
            return false;
        }
        int contentChangeTypes = accessibilityEvent != null ? AccessibilityEventCompat.getContentChangeTypes(accessibilityEvent) : 0;
        this.f3068ab = (contentChangeTypes != 0 ? contentChangeTypes : 0) | this.f3068ab;
        return true;
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!m3251a(accessibilityEvent)) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }

    @Nullable
    public AbstractC0600f getItemAnimator() {
        return this.f3114z;
    }

    /* renamed from: p */
    void m3297p() {
        if (!this.f3047G && this.f3105q) {
            ViewCompat.postOnAnimation(this, this.f3065aH);
            this.f3047G = true;
        }
    }

    /* renamed from: G */
    private boolean m3193G() {
        return this.f3114z != null && this.f3102n.mo3095b();
    }

    /* renamed from: H */
    private void m3194H() {
        if (this.f3112x) {
            this.f3094f.m4275a();
            if (this.f3113y) {
                this.f3102n.mo3086a(this);
            }
        }
        if (m3193G()) {
            this.f3094f.m4280b();
        } else {
            this.f3094f.m4284e();
        }
        boolean z = this.f3045E || this.f3046F;
        this.f3044D.f3201j = this.f3108t && this.f3114z != null && (this.f3112x || z || this.f3102n.f3147u) && (!this.f3112x || this.f3101m.m3344e());
        this.f3044D.f3202k = this.f3044D.f3201j && z && !this.f3112x && m3193G();
    }

    /* renamed from: q */
    void m3298q() {
        if (this.f3101m == null) {
            Log.e("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.f3102n == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        this.f3044D.f3200i = false;
        if (this.f3044D.f3195d == 1) {
            m3199M();
            this.f3102n.m3454f(this);
            m3200N();
        } else if (this.f3094f.m4285f() || this.f3102n.m3480y() != getWidth() || this.f3102n.m3481z() != getHeight()) {
            this.f3102n.m3454f(this);
            m3200N();
        } else {
            this.f3102n.m3454f(this);
        }
        m3201O();
    }

    /* renamed from: I */
    private void m3195I() {
        int m3603e;
        View focusedChild = (this.f3091ay && hasFocus() && this.f3101m != null) ? getFocusedChild() : null;
        AbstractC0617w m3268d = focusedChild == null ? null : m3268d(focusedChild);
        if (m3268d == null) {
            m3196J();
            return;
        }
        this.f3044D.f3204m = this.f3101m.m3344e() ? m3268d.m3605g() : -1L;
        C0614t c0614t = this.f3044D;
        if (this.f3112x) {
            m3603e = -1;
        } else {
            m3603e = m3268d.m3615q() ? m3268d.f3220d : m3268d.m3603e();
        }
        c0614t.f3203l = m3603e;
        this.f3044D.f3205n = m3224m(m3268d.f3217a);
    }

    /* renamed from: J */
    private void m3196J() {
        this.f3044D.f3204m = -1L;
        this.f3044D.f3203l = -1;
        this.f3044D.f3205n = -1;
    }

    @Nullable
    /* renamed from: K */
    private View m3197K() {
        int i = this.f3044D.f3203l != -1 ? this.f3044D.f3203l : 0;
        int m3574e = this.f3044D.m3574e();
        for (int i2 = i; i2 < m3574e; i2++) {
            AbstractC0617w m3262c = m3262c(i2);
            if (m3262c == null) {
                break;
            }
            if (m3262c.f3217a.hasFocusable()) {
                return m3262c.f3217a;
            }
        }
        for (int min = Math.min(m3574e, i) - 1; min >= 0; min--) {
            AbstractC0617w m3262c2 = m3262c(min);
            if (m3262c2 == null) {
                return null;
            }
            if (m3262c2.f3217a.hasFocusable()) {
                return m3262c2.f3217a;
            }
        }
        return null;
    }

    /* renamed from: L */
    private void m3198L() {
        View view;
        View view2 = null;
        if (this.f3091ay && this.f3101m != null && hasFocus() && getDescendantFocusability() != 393216) {
            if (getDescendantFocusability() != 131072 || !isFocused()) {
                if (!isFocused()) {
                    View focusedChild = getFocusedChild();
                    if (f3035P && (focusedChild.getParent() == null || !focusedChild.hasFocus())) {
                        if (this.f3095g.m3866b() == 0) {
                            requestFocus();
                            return;
                        }
                    } else if (!this.f3095g.m3871c(focusedChild)) {
                        return;
                    }
                }
                AbstractC0617w m3229a = (this.f3044D.f3204m == -1 || !this.f3101m.m3344e()) ? null : m3229a(this.f3044D.f3204m);
                if (m3229a == null || this.f3095g.m3871c(m3229a.f3217a) || !m3229a.f3217a.hasFocusable()) {
                    if (this.f3095g.m3866b() > 0) {
                        view2 = m3197K();
                    }
                } else {
                    view2 = m3229a.f3217a;
                }
                if (view2 != null) {
                    if (this.f3044D.f3205n == -1 || (view = view2.findViewById(this.f3044D.f3205n)) == null || !view.isFocusable()) {
                        view = view2;
                    }
                    view.requestFocus();
                }
            }
        }
    }

    /* renamed from: m */
    private int m3224m(View view) {
        int id = view.getId();
        View view2 = view;
        while (!view2.isFocused() && (view2 instanceof ViewGroup) && view2.hasFocus()) {
            view2 = ((ViewGroup) view2).getFocusedChild();
            if (view2.getId() != -1) {
                id = view2.getId();
            }
        }
        return id;
    }

    /* renamed from: a */
    final void m3243a(C0614t c0614t) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.f3041A.f3209a;
            c0614t.f3206o = overScroller.getFinalX() - overScroller.getCurrX();
            c0614t.f3207p = overScroller.getFinalY() - overScroller.getCurrY();
        } else {
            c0614t.f3206o = 0;
            c0614t.f3207p = 0;
        }
    }

    /* renamed from: M */
    private void m3199M() {
        this.f3044D.m3568a(1);
        m3243a(this.f3044D);
        this.f3044D.f3200i = false;
        m3272e();
        this.f3096h.m4226a();
        m3292l();
        m3194H();
        m3195I();
        this.f3044D.f3199h = this.f3044D.f3201j && this.f3046F;
        this.f3046F = false;
        this.f3045E = false;
        this.f3044D.f3198g = this.f3044D.f3202k;
        this.f3044D.f3196e = this.f3101m.mo1587a();
        m3213a(this.f3061aD);
        if (this.f3044D.f3201j) {
            int m3866b = this.f3095g.m3866b();
            for (int i = 0; i < m3866b; i++) {
                AbstractC0617w m3220e = m3220e(this.f3095g.m3868b(i));
                if (!m3220e.m3601c() && (!m3220e.m3612n() || this.f3101m.m3344e())) {
                    this.f3096h.m4228a(m3220e, this.f3114z.m3352a(this.f3044D, m3220e, AbstractC0600f.m3350e(m3220e), m3220e.m3619u()));
                    if (this.f3044D.f3199h && m3220e.m3624z() && !m3220e.m3615q() && !m3220e.m3601c() && !m3220e.m3612n()) {
                        this.f3096h.m4227a(m3227a(m3220e), m3220e);
                    }
                }
            }
        }
        if (this.f3044D.f3202k) {
            m3300s();
            boolean z = this.f3044D.f3197f;
            this.f3044D.f3197f = false;
            this.f3102n.mo3096c(this.f3093e, this.f3044D);
            this.f3044D.f3197f = z;
            for (int i2 = 0; i2 < this.f3095g.m3866b(); i2++) {
                AbstractC0617w m3220e2 = m3220e(this.f3095g.m3868b(i2));
                if (!m3220e2.m3601c() && !this.f3096h.m4236d(m3220e2)) {
                    int m3350e = AbstractC0600f.m3350e(m3220e2);
                    boolean m3597a = m3220e2.m3597a(8192);
                    if (!m3597a) {
                        m3350e |= 4096;
                    }
                    AbstractC0600f.c m3352a = this.f3114z.m3352a(this.f3044D, m3220e2, m3350e, m3220e2.m3619u());
                    if (m3597a) {
                        m3244a(m3220e2, m3352a);
                    } else {
                        this.f3096h.m4233b(m3220e2, m3352a);
                    }
                }
            }
            m3301t();
        } else {
            m3301t();
        }
        m3294m();
        m3247a(false);
        this.f3044D.f3195d = 2;
    }

    /* renamed from: N */
    private void m3200N() {
        m3272e();
        m3292l();
        this.f3044D.m3568a(6);
        this.f3094f.m4284e();
        this.f3044D.f3196e = this.f3101m.mo1587a();
        this.f3044D.f3194c = 0;
        this.f3044D.f3198g = false;
        this.f3102n.mo3096c(this.f3093e, this.f3044D);
        this.f3044D.f3197f = false;
        this.f3053S = null;
        this.f3044D.f3201j = this.f3044D.f3201j && this.f3114z != null;
        this.f3044D.f3195d = 4;
        m3294m();
        m3247a(false);
    }

    /* renamed from: O */
    private void m3201O() {
        this.f3044D.m3568a(4);
        m3272e();
        m3292l();
        this.f3044D.f3195d = 1;
        if (this.f3044D.f3201j) {
            for (int m3866b = this.f3095g.m3866b() - 1; m3866b >= 0; m3866b--) {
                AbstractC0617w m3220e = m3220e(this.f3095g.m3868b(m3866b));
                if (!m3220e.m3601c()) {
                    long m3227a = m3227a(m3220e);
                    AbstractC0600f.c m3351a = this.f3114z.m3351a(this.f3044D, m3220e);
                    AbstractC0617w m4225a = this.f3096h.m4225a(m3227a);
                    if (m4225a != null && !m4225a.m3601c()) {
                        boolean m4230a = this.f3096h.m4230a(m4225a);
                        boolean m4230a2 = this.f3096h.m4230a(m3220e);
                        if (m4230a && m4225a == m3220e) {
                            this.f3096h.m4235c(m3220e, m3351a);
                        } else {
                            AbstractC0600f.c m4231b = this.f3096h.m4231b(m4225a);
                            this.f3096h.m4235c(m3220e, m3351a);
                            AbstractC0600f.c m4234c = this.f3096h.m4234c(m3220e);
                            if (m4231b == null) {
                                m3204a(m3227a, m3220e, m4225a);
                            } else {
                                m3207a(m4225a, m3220e, m4231b, m4234c, m4230a, m4230a2);
                            }
                        }
                    } else {
                        this.f3096h.m4235c(m3220e, m3351a);
                    }
                }
            }
            this.f3096h.m4229a(this.f3066aI);
        }
        this.f3102n.m3430b(this.f3093e);
        this.f3044D.f3193b = this.f3044D.f3196e;
        this.f3112x = false;
        this.f3113y = false;
        this.f3044D.f3201j = false;
        this.f3044D.f3202k = false;
        this.f3102n.f3147u = false;
        if (this.f3093e.f3169b != null) {
            this.f3093e.f3169b.clear();
        }
        if (this.f3102n.f3151y) {
            this.f3102n.f3150x = 0;
            this.f3102n.f3151y = false;
            this.f3093e.m3531b();
        }
        this.f3102n.mo3084a(this.f3044D);
        m3294m();
        m3247a(false);
        this.f3096h.m4226a();
        if (m3223j(this.f3061aD[0], this.f3061aD[1])) {
            m3288i(0, 0);
        }
        m3198L();
        m3196J();
    }

    /* renamed from: a */
    private void m3204a(long j, AbstractC0617w abstractC0617w, AbstractC0617w abstractC0617w2) {
        int m3866b = this.f3095g.m3866b();
        for (int i = 0; i < m3866b; i++) {
            AbstractC0617w m3220e = m3220e(this.f3095g.m3868b(i));
            if (m3220e != abstractC0617w && m3227a(m3220e) == j) {
                if (this.f3101m != null && this.f3101m.m3344e()) {
                    throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + m3220e + " \n View Holder 2:" + abstractC0617w + m3230a());
                }
                throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + m3220e + " \n View Holder 2:" + abstractC0617w + m3230a());
            }
        }
        Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + abstractC0617w2 + " cannot be found but it is necessary for " + abstractC0617w + m3230a());
    }

    /* renamed from: a */
    void m3244a(AbstractC0617w abstractC0617w, AbstractC0600f.c cVar) {
        abstractC0617w.m3590a(0, 8192);
        if (this.f3044D.f3199h && abstractC0617w.m3624z() && !abstractC0617w.m3615q() && !abstractC0617w.m3601c()) {
            this.f3096h.m4227a(m3227a(abstractC0617w), abstractC0617w);
        }
        this.f3096h.m4228a(abstractC0617w, cVar);
    }

    /* renamed from: a */
    private void m3213a(int[] iArr) {
        int m3866b = this.f3095g.m3866b();
        if (m3866b == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < m3866b; i3++) {
            AbstractC0617w m3220e = m3220e(this.f3095g.m3868b(i3));
            if (!m3220e.m3601c()) {
                int m3602d = m3220e.m3602d();
                if (m3602d < i) {
                    i = m3602d;
                }
                if (m3602d > i2) {
                    i2 = m3602d;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    /* renamed from: j */
    private boolean m3223j(int i, int i2) {
        m3213a(this.f3061aD);
        return (this.f3061aD[0] == i && this.f3061aD[1] == i2) ? false : true;
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        AbstractC0617w m3220e = m3220e(view);
        if (m3220e != null) {
            if (m3220e.m3616r()) {
                m3220e.m3611m();
            } else if (!m3220e.m3601c()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + m3220e + m3230a());
            }
        }
        view.clearAnimation();
        m3291k(view);
        super.removeDetachedView(view, z);
    }

    /* renamed from: a */
    long m3227a(AbstractC0617w abstractC0617w) {
        return this.f3101m.m3344e() ? abstractC0617w.m3605g() : abstractC0617w.f3219c;
    }

    /* renamed from: a */
    void m3245a(@NonNull AbstractC0617w abstractC0617w, @Nullable AbstractC0600f.c cVar, @NonNull AbstractC0600f.c cVar2) {
        abstractC0617w.m3596a(false);
        if (this.f3114z.mo3359b(abstractC0617w, cVar, cVar2)) {
            m3297p();
        }
    }

    /* renamed from: b */
    void m3258b(@NonNull AbstractC0617w abstractC0617w, @NonNull AbstractC0600f.c cVar, @Nullable AbstractC0600f.c cVar2) {
        m3221e(abstractC0617w);
        abstractC0617w.m3596a(false);
        if (this.f3114z.mo3355a(abstractC0617w, cVar, cVar2)) {
            m3297p();
        }
    }

    /* renamed from: a */
    private void m3207a(@NonNull AbstractC0617w abstractC0617w, @NonNull AbstractC0617w abstractC0617w2, @NonNull AbstractC0600f.c cVar, @NonNull AbstractC0600f.c cVar2, boolean z, boolean z2) {
        abstractC0617w.m3596a(false);
        if (z) {
            m3221e(abstractC0617w);
        }
        if (abstractC0617w != abstractC0617w2) {
            if (z2) {
                m3221e(abstractC0617w2);
            }
            abstractC0617w.f3224h = abstractC0617w2;
            m3221e(abstractC0617w);
            this.f3093e.m3538c(abstractC0617w);
            abstractC0617w2.m3596a(false);
            abstractC0617w2.f3225i = abstractC0617w;
        }
        if (this.f3114z.mo3356a(abstractC0617w, abstractC0617w2, cVar, cVar2)) {
            m3297p();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        TraceCompat.beginSection("RV OnLayout");
        m3298q();
        TraceCompat.endSection();
        this.f3108t = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f3057W == 0 && !this.f3110v) {
            super.requestLayout();
        } else {
            this.f3109u = true;
        }
    }

    /* renamed from: r */
    void m3299r() {
        int m3869c = this.f3095g.m3869c();
        for (int i = 0; i < m3869c; i++) {
            ((C0604j) this.f3095g.m3872d(i).getLayoutParams()).f3160e = true;
        }
        this.f3093e.m3550j();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        boolean z2 = false;
        super.draw(canvas);
        int size = this.f3104p.size();
        for (int i = 0; i < size; i++) {
            this.f3104p.get(i).mo3377a(canvas, this, this.f3044D);
        }
        if (this.f3074ah == null || this.f3074ah.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.f3097i ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate(paddingBottom + (-getHeight()), 0.0f);
            z = this.f3074ah != null && this.f3074ah.draw(canvas);
            canvas.restoreToCount(save);
        }
        if (this.f3075ai != null && !this.f3075ai.isFinished()) {
            int save2 = canvas.save();
            if (this.f3097i) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            z |= this.f3075ai != null && this.f3075ai.draw(canvas);
            canvas.restoreToCount(save2);
        }
        if (this.f3076aj != null && !this.f3076aj.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f3097i ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            z |= this.f3076aj != null && this.f3076aj.draw(canvas);
            canvas.restoreToCount(save3);
        }
        if (this.f3077ak != null && !this.f3077ak.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f3097i) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            if (this.f3077ak != null && this.f3077ak.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(save4);
        }
        if ((z || this.f3114z == null || this.f3104p.size() <= 0 || !this.f3114z.mo3358b()) ? z : true) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f3104p.size();
        for (int i = 0; i < size; i++) {
            this.f3104p.get(i).m3381b(canvas, this, this.f3044D);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0604j) && this.f3102n.mo3091a((C0604j) layoutParams);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        if (this.f3102n == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager" + m3230a());
        }
        return this.f3102n.mo3074a();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        if (this.f3102n == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager" + m3230a());
        }
        return this.f3102n.mo3075a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (this.f3102n == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager" + m3230a());
        }
        return this.f3102n.mo3076a(layoutParams);
    }

    /* renamed from: s */
    void m3300s() {
        int m3869c = this.f3095g.m3869c();
        for (int i = 0; i < m3869c; i++) {
            AbstractC0617w m3220e = m3220e(this.f3095g.m3872d(i));
            if (!m3220e.m3601c()) {
                m3220e.m3598b();
            }
        }
    }

    /* renamed from: t */
    void m3301t() {
        int m3869c = this.f3095g.m3869c();
        for (int i = 0; i < m3869c; i++) {
            AbstractC0617w m3220e = m3220e(this.f3095g.m3872d(i));
            if (!m3220e.m3601c()) {
                m3220e.m3589a();
            }
        }
        this.f3093e.m3549i();
    }

    /* renamed from: f */
    void m3278f(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int m3869c = this.f3095g.m3869c();
        if (i < i2) {
            i3 = -1;
            i4 = i2;
            i5 = i;
        } else {
            i3 = 1;
            i4 = i;
            i5 = i2;
        }
        for (int i6 = 0; i6 < m3869c; i6++) {
            AbstractC0617w m3220e = m3220e(this.f3095g.m3872d(i6));
            if (m3220e != null && m3220e.f3219c >= i5 && m3220e.f3219c <= i4) {
                if (m3220e.f3219c == i) {
                    m3220e.m3592a(i2 - i, false);
                } else {
                    m3220e.m3592a(i3, false);
                }
                this.f3044D.f3197f = true;
            }
        }
        this.f3093e.m3521a(i, i2);
        requestLayout();
    }

    /* renamed from: g */
    void m3281g(int i, int i2) {
        int m3869c = this.f3095g.m3869c();
        for (int i3 = 0; i3 < m3869c; i3++) {
            AbstractC0617w m3220e = m3220e(this.f3095g.m3872d(i3));
            if (m3220e != null && !m3220e.m3601c() && m3220e.f3219c >= i) {
                m3220e.m3592a(i2, false);
                this.f3044D.f3197f = true;
            }
        }
        this.f3093e.m3532b(i, i2);
        requestLayout();
    }

    /* renamed from: a */
    void m3235a(int i, int i2, boolean z) {
        int i3 = i + i2;
        int m3869c = this.f3095g.m3869c();
        for (int i4 = 0; i4 < m3869c; i4++) {
            AbstractC0617w m3220e = m3220e(this.f3095g.m3872d(i4));
            if (m3220e != null && !m3220e.m3601c()) {
                if (m3220e.f3219c >= i3) {
                    m3220e.m3592a(-i2, z);
                    this.f3044D.f3197f = true;
                } else if (m3220e.f3219c >= i) {
                    m3220e.m3591a(i - 1, -i2, z);
                    this.f3044D.f3197f = true;
                }
            }
        }
        this.f3093e.m3522a(i, i2, z);
        requestLayout();
    }

    /* renamed from: a */
    void m3234a(int i, int i2, Object obj) {
        int m3869c = this.f3095g.m3869c();
        int i3 = i + i2;
        for (int i4 = 0; i4 < m3869c; i4++) {
            View m3872d = this.f3095g.m3872d(i4);
            AbstractC0617w m3220e = m3220e(m3872d);
            if (m3220e != null && !m3220e.m3601c() && m3220e.f3219c >= i && m3220e.f3219c < i3) {
                m3220e.m3599b(2);
                m3220e.m3595a(obj);
                ((C0604j) m3872d.getLayoutParams()).f3160e = true;
            }
        }
        this.f3093e.m3537c(i, i2);
    }

    /* renamed from: b */
    boolean m3261b(AbstractC0617w abstractC0617w) {
        return this.f3114z == null || this.f3114z.mo3357a(abstractC0617w, abstractC0617w.m3619u());
    }

    /* renamed from: c */
    void m3266c(boolean z) {
        this.f3113y |= z;
        this.f3112x = true;
        m3302u();
    }

    /* renamed from: u */
    void m3302u() {
        int m3869c = this.f3095g.m3869c();
        for (int i = 0; i < m3869c; i++) {
            AbstractC0617w m3220e = m3220e(this.f3095g.m3872d(i));
            if (m3220e != null && !m3220e.m3601c()) {
                m3220e.m3599b(6);
            }
        }
        m3299r();
        this.f3093e.m3548h();
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f3091ay;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.f3091ay = z;
    }

    /* renamed from: b */
    public AbstractC0617w m3252b(@NonNull View view) {
        ViewParent parent = view.getParent();
        if (parent != null && parent != this) {
            throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
        }
        return m3220e(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
    
        return r0;
     */
    @android.support.annotation.Nullable
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.view.View m3263c(@android.support.annotation.NonNull android.view.View r4) {
        /*
            r3 = this;
            android.view.ViewParent r1 = r4.getParent()
            r0 = r4
        L5:
            if (r1 == 0) goto L15
            if (r1 == r3) goto L15
            boolean r2 = r1 instanceof android.view.View
            if (r2 == 0) goto L15
            r0 = r1
            android.view.View r0 = (android.view.View) r0
            android.view.ViewParent r1 = r0.getParent()
            goto L5
        L15:
            if (r1 != r3) goto L18
        L17:
            return r0
        L18:
            r0 = 0
            goto L17
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView.m3263c(android.view.View):android.view.View");
    }

    @Nullable
    /* renamed from: d */
    public AbstractC0617w m3268d(@NonNull View view) {
        View m3263c = m3263c(view);
        if (m3263c == null) {
            return null;
        }
        return m3252b(m3263c);
    }

    /* renamed from: e */
    static AbstractC0617w m3220e(View view) {
        if (view == null) {
            return null;
        }
        return ((C0604j) view.getLayoutParams()).f3158c;
    }

    /* renamed from: f */
    public int m3275f(@NonNull View view) {
        AbstractC0617w m3220e = m3220e(view);
        if (m3220e != null) {
            return m3220e.m3602d();
        }
        return -1;
    }

    @Nullable
    /* renamed from: c */
    public AbstractC0617w m3262c(int i) {
        if (this.f3112x) {
            return null;
        }
        int m3869c = this.f3095g.m3869c();
        int i2 = 0;
        AbstractC0617w abstractC0617w = null;
        while (i2 < m3869c) {
            AbstractC0617w m3220e = m3220e(this.f3095g.m3872d(i2));
            if (m3220e == null || m3220e.m3615q() || m3267d(m3220e) != i) {
                m3220e = abstractC0617w;
            } else if (!this.f3095g.m3871c(m3220e.f3217a)) {
                return m3220e;
            }
            i2++;
            abstractC0617w = m3220e;
        }
        return abstractC0617w;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a A[SYNTHETIC] */
    @android.support.annotation.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    android.support.v7.widget.RecyclerView.AbstractC0617w m3228a(int r6, boolean r7) {
        /*
            r5 = this;
            android.support.v7.widget.af r0 = r5.f3095g
            int r3 = r0.m3869c()
            r0 = 0
            r1 = 0
            r2 = r1
        L9:
            if (r2 >= r3) goto L39
            android.support.v7.widget.af r1 = r5.f3095g
            android.view.View r1 = r1.m3872d(r2)
            android.support.v7.widget.RecyclerView$w r1 = m3220e(r1)
            if (r1 == 0) goto L23
            boolean r4 = r1.m3615q()
            if (r4 != 0) goto L23
            if (r7 == 0) goto L27
            int r4 = r1.f3219c
            if (r4 == r6) goto L2d
        L23:
            int r1 = r2 + 1
            r2 = r1
            goto L9
        L27:
            int r4 = r1.m3602d()
            if (r4 != r6) goto L23
        L2d:
            android.support.v7.widget.af r0 = r5.f3095g
            android.view.View r4 = r1.f3217a
            boolean r0 = r0.m3871c(r4)
            if (r0 == 0) goto L3a
            r0 = r1
            goto L23
        L39:
            r1 = r0
        L3a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView.m3228a(int, boolean):android.support.v7.widget.RecyclerView$w");
    }

    /* renamed from: a */
    public AbstractC0617w m3229a(long j) {
        if (this.f3101m == null || !this.f3101m.m3344e()) {
            return null;
        }
        int m3869c = this.f3095g.m3869c();
        int i = 0;
        AbstractC0617w abstractC0617w = null;
        while (i < m3869c) {
            AbstractC0617w m3220e = m3220e(this.f3095g.m3872d(i));
            if (m3220e == null || m3220e.m3615q() || m3220e.m3605g() != j) {
                m3220e = abstractC0617w;
            } else if (!this.f3095g.m3871c(m3220e.f3217a)) {
                return m3220e;
            }
            i++;
            abstractC0617w = m3220e;
        }
        return abstractC0617w;
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    /* renamed from: d */
    public void m3270d(@Px int i) {
        int m3866b = this.f3095g.m3866b();
        for (int i2 = 0; i2 < m3866b; i2++) {
            this.f3095g.m3868b(i2).offsetTopAndBottom(i);
        }
    }

    /* renamed from: g */
    public void m3282g(@NonNull View view) {
    }

    /* renamed from: h */
    public void m3285h(@NonNull View view) {
    }

    /* renamed from: e */
    public void m3273e(@Px int i) {
        int m3866b = this.f3095g.m3866b();
        for (int i2 = 0; i2 < m3866b; i2++) {
            this.f3095g.m3868b(i2).offsetLeftAndRight(i);
        }
    }

    /* renamed from: a */
    static void m3211a(View view, Rect rect) {
        C0604j c0604j = (C0604j) view.getLayoutParams();
        Rect rect2 = c0604j.f3159d;
        rect.set((view.getLeft() - rect2.left) - c0604j.leftMargin, (view.getTop() - rect2.top) - c0604j.topMargin, view.getRight() + rect2.right + c0604j.rightMargin, c0604j.bottomMargin + rect2.bottom + view.getBottom());
    }

    /* renamed from: i */
    Rect m3286i(View view) {
        C0604j c0604j = (C0604j) view.getLayoutParams();
        if (!c0604j.f3160e) {
            return c0604j.f3159d;
        }
        if (this.f3044D.m3570a() && (c0604j.m3490e() || c0604j.m3488c())) {
            return c0604j.f3159d;
        }
        Rect rect = c0604j.f3159d;
        rect.set(0, 0, 0, 0);
        int size = this.f3104p.size();
        for (int i = 0; i < size; i++) {
            this.f3099k.set(0, 0, 0, 0);
            this.f3104p.get(i).m3379a(this.f3099k, view, this, this.f3044D);
            rect.left += this.f3099k.left;
            rect.top += this.f3099k.top;
            rect.right += this.f3099k.right;
            rect.bottom += this.f3099k.bottom;
        }
        c0604j.f3160e = false;
        return rect;
    }

    /* renamed from: h */
    public void m3284h(@Px int i, @Px int i2) {
    }

    /* renamed from: i */
    void m3288i(int i, int i2) {
        this.f3072af++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        m3284h(i, i2);
        if (this.f3092az != null) {
            this.f3092az.mo3499a(this, i, i2);
        }
        if (this.f3058aA != null) {
            for (int size = this.f3058aA.size() - 1; size >= 0; size--) {
                this.f3058aA.get(size).mo3499a(this, i, i2);
            }
        }
        this.f3072af--;
    }

    /* renamed from: f */
    public void m3277f(int i) {
    }

    /* renamed from: g */
    void m3280g(int i) {
        if (this.f3102n != null) {
            this.f3102n.mo3466l(i);
        }
        m3277f(i);
        if (this.f3092az != null) {
            this.f3092az.mo3498a(this, i);
        }
        if (this.f3058aA != null) {
            for (int size = this.f3058aA.size() - 1; size >= 0; size--) {
                this.f3058aA.get(size).mo3498a(this, i);
            }
        }
    }

    /* renamed from: v */
    public boolean m3303v() {
        return !this.f3108t || this.f3112x || this.f3094f.m4283d();
    }

    /* renamed from: android.support.v7.widget.RecyclerView$v */
    class RunnableC0616v implements Runnable {

        /* renamed from: a */
        OverScroller f3209a;

        /* renamed from: d */
        private int f3212d;

        /* renamed from: e */
        private int f3213e;

        /* renamed from: b */
        Interpolator f3210b = RecyclerView.f3031L;

        /* renamed from: f */
        private boolean f3214f = false;

        /* renamed from: g */
        private boolean f3215g = false;

        RunnableC0616v() {
            this.f3209a = new OverScroller(RecyclerView.this.getContext(), RecyclerView.f3031L);
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            if (RecyclerView.this.f3102n == null) {
                m3586b();
                return;
            }
            m3578c();
            RecyclerView.this.m3269d();
            OverScroller overScroller = this.f3209a;
            AbstractC0613s abstractC0613s = RecyclerView.this.f3102n.f3146t;
            if (overScroller.computeScrollOffset()) {
                int[] iArr = RecyclerView.this.f3049I;
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i9 = currX - this.f3212d;
                int i10 = currY - this.f3213e;
                this.f3212d = currX;
                this.f3213e = currY;
                if (RecyclerView.this.dispatchNestedPreScroll(i9, i10, iArr, null, 1)) {
                    int i11 = i9 - iArr[0];
                    i = i10 - iArr[1];
                    i2 = i11;
                } else {
                    i = i10;
                    i2 = i9;
                }
                if (RecyclerView.this.f3101m == null) {
                    i3 = 0;
                    i4 = 0;
                    i5 = 0;
                    i6 = 0;
                } else {
                    RecyclerView.this.m3236a(i2, i, RecyclerView.this.f3050J);
                    i6 = RecyclerView.this.f3050J[0];
                    i5 = RecyclerView.this.f3050J[1];
                    i4 = i2 - i6;
                    i3 = i - i5;
                    if (abstractC0613s != null && !abstractC0613s.m3561c() && abstractC0613s.m3562d()) {
                        int m3574e = RecyclerView.this.f3044D.m3574e();
                        if (m3574e == 0) {
                            abstractC0613s.m3559b();
                        } else if (abstractC0613s.m3563e() >= m3574e) {
                            abstractC0613s.m3554a(m3574e - 1);
                            abstractC0613s.m3555a(i2 - i4, i - i3);
                        } else {
                            abstractC0613s.m3555a(i2 - i4, i - i3);
                        }
                    }
                }
                if (!RecyclerView.this.f3104p.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.m3265c(i2, i);
                }
                if (!RecyclerView.this.dispatchNestedScroll(i6, i5, i4, i3, null, 1) && (i4 != 0 || i3 != 0)) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    if (i4 == currX) {
                        i7 = 0;
                    } else {
                        if (i4 < 0) {
                            i8 = -currVelocity;
                        } else {
                            i8 = i4 > 0 ? currVelocity : 0;
                        }
                        i7 = i8;
                    }
                    if (i3 == currY) {
                        currVelocity = 0;
                    } else if (i3 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i3 <= 0) {
                        currVelocity = 0;
                    }
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        RecyclerView.this.m3271d(i7, currVelocity);
                    }
                    if ((i7 != 0 || i4 == currX || overScroller.getFinalX() == 0) && (currVelocity != 0 || i3 == currY || overScroller.getFinalY() == 0)) {
                        overScroller.abortAnimation();
                    }
                }
                if (i6 != 0 || i5 != 0) {
                    RecyclerView.this.m3288i(i6, i5);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = (i2 == 0 && i == 0) || (i2 != 0 && RecyclerView.this.f3102n.mo3157e() && i6 == i2) || (i != 0 && RecyclerView.this.f3102n.mo3160f() && i5 == i);
                if (overScroller.isFinished() || (!z && !RecyclerView.this.hasNestedScrollingParent(1))) {
                    RecyclerView.this.setScrollState(0);
                    if (RecyclerView.f3040d) {
                        RecyclerView.this.f3043C.m3985a();
                    }
                    RecyclerView.this.stopNestedScroll(1);
                } else {
                    m3580a();
                    if (RecyclerView.this.f3042B != null) {
                        RecyclerView.this.f3042B.m3982a(RecyclerView.this, i2, i);
                    }
                }
            }
            if (abstractC0613s != null) {
                if (abstractC0613s.m3561c()) {
                    abstractC0613s.m3555a(0, 0);
                }
                if (!this.f3215g) {
                    abstractC0613s.m3559b();
                }
            }
            m3579d();
        }

        /* renamed from: c */
        private void m3578c() {
            this.f3215g = false;
            this.f3214f = true;
        }

        /* renamed from: d */
        private void m3579d() {
            this.f3214f = false;
            if (this.f3215g) {
                m3580a();
            }
        }

        /* renamed from: a */
        void m3580a() {
            if (this.f3214f) {
                this.f3215g = true;
            } else {
                RecyclerView.this.removeCallbacks(this);
                ViewCompat.postOnAnimation(RecyclerView.this, this);
            }
        }

        /* renamed from: a */
        public void m3581a(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.f3213e = 0;
            this.f3212d = 0;
            this.f3209a.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            m3580a();
        }

        /* renamed from: b */
        public void m3587b(int i, int i2) {
            m3583a(i, i2, 0, 0);
        }

        /* renamed from: a */
        public void m3583a(int i, int i2, int i3, int i4) {
            m3582a(i, i2, m3577b(i, i2, i3, i4));
        }

        /* renamed from: a */
        private float m3576a(float f) {
            return (float) Math.sin((f - 0.5f) * 0.47123894f);
        }

        /* renamed from: b */
        private int m3577b(int i, int i2, int i3, int i4) {
            int i5;
            boolean z = Math.abs(i) > Math.abs(i2);
            int sqrt = (int) Math.sqrt((i3 * i3) + (i4 * i4));
            int sqrt2 = (int) Math.sqrt((i * i) + (i2 * i2));
            int width = z ? RecyclerView.this.getWidth() : RecyclerView.this.getHeight();
            int i6 = width / 2;
            float m3576a = (m3576a(Math.min(1.0f, (sqrt2 * 1.0f) / width)) * i6) + i6;
            if (sqrt > 0) {
                i5 = Math.round(1000.0f * Math.abs(m3576a / sqrt)) * 4;
            } else {
                i5 = (int) ((((z ? r2 : r3) / width) + 1.0f) * 300.0f);
            }
            return Math.min(i5, 2000);
        }

        /* renamed from: a */
        public void m3582a(int i, int i2, int i3) {
            m3584a(i, i2, i3, RecyclerView.f3031L);
        }

        /* renamed from: a */
        public void m3585a(int i, int i2, Interpolator interpolator) {
            int m3577b = m3577b(i, i2, 0, 0);
            if (interpolator == null) {
                interpolator = RecyclerView.f3031L;
            }
            m3584a(i, i2, m3577b, interpolator);
        }

        /* renamed from: a */
        public void m3584a(int i, int i2, int i3, Interpolator interpolator) {
            if (this.f3210b != interpolator) {
                this.f3210b = interpolator;
                this.f3209a = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            RecyclerView.this.setScrollState(2);
            this.f3213e = 0;
            this.f3212d = 0;
            this.f3209a.startScroll(0, 0, i, i2, i3);
            if (Build.VERSION.SDK_INT < 23) {
                this.f3209a.computeScrollOffset();
            }
            m3580a();
        }

        /* renamed from: b */
        public void m3586b() {
            RecyclerView.this.removeCallbacks(this);
            this.f3209a.abortAnimation();
        }
    }

    /* renamed from: w */
    void m3304w() {
        int m3866b = this.f3095g.m3866b();
        for (int i = 0; i < m3866b; i++) {
            View m3868b = this.f3095g.m3868b(i);
            AbstractC0617w m3252b = m3252b(m3868b);
            if (m3252b != null && m3252b.f3225i != null) {
                View view = m3252b.f3225i.f3217a;
                int left = m3868b.getLeft();
                int top = m3868b.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$r */
    private class C0612r extends AbstractC0597c {
        C0612r() {
        }

        @Override // android.support.v7.widget.RecyclerView.AbstractC0597c
        /* renamed from: a */
        public void mo3347a() {
            RecyclerView.this.m3246a((String) null);
            RecyclerView.this.f3044D.f3197f = true;
            RecyclerView.this.m3266c(true);
            if (!RecyclerView.this.f3094f.m4283d()) {
                RecyclerView.this.requestLayout();
            }
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$e */
    public static class C0599e {
        @NonNull
        /* renamed from: a */
        protected EdgeEffect m3349a(@NonNull RecyclerView recyclerView, int i) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$o */
    public static class C0609o {

        /* renamed from: a */
        SparseArray<a> f3162a = new SparseArray<>();

        /* renamed from: b */
        private int f3163b = 0;

        /* renamed from: android.support.v7.widget.RecyclerView$o$a */
        static class a {

            /* renamed from: a */
            final ArrayList<AbstractC0617w> f3164a = new ArrayList<>();

            /* renamed from: b */
            int f3165b = 5;

            /* renamed from: c */
            long f3166c = 0;

            /* renamed from: d */
            long f3167d = 0;

            a() {
            }
        }

        /* renamed from: a */
        public void m3503a() {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f3162a.size()) {
                    this.f3162a.valueAt(i2).f3164a.clear();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }

        @Nullable
        /* renamed from: a */
        public AbstractC0617w m3502a(int i) {
            a aVar = this.f3162a.get(i);
            if (aVar == null || aVar.f3164a.isEmpty()) {
                return null;
            }
            return aVar.f3164a.remove(r0.size() - 1);
        }

        /* renamed from: a */
        public void m3506a(AbstractC0617w abstractC0617w) {
            int m3606h = abstractC0617w.m3606h();
            ArrayList<AbstractC0617w> arrayList = m3500b(m3606h).f3164a;
            if (this.f3162a.get(m3606h).f3165b > arrayList.size()) {
                abstractC0617w.m3620v();
                arrayList.add(abstractC0617w);
            }
        }

        /* renamed from: a */
        long m3501a(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        /* renamed from: a */
        void m3504a(int i, long j) {
            a m3500b = m3500b(i);
            m3500b.f3166c = m3501a(m3500b.f3166c, j);
        }

        /* renamed from: b */
        void m3509b(int i, long j) {
            a m3500b = m3500b(i);
            m3500b.f3167d = m3501a(m3500b.f3167d, j);
        }

        /* renamed from: a */
        boolean m3507a(int i, long j, long j2) {
            long j3 = m3500b(i).f3166c;
            return j3 == 0 || j3 + j < j2;
        }

        /* renamed from: b */
        boolean m3510b(int i, long j, long j2) {
            long j3 = m3500b(i).f3167d;
            return j3 == 0 || j3 + j < j2;
        }

        /* renamed from: b */
        void m3508b() {
            this.f3163b++;
        }

        /* renamed from: c */
        void m3511c() {
            this.f3163b--;
        }

        /* renamed from: a */
        void m3505a(AbstractC0595a abstractC0595a, AbstractC0595a abstractC0595a2, boolean z) {
            if (abstractC0595a != null) {
                m3511c();
            }
            if (!z && this.f3163b == 0) {
                m3503a();
            }
            if (abstractC0595a2 != null) {
                m3508b();
            }
        }

        /* renamed from: b */
        private a m3500b(int i) {
            a aVar = this.f3162a.get(i);
            if (aVar == null) {
                a aVar2 = new a();
                this.f3162a.put(i, aVar2);
                return aVar2;
            }
            return aVar;
        }
    }

    @Nullable
    /* renamed from: j */
    static RecyclerView m3222j(@NonNull View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView m3222j = m3222j(viewGroup.getChildAt(i));
            if (m3222j != null) {
                return m3222j;
            }
        }
        return null;
    }

    /* renamed from: c */
    static void m3218c(@NonNull AbstractC0617w abstractC0617w) {
        if (abstractC0617w.f3218b != null) {
            RecyclerView recyclerView = abstractC0617w.f3218b.get();
            while (recyclerView != null) {
                if (recyclerView != abstractC0617w.f3217a) {
                    Object parent = recyclerView.getParent();
                    recyclerView = parent instanceof View ? (View) parent : null;
                } else {
                    return;
                }
            }
            abstractC0617w.f3218b = null;
        }
    }

    long getNanoTime() {
        if (f3040d) {
            return System.nanoTime();
        }
        return 0L;
    }

    /* renamed from: android.support.v7.widget.RecyclerView$p */
    public final class C0610p {

        /* renamed from: e */
        C0609o f3172e;

        /* renamed from: i */
        private AbstractC0615u f3176i;

        /* renamed from: a */
        final ArrayList<AbstractC0617w> f3168a = new ArrayList<>();

        /* renamed from: b */
        ArrayList<AbstractC0617w> f3169b = null;

        /* renamed from: c */
        final ArrayList<AbstractC0617w> f3170c = new ArrayList<>();

        /* renamed from: g */
        private final List<AbstractC0617w> f3174g = Collections.unmodifiableList(this.f3168a);

        /* renamed from: h */
        private int f3175h = 2;

        /* renamed from: d */
        int f3171d = 2;

        public C0610p() {
        }

        /* renamed from: a */
        public void m3519a() {
            this.f3168a.clear();
            m3540d();
        }

        /* renamed from: a */
        public void m3520a(int i) {
            this.f3175h = i;
            m3531b();
        }

        /* renamed from: b */
        void m3531b() {
            this.f3171d = (RecyclerView.this.f3102n != null ? RecyclerView.this.f3102n.f3150x : 0) + this.f3175h;
            for (int size = this.f3170c.size() - 1; size >= 0 && this.f3170c.size() > this.f3171d; size--) {
                m3541d(size);
            }
        }

        @NonNull
        /* renamed from: c */
        public List<AbstractC0617w> m3536c() {
            return this.f3174g;
        }

        /* renamed from: a */
        boolean m3528a(AbstractC0617w abstractC0617w) {
            if (abstractC0617w.m3615q()) {
                return RecyclerView.this.f3044D.m3570a();
            }
            if (abstractC0617w.f3219c < 0 || abstractC0617w.f3219c >= RecyclerView.this.f3101m.mo1587a()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + abstractC0617w + RecyclerView.this.m3230a());
            }
            if (RecyclerView.this.f3044D.m3570a() || RecyclerView.this.f3101m.mo1594b(abstractC0617w.f3219c) == abstractC0617w.m3606h()) {
                return !RecyclerView.this.f3101m.m3344e() || abstractC0617w.m3605g() == RecyclerView.this.f3101m.mo1588a(abstractC0617w.f3219c);
            }
            return false;
        }

        /* renamed from: a */
        private boolean m3513a(@NonNull AbstractC0617w abstractC0617w, int i, int i2, long j) {
            abstractC0617w.f3232p = RecyclerView.this;
            int m3606h = abstractC0617w.m3606h();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j != Long.MAX_VALUE && !this.f3172e.m3510b(m3606h, nanoTime, j)) {
                return false;
            }
            RecyclerView.this.f3101m.m3338b((AbstractC0595a) abstractC0617w, i);
            this.f3172e.m3509b(abstractC0617w.m3606h(), RecyclerView.this.getNanoTime() - nanoTime);
            m3514e(abstractC0617w);
            if (RecyclerView.this.f3044D.m3570a()) {
                abstractC0617w.f3223g = i2;
            }
            return true;
        }

        /* renamed from: b */
        public int m3529b(int i) {
            if (i < 0 || i >= RecyclerView.this.f3044D.m3574e()) {
                throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.f3044D.m3574e() + RecyclerView.this.m3230a());
            }
            return !RecyclerView.this.f3044D.m3570a() ? i : RecyclerView.this.f3094f.m4279b(i);
        }

        @NonNull
        /* renamed from: c */
        public View m3535c(int i) {
            return m3518a(i, false);
        }

        /* renamed from: a */
        View m3518a(int i, boolean z) {
            return m3516a(i, z, Long.MAX_VALUE).f3217a;
        }

        @Nullable
        /* renamed from: a */
        AbstractC0617w m3516a(int i, boolean z, long j) {
            AbstractC0617w abstractC0617w;
            boolean z2;
            AbstractC0617w abstractC0617w2;
            AbstractC0617w abstractC0617w3;
            boolean z3;
            boolean m3513a;
            C0604j c0604j;
            boolean z4;
            RecyclerView m3222j;
            View m3575a;
            if (i < 0 || i >= RecyclerView.this.f3044D.m3574e()) {
                throw new IndexOutOfBoundsException("Invalid item position " + i + "(" + i + "). Item count:" + RecyclerView.this.f3044D.m3574e() + RecyclerView.this.m3230a());
            }
            if (RecyclerView.this.f3044D.m3570a()) {
                abstractC0617w = m3545f(i);
                z2 = abstractC0617w != null;
            } else {
                abstractC0617w = null;
                z2 = false;
            }
            if (abstractC0617w == null) {
                abstractC0617w2 = m3530b(i, z);
                if (abstractC0617w2 != null) {
                    if (m3528a(abstractC0617w2)) {
                        z2 = true;
                    } else {
                        if (!z) {
                            abstractC0617w2.m3599b(4);
                            if (abstractC0617w2.m3607i()) {
                                RecyclerView.this.removeDetachedView(abstractC0617w2.f3217a, false);
                                abstractC0617w2.m3608j();
                            } else if (abstractC0617w2.m3609k()) {
                                abstractC0617w2.m3610l();
                            }
                            m3533b(abstractC0617w2);
                        }
                        abstractC0617w2 = null;
                    }
                }
            } else {
                abstractC0617w2 = abstractC0617w;
            }
            if (abstractC0617w2 == null) {
                int m4279b = RecyclerView.this.f3094f.m4279b(i);
                if (m4279b < 0 || m4279b >= RecyclerView.this.f3101m.mo1587a()) {
                    throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i + "(offset:" + m4279b + ").state:" + RecyclerView.this.f3044D.m3574e() + RecyclerView.this.m3230a());
                }
                int mo1594b = RecyclerView.this.f3101m.mo1594b(m4279b);
                if (!RecyclerView.this.f3101m.m3344e() || (abstractC0617w2 = m3517a(RecyclerView.this.f3101m.mo1588a(m4279b), mo1594b, z)) == null) {
                    z4 = z2;
                } else {
                    abstractC0617w2.f3219c = m4279b;
                    z4 = true;
                }
                if (abstractC0617w2 == null && this.f3176i != null && (m3575a = this.f3176i.m3575a(this, i, mo1594b)) != null) {
                    abstractC0617w2 = RecyclerView.this.m3252b(m3575a);
                    if (abstractC0617w2 == null) {
                        throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder" + RecyclerView.this.m3230a());
                    }
                    if (abstractC0617w2.m3601c()) {
                        throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view." + RecyclerView.this.m3230a());
                    }
                }
                if (abstractC0617w2 == null && (abstractC0617w2 = m3547g().m3502a(mo1594b)) != null) {
                    abstractC0617w2.m3620v();
                    if (RecyclerView.f3037a) {
                        m3515f(abstractC0617w2);
                    }
                }
                if (abstractC0617w2 == null) {
                    long nanoTime = RecyclerView.this.getNanoTime();
                    if (j != Long.MAX_VALUE && !this.f3172e.m3507a(mo1594b, nanoTime, j)) {
                        return null;
                    }
                    abstractC0617w2 = RecyclerView.this.f3101m.m3341c(RecyclerView.this, mo1594b);
                    if (RecyclerView.f3040d && (m3222j = RecyclerView.m3222j(abstractC0617w2.f3217a)) != null) {
                        abstractC0617w2.f3218b = new WeakReference<>(m3222j);
                    }
                    this.f3172e.m3504a(mo1594b, RecyclerView.this.getNanoTime() - nanoTime);
                }
                abstractC0617w3 = abstractC0617w2;
                z3 = z4;
            } else {
                abstractC0617w3 = abstractC0617w2;
                z3 = z2;
            }
            if (z3 && !RecyclerView.this.f3044D.m3570a() && abstractC0617w3.m3597a(8192)) {
                abstractC0617w3.m3590a(0, 8192);
                if (RecyclerView.this.f3044D.f3201j) {
                    RecyclerView.this.m3244a(abstractC0617w3, RecyclerView.this.f3114z.m3352a(RecyclerView.this.f3044D, abstractC0617w3, AbstractC0600f.m3350e(abstractC0617w3) | 4096, abstractC0617w3.m3619u()));
                }
            }
            if (RecyclerView.this.f3044D.m3570a() && abstractC0617w3.m3614p()) {
                abstractC0617w3.f3223g = i;
                m3513a = false;
            } else {
                m3513a = (!abstractC0617w3.m3614p() || abstractC0617w3.m3613o() || abstractC0617w3.m3612n()) ? m3513a(abstractC0617w3, RecyclerView.this.f3094f.m4279b(i), i, j) : false;
            }
            ViewGroup.LayoutParams layoutParams = abstractC0617w3.f3217a.getLayoutParams();
            if (layoutParams == null) {
                c0604j = (C0604j) RecyclerView.this.generateDefaultLayoutParams();
                abstractC0617w3.f3217a.setLayoutParams(c0604j);
            } else if (!RecyclerView.this.checkLayoutParams(layoutParams)) {
                c0604j = (C0604j) RecyclerView.this.generateLayoutParams(layoutParams);
                abstractC0617w3.f3217a.setLayoutParams(c0604j);
            } else {
                c0604j = (C0604j) layoutParams;
            }
            c0604j.f3158c = abstractC0617w3;
            c0604j.f3161f = z3 && m3513a;
            return abstractC0617w3;
        }

        /* renamed from: e */
        private void m3514e(AbstractC0617w abstractC0617w) {
            if (RecyclerView.this.m3295n()) {
                View view = abstractC0617w.f3217a;
                if (ViewCompat.getImportantForAccessibility(view) == 0) {
                    ViewCompat.setImportantForAccessibility(view, 1);
                }
                if (!ViewCompat.hasAccessibilityDelegate(view)) {
                    abstractC0617w.m3599b(16384);
                    ViewCompat.setAccessibilityDelegate(view, RecyclerView.this.f3048H.m4072b());
                }
            }
        }

        /* renamed from: f */
        private void m3515f(AbstractC0617w abstractC0617w) {
            if (abstractC0617w.f3217a instanceof ViewGroup) {
                m3512a((ViewGroup) abstractC0617w.f3217a, false);
            }
        }

        /* renamed from: a */
        private void m3512a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    m3512a((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        /* renamed from: a */
        public void m3527a(@NonNull View view) {
            AbstractC0617w m3220e = RecyclerView.m3220e(view);
            if (m3220e.m3616r()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (m3220e.m3607i()) {
                m3220e.m3608j();
            } else if (m3220e.m3609k()) {
                m3220e.m3610l();
            }
            m3533b(m3220e);
        }

        /* renamed from: d */
        void m3540d() {
            for (int size = this.f3170c.size() - 1; size >= 0; size--) {
                m3541d(size);
            }
            this.f3170c.clear();
            if (RecyclerView.f3040d) {
                RecyclerView.this.f3043C.m3985a();
            }
        }

        /* renamed from: d */
        void m3541d(int i) {
            m3526a(this.f3170c.get(i), true);
            this.f3170c.remove(i);
        }

        /* renamed from: b */
        void m3533b(AbstractC0617w abstractC0617w) {
            boolean z;
            boolean z2 = true;
            if (abstractC0617w.m3607i() || abstractC0617w.f3217a.getParent() != null) {
                throw new IllegalArgumentException("Scrapped or attached views may not be recycled. isScrap:" + abstractC0617w.m3607i() + " isAttached:" + (abstractC0617w.f3217a.getParent() != null) + RecyclerView.this.m3230a());
            }
            if (abstractC0617w.m3616r()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + abstractC0617w + RecyclerView.this.m3230a());
            }
            if (abstractC0617w.m3601c()) {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.m3230a());
            }
            boolean m3623y = abstractC0617w.m3623y();
            if ((RecyclerView.this.f3101m != null && m3623y && RecyclerView.this.f3101m.m3340b((AbstractC0595a) abstractC0617w)) || abstractC0617w.m3621w()) {
                if (this.f3171d <= 0 || abstractC0617w.m3597a(526)) {
                    z = false;
                } else {
                    int size = this.f3170c.size();
                    if (size >= this.f3171d && size > 0) {
                        m3541d(0);
                        size--;
                    }
                    if (RecyclerView.f3040d && size > 0 && !RecyclerView.this.f3043C.m3988a(abstractC0617w.f3219c)) {
                        int i = size - 1;
                        while (i >= 0) {
                            if (!RecyclerView.this.f3043C.m3988a(this.f3170c.get(i).f3219c)) {
                                break;
                            } else {
                                i--;
                            }
                        }
                        size = i + 1;
                    }
                    this.f3170c.add(size, abstractC0617w);
                    z = true;
                }
                if (z) {
                    z2 = false;
                } else {
                    m3526a(abstractC0617w, true);
                }
            } else {
                z2 = false;
                z = false;
            }
            RecyclerView.this.f3096h.m4239g(abstractC0617w);
            if (!z && !z2 && m3623y) {
                abstractC0617w.f3232p = null;
            }
        }

        /* renamed from: a */
        void m3526a(@NonNull AbstractC0617w abstractC0617w, boolean z) {
            RecyclerView.m3218c(abstractC0617w);
            if (abstractC0617w.m3597a(16384)) {
                abstractC0617w.m3590a(0, 16384);
                ViewCompat.setAccessibilityDelegate(abstractC0617w.f3217a, null);
            }
            if (z) {
                m3542d(abstractC0617w);
            }
            abstractC0617w.f3232p = null;
            m3547g().m3506a(abstractC0617w);
        }

        /* renamed from: b */
        void m3534b(View view) {
            AbstractC0617w m3220e = RecyclerView.m3220e(view);
            m3220e.f3229m = null;
            m3220e.f3230n = false;
            m3220e.m3610l();
            m3533b(m3220e);
        }

        /* renamed from: c */
        void m3539c(View view) {
            AbstractC0617w m3220e = RecyclerView.m3220e(view);
            if (m3220e.m3597a(12) || !m3220e.m3624z() || RecyclerView.this.m3261b(m3220e)) {
                if (m3220e.m3612n() && !m3220e.m3615q() && !RecyclerView.this.f3101m.m3344e()) {
                    throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.m3230a());
                }
                m3220e.m3593a(this, false);
                this.f3168a.add(m3220e);
                return;
            }
            if (this.f3169b == null) {
                this.f3169b = new ArrayList<>();
            }
            m3220e.m3593a(this, true);
            this.f3169b.add(m3220e);
        }

        /* renamed from: c */
        void m3538c(AbstractC0617w abstractC0617w) {
            if (abstractC0617w.f3230n) {
                this.f3169b.remove(abstractC0617w);
            } else {
                this.f3168a.remove(abstractC0617w);
            }
            abstractC0617w.f3229m = null;
            abstractC0617w.f3230n = false;
            abstractC0617w.m3610l();
        }

        /* renamed from: e */
        int m3543e() {
            return this.f3168a.size();
        }

        /* renamed from: e */
        View m3544e(int i) {
            return this.f3168a.get(i).f3217a;
        }

        /* renamed from: f */
        void m3546f() {
            this.f3168a.clear();
            if (this.f3169b != null) {
                this.f3169b.clear();
            }
        }

        /* renamed from: f */
        AbstractC0617w m3545f(int i) {
            int size;
            int m4279b;
            if (this.f3169b == null || (size = this.f3169b.size()) == 0) {
                return null;
            }
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0617w abstractC0617w = this.f3169b.get(i2);
                if (!abstractC0617w.m3609k() && abstractC0617w.m3602d() == i) {
                    abstractC0617w.m3599b(32);
                    return abstractC0617w;
                }
            }
            if (RecyclerView.this.f3101m.m3344e() && (m4279b = RecyclerView.this.f3094f.m4279b(i)) > 0 && m4279b < RecyclerView.this.f3101m.mo1587a()) {
                long mo1588a = RecyclerView.this.f3101m.mo1588a(m4279b);
                for (int i3 = 0; i3 < size; i3++) {
                    AbstractC0617w abstractC0617w2 = this.f3169b.get(i3);
                    if (!abstractC0617w2.m3609k() && abstractC0617w2.m3605g() == mo1588a) {
                        abstractC0617w2.m3599b(32);
                        return abstractC0617w2;
                    }
                }
            }
            return null;
        }

        /* renamed from: b */
        AbstractC0617w m3530b(int i, boolean z) {
            View m3870c;
            int size = this.f3168a.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0617w abstractC0617w = this.f3168a.get(i2);
                if (!abstractC0617w.m3609k() && abstractC0617w.m3602d() == i && !abstractC0617w.m3612n() && (RecyclerView.this.f3044D.f3198g || !abstractC0617w.m3615q())) {
                    abstractC0617w.m3599b(32);
                    return abstractC0617w;
                }
            }
            if (!z && (m3870c = RecyclerView.this.f3095g.m3870c(i)) != null) {
                AbstractC0617w m3220e = RecyclerView.m3220e(m3870c);
                RecyclerView.this.f3095g.m3875e(m3870c);
                int m3867b = RecyclerView.this.f3095g.m3867b(m3870c);
                if (m3867b == -1) {
                    throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + m3220e + RecyclerView.this.m3230a());
                }
                RecyclerView.this.f3095g.m3874e(m3867b);
                m3539c(m3870c);
                m3220e.m3599b(8224);
                return m3220e;
            }
            int size2 = this.f3170c.size();
            for (int i3 = 0; i3 < size2; i3++) {
                AbstractC0617w abstractC0617w2 = this.f3170c.get(i3);
                if (!abstractC0617w2.m3612n() && abstractC0617w2.m3602d() == i) {
                    if (!z) {
                        this.f3170c.remove(i3);
                        return abstractC0617w2;
                    }
                    return abstractC0617w2;
                }
            }
            return null;
        }

        /* renamed from: a */
        AbstractC0617w m3517a(long j, int i, boolean z) {
            for (int size = this.f3168a.size() - 1; size >= 0; size--) {
                AbstractC0617w abstractC0617w = this.f3168a.get(size);
                if (abstractC0617w.m3605g() == j && !abstractC0617w.m3609k()) {
                    if (i == abstractC0617w.m3606h()) {
                        abstractC0617w.m3599b(32);
                        if (abstractC0617w.m3615q() && !RecyclerView.this.f3044D.m3570a()) {
                            abstractC0617w.m3590a(2, 14);
                            return abstractC0617w;
                        }
                        return abstractC0617w;
                    }
                    if (!z) {
                        this.f3168a.remove(size);
                        RecyclerView.this.removeDetachedView(abstractC0617w.f3217a, false);
                        m3534b(abstractC0617w.f3217a);
                    }
                }
            }
            for (int size2 = this.f3170c.size() - 1; size2 >= 0; size2--) {
                AbstractC0617w abstractC0617w2 = this.f3170c.get(size2);
                if (abstractC0617w2.m3605g() == j) {
                    if (i == abstractC0617w2.m3606h()) {
                        if (!z) {
                            this.f3170c.remove(size2);
                            return abstractC0617w2;
                        }
                        return abstractC0617w2;
                    }
                    if (!z) {
                        m3541d(size2);
                        return null;
                    }
                }
            }
            return null;
        }

        /* renamed from: d */
        void m3542d(@NonNull AbstractC0617w abstractC0617w) {
            if (RecyclerView.this.f3103o != null) {
                RecyclerView.this.f3103o.m3551a(abstractC0617w);
            }
            if (RecyclerView.this.f3101m != null) {
                RecyclerView.this.f3101m.mo1592a((AbstractC0595a) abstractC0617w);
            }
            if (RecyclerView.this.f3044D != null) {
                RecyclerView.this.f3096h.m4239g(abstractC0617w);
            }
        }

        /* renamed from: a */
        void m3523a(AbstractC0595a abstractC0595a, AbstractC0595a abstractC0595a2, boolean z) {
            m3519a();
            m3547g().m3505a(abstractC0595a, abstractC0595a2, z);
        }

        /* renamed from: a */
        void m3521a(int i, int i2) {
            int i3;
            int i4;
            int i5;
            if (i < i2) {
                i3 = -1;
                i4 = i2;
                i5 = i;
            } else {
                i3 = 1;
                i4 = i;
                i5 = i2;
            }
            int size = this.f3170c.size();
            for (int i6 = 0; i6 < size; i6++) {
                AbstractC0617w abstractC0617w = this.f3170c.get(i6);
                if (abstractC0617w != null && abstractC0617w.f3219c >= i5 && abstractC0617w.f3219c <= i4) {
                    if (abstractC0617w.f3219c == i) {
                        abstractC0617w.m3592a(i2 - i, false);
                    } else {
                        abstractC0617w.m3592a(i3, false);
                    }
                }
            }
        }

        /* renamed from: b */
        void m3532b(int i, int i2) {
            int size = this.f3170c.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC0617w abstractC0617w = this.f3170c.get(i3);
                if (abstractC0617w != null && abstractC0617w.f3219c >= i) {
                    abstractC0617w.m3592a(i2, true);
                }
            }
        }

        /* renamed from: a */
        void m3522a(int i, int i2, boolean z) {
            int i3 = i + i2;
            for (int size = this.f3170c.size() - 1; size >= 0; size--) {
                AbstractC0617w abstractC0617w = this.f3170c.get(size);
                if (abstractC0617w != null) {
                    if (abstractC0617w.f3219c >= i3) {
                        abstractC0617w.m3592a(-i2, z);
                    } else if (abstractC0617w.f3219c >= i) {
                        abstractC0617w.m3599b(8);
                        m3541d(size);
                    }
                }
            }
        }

        /* renamed from: a */
        void m3525a(AbstractC0615u abstractC0615u) {
            this.f3176i = abstractC0615u;
        }

        /* renamed from: a */
        void m3524a(C0609o c0609o) {
            if (this.f3172e != null) {
                this.f3172e.m3511c();
            }
            this.f3172e = c0609o;
            if (this.f3172e != null && RecyclerView.this.getAdapter() != null) {
                this.f3172e.m3508b();
            }
        }

        /* renamed from: g */
        C0609o m3547g() {
            if (this.f3172e == null) {
                this.f3172e = new C0609o();
            }
            return this.f3172e;
        }

        /* renamed from: c */
        void m3537c(int i, int i2) {
            int i3;
            int i4 = i + i2;
            for (int size = this.f3170c.size() - 1; size >= 0; size--) {
                AbstractC0617w abstractC0617w = this.f3170c.get(size);
                if (abstractC0617w != null && (i3 = abstractC0617w.f3219c) >= i && i3 < i4) {
                    abstractC0617w.m3599b(2);
                    m3541d(size);
                }
            }
        }

        /* renamed from: h */
        void m3548h() {
            int size = this.f3170c.size();
            for (int i = 0; i < size; i++) {
                AbstractC0617w abstractC0617w = this.f3170c.get(i);
                if (abstractC0617w != null) {
                    abstractC0617w.m3599b(6);
                    abstractC0617w.m3595a((Object) null);
                }
            }
            if (RecyclerView.this.f3101m == null || !RecyclerView.this.f3101m.m3344e()) {
                m3540d();
            }
        }

        /* renamed from: i */
        void m3549i() {
            int size = this.f3170c.size();
            for (int i = 0; i < size; i++) {
                this.f3170c.get(i).m3589a();
            }
            int size2 = this.f3168a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f3168a.get(i2).m3589a();
            }
            if (this.f3169b != null) {
                int size3 = this.f3169b.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.f3169b.get(i3).m3589a();
                }
            }
        }

        /* renamed from: j */
        void m3550j() {
            int size = this.f3170c.size();
            for (int i = 0; i < size; i++) {
                C0604j c0604j = (C0604j) this.f3170c.get(i).f3217a.getLayoutParams();
                if (c0604j != null) {
                    c0604j.f3160e = true;
                }
            }
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$a */
    public static abstract class AbstractC0595a<VH extends AbstractC0617w> {

        /* renamed from: a */
        private final C0596b f3121a = new C0596b();

        /* renamed from: b */
        private boolean f3122b = false;

        /* renamed from: a */
        public abstract int mo1587a();

        /* renamed from: a */
        public abstract void mo1593a(@NonNull VH vh, int i);

        @NonNull
        /* renamed from: b */
        public abstract VH mo1595b(@NonNull ViewGroup viewGroup, int i);

        /* renamed from: a */
        public void m3335a(@NonNull VH vh, int i, @NonNull List<Object> list) {
            mo1593a(vh, i);
        }

        @NonNull
        /* renamed from: c */
        public final VH m3341c(@NonNull ViewGroup viewGroup, int i) {
            try {
                TraceCompat.beginSection("RV CreateView");
                VH mo1595b = mo1595b(viewGroup, i);
                if (mo1595b.f3217a.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                mo1595b.f3222f = i;
                return mo1595b;
            } finally {
                TraceCompat.endSection();
            }
        }

        /* renamed from: b */
        public final void m3338b(@NonNull VH vh, int i) {
            vh.f3219c = i;
            if (m3344e()) {
                vh.f3221e = mo1588a(i);
            }
            vh.m3590a(1, 519);
            TraceCompat.beginSection("RV OnBindView");
            m3335a(vh, i, vh.m3619u());
            vh.m3618t();
            ViewGroup.LayoutParams layoutParams = vh.f3217a.getLayoutParams();
            if (layoutParams instanceof C0604j) {
                ((C0604j) layoutParams).f3160e = true;
            }
            TraceCompat.endSection();
        }

        /* renamed from: b */
        public int mo1594b(int i) {
            return 0;
        }

        /* renamed from: a */
        public long mo1588a(int i) {
            return -1L;
        }

        /* renamed from: e */
        public final boolean m3344e() {
            return this.f3122b;
        }

        /* renamed from: a */
        public void mo1592a(@NonNull VH vh) {
        }

        /* renamed from: b */
        public boolean m3340b(@NonNull VH vh) {
            return false;
        }

        /* renamed from: c */
        public void m3342c(@NonNull VH vh) {
        }

        /* renamed from: d */
        public void m3343d(@NonNull VH vh) {
        }

        /* renamed from: a */
        public void m3334a(@NonNull AbstractC0597c abstractC0597c) {
            this.f3121a.registerObserver(abstractC0597c);
        }

        /* renamed from: b */
        public void m3337b(@NonNull AbstractC0597c abstractC0597c) {
            this.f3121a.unregisterObserver(abstractC0597c);
        }

        /* renamed from: a */
        public void m3336a(@NonNull RecyclerView recyclerView) {
        }

        /* renamed from: b */
        public void m3339b(@NonNull RecyclerView recyclerView) {
        }

        /* renamed from: f */
        public final void m3345f() {
            this.f3121a.m3346a();
        }
    }

    /* renamed from: k */
    void m3291k(View view) {
        AbstractC0617w m3220e = m3220e(view);
        m3285h(view);
        if (this.f3101m != null && m3220e != null) {
            this.f3101m.m3343d(m3220e);
        }
        if (this.f3070ad != null) {
            for (int size = this.f3070ad.size() - 1; size >= 0; size--) {
                this.f3070ad.get(size).m3493b(view);
            }
        }
    }

    /* renamed from: l */
    void m3293l(View view) {
        AbstractC0617w m3220e = m3220e(view);
        m3282g(view);
        if (this.f3101m != null && m3220e != null) {
            this.f3101m.m3342c(m3220e);
        }
        if (this.f3070ad != null) {
            for (int size = this.f3070ad.size() - 1; size >= 0; size--) {
                this.f3070ad.get(size).m3492a(view);
            }
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$i */
    public static abstract class AbstractC0603i {

        /* renamed from: e */
        private int f3138e;

        /* renamed from: f */
        private int f3139f;

        /* renamed from: g */
        private int f3140g;

        /* renamed from: h */
        private int f3141h;

        /* renamed from: p */
        C0655af f3142p;

        /* renamed from: q */
        RecyclerView f3143q;

        /* renamed from: t */
        @Nullable
        AbstractC0613s f3146t;

        /* renamed from: x */
        int f3150x;

        /* renamed from: y */
        boolean f3151y;

        /* renamed from: a */
        private final C0693bq.b f3134a = new C0693bq.b() { // from class: android.support.v7.widget.RecyclerView.i.1
            AnonymousClass1() {
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: a */
            public View mo3484a(int i) {
                return AbstractC0603i.this.m3460i(i);
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: a */
            public int mo3482a() {
                return AbstractC0603i.this.m3391A();
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: b */
            public int mo3485b() {
                return AbstractC0603i.this.m3480y() - AbstractC0603i.this.m3393C();
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: a */
            public int mo3483a(View view) {
                return AbstractC0603i.this.m3457h(view) - ((C0604j) view.getLayoutParams()).leftMargin;
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: b */
            public int mo3486b(View view) {
                C0604j c0604j = (C0604j) view.getLayoutParams();
                return c0604j.rightMargin + AbstractC0603i.this.m3461j(view);
            }
        };

        /* renamed from: b */
        private final C0693bq.b f3135b = new C0693bq.b() { // from class: android.support.v7.widget.RecyclerView.i.2
            AnonymousClass2() {
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: a */
            public View mo3484a(int i) {
                return AbstractC0603i.this.m3460i(i);
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: a */
            public int mo3482a() {
                return AbstractC0603i.this.m3392B();
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: b */
            public int mo3485b() {
                return AbstractC0603i.this.m3481z() - AbstractC0603i.this.m3394D();
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: a */
            public int mo3483a(View view) {
                return AbstractC0603i.this.m3459i(view) - ((C0604j) view.getLayoutParams()).topMargin;
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: b */
            public int mo3486b(View view) {
                C0604j c0604j = (C0604j) view.getLayoutParams();
                return c0604j.bottomMargin + AbstractC0603i.this.m3463k(view);
            }
        };

        /* renamed from: r */
        C0693bq f3144r = new C0693bq(this.f3134a);

        /* renamed from: s */
        C0693bq f3145s = new C0693bq(this.f3135b);

        /* renamed from: u */
        boolean f3147u = false;

        /* renamed from: v */
        boolean f3148v = false;

        /* renamed from: w */
        boolean f3149w = false;

        /* renamed from: c */
        private boolean f3136c = true;

        /* renamed from: d */
        private boolean f3137d = true;

        /* renamed from: android.support.v7.widget.RecyclerView$i$a */
        public interface a {
            /* renamed from: b */
            void mo3487b(int i, int i2);
        }

        /* renamed from: android.support.v7.widget.RecyclerView$i$b */
        public static class b {

            /* renamed from: a */
            public int f3154a;

            /* renamed from: b */
            public int f3155b;

            /* renamed from: c */
            public boolean f3156c;

            /* renamed from: d */
            public boolean f3157d;
        }

        /* renamed from: a */
        public abstract C0604j mo3074a();

        /* renamed from: android.support.v7.widget.RecyclerView$i$1 */
        class AnonymousClass1 implements C0693bq.b {
            AnonymousClass1() {
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: a */
            public View mo3484a(int i) {
                return AbstractC0603i.this.m3460i(i);
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: a */
            public int mo3482a() {
                return AbstractC0603i.this.m3391A();
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: b */
            public int mo3485b() {
                return AbstractC0603i.this.m3480y() - AbstractC0603i.this.m3393C();
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: a */
            public int mo3483a(View view) {
                return AbstractC0603i.this.m3457h(view) - ((C0604j) view.getLayoutParams()).leftMargin;
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: b */
            public int mo3486b(View view) {
                C0604j c0604j = (C0604j) view.getLayoutParams();
                return c0604j.rightMargin + AbstractC0603i.this.m3461j(view);
            }
        }

        /* renamed from: android.support.v7.widget.RecyclerView$i$2 */
        class AnonymousClass2 implements C0693bq.b {
            AnonymousClass2() {
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: a */
            public View mo3484a(int i) {
                return AbstractC0603i.this.m3460i(i);
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: a */
            public int mo3482a() {
                return AbstractC0603i.this.m3392B();
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: b */
            public int mo3485b() {
                return AbstractC0603i.this.m3481z() - AbstractC0603i.this.m3394D();
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: a */
            public int mo3483a(View view) {
                return AbstractC0603i.this.m3459i(view) - ((C0604j) view.getLayoutParams()).topMargin;
            }

            @Override // android.support.v7.widget.C0693bq.b
            /* renamed from: b */
            public int mo3486b(View view) {
                C0604j c0604j = (C0604j) view.getLayoutParams();
                return c0604j.bottomMargin + AbstractC0603i.this.m3463k(view);
            }
        }

        /* renamed from: b */
        void m3431b(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f3143q = null;
                this.f3142p = null;
                this.f3140g = 0;
                this.f3141h = 0;
            } else {
                this.f3143q = recyclerView;
                this.f3142p = recyclerView.f3095g;
                this.f3140g = recyclerView.getWidth();
                this.f3141h = recyclerView.getHeight();
            }
            this.f3138e = C1167C.ENCODING_PCM_32BIT;
            this.f3139f = C1167C.ENCODING_PCM_32BIT;
        }

        /* renamed from: c */
        void m3437c(int i, int i2) {
            this.f3140g = View.MeasureSpec.getSize(i);
            this.f3138e = View.MeasureSpec.getMode(i);
            if (this.f3138e == 0 && !RecyclerView.f3038b) {
                this.f3140g = 0;
            }
            this.f3141h = View.MeasureSpec.getSize(i2);
            this.f3139f = View.MeasureSpec.getMode(i2);
            if (this.f3139f == 0 && !RecyclerView.f3038b) {
                this.f3141h = 0;
            }
        }

        /* renamed from: d */
        void m3446d(int i, int i2) {
            int m3477v = m3477v();
            if (m3477v == 0) {
                this.f3143q.m3274e(i, i2);
                return;
            }
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < m3477v; i7++) {
                View m3460i = m3460i(i7);
                Rect rect = this.f3143q.f3099k;
                m3414a(m3460i, rect);
                if (rect.left < i6) {
                    i6 = rect.left;
                }
                if (rect.right > i4) {
                    i4 = rect.right;
                }
                if (rect.top < i5) {
                    i5 = rect.top;
                }
                if (rect.bottom > i3) {
                    i3 = rect.bottom;
                }
            }
            this.f3143q.f3099k.set(i6, i5, i4, i3);
            mo3080a(this.f3143q.f3099k, i, i2);
        }

        /* renamed from: a */
        public void mo3080a(Rect rect, int i, int i2) {
            m3453f(m3382a(i, rect.width() + m3391A() + m3393C(), m3396F()), m3382a(i2, rect.height() + m3392B() + m3394D(), m3397G()));
        }

        /* renamed from: o */
        public void m3470o() {
            if (this.f3143q != null) {
                this.f3143q.requestLayout();
            }
        }

        /* renamed from: a */
        public static int m3382a(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            switch (mode) {
                case Integer.MIN_VALUE:
                    return Math.min(size, Math.max(i2, i3));
                case C1167C.ENCODING_PCM_32BIT /* 1073741824 */:
                    return size;
                default:
                    return Math.max(i2, i3);
            }
        }

        /* renamed from: a */
        public void mo3143a(String str) {
            if (this.f3143q != null) {
                this.f3143q.m3246a(str);
            }
        }

        /* renamed from: c */
        public boolean mo3151c() {
            return this.f3149w;
        }

        /* renamed from: b */
        public boolean mo3095b() {
            return false;
        }

        /* renamed from: p */
        public final boolean m3471p() {
            return this.f3137d;
        }

        /* renamed from: a */
        public void mo3138a(int i, int i2, C0614t c0614t, a aVar) {
        }

        /* renamed from: a */
        public void mo3139a(int i, a aVar) {
        }

        /* renamed from: c */
        void m3439c(RecyclerView recyclerView) {
            this.f3148v = true;
            m3447d(recyclerView);
        }

        /* renamed from: b */
        void m3432b(RecyclerView recyclerView, C0610p c0610p) {
            this.f3148v = false;
            mo3141a(recyclerView, c0610p);
        }

        /* renamed from: q */
        public boolean m3472q() {
            return this.f3148v;
        }

        /* renamed from: a */
        public boolean m3429a(Runnable runnable) {
            if (this.f3143q != null) {
                return this.f3143q.removeCallbacks(runnable);
            }
            return false;
        }

        @CallSuper
        /* renamed from: d */
        public void m3447d(RecyclerView recyclerView) {
        }

        @Deprecated
        /* renamed from: e */
        public void m3450e(RecyclerView recyclerView) {
        }

        @CallSuper
        /* renamed from: a */
        public void mo3141a(RecyclerView recyclerView, C0610p c0610p) {
            m3450e(recyclerView);
        }

        /* renamed from: r */
        public boolean m3473r() {
            return this.f3143q != null && this.f3143q.f3097i;
        }

        /* renamed from: c */
        public void mo3096c(C0610p c0610p, C0614t c0614t) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        /* renamed from: a */
        public void mo3084a(C0614t c0614t) {
        }

        /* renamed from: a */
        public boolean mo3091a(C0604j c0604j) {
            return c0604j != null;
        }

        /* renamed from: a */
        public C0604j mo3076a(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof C0604j) {
                return new C0604j((C0604j) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new C0604j((ViewGroup.MarginLayoutParams) layoutParams);
            }
            return new C0604j(layoutParams);
        }

        /* renamed from: a */
        public C0604j mo3075a(Context context, AttributeSet attributeSet) {
            return new C0604j(context, attributeSet);
        }

        /* renamed from: a */
        public int mo3072a(int i, C0610p c0610p, C0614t c0614t) {
            return 0;
        }

        /* renamed from: b */
        public int mo3092b(int i, C0610p c0610p, C0614t c0614t) {
            return 0;
        }

        /* renamed from: e */
        public boolean mo3157e() {
            return false;
        }

        /* renamed from: f */
        public boolean mo3160f() {
            return false;
        }

        /* renamed from: e */
        public void mo3156e(int i) {
        }

        /* renamed from: s */
        public boolean m3474s() {
            return this.f3146t != null && this.f3146t.m3562d();
        }

        /* renamed from: t */
        public int m3475t() {
            return ViewCompat.getLayoutDirection(this.f3143q);
        }

        /* renamed from: a */
        public void m3409a(View view) {
            m3410a(view, -1);
        }

        /* renamed from: a */
        public void m3410a(View view, int i) {
            m3387a(view, i, true);
        }

        /* renamed from: b */
        public void m3433b(View view) {
            m3434b(view, -1);
        }

        /* renamed from: b */
        public void m3434b(View view, int i) {
            m3387a(view, i, false);
        }

        /* renamed from: a */
        private void m3387a(View view, int i, boolean z) {
            AbstractC0617w m3220e = RecyclerView.m3220e(view);
            if (z || m3220e.m3615q()) {
                this.f3143q.f3096h.m4237e(m3220e);
            } else {
                this.f3143q.f3096h.m4238f(m3220e);
            }
            C0604j c0604j = (C0604j) view.getLayoutParams();
            if (m3220e.m3609k() || m3220e.m3607i()) {
                if (m3220e.m3607i()) {
                    m3220e.m3608j();
                } else {
                    m3220e.m3610l();
                }
                this.f3142p.m3863a(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f3143q) {
                int m3867b = this.f3142p.m3867b(view);
                if (i == -1) {
                    i = this.f3142p.m3866b();
                }
                if (m3867b == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f3143q.indexOfChild(view) + this.f3143q.m3230a());
                }
                if (m3867b != i) {
                    this.f3143q.f3102n.m3449e(m3867b, i);
                }
            } else {
                this.f3142p.m3864a(view, i, false);
                c0604j.f3160e = true;
                if (this.f3146t != null && this.f3146t.m3562d()) {
                    this.f3146t.m3560b(view);
                }
            }
            if (c0604j.f3161f) {
                m3220e.f3217a.invalidate();
                c0604j.f3161f = false;
            }
        }

        /* renamed from: c */
        public void m3441c(View view) {
            this.f3142p.m3862a(view);
        }

        /* renamed from: g */
        public void m3456g(int i) {
            if (m3460i(i) != null) {
                this.f3142p.m3861a(i);
            }
        }

        /* renamed from: u */
        public int m3476u() {
            return -1;
        }

        /* renamed from: d */
        public int m3444d(@NonNull View view) {
            return ((C0604j) view.getLayoutParams()).m3491f();
        }

        @Nullable
        /* renamed from: e */
        public View m3448e(@NonNull View view) {
            View m3263c;
            if (this.f3143q == null || (m3263c = this.f3143q.m3263c(view)) == null || this.f3142p.m3871c(m3263c)) {
                return null;
            }
            return m3263c;
        }

        @Nullable
        /* renamed from: c */
        public View mo3150c(int i) {
            int m3477v = m3477v();
            for (int i2 = 0; i2 < m3477v; i2++) {
                View m3460i = m3460i(i2);
                AbstractC0617w m3220e = RecyclerView.m3220e(m3460i);
                if (m3220e != null && m3220e.m3602d() == i && !m3220e.m3601c() && (this.f3143q.f3044D.m3570a() || !m3220e.m3615q())) {
                    return m3460i;
                }
            }
            return null;
        }

        /* renamed from: h */
        public void m3458h(int i) {
            m3385a(i, m3460i(i));
        }

        /* renamed from: a */
        private void m3385a(int i, @NonNull View view) {
            this.f3142p.m3874e(i);
        }

        /* renamed from: a */
        public void m3413a(@NonNull View view, int i, C0604j c0604j) {
            AbstractC0617w m3220e = RecyclerView.m3220e(view);
            if (m3220e.m3615q()) {
                this.f3143q.f3096h.m4237e(m3220e);
            } else {
                this.f3143q.f3096h.m4238f(m3220e);
            }
            this.f3142p.m3863a(view, i, c0604j, m3220e.m3615q());
        }

        /* renamed from: c */
        public void m3442c(@NonNull View view, int i) {
            m3413a(view, i, (C0604j) view.getLayoutParams());
        }

        /* renamed from: e */
        public void m3449e(int i, int i2) {
            View m3460i = m3460i(i);
            if (m3460i == null) {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.f3143q.toString());
            }
            m3458h(i);
            m3442c(m3460i, i2);
        }

        /* renamed from: a */
        public void m3416a(@NonNull View view, @NonNull C0610p c0610p) {
            m3441c(view);
            c0610p.m3527a(view);
        }

        /* renamed from: a */
        public void m3401a(int i, @NonNull C0610p c0610p) {
            View m3460i = m3460i(i);
            m3456g(i);
            c0610p.m3527a(m3460i);
        }

        /* renamed from: v */
        public int m3477v() {
            if (this.f3142p != null) {
                return this.f3142p.m3866b();
            }
            return 0;
        }

        @Nullable
        /* renamed from: i */
        public View m3460i(int i) {
            if (this.f3142p != null) {
                return this.f3142p.m3868b(i);
            }
            return null;
        }

        /* renamed from: w */
        public int m3478w() {
            return this.f3138e;
        }

        /* renamed from: x */
        public int m3479x() {
            return this.f3139f;
        }

        @Px
        /* renamed from: y */
        public int m3480y() {
            return this.f3140g;
        }

        @Px
        /* renamed from: z */
        public int m3481z() {
            return this.f3141h;
        }

        @Px
        /* renamed from: A */
        public int m3391A() {
            if (this.f3143q != null) {
                return this.f3143q.getPaddingLeft();
            }
            return 0;
        }

        @Px
        /* renamed from: B */
        public int m3392B() {
            if (this.f3143q != null) {
                return this.f3143q.getPaddingTop();
            }
            return 0;
        }

        @Px
        /* renamed from: C */
        public int m3393C() {
            if (this.f3143q != null) {
                return this.f3143q.getPaddingRight();
            }
            return 0;
        }

        @Px
        /* renamed from: D */
        public int m3394D() {
            if (this.f3143q != null) {
                return this.f3143q.getPaddingBottom();
            }
            return 0;
        }

        @Nullable
        /* renamed from: E */
        public View m3395E() {
            View focusedChild;
            if (this.f3143q == null || (focusedChild = this.f3143q.getFocusedChild()) == null || this.f3142p.m3871c(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        /* renamed from: j */
        public void mo3462j(@Px int i) {
            if (this.f3143q != null) {
                this.f3143q.m3273e(i);
            }
        }

        /* renamed from: k */
        public void mo3464k(@Px int i) {
            if (this.f3143q != null) {
                this.f3143q.m3270d(i);
            }
        }

        /* renamed from: a */
        public void m3404a(@NonNull C0610p c0610p) {
            for (int m3477v = m3477v() - 1; m3477v >= 0; m3477v--) {
                m3386a(c0610p, m3477v, m3460i(m3477v));
            }
        }

        /* renamed from: a */
        private void m3386a(C0610p c0610p, int i, View view) {
            AbstractC0617w m3220e = RecyclerView.m3220e(view);
            if (!m3220e.m3601c()) {
                if (m3220e.m3612n() && !m3220e.m3615q() && !this.f3143q.f3101m.m3344e()) {
                    m3456g(i);
                    c0610p.m3533b(m3220e);
                } else {
                    m3458h(i);
                    c0610p.m3539c(view);
                    this.f3143q.f3096h.m4240h(m3220e);
                }
            }
        }

        /* renamed from: b */
        void m3430b(C0610p c0610p) {
            int m3543e = c0610p.m3543e();
            for (int i = m3543e - 1; i >= 0; i--) {
                View m3544e = c0610p.m3544e(i);
                AbstractC0617w m3220e = RecyclerView.m3220e(m3544e);
                if (!m3220e.m3601c()) {
                    m3220e.m3596a(false);
                    if (m3220e.m3616r()) {
                        this.f3143q.removeDetachedView(m3544e, false);
                    }
                    if (this.f3143q.f3114z != null) {
                        this.f3143q.f3114z.mo3362d(m3220e);
                    }
                    m3220e.m3596a(true);
                    c0610p.m3534b(m3544e);
                }
            }
            c0610p.m3546f();
            if (m3543e > 0) {
                this.f3143q.invalidate();
            }
        }

        /* renamed from: a */
        boolean m3426a(View view, int i, int i2, C0604j c0604j) {
            return (this.f3136c && m3388b(view.getMeasuredWidth(), i, c0604j.width) && m3388b(view.getMeasuredHeight(), i2, c0604j.height)) ? false : true;
        }

        /* renamed from: b */
        boolean m3436b(View view, int i, int i2, C0604j c0604j) {
            return (!view.isLayoutRequested() && this.f3136c && m3388b(view.getWidth(), i, c0604j.width) && m3388b(view.getHeight(), i2, c0604j.height)) ? false : true;
        }

        /* renamed from: b */
        private static boolean m3388b(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            switch (mode) {
                case Integer.MIN_VALUE:
                    return size >= i;
                case 0:
                    return true;
                case C1167C.ENCODING_PCM_32BIT /* 1073741824 */:
                    return size == i;
                default:
                    return false;
            }
        }

        /* renamed from: a */
        public void m3411a(@NonNull View view, int i, int i2) {
            C0604j c0604j = (C0604j) view.getLayoutParams();
            Rect m3286i = this.f3143q.m3286i(view);
            int i3 = m3286i.left + m3286i.right + i;
            int i4 = m3286i.bottom + m3286i.top + i2;
            int m3383a = m3383a(m3480y(), m3478w(), i3 + m3391A() + m3393C() + c0604j.leftMargin + c0604j.rightMargin, c0604j.width, mo3157e());
            int m3383a2 = m3383a(m3481z(), m3479x(), i4 + m3392B() + m3394D() + c0604j.topMargin + c0604j.bottomMargin, c0604j.height, mo3160f());
            if (m3436b(view, m3383a, m3383a2, c0604j)) {
                view.measure(m3383a, m3383a2);
            }
        }

        /* renamed from: a */
        public static int m3383a(int i, int i2, int i3, int i4, boolean z) {
            int max = Math.max(0, i - i3);
            if (z) {
                if (i4 >= 0) {
                    i2 = 1073741824;
                    max = i4;
                } else if (i4 == -1) {
                    switch (i2) {
                        case Integer.MIN_VALUE:
                        case C1167C.ENCODING_PCM_32BIT /* 1073741824 */:
                            break;
                        case 0:
                            i2 = 0;
                            max = 0;
                            break;
                        default:
                            i2 = 0;
                            max = 0;
                            break;
                    }
                } else {
                    if (i4 == -2) {
                        i2 = 0;
                        max = 0;
                    }
                    i2 = 0;
                    max = 0;
                }
            } else if (i4 >= 0) {
                i2 = 1073741824;
                max = i4;
            } else if (i4 != -1) {
                if (i4 == -2) {
                    i2 = (i2 == Integer.MIN_VALUE || i2 == 1073741824) ? Integer.MIN_VALUE : 0;
                }
                i2 = 0;
                max = 0;
            }
            return View.MeasureSpec.makeMeasureSpec(max, i2);
        }

        /* renamed from: f */
        public int m3452f(@NonNull View view) {
            Rect rect = ((C0604j) view.getLayoutParams()).f3159d;
            return rect.right + view.getMeasuredWidth() + rect.left;
        }

        /* renamed from: g */
        public int m3455g(@NonNull View view) {
            Rect rect = ((C0604j) view.getLayoutParams()).f3159d;
            return rect.bottom + view.getMeasuredHeight() + rect.top;
        }

        /* renamed from: a */
        public void m3412a(@NonNull View view, int i, int i2, int i3, int i4) {
            C0604j c0604j = (C0604j) view.getLayoutParams();
            Rect rect = c0604j.f3159d;
            view.layout(rect.left + i + c0604j.leftMargin, rect.top + i2 + c0604j.topMargin, (i3 - rect.right) - c0604j.rightMargin, (i4 - rect.bottom) - c0604j.bottomMargin);
        }

        /* renamed from: a */
        public void m3417a(@NonNull View view, boolean z, @NonNull Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((C0604j) view.getLayoutParams()).f3159d;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, rect2.bottom + view.getHeight());
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.f3143q != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f3143q.f3100l;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        /* renamed from: a */
        public void m3414a(@NonNull View view, @NonNull Rect rect) {
            RecyclerView.m3211a(view, rect);
        }

        /* renamed from: h */
        public int m3457h(@NonNull View view) {
            return view.getLeft() - m3468n(view);
        }

        /* renamed from: i */
        public int m3459i(@NonNull View view) {
            return view.getTop() - m3465l(view);
        }

        /* renamed from: j */
        public int m3461j(@NonNull View view) {
            return view.getRight() + m3469o(view);
        }

        /* renamed from: k */
        public int m3463k(@NonNull View view) {
            return view.getBottom() + m3467m(view);
        }

        /* renamed from: b */
        public void m3435b(@NonNull View view, @NonNull Rect rect) {
            if (this.f3143q == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(this.f3143q.m3286i(view));
            }
        }

        /* renamed from: l */
        public int m3465l(@NonNull View view) {
            return ((C0604j) view.getLayoutParams()).f3159d.top;
        }

        /* renamed from: m */
        public int m3467m(@NonNull View view) {
            return ((C0604j) view.getLayoutParams()).f3159d.bottom;
        }

        /* renamed from: n */
        public int m3468n(@NonNull View view) {
            return ((C0604j) view.getLayoutParams()).f3159d.left;
        }

        /* renamed from: o */
        public int m3469o(@NonNull View view) {
            return ((C0604j) view.getLayoutParams()).f3159d.right;
        }

        @Nullable
        /* renamed from: a */
        public View mo3078a(@NonNull View view, int i, @NonNull C0610p c0610p, @NonNull C0614t c0614t) {
            return null;
        }

        @Nullable
        /* renamed from: d */
        public View m3445d(@NonNull View view, int i) {
            return null;
        }

        /* renamed from: b */
        private int[] m3389b(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            int min;
            int[] iArr = new int[2];
            int m3391A = m3391A();
            int m3392B = m3392B();
            int m3480y = m3480y() - m3393C();
            int m3481z = m3481z() - m3394D();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width = left + rect.width();
            int height = top + rect.height();
            int min2 = Math.min(0, left - m3391A);
            int min3 = Math.min(0, top - m3392B);
            int max = Math.max(0, width - m3480y);
            int max2 = Math.max(0, height - m3481z);
            if (m3475t() == 1) {
                if (max == 0) {
                    max = Math.max(min2, width - m3480y);
                }
                min = max;
            } else {
                min = min2 != 0 ? min2 : Math.min(left - m3391A, max);
            }
            int min4 = min3 != 0 ? min3 : Math.min(top - m3392B, max2);
            iArr[0] = min;
            iArr[1] = min4;
            return iArr;
        }

        /* renamed from: a */
        public boolean m3422a(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z) {
            return m3423a(recyclerView, view, rect, z, false);
        }

        /* renamed from: a */
        public boolean m3423a(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z, boolean z2) {
            int[] m3389b = m3389b(recyclerView, view, rect, z);
            int i = m3389b[0];
            int i2 = m3389b[1];
            if (z2 && !m3390d(recyclerView, i, i2)) {
                return false;
            }
            if (i == 0 && i2 == 0) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i, i2);
            } else {
                recyclerView.m3232a(i, i2);
            }
            return true;
        }

        /* renamed from: a */
        public boolean m3428a(@NonNull View view, boolean z, boolean z2) {
            boolean z3 = this.f3144r.m4218a(view, 24579) && this.f3145s.m4218a(view, 24579);
            return z ? z3 : !z3;
        }

        /* renamed from: d */
        private boolean m3390d(RecyclerView recyclerView, int i, int i2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int m3391A = m3391A();
            int m3392B = m3392B();
            int m3480y = m3480y() - m3393C();
            int m3481z = m3481z() - m3394D();
            Rect rect = this.f3143q.f3099k;
            m3414a(focusedChild, rect);
            return rect.left - i < m3480y && rect.right - i > m3391A && rect.top - i2 < m3481z && rect.bottom - i2 > m3392B;
        }

        @Deprecated
        /* renamed from: a */
        public boolean m3424a(@NonNull RecyclerView recyclerView, @NonNull View view, @Nullable View view2) {
            return m3474s() || recyclerView.m3296o();
        }

        /* renamed from: a */
        public boolean m3421a(@NonNull RecyclerView recyclerView, @NonNull C0614t c0614t, @NonNull View view, @Nullable View view2) {
            return m3424a(recyclerView, view, view2);
        }

        /* renamed from: a */
        public void m3403a(@Nullable AbstractC0595a abstractC0595a, @Nullable AbstractC0595a abstractC0595a2) {
        }

        /* renamed from: a */
        public boolean m3425a(@NonNull RecyclerView recyclerView, @NonNull ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        /* renamed from: a */
        public void mo3086a(@NonNull RecyclerView recyclerView) {
        }

        /* renamed from: a */
        public void mo3087a(@NonNull RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: b */
        public void mo3094b(@NonNull RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: c */
        public void m3440c(@NonNull RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: a */
        public void mo3089a(@NonNull RecyclerView recyclerView, int i, int i2, @Nullable Object obj) {
            m3440c(recyclerView, i, i2);
        }

        /* renamed from: a */
        public void mo3088a(@NonNull RecyclerView recyclerView, int i, int i2, int i3) {
        }

        /* renamed from: e */
        public int mo3155e(@NonNull C0614t c0614t) {
            return 0;
        }

        /* renamed from: c */
        public int mo3149c(@NonNull C0614t c0614t) {
            return 0;
        }

        /* renamed from: g */
        public int mo3162g(@NonNull C0614t c0614t) {
            return 0;
        }

        /* renamed from: f */
        public int mo3159f(@NonNull C0614t c0614t) {
            return 0;
        }

        /* renamed from: d */
        public int mo3152d(@NonNull C0614t c0614t) {
            return 0;
        }

        /* renamed from: h */
        public int mo3163h(@NonNull C0614t c0614t) {
            return 0;
        }

        /* renamed from: a */
        public void m3405a(@NonNull C0610p c0610p, @NonNull C0614t c0614t, int i, int i2) {
            this.f3143q.m3274e(i, i2);
        }

        /* renamed from: f */
        public void m3453f(int i, int i2) {
            this.f3143q.setMeasuredDimension(i, i2);
        }

        @Px
        /* renamed from: F */
        public int m3396F() {
            return ViewCompat.getMinimumWidth(this.f3143q);
        }

        @Px
        /* renamed from: G */
        public int m3397G() {
            return ViewCompat.getMinimumHeight(this.f3143q);
        }

        @Nullable
        /* renamed from: d */
        public Parcelable mo3154d() {
            return null;
        }

        /* renamed from: a */
        public void mo3140a(Parcelable parcelable) {
        }

        /* renamed from: H */
        void m3398H() {
            if (this.f3146t != null) {
                this.f3146t.m3559b();
            }
        }

        /* renamed from: a */
        void m3408a(AbstractC0613s abstractC0613s) {
            if (this.f3146t == abstractC0613s) {
                this.f3146t = null;
            }
        }

        /* renamed from: l */
        public void mo3466l(int i) {
        }

        /* renamed from: c */
        public void m3438c(@NonNull C0610p c0610p) {
            for (int m3477v = m3477v() - 1; m3477v >= 0; m3477v--) {
                if (!RecyclerView.m3220e(m3460i(m3477v)).m3601c()) {
                    m3401a(m3477v, c0610p);
                }
            }
        }

        /* renamed from: a */
        void m3402a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            m3406a(this.f3143q.f3093e, this.f3143q.f3044D, accessibilityNodeInfoCompat);
        }

        /* renamed from: a */
        public void m3406a(@NonNull C0610p c0610p, @NonNull C0614t c0614t, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (this.f3143q.canScrollVertically(-1) || this.f3143q.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.addAction(8192);
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            if (this.f3143q.canScrollVertically(1) || this.f3143q.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.addAction(4096);
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(mo3073a(c0610p, c0614t), mo3093b(c0610p, c0614t), m3451e(c0610p, c0614t), m3443d(c0610p, c0614t)));
        }

        /* renamed from: a */
        public void mo3142a(@NonNull AccessibilityEvent accessibilityEvent) {
            m3407a(this.f3143q.f3093e, this.f3143q.f3044D, accessibilityEvent);
        }

        /* renamed from: a */
        public void m3407a(@NonNull C0610p c0610p, @NonNull C0614t c0614t, @NonNull AccessibilityEvent accessibilityEvent) {
            boolean z = true;
            if (this.f3143q != null && accessibilityEvent != null) {
                if (!this.f3143q.canScrollVertically(1) && !this.f3143q.canScrollVertically(-1) && !this.f3143q.canScrollHorizontally(-1) && !this.f3143q.canScrollHorizontally(1)) {
                    z = false;
                }
                accessibilityEvent.setScrollable(z);
                if (this.f3143q.f3101m != null) {
                    accessibilityEvent.setItemCount(this.f3143q.f3101m.mo1587a());
                }
            }
        }

        /* renamed from: a */
        void m3415a(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AbstractC0617w m3220e = RecyclerView.m3220e(view);
            if (m3220e != null && !m3220e.m3615q() && !this.f3142p.m3871c(m3220e.f3217a)) {
                mo3083a(this.f3143q.f3093e, this.f3143q.f3044D, view, accessibilityNodeInfoCompat);
            }
        }

        /* renamed from: a */
        public void mo3083a(@NonNull C0610p c0610p, @NonNull C0614t c0614t, @NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(mo3160f() ? m3444d(view) : 0, 1, mo3157e() ? m3444d(view) : 0, 1, false, false));
        }

        /* renamed from: I */
        public void m3399I() {
            this.f3147u = true;
        }

        /* renamed from: d */
        public int m3443d(@NonNull C0610p c0610p, @NonNull C0614t c0614t) {
            return 0;
        }

        /* renamed from: a */
        public int mo3073a(@NonNull C0610p c0610p, @NonNull C0614t c0614t) {
            if (this.f3143q == null || this.f3143q.f3101m == null || !mo3160f()) {
                return 1;
            }
            return this.f3143q.f3101m.mo1587a();
        }

        /* renamed from: b */
        public int mo3093b(@NonNull C0610p c0610p, @NonNull C0614t c0614t) {
            if (this.f3143q == null || this.f3143q.f3101m == null || !mo3157e()) {
                return 1;
            }
            return this.f3143q.f3101m.mo1587a();
        }

        /* renamed from: e */
        public boolean m3451e(@NonNull C0610p c0610p, @NonNull C0614t c0614t) {
            return false;
        }

        /* renamed from: a */
        boolean m3418a(int i, @Nullable Bundle bundle) {
            return m3419a(this.f3143q.f3093e, this.f3143q.f3044D, i, bundle);
        }

        /* renamed from: a */
        public boolean m3419a(@NonNull C0610p c0610p, @NonNull C0614t c0614t, int i, @Nullable Bundle bundle) {
            int m3481z;
            int m3480y;
            if (this.f3143q == null) {
                return false;
            }
            switch (i) {
                case 4096:
                    m3481z = this.f3143q.canScrollVertically(1) ? (m3481z() - m3392B()) - m3394D() : 0;
                    if (this.f3143q.canScrollHorizontally(1)) {
                        m3480y = (m3480y() - m3391A()) - m3393C();
                        break;
                    }
                    m3480y = 0;
                    break;
                case 8192:
                    m3481z = this.f3143q.canScrollVertically(-1) ? -((m3481z() - m3392B()) - m3394D()) : 0;
                    if (this.f3143q.canScrollHorizontally(-1)) {
                        m3480y = -((m3480y() - m3391A()) - m3393C());
                        break;
                    }
                    m3480y = 0;
                    break;
                default:
                    m3480y = 0;
                    m3481z = 0;
                    break;
            }
            if (m3481z == 0 && m3480y == 0) {
                return false;
            }
            this.f3143q.m3232a(m3480y, m3481z);
            return true;
        }

        /* renamed from: a */
        boolean m3427a(@NonNull View view, int i, @Nullable Bundle bundle) {
            return m3420a(this.f3143q.f3093e, this.f3143q.f3044D, view, i, bundle);
        }

        /* renamed from: a */
        public boolean m3420a(@NonNull C0610p c0610p, @NonNull C0614t c0614t, @NonNull View view, int i, @Nullable Bundle bundle) {
            return false;
        }

        /* renamed from: a */
        public static b m3384a(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
            b bVar = new b();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, android.support.v7.recyclerview.R.styleable.RecyclerView, i, i2);
            bVar.f3154a = obtainStyledAttributes.getInt(android.support.v7.recyclerview.R.styleable.RecyclerView_android_orientation, 1);
            bVar.f3155b = obtainStyledAttributes.getInt(android.support.v7.recyclerview.R.styleable.RecyclerView_spanCount, 1);
            bVar.f3156c = obtainStyledAttributes.getBoolean(android.support.v7.recyclerview.R.styleable.RecyclerView_reverseLayout, false);
            bVar.f3157d = obtainStyledAttributes.getBoolean(android.support.v7.recyclerview.R.styleable.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return bVar;
        }

        /* renamed from: f */
        void m3454f(RecyclerView recyclerView) {
            m3437c(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), C1167C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), C1167C.ENCODING_PCM_32BIT));
        }

        /* renamed from: l */
        boolean mo3168l() {
            return false;
        }

        /* renamed from: J */
        boolean m3400J() {
            int m3477v = m3477v();
            for (int i = 0; i < m3477v; i++) {
                ViewGroup.LayoutParams layoutParams = m3460i(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$h */
    public static abstract class AbstractC0602h {
        /* renamed from: b */
        public void m3381b(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull C0614t c0614t) {
            m3376a(canvas, recyclerView);
        }

        @Deprecated
        /* renamed from: a */
        public void m3376a(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        }

        /* renamed from: a */
        public void mo3377a(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull C0614t c0614t) {
            m3380b(canvas, recyclerView);
        }

        @Deprecated
        /* renamed from: b */
        public void m3380b(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        }

        @Deprecated
        /* renamed from: a */
        public void m3378a(@NonNull Rect rect, int i, @NonNull RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        /* renamed from: a */
        public void m3379a(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull C0614t c0614t) {
            m3378a(rect, ((C0604j) view.getLayoutParams()).m3491f(), recyclerView);
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$n */
    public static abstract class AbstractC0608n {
        /* renamed from: a */
        public void mo3498a(@NonNull RecyclerView recyclerView, int i) {
        }

        /* renamed from: a */
        public void mo3499a(@NonNull RecyclerView recyclerView, int i, int i2) {
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$w */
    public static abstract class AbstractC0617w {

        /* renamed from: q */
        private static final List<Object> f3216q = Collections.emptyList();

        /* renamed from: a */
        @NonNull
        public final View f3217a;

        /* renamed from: b */
        WeakReference<RecyclerView> f3218b;

        /* renamed from: j */
        int f3226j;

        /* renamed from: p */
        RecyclerView f3232p;

        /* renamed from: c */
        int f3219c = -1;

        /* renamed from: d */
        int f3220d = -1;

        /* renamed from: e */
        long f3221e = -1;

        /* renamed from: f */
        int f3222f = -1;

        /* renamed from: g */
        int f3223g = -1;

        /* renamed from: h */
        AbstractC0617w f3224h = null;

        /* renamed from: i */
        AbstractC0617w f3225i = null;

        /* renamed from: k */
        List<Object> f3227k = null;

        /* renamed from: l */
        List<Object> f3228l = null;

        /* renamed from: r */
        private int f3233r = 0;

        /* renamed from: m */
        C0610p f3229m = null;

        /* renamed from: n */
        boolean f3230n = false;

        /* renamed from: s */
        private int f3234s = 0;

        /* renamed from: o */
        @VisibleForTesting
        int f3231o = -1;

        public AbstractC0617w(@NonNull View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.f3217a = view;
        }

        /* renamed from: a */
        void m3591a(int i, int i2, boolean z) {
            m3599b(8);
            m3592a(i2, z);
            this.f3219c = i;
        }

        /* renamed from: a */
        void m3592a(int i, boolean z) {
            if (this.f3220d == -1) {
                this.f3220d = this.f3219c;
            }
            if (this.f3223g == -1) {
                this.f3223g = this.f3219c;
            }
            if (z) {
                this.f3223g += i;
            }
            this.f3219c += i;
            if (this.f3217a.getLayoutParams() != null) {
                ((C0604j) this.f3217a.getLayoutParams()).f3160e = true;
            }
        }

        /* renamed from: a */
        void m3589a() {
            this.f3220d = -1;
            this.f3223g = -1;
        }

        /* renamed from: b */
        void m3598b() {
            if (this.f3220d == -1) {
                this.f3220d = this.f3219c;
            }
        }

        /* renamed from: c */
        boolean m3601c() {
            return (this.f3226j & 128) != 0;
        }

        /* renamed from: d */
        public final int m3602d() {
            return this.f3223g == -1 ? this.f3219c : this.f3223g;
        }

        /* renamed from: e */
        public final int m3603e() {
            if (this.f3232p == null) {
                return -1;
            }
            return this.f3232p.m3267d(this);
        }

        /* renamed from: f */
        public final int m3604f() {
            return this.f3220d;
        }

        /* renamed from: g */
        public final long m3605g() {
            return this.f3221e;
        }

        /* renamed from: h */
        public final int m3606h() {
            return this.f3222f;
        }

        /* renamed from: i */
        boolean m3607i() {
            return this.f3229m != null;
        }

        /* renamed from: j */
        void m3608j() {
            this.f3229m.m3538c(this);
        }

        /* renamed from: k */
        boolean m3609k() {
            return (this.f3226j & 32) != 0;
        }

        /* renamed from: l */
        void m3610l() {
            this.f3226j &= -33;
        }

        /* renamed from: m */
        void m3611m() {
            this.f3226j &= -257;
        }

        /* renamed from: a */
        void m3593a(C0610p c0610p, boolean z) {
            this.f3229m = c0610p;
            this.f3230n = z;
        }

        /* renamed from: n */
        boolean m3612n() {
            return (this.f3226j & 4) != 0;
        }

        /* renamed from: o */
        boolean m3613o() {
            return (this.f3226j & 2) != 0;
        }

        /* renamed from: p */
        boolean m3614p() {
            return (this.f3226j & 1) != 0;
        }

        /* renamed from: q */
        boolean m3615q() {
            return (this.f3226j & 8) != 0;
        }

        /* renamed from: a */
        boolean m3597a(int i) {
            return (this.f3226j & i) != 0;
        }

        /* renamed from: r */
        boolean m3616r() {
            return (this.f3226j & 256) != 0;
        }

        /* renamed from: s */
        boolean m3617s() {
            return (this.f3226j & 512) != 0 || m3612n();
        }

        /* renamed from: a */
        void m3590a(int i, int i2) {
            this.f3226j = (this.f3226j & (i2 ^ (-1))) | (i & i2);
        }

        /* renamed from: b */
        void m3599b(int i) {
            this.f3226j |= i;
        }

        /* renamed from: a */
        void m3595a(Object obj) {
            if (obj == null) {
                m3599b(1024);
            } else if ((this.f3226j & 1024) == 0) {
                m3588A();
                this.f3227k.add(obj);
            }
        }

        /* renamed from: A */
        private void m3588A() {
            if (this.f3227k == null) {
                this.f3227k = new ArrayList();
                this.f3228l = Collections.unmodifiableList(this.f3227k);
            }
        }

        /* renamed from: t */
        void m3618t() {
            if (this.f3227k != null) {
                this.f3227k.clear();
            }
            this.f3226j &= -1025;
        }

        /* renamed from: u */
        List<Object> m3619u() {
            if ((this.f3226j & 1024) == 0) {
                if (this.f3227k == null || this.f3227k.size() == 0) {
                    return f3216q;
                }
                return this.f3228l;
            }
            return f3216q;
        }

        /* renamed from: v */
        void m3620v() {
            this.f3226j = 0;
            this.f3219c = -1;
            this.f3220d = -1;
            this.f3221e = -1L;
            this.f3223g = -1;
            this.f3233r = 0;
            this.f3224h = null;
            this.f3225i = null;
            m3618t();
            this.f3234s = 0;
            this.f3231o = -1;
            RecyclerView.m3218c(this);
        }

        /* renamed from: a */
        void m3594a(RecyclerView recyclerView) {
            if (this.f3231o != -1) {
                this.f3234s = this.f3231o;
            } else {
                this.f3234s = ViewCompat.getImportantForAccessibility(this.f3217a);
            }
            recyclerView.m3249a(this, 4);
        }

        /* renamed from: b */
        void m3600b(RecyclerView recyclerView) {
            recyclerView.m3249a(this, this.f3234s);
            this.f3234s = 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.f3219c + " id=" + this.f3221e + ", oldPos=" + this.f3220d + ", pLpos:" + this.f3223g);
            if (m3607i()) {
                sb.append(" scrap ").append(this.f3230n ? "[changeScrap]" : "[attachedScrap]");
            }
            if (m3612n()) {
                sb.append(" invalid");
            }
            if (!m3614p()) {
                sb.append(" unbound");
            }
            if (m3613o()) {
                sb.append(" update");
            }
            if (m3615q()) {
                sb.append(" removed");
            }
            if (m3601c()) {
                sb.append(" ignored");
            }
            if (m3616r()) {
                sb.append(" tmpDetached");
            }
            if (!m3621w()) {
                sb.append(" not recyclable(" + this.f3233r + ")");
            }
            if (m3617s()) {
                sb.append(" undefined adapter position");
            }
            if (this.f3217a.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        /* renamed from: a */
        public final void m3596a(boolean z) {
            this.f3233r = z ? this.f3233r - 1 : this.f3233r + 1;
            if (this.f3233r < 0) {
                this.f3233r = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z && this.f3233r == 1) {
                this.f3226j |= 16;
            } else if (z && this.f3233r == 0) {
                this.f3226j &= -17;
            }
        }

        /* renamed from: w */
        public final boolean m3621w() {
            return (this.f3226j & 16) == 0 && !ViewCompat.hasTransientState(this.f3217a);
        }

        /* renamed from: x */
        boolean m3622x() {
            return (this.f3226j & 16) != 0;
        }

        /* renamed from: y */
        boolean m3623y() {
            return (this.f3226j & 16) == 0 && ViewCompat.hasTransientState(this.f3217a);
        }

        /* renamed from: z */
        boolean m3624z() {
            return (this.f3226j & 2) != 0;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    boolean m3249a(AbstractC0617w abstractC0617w, int i) {
        if (m3296o()) {
            abstractC0617w.f3231o = i;
            this.f3051K.add(abstractC0617w);
            return false;
        }
        ViewCompat.setImportantForAccessibility(abstractC0617w.f3217a, i);
        return true;
    }

    /* renamed from: x */
    void m3305x() {
        int i;
        for (int size = this.f3051K.size() - 1; size >= 0; size--) {
            AbstractC0617w abstractC0617w = this.f3051K.get(size);
            if (abstractC0617w.f3217a.getParent() == this && !abstractC0617w.m3601c() && (i = abstractC0617w.f3231o) != -1) {
                ViewCompat.setImportantForAccessibility(abstractC0617w.f3217a, i);
                abstractC0617w.f3231o = -1;
            }
        }
        this.f3051K.clear();
    }

    /* renamed from: d */
    int m3267d(AbstractC0617w abstractC0617w) {
        if (abstractC0617w.m3597a(524) || !abstractC0617w.m3614p()) {
            return -1;
        }
        return this.f3094f.m4281c(abstractC0617w.f3219c);
    }

    @VisibleForTesting
    /* renamed from: a */
    void m3237a(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + m3230a());
        }
        Resources resources = getContext().getResources();
        new C0661al(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(android.support.v7.recyclerview.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(android.support.v7.recyclerview.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(android.support.v7.recyclerview.R.dimen.fastscroll_margin));
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().setNestedScrollingEnabled(z);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().isNestedScrollingEnabled();
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().startNestedScroll(i);
    }

    @Override // android.support.v4.view.NestedScrollingChild2
    public boolean startNestedScroll(int i, int i2) {
        return getScrollingChildHelper().startNestedScroll(i, i2);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public void stopNestedScroll() {
        getScrollingChildHelper().stopNestedScroll();
    }

    @Override // android.support.v4.view.NestedScrollingChild2
    public void stopNestedScroll(int i) {
        getScrollingChildHelper().stopNestedScroll(i);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().hasNestedScrollingParent();
    }

    @Override // android.support.v4.view.NestedScrollingChild2
    public boolean hasNestedScrollingParent(int i) {
        return getScrollingChildHelper().hasNestedScrollingParent(i);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    @Override // android.support.v4.view.NestedScrollingChild2
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return getScrollingChildHelper().dispatchNestedScroll(i, i2, i3, i4, iArr, i5);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    @Override // android.support.v4.view.NestedScrollingChild2
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i, i2, iArr, iArr2, i3);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().dispatchNestedPreFling(f, f2);
    }

    /* renamed from: android.support.v7.widget.RecyclerView$j */
    public static class C0604j extends ViewGroup.MarginLayoutParams {

        /* renamed from: c */
        AbstractC0617w f3158c;

        /* renamed from: d */
        final Rect f3159d;

        /* renamed from: e */
        boolean f3160e;

        /* renamed from: f */
        boolean f3161f;

        public C0604j(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3159d = new Rect();
            this.f3160e = true;
            this.f3161f = false;
        }

        public C0604j(int i, int i2) {
            super(i, i2);
            this.f3159d = new Rect();
            this.f3160e = true;
            this.f3161f = false;
        }

        public C0604j(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f3159d = new Rect();
            this.f3160e = true;
            this.f3161f = false;
        }

        public C0604j(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3159d = new Rect();
            this.f3160e = true;
            this.f3161f = false;
        }

        public C0604j(C0604j c0604j) {
            super((ViewGroup.LayoutParams) c0604j);
            this.f3159d = new Rect();
            this.f3160e = true;
            this.f3161f = false;
        }

        /* renamed from: c */
        public boolean m3488c() {
            return this.f3158c.m3612n();
        }

        /* renamed from: d */
        public boolean m3489d() {
            return this.f3158c.m3615q();
        }

        /* renamed from: e */
        public boolean m3490e() {
            return this.f3158c.m3624z();
        }

        /* renamed from: f */
        public int m3491f() {
            return this.f3158c.m3602d();
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$c */
    public static abstract class AbstractC0597c {
        /* renamed from: a */
        public void mo3347a() {
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$s */
    public static abstract class AbstractC0613s {

        /* renamed from: a */
        private int f3178a;

        /* renamed from: b */
        private RecyclerView f3179b;

        /* renamed from: c */
        private AbstractC0603i f3180c;

        /* renamed from: d */
        private boolean f3181d;

        /* renamed from: e */
        private boolean f3182e;

        /* renamed from: f */
        private View f3183f;

        /* renamed from: g */
        private final a f3184g;

        /* renamed from: android.support.v7.widget.RecyclerView$s$b */
        public interface b {
            @Nullable
            /* renamed from: d */
            PointF mo3153d(int i);
        }

        /* renamed from: a */
        protected abstract void m3556a(@Px int i, @Px int i2, @NonNull C0614t c0614t, @NonNull a aVar);

        /* renamed from: a */
        protected abstract void m3557a(@NonNull View view, @NonNull C0614t c0614t, @NonNull a aVar);

        /* renamed from: f */
        protected abstract void m3564f();

        /* renamed from: a */
        public void m3554a(int i) {
            this.f3178a = i;
        }

        @Nullable
        /* renamed from: b */
        public PointF m3558b(int i) {
            Object m3553a = m3553a();
            if (m3553a instanceof b) {
                return ((b) m3553a).mo3153d(i);
            }
            Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + b.class.getCanonicalName());
            return null;
        }

        @Nullable
        /* renamed from: a */
        public AbstractC0603i m3553a() {
            return this.f3180c;
        }

        /* renamed from: b */
        protected final void m3559b() {
            if (this.f3182e) {
                this.f3182e = false;
                m3564f();
                this.f3179b.f3044D.f3192a = -1;
                this.f3183f = null;
                this.f3178a = -1;
                this.f3181d = false;
                this.f3180c.m3408a(this);
                this.f3180c = null;
                this.f3179b = null;
            }
        }

        /* renamed from: c */
        public boolean m3561c() {
            return this.f3181d;
        }

        /* renamed from: d */
        public boolean m3562d() {
            return this.f3182e;
        }

        /* renamed from: e */
        public int m3563e() {
            return this.f3178a;
        }

        /* renamed from: a */
        void m3555a(int i, int i2) {
            PointF m3558b;
            RecyclerView recyclerView = this.f3179b;
            if (!this.f3182e || this.f3178a == -1 || recyclerView == null) {
                m3559b();
            }
            if (this.f3181d && this.f3183f == null && this.f3180c != null && (m3558b = m3558b(this.f3178a)) != null && (m3558b.x != 0.0f || m3558b.y != 0.0f)) {
                recyclerView.m3236a((int) Math.signum(m3558b.x), (int) Math.signum(m3558b.y), (int[]) null);
            }
            this.f3181d = false;
            if (this.f3183f != null) {
                if (m3552a(this.f3183f) == this.f3178a) {
                    m3557a(this.f3183f, recyclerView.f3044D, this.f3184g);
                    this.f3184g.m3566a(recyclerView);
                    m3559b();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.f3183f = null;
                }
            }
            if (this.f3182e) {
                m3556a(i, i2, recyclerView.f3044D, this.f3184g);
                boolean m3567a = this.f3184g.m3567a();
                this.f3184g.m3566a(recyclerView);
                if (m3567a) {
                    if (this.f3182e) {
                        this.f3181d = true;
                        recyclerView.f3041A.m3580a();
                    } else {
                        m3559b();
                    }
                }
            }
        }

        /* renamed from: a */
        public int m3552a(View view) {
            return this.f3179b.m3275f(view);
        }

        /* renamed from: b */
        protected void m3560b(View view) {
            if (m3552a(view) == m3563e()) {
                this.f3183f = view;
            }
        }

        /* renamed from: android.support.v7.widget.RecyclerView$s$a */
        public static class a {

            /* renamed from: a */
            private int f3185a;

            /* renamed from: b */
            private int f3186b;

            /* renamed from: c */
            private int f3187c;

            /* renamed from: d */
            private int f3188d;

            /* renamed from: e */
            private Interpolator f3189e;

            /* renamed from: f */
            private boolean f3190f;

            /* renamed from: g */
            private int f3191g;

            /* renamed from: a */
            boolean m3567a() {
                return this.f3188d >= 0;
            }

            /* renamed from: a */
            void m3566a(RecyclerView recyclerView) {
                if (this.f3188d >= 0) {
                    int i = this.f3188d;
                    this.f3188d = -1;
                    recyclerView.m3254b(i);
                    this.f3190f = false;
                    return;
                }
                if (this.f3190f) {
                    m3565b();
                    if (this.f3189e == null) {
                        if (this.f3187c == Integer.MIN_VALUE) {
                            recyclerView.f3041A.m3587b(this.f3185a, this.f3186b);
                        } else {
                            recyclerView.f3041A.m3582a(this.f3185a, this.f3186b, this.f3187c);
                        }
                    } else {
                        recyclerView.f3041A.m3584a(this.f3185a, this.f3186b, this.f3187c, this.f3189e);
                    }
                    this.f3191g++;
                    if (this.f3191g > 10) {
                        Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f3190f = false;
                    return;
                }
                this.f3191g = 0;
            }

            /* renamed from: b */
            private void m3565b() {
                if (this.f3189e != null && this.f3187c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.f3187c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$b */
    static class C0596b extends Observable<AbstractC0597c> {
        C0596b() {
        }

        /* renamed from: a */
        public void m3346a() {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0597c) this.mObservers.get(size)).mo3347a();
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.v7.widget.RecyclerView.SavedState.1
            C05941() {
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
        Parcelable f3120a;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f3120a = parcel.readParcelable(classLoader == null ? AbstractC0603i.class.getClassLoader() : classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.f3120a, 0);
        }

        /* renamed from: a */
        void m3330a(SavedState savedState) {
            this.f3120a = savedState.f3120a;
        }

        /* renamed from: android.support.v7.widget.RecyclerView$SavedState$1 */
        static class C05941 implements Parcelable.ClassLoaderCreator<SavedState> {
            C05941() {
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

    /* renamed from: android.support.v7.widget.RecyclerView$t */
    public static class C0614t {

        /* renamed from: a */
        int f3192a = -1;

        /* renamed from: b */
        int f3193b = 0;

        /* renamed from: c */
        int f3194c = 0;

        /* renamed from: d */
        int f3195d = 1;

        /* renamed from: e */
        int f3196e = 0;

        /* renamed from: f */
        boolean f3197f = false;

        /* renamed from: g */
        boolean f3198g = false;

        /* renamed from: h */
        boolean f3199h = false;

        /* renamed from: i */
        boolean f3200i = false;

        /* renamed from: j */
        boolean f3201j = false;

        /* renamed from: k */
        boolean f3202k = false;

        /* renamed from: l */
        int f3203l;

        /* renamed from: m */
        long f3204m;

        /* renamed from: n */
        int f3205n;

        /* renamed from: o */
        int f3206o;

        /* renamed from: p */
        int f3207p;

        /* renamed from: q */
        private SparseArray<Object> f3208q;

        /* renamed from: a */
        void m3568a(int i) {
            if ((this.f3195d & i) == 0) {
                throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f3195d));
            }
        }

        /* renamed from: a */
        void m3569a(AbstractC0595a abstractC0595a) {
            this.f3195d = 1;
            this.f3196e = abstractC0595a.mo1587a();
            this.f3198g = false;
            this.f3199h = false;
            this.f3200i = false;
        }

        /* renamed from: a */
        public boolean m3570a() {
            return this.f3198g;
        }

        /* renamed from: b */
        public boolean m3571b() {
            return this.f3202k;
        }

        /* renamed from: c */
        public int m3572c() {
            return this.f3192a;
        }

        /* renamed from: d */
        public boolean m3573d() {
            return this.f3192a != -1;
        }

        /* renamed from: e */
        public int m3574e() {
            return this.f3198g ? this.f3193b - this.f3194c : this.f3196e;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f3192a + ", mData=" + this.f3208q + ", mItemCount=" + this.f3196e + ", mIsMeasuring=" + this.f3200i + ", mPreviousLayoutItemCount=" + this.f3193b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f3194c + ", mStructureChanged=" + this.f3197f + ", mInPreLayout=" + this.f3198g + ", mRunSimpleAnimations=" + this.f3201j + ", mRunPredictiveAnimations=" + this.f3202k + '}';
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$g */
    private class C0601g implements AbstractC0600f.b {
        C0601g() {
        }

        @Override // android.support.v7.widget.RecyclerView.AbstractC0600f.b
        /* renamed from: a */
        public void mo3373a(AbstractC0617w abstractC0617w) {
            abstractC0617w.m3596a(true);
            if (abstractC0617w.f3224h != null && abstractC0617w.f3225i == null) {
                abstractC0617w.f3224h = null;
            }
            abstractC0617w.f3225i = null;
            if (!abstractC0617w.m3622x() && !RecyclerView.this.m3250a(abstractC0617w.f3217a) && abstractC0617w.m3616r()) {
                RecyclerView.this.removeDetachedView(abstractC0617w.f3217a, false);
            }
        }
    }

    /* renamed from: android.support.v7.widget.RecyclerView$f */
    public static abstract class AbstractC0600f {

        /* renamed from: a */
        private b f3123a = null;

        /* renamed from: b */
        private ArrayList<a> f3124b = new ArrayList<>();

        /* renamed from: c */
        private long f3125c = 120;

        /* renamed from: d */
        private long f3126d = 120;

        /* renamed from: e */
        private long f3127e = 250;

        /* renamed from: f */
        private long f3128f = 250;

        /* renamed from: android.support.v7.widget.RecyclerView$f$a */
        public interface a {
            /* renamed from: a */
            void m3372a();
        }

        /* renamed from: android.support.v7.widget.RecyclerView$f$b */
        interface b {
            /* renamed from: a */
            void mo3373a(@NonNull AbstractC0617w abstractC0617w);
        }

        /* renamed from: a */
        public abstract void mo3353a();

        /* renamed from: a */
        public abstract boolean mo3355a(@NonNull AbstractC0617w abstractC0617w, @NonNull c cVar, @Nullable c cVar2);

        /* renamed from: a */
        public abstract boolean mo3356a(@NonNull AbstractC0617w abstractC0617w, @NonNull AbstractC0617w abstractC0617w2, @NonNull c cVar, @NonNull c cVar2);

        /* renamed from: b */
        public abstract boolean mo3358b();

        /* renamed from: b */
        public abstract boolean mo3359b(@NonNull AbstractC0617w abstractC0617w, @Nullable c cVar, @NonNull c cVar2);

        /* renamed from: c */
        public abstract boolean mo3360c(@NonNull AbstractC0617w abstractC0617w, @NonNull c cVar, @NonNull c cVar2);

        /* renamed from: d */
        public abstract void mo3361d();

        /* renamed from: d */
        public abstract void mo3362d(@NonNull AbstractC0617w abstractC0617w);

        /* renamed from: e */
        public long m3363e() {
            return this.f3127e;
        }

        /* renamed from: f */
        public long m3364f() {
            return this.f3125c;
        }

        /* renamed from: g */
        public long m3366g() {
            return this.f3126d;
        }

        /* renamed from: h */
        public long m3368h() {
            return this.f3128f;
        }

        /* renamed from: a */
        void m3354a(b bVar) {
            this.f3123a = bVar;
        }

        @NonNull
        /* renamed from: a */
        public c m3352a(@NonNull C0614t c0614t, @NonNull AbstractC0617w abstractC0617w, int i, @NonNull List<Object> list) {
            return m3371j().m3374a(abstractC0617w);
        }

        @NonNull
        /* renamed from: a */
        public c m3351a(@NonNull C0614t c0614t, @NonNull AbstractC0617w abstractC0617w) {
            return m3371j().m3374a(abstractC0617w);
        }

        /* renamed from: e */
        static int m3350e(AbstractC0617w abstractC0617w) {
            int i = abstractC0617w.f3226j & 14;
            if (abstractC0617w.m3612n()) {
                return 4;
            }
            if ((i & 4) == 0) {
                int m3604f = abstractC0617w.m3604f();
                int m3603e = abstractC0617w.m3603e();
                if (m3604f != -1 && m3603e != -1 && m3604f != m3603e) {
                    return i | 2048;
                }
                return i;
            }
            return i;
        }

        /* renamed from: f */
        public final void m3365f(@NonNull AbstractC0617w abstractC0617w) {
            m3367g(abstractC0617w);
            if (this.f3123a != null) {
                this.f3123a.mo3373a(abstractC0617w);
            }
        }

        /* renamed from: g */
        public void m3367g(@NonNull AbstractC0617w abstractC0617w) {
        }

        /* renamed from: h */
        public boolean mo3369h(@NonNull AbstractC0617w abstractC0617w) {
            return true;
        }

        /* renamed from: a */
        public boolean mo3357a(@NonNull AbstractC0617w abstractC0617w, @NonNull List<Object> list) {
            return mo3369h(abstractC0617w);
        }

        /* renamed from: i */
        public final void m3370i() {
            int size = this.f3124b.size();
            for (int i = 0; i < size; i++) {
                this.f3124b.get(i).m3372a();
            }
            this.f3124b.clear();
        }

        @NonNull
        /* renamed from: j */
        public c m3371j() {
            return new c();
        }

        /* renamed from: android.support.v7.widget.RecyclerView$f$c */
        public static class c {

            /* renamed from: a */
            public int f3129a;

            /* renamed from: b */
            public int f3130b;

            /* renamed from: c */
            public int f3131c;

            /* renamed from: d */
            public int f3132d;

            @NonNull
            /* renamed from: a */
            public c m3374a(@NonNull AbstractC0617w abstractC0617w) {
                return m3375a(abstractC0617w, 0);
            }

            @NonNull
            /* renamed from: a */
            public c m3375a(@NonNull AbstractC0617w abstractC0617w, int i) {
                View view = abstractC0617w.f3217a;
                this.f3129a = view.getLeft();
                this.f3130b = view.getTop();
                this.f3131c = view.getRight();
                this.f3132d = view.getBottom();
                return this;
            }
        }
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        return this.f3060aC == null ? super.getChildDrawingOrder(i, i2) : this.f3060aC.m3348a(i, i2);
    }

    private NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.f3062aE == null) {
            this.f3062aE = new NestedScrollingChildHelper(this);
        }
        return this.f3062aE;
    }
}
