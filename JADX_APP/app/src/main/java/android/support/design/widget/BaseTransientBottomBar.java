package android.support.design.widget;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.design.p038a.C0155a;
import android.support.design.p046h.InterfaceC0190a;
import android.support.design.widget.BaseTransientBottomBar;
import android.support.design.widget.C0285n;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.SwipeDismissBehavior;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityManagerCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* renamed from: a */
    static final Handler f1355a;

    /* renamed from: d */
    private static final boolean f1356d;

    /* renamed from: e */
    private static final int[] f1357e;

    /* renamed from: b */
    protected final C0231e f1358b;

    /* renamed from: c */
    final C0285n.a f1359c;

    /* renamed from: f */
    private final ViewGroup f1360f;

    /* renamed from: g */
    private final InterfaceC0190a f1361g;

    /* renamed from: h */
    private List<AbstractC0227a<B>> f1362h;

    /* renamed from: i */
    private Behavior f1363i;

    /* renamed from: j */
    private final AccessibilityManager f1364j;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: android.support.design.widget.BaseTransientBottomBar$c */
    protected interface InterfaceC0229c {
        /* renamed from: a */
        void mo1733a(View view);

        /* renamed from: b */
        void mo1734b(View view);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: android.support.design.widget.BaseTransientBottomBar$d */
    protected interface InterfaceC0230d {
        /* renamed from: a */
        void mo1735a(View view, int i, int i2, int i3, int i4);
    }

    /* renamed from: android.support.design.widget.BaseTransientBottomBar$a */
    public static abstract class AbstractC0227a<B> {
        /* renamed from: a */
        public void m1741a(B b, int i) {
        }

        /* renamed from: a */
        public void m1740a(B b) {
        }
    }

    static {
        f1356d = Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 19;
        f1357e = new int[]{R.attr.snackbarStyle};
        f1355a = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: android.support.design.widget.BaseTransientBottomBar.1
            C02191() {
            }

            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                switch (message.what) {
                    case 0:
                        ((BaseTransientBottomBar) message.obj).m1726c();
                        break;
                    case 1:
                        ((BaseTransientBottomBar) message.obj).m1725b(message.arg1);
                        break;
                }
                return true;
            }
        });
    }

    /* renamed from: android.support.design.widget.BaseTransientBottomBar$1 */
    static class C02191 implements Handler.Callback {
        C02191() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    ((BaseTransientBottomBar) message.obj).m1726c();
                    break;
                case 1:
                    ((BaseTransientBottomBar) message.obj).m1725b(message.arg1);
                    break;
            }
            return true;
        }
    }

    /* renamed from: a */
    protected void m1722a(int i) {
        C0285n.m2181a().m2188a(this.f1359c, i);
    }

    /* renamed from: a */
    public boolean m1723a() {
        return C0285n.m2181a().m2193e(this.f1359c);
    }

    /* renamed from: b */
    protected SwipeDismissBehavior<? extends View> m1724b() {
        return new Behavior();
    }

    /* renamed from: c */
    final void m1726c() {
        if (this.f1358b.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f1358b.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.C0246e) {
                CoordinatorLayout.C0246e c0246e = (CoordinatorLayout.C0246e) layoutParams;
                SwipeDismissBehavior<? extends View> m1724b = this.f1363i == null ? m1724b() : this.f1363i;
                if (m1724b instanceof Behavior) {
                    ((Behavior) m1724b).m1737a((BaseTransientBottomBar<?>) this);
                }
                m1724b.m1896a(new SwipeDismissBehavior.InterfaceC0255a() { // from class: android.support.design.widget.BaseTransientBottomBar.4
                    C02224() {
                    }

                    @Override // android.support.design.widget.SwipeDismissBehavior.InterfaceC0255a
                    /* renamed from: a */
                    public void mo1732a(View view) {
                        view.setVisibility(8);
                        BaseTransientBottomBar.this.m1722a(0);
                    }

                    @Override // android.support.design.widget.SwipeDismissBehavior.InterfaceC0255a
                    /* renamed from: a */
                    public void mo1731a(int i) {
                        switch (i) {
                            case 0:
                                C0285n.m2181a().m2192d(BaseTransientBottomBar.this.f1359c);
                                break;
                            case 1:
                            case 2:
                                C0285n.m2181a().m2191c(BaseTransientBottomBar.this.f1359c);
                                break;
                        }
                    }
                });
                c0246e.m1838a(m1724b);
                c0246e.f1458g = 80;
            }
            this.f1360f.addView(this.f1358b);
        }
        this.f1358b.setOnAttachStateChangeListener(new InterfaceC0229c() { // from class: android.support.design.widget.BaseTransientBottomBar.5
            C02235() {
            }

            @Override // android.support.design.widget.BaseTransientBottomBar.InterfaceC0229c
            /* renamed from: a */
            public void mo1733a(View view) {
            }

            @Override // android.support.design.widget.BaseTransientBottomBar.InterfaceC0229c
            /* renamed from: b */
            public void mo1734b(View view) {
                if (BaseTransientBottomBar.this.m1723a()) {
                    BaseTransientBottomBar.f1355a.post(new Runnable() { // from class: android.support.design.widget.BaseTransientBottomBar.5.1
                        AnonymousClass1() {
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            BaseTransientBottomBar.this.m1727c(3);
                        }
                    });
                }
            }

            /* renamed from: android.support.design.widget.BaseTransientBottomBar$5$1 */
            class AnonymousClass1 implements Runnable {
                AnonymousClass1() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    BaseTransientBottomBar.this.m1727c(3);
                }
            }
        });
        if (ViewCompat.isLaidOut(this.f1358b)) {
            if (m1730f()) {
                m1728d();
                return;
            } else {
                m1729e();
                return;
            }
        }
        this.f1358b.setOnLayoutChangeListener(new InterfaceC0230d() { // from class: android.support.design.widget.BaseTransientBottomBar.6
            C02246() {
            }

            @Override // android.support.design.widget.BaseTransientBottomBar.InterfaceC0230d
            /* renamed from: a */
            public void mo1735a(View view, int i, int i2, int i3, int i4) {
                BaseTransientBottomBar.this.f1358b.setOnLayoutChangeListener(null);
                if (BaseTransientBottomBar.this.m1730f()) {
                    BaseTransientBottomBar.this.m1728d();
                } else {
                    BaseTransientBottomBar.this.m1729e();
                }
            }
        });
    }

    /* renamed from: android.support.design.widget.BaseTransientBottomBar$4 */
    class C02224 implements SwipeDismissBehavior.InterfaceC0255a {
        C02224() {
        }

        @Override // android.support.design.widget.SwipeDismissBehavior.InterfaceC0255a
        /* renamed from: a */
        public void mo1732a(View view) {
            view.setVisibility(8);
            BaseTransientBottomBar.this.m1722a(0);
        }

        @Override // android.support.design.widget.SwipeDismissBehavior.InterfaceC0255a
        /* renamed from: a */
        public void mo1731a(int i) {
            switch (i) {
                case 0:
                    C0285n.m2181a().m2192d(BaseTransientBottomBar.this.f1359c);
                    break;
                case 1:
                case 2:
                    C0285n.m2181a().m2191c(BaseTransientBottomBar.this.f1359c);
                    break;
            }
        }
    }

    /* renamed from: android.support.design.widget.BaseTransientBottomBar$5 */
    class C02235 implements InterfaceC0229c {
        C02235() {
        }

        @Override // android.support.design.widget.BaseTransientBottomBar.InterfaceC0229c
        /* renamed from: a */
        public void mo1733a(View view) {
        }

        @Override // android.support.design.widget.BaseTransientBottomBar.InterfaceC0229c
        /* renamed from: b */
        public void mo1734b(View view) {
            if (BaseTransientBottomBar.this.m1723a()) {
                BaseTransientBottomBar.f1355a.post(new Runnable() { // from class: android.support.design.widget.BaseTransientBottomBar.5.1
                    AnonymousClass1() {
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        BaseTransientBottomBar.this.m1727c(3);
                    }
                });
            }
        }

        /* renamed from: android.support.design.widget.BaseTransientBottomBar$5$1 */
        class AnonymousClass1 implements Runnable {
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BaseTransientBottomBar.this.m1727c(3);
            }
        }
    }

    /* renamed from: android.support.design.widget.BaseTransientBottomBar$6 */
    class C02246 implements InterfaceC0230d {
        C02246() {
        }

        @Override // android.support.design.widget.BaseTransientBottomBar.InterfaceC0230d
        /* renamed from: a */
        public void mo1735a(View view, int i, int i2, int i3, int i4) {
            BaseTransientBottomBar.this.f1358b.setOnLayoutChangeListener(null);
            if (BaseTransientBottomBar.this.m1730f()) {
                BaseTransientBottomBar.this.m1728d();
            } else {
                BaseTransientBottomBar.this.m1729e();
            }
        }
    }

    /* renamed from: d */
    void m1728d() {
        int m1721h = m1721h();
        if (f1356d) {
            ViewCompat.offsetTopAndBottom(this.f1358b, m1721h);
        } else {
            this.f1358b.setTranslationY(m1721h);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(m1721h, 0);
        valueAnimator.setInterpolator(C0155a.f1038b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.BaseTransientBottomBar.7
            C02257() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.f1361g.mo1537a(70, 180);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.m1729e();
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.BaseTransientBottomBar.8

            /* renamed from: a */
            final /* synthetic */ int f1374a;

            /* renamed from: c */
            private int f1376c;

            C02268(int m1721h2) {
                m1721h = m1721h2;
                this.f1376c = m1721h;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.f1356d) {
                    ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f1358b, intValue - this.f1376c);
                } else {
                    BaseTransientBottomBar.this.f1358b.setTranslationY(intValue);
                }
                this.f1376c = intValue;
            }
        });
        valueAnimator.start();
    }

    /* renamed from: android.support.design.widget.BaseTransientBottomBar$7 */
    class C02257 extends AnimatorListenerAdapter {
        C02257() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f1361g.mo1537a(70, 180);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.m1729e();
        }
    }

    /* renamed from: android.support.design.widget.BaseTransientBottomBar$8 */
    class C02268 implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ int f1374a;

        /* renamed from: c */
        private int f1376c;

        C02268(int m1721h2) {
            m1721h = m1721h2;
            this.f1376c = m1721h;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator2) {
            int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.f1356d) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f1358b, intValue - this.f1376c);
            } else {
                BaseTransientBottomBar.this.f1358b.setTranslationY(intValue);
            }
            this.f1376c = intValue;
        }
    }

    /* renamed from: d */
    private void m1719d(int i) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, m1721h());
        valueAnimator.setInterpolator(C0155a.f1038b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.BaseTransientBottomBar.2

            /* renamed from: a */
            final /* synthetic */ int f1365a;

            C02202(int i2) {
                i = i2;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.f1361g.mo1538b(0, 180);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.m1727c(i);
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.BaseTransientBottomBar.3

            /* renamed from: b */
            private int f1368b = 0;

            C02213() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.f1356d) {
                    ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f1358b, intValue - this.f1368b);
                } else {
                    BaseTransientBottomBar.this.f1358b.setTranslationY(intValue);
                }
                this.f1368b = intValue;
            }
        });
        valueAnimator.start();
    }

    /* renamed from: android.support.design.widget.BaseTransientBottomBar$2 */
    class C02202 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ int f1365a;

        C02202(int i2) {
            i = i2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f1361g.mo1538b(0, 180);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.m1727c(i);
        }
    }

    /* renamed from: android.support.design.widget.BaseTransientBottomBar$3 */
    class C02213 implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: b */
        private int f1368b = 0;

        C02213() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator2) {
            int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.f1356d) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f1358b, intValue - this.f1368b);
            } else {
                BaseTransientBottomBar.this.f1358b.setTranslationY(intValue);
            }
            this.f1368b = intValue;
        }
    }

    /* renamed from: h */
    private int m1721h() {
        int height = this.f1358b.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f1358b.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + height : height;
    }

    /* renamed from: b */
    final void m1725b(int i) {
        if (m1730f() && this.f1358b.getVisibility() == 0) {
            m1719d(i);
        } else {
            m1727c(i);
        }
    }

    /* renamed from: e */
    void m1729e() {
        C0285n.m2181a().m2190b(this.f1359c);
        if (this.f1362h != null) {
            for (int size = this.f1362h.size() - 1; size >= 0; size--) {
                this.f1362h.get(size).m1740a(this);
            }
        }
    }

    /* renamed from: c */
    void m1727c(int i) {
        C0285n.m2181a().m2187a(this.f1359c);
        if (this.f1362h != null) {
            for (int size = this.f1362h.size() - 1; size >= 0; size--) {
                this.f1362h.get(size).m1741a(this, i);
            }
        }
        ViewParent parent = this.f1358b.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f1358b);
        }
    }

    /* renamed from: f */
    boolean m1730f() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = this.f1364j.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: android.support.design.widget.BaseTransientBottomBar$e */
    protected static class C0231e extends FrameLayout {

        /* renamed from: a */
        private final AccessibilityManager f1379a;

        /* renamed from: b */
        private final AccessibilityManagerCompat.TouchExplorationStateChangeListener f1380b;

        /* renamed from: c */
        private InterfaceC0230d f1381c;

        /* renamed from: d */
        private InterfaceC0229c f1382d;

        protected C0231e(Context context) {
            this(context, null);
        }

        protected C0231e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(R.styleable.SnackbarLayout_elevation)) {
                ViewCompat.setElevation(this, obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_elevation, 0));
            }
            obtainStyledAttributes.recycle();
            this.f1379a = (AccessibilityManager) context.getSystemService("accessibility");
            this.f1380b = new AccessibilityManagerCompat.TouchExplorationStateChangeListener() { // from class: android.support.design.widget.BaseTransientBottomBar.e.1
                AnonymousClass1() {
                }

                @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
                public void onTouchExplorationStateChanged(boolean z) {
                    C0231e.this.setClickableOrFocusableBasedOnAccessibility(z);
                }
            };
            AccessibilityManagerCompat.addTouchExplorationStateChangeListener(this.f1379a, this.f1380b);
            setClickableOrFocusableBasedOnAccessibility(this.f1379a.isTouchExplorationEnabled());
        }

        /* renamed from: android.support.design.widget.BaseTransientBottomBar$e$1 */
        class AnonymousClass1 implements AccessibilityManagerCompat.TouchExplorationStateChangeListener {
            AnonymousClass1() {
            }

            @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
            public void onTouchExplorationStateChanged(boolean z) {
                C0231e.this.setClickableOrFocusableBasedOnAccessibility(z);
            }
        }

        public void setClickableOrFocusableBasedOnAccessibility(boolean z) {
            setClickable(!z);
            setFocusable(z);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.f1381c != null) {
                this.f1381c.mo1735a(this, i, i2, i3, i4);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.f1382d != null) {
                this.f1382d.mo1733a(this);
            }
            ViewCompat.requestApplyInsets(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.f1382d != null) {
                this.f1382d.mo1734b(this);
            }
            AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(this.f1379a, this.f1380b);
        }

        void setOnLayoutChangeListener(InterfaceC0230d interfaceC0230d) {
            this.f1381c = interfaceC0230d;
        }

        void setOnAttachStateChangeListener(InterfaceC0229c interfaceC0229c) {
            this.f1382d = interfaceC0229c;
        }
    }

    public static class Behavior extends SwipeDismissBehavior<View> {

        /* renamed from: g */
        private final C0228b f1377g = new C0228b(this);

        /* renamed from: a */
        public void m1737a(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f1377g.m1742a(baseTransientBottomBar);
        }

        @Override // android.support.design.widget.SwipeDismissBehavior
        /* renamed from: a */
        public boolean mo1738a(View view) {
            return this.f1377g.m1744a(view);
        }

        @Override // android.support.design.widget.SwipeDismissBehavior, android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: b */
        public boolean mo1739b(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            this.f1377g.m1743a(coordinatorLayout, view, motionEvent);
            return super.mo1739b(coordinatorLayout, (CoordinatorLayout) view, motionEvent);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: android.support.design.widget.BaseTransientBottomBar$b */
    public static class C0228b {

        /* renamed from: a */
        private C0285n.a f1378a;

        public C0228b(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.m1894a(0.1f);
            swipeDismissBehavior.m1897b(0.6f);
            swipeDismissBehavior.m1895a(0);
        }

        /* renamed from: a */
        public void m1742a(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f1378a = baseTransientBottomBar.f1359c;
        }

        /* renamed from: a */
        public boolean m1744a(View view) {
            return view instanceof C0231e;
        }

        /* renamed from: a */
        public void m1743a(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            switch (motionEvent.getActionMasked()) {
                case 0:
                    if (coordinatorLayout.m1805a(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                        C0285n.m2181a().m2191c(this.f1378a);
                        break;
                    }
                    break;
                case 1:
                case 3:
                    C0285n.m2181a().m2192d(this.f1378a);
                    break;
            }
        }
    }
}
