package android.support.v7.widget;

import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.bn */
/* loaded from: classes.dex */
class ViewOnAttachStateChangeListenerC0690bn implements View.OnAttachStateChangeListener, View.OnHoverListener, View.OnLongClickListener {

    /* renamed from: j */
    private static ViewOnAttachStateChangeListenerC0690bn f3778j;

    /* renamed from: k */
    private static ViewOnAttachStateChangeListenerC0690bn f3779k;

    /* renamed from: a */
    private final View f3780a;

    /* renamed from: b */
    private final CharSequence f3781b;

    /* renamed from: c */
    private final int f3782c;

    /* renamed from: d */
    private final Runnable f3783d = new Runnable() { // from class: android.support.v7.widget.bn.1
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewOnAttachStateChangeListenerC0690bn.this.m4208a(false);
        }
    };

    /* renamed from: e */
    private final Runnable f3784e = new Runnable() { // from class: android.support.v7.widget.bn.2
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewOnAttachStateChangeListenerC0690bn.this.m4207a();
        }
    };

    /* renamed from: f */
    private int f3785f;

    /* renamed from: g */
    private int f3786g;

    /* renamed from: h */
    private C0691bo f3787h;

    /* renamed from: i */
    private boolean f3788i;

    /* renamed from: android.support.v7.widget.bn$1 */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewOnAttachStateChangeListenerC0690bn.this.m4208a(false);
        }
    }

    /* renamed from: android.support.v7.widget.bn$2 */
    class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewOnAttachStateChangeListenerC0690bn.this.m4207a();
        }
    }

    /* renamed from: a */
    public static void m4202a(View view, CharSequence charSequence) {
        if (f3778j != null && f3778j.f3780a == view) {
            m4201a((ViewOnAttachStateChangeListenerC0690bn) null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            if (f3779k != null && f3779k.f3780a == view) {
                f3779k.m4207a();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new ViewOnAttachStateChangeListenerC0690bn(view, charSequence);
    }

    private ViewOnAttachStateChangeListenerC0690bn(View view, CharSequence charSequence) {
        this.f3780a = view;
        this.f3781b = charSequence;
        this.f3782c = ViewConfigurationCompat.getScaledHoverSlop(ViewConfiguration.get(this.f3780a.getContext()));
        m4206d();
        this.f3780a.setOnLongClickListener(this);
        this.f3780a.setOnHoverListener(this);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f3785f = view.getWidth() / 2;
        this.f3786g = view.getHeight() / 2;
        m4208a(true);
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f3787h == null || !this.f3788i) {
            AccessibilityManager accessibilityManager = (AccessibilityManager) this.f3780a.getContext().getSystemService("accessibility");
            if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
                switch (motionEvent.getAction()) {
                    case 7:
                        if (this.f3780a.isEnabled() && this.f3787h == null && m4203a(motionEvent)) {
                            m4201a(this);
                            break;
                        }
                        break;
                    case 10:
                        m4206d();
                        m4207a();
                        break;
                }
            }
        }
        return false;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m4207a();
    }

    /* renamed from: a */
    void m4208a(boolean z) {
        long longPressTimeout;
        if (ViewCompat.isAttachedToWindow(this.f3780a)) {
            m4201a((ViewOnAttachStateChangeListenerC0690bn) null);
            if (f3779k != null) {
                f3779k.m4207a();
            }
            f3779k = this;
            this.f3788i = z;
            this.f3787h = new C0691bo(this.f3780a.getContext());
            this.f3787h.m4212a(this.f3780a, this.f3785f, this.f3786g, this.f3788i, this.f3781b);
            this.f3780a.addOnAttachStateChangeListener(this);
            if (this.f3788i) {
                longPressTimeout = 2500;
            } else if ((ViewCompat.getWindowSystemUiVisibility(this.f3780a) & 1) == 1) {
                longPressTimeout = 3000 - ViewConfiguration.getLongPressTimeout();
            } else {
                longPressTimeout = 15000 - ViewConfiguration.getLongPressTimeout();
            }
            this.f3780a.removeCallbacks(this.f3784e);
            this.f3780a.postDelayed(this.f3784e, longPressTimeout);
        }
    }

    /* renamed from: a */
    void m4207a() {
        if (f3779k == this) {
            f3779k = null;
            if (this.f3787h != null) {
                this.f3787h.m4211a();
                this.f3787h = null;
                m4206d();
                this.f3780a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f3778j == this) {
            m4201a((ViewOnAttachStateChangeListenerC0690bn) null);
        }
        this.f3780a.removeCallbacks(this.f3784e);
    }

    /* renamed from: a */
    private static void m4201a(ViewOnAttachStateChangeListenerC0690bn viewOnAttachStateChangeListenerC0690bn) {
        if (f3778j != null) {
            f3778j.m4205c();
        }
        f3778j = viewOnAttachStateChangeListenerC0690bn;
        if (f3778j != null) {
            f3778j.m4204b();
        }
    }

    /* renamed from: b */
    private void m4204b() {
        this.f3780a.postDelayed(this.f3783d, ViewConfiguration.getLongPressTimeout());
    }

    /* renamed from: c */
    private void m4205c() {
        this.f3780a.removeCallbacks(this.f3783d);
    }

    /* renamed from: a */
    private boolean m4203a(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f3785f) <= this.f3782c && Math.abs(y - this.f3786g) <= this.f3782c) {
            return false;
        }
        this.f3785f = x;
        this.f3786g = y;
        return true;
    }

    /* renamed from: d */
    private void m4206d() {
        this.f3785f = Integer.MAX_VALUE;
        this.f3786g = Integer.MAX_VALUE;
    }
}
