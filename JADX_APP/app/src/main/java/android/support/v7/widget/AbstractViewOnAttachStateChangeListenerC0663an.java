package android.support.v7.widget;

import android.os.SystemClock;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.InterfaceC0555s;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.an */
/* loaded from: classes.dex */
public abstract class AbstractViewOnAttachStateChangeListenerC0663an implements View.OnAttachStateChangeListener, View.OnTouchListener {

    /* renamed from: a */
    private final float f3546a;

    /* renamed from: b */
    private final int f3547b;

    /* renamed from: c */
    final View f3548c;

    /* renamed from: d */
    private final int f3549d;

    /* renamed from: e */
    private Runnable f3550e;

    /* renamed from: f */
    private Runnable f3551f;

    /* renamed from: g */
    private boolean f3552g;

    /* renamed from: h */
    private int f3553h;

    /* renamed from: i */
    private final int[] f3554i = new int[2];

    /* renamed from: a */
    public abstract InterfaceC0555s mo2777a();

    public AbstractViewOnAttachStateChangeListenerC0663an(View view) {
        this.f3548c = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f3546a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.f3547b = ViewConfiguration.getTapTimeout();
        this.f3549d = (this.f3547b + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f3552g;
        if (z2) {
            z = m3970b(motionEvent) || !mo3005c();
        } else {
            boolean z3 = m3967a(motionEvent) && mo2778b();
            if (z3) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f3548c.onTouchEvent(obtain);
                obtain.recycle();
            }
            z = z3;
        }
        this.f3552g = z;
        return z || z2;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f3552g = false;
        this.f3553h = -1;
        if (this.f3550e != null) {
            this.f3548c.removeCallbacks(this.f3550e);
        }
    }

    /* renamed from: b */
    protected boolean mo2778b() {
        InterfaceC0555s mo2777a = mo2777a();
        if (mo2777a != null && !mo2777a.mo2822f()) {
            mo2777a.mo2820d();
            return true;
        }
        return true;
    }

    /* renamed from: c */
    protected boolean mo3005c() {
        InterfaceC0555s mo2777a = mo2777a();
        if (mo2777a != null && mo2777a.mo2822f()) {
            mo2777a.mo2821e();
            return true;
        }
        return true;
    }

    /* renamed from: a */
    private boolean m3967a(MotionEvent motionEvent) {
        View view = this.f3548c;
        if (!view.isEnabled()) {
            return false;
        }
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.f3553h = motionEvent.getPointerId(0);
                if (this.f3550e == null) {
                    this.f3550e = new a();
                }
                view.postDelayed(this.f3550e, this.f3547b);
                if (this.f3551f == null) {
                    this.f3551f = new b();
                }
                view.postDelayed(this.f3551f, this.f3549d);
                break;
            case 1:
            case 3:
                m3972e();
                break;
            case 2:
                int findPointerIndex = motionEvent.findPointerIndex(this.f3553h);
                if (findPointerIndex >= 0 && !m3968a(view, motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex), this.f3546a)) {
                    m3972e();
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    break;
                }
                break;
        }
        return false;
    }

    /* renamed from: e */
    private void m3972e() {
        if (this.f3551f != null) {
            this.f3548c.removeCallbacks(this.f3551f);
        }
        if (this.f3550e != null) {
            this.f3548c.removeCallbacks(this.f3550e);
        }
    }

    /* renamed from: d */
    void m3973d() {
        m3972e();
        View view = this.f3548c;
        if (view.isEnabled() && !view.isLongClickable() && mo2778b()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            this.f3552g = true;
        }
    }

    /* renamed from: b */
    private boolean m3970b(MotionEvent motionEvent) {
        C0660ak c0660ak;
        View view = this.f3548c;
        InterfaceC0555s mo2777a = mo2777a();
        if (mo2777a == null || !mo2777a.mo2822f() || (c0660ak = (C0660ak) mo2777a.mo2823g()) == null || !c0660ak.isShown()) {
            return false;
        }
        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        m3971b(view, obtainNoHistory);
        m3969a(c0660ak, obtainNoHistory);
        boolean mo3943a = c0660ak.mo3943a(obtainNoHistory, this.f3553h);
        obtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        return mo3943a && (actionMasked != 1 && actionMasked != 3);
    }

    /* renamed from: a */
    private static boolean m3968a(View view, float f, float f2, float f3) {
        return f >= (-f3) && f2 >= (-f3) && f < ((float) (view.getRight() - view.getLeft())) + f3 && f2 < ((float) (view.getBottom() - view.getTop())) + f3;
    }

    /* renamed from: a */
    private boolean m3969a(View view, MotionEvent motionEvent) {
        view.getLocationOnScreen(this.f3554i);
        motionEvent.offsetLocation(-r0[0], -r0[1]);
        return true;
    }

    /* renamed from: b */
    private boolean m3971b(View view, MotionEvent motionEvent) {
        view.getLocationOnScreen(this.f3554i);
        motionEvent.offsetLocation(r0[0], r0[1]);
        return true;
    }

    /* renamed from: android.support.v7.widget.an$a */
    private class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = AbstractViewOnAttachStateChangeListenerC0663an.this.f3548c.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: android.support.v7.widget.an$b */
    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractViewOnAttachStateChangeListenerC0663an.this.m3973d();
        }
    }
}
