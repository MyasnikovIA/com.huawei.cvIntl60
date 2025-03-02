package android.support.design.widget;

import android.content.Context;
import android.support.v4.math.MathUtils;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;

/* renamed from: android.support.design.widget.h */
/* loaded from: classes.dex */
abstract class AbstractC0279h<V extends View> extends C0289r<V> {

    /* renamed from: a */
    OverScroller f1784a;

    /* renamed from: b */
    private Runnable f1785b;

    /* renamed from: c */
    private boolean f1786c;

    /* renamed from: d */
    private int f1787d;

    /* renamed from: e */
    private int f1788e;

    /* renamed from: f */
    private int f1789f;

    /* renamed from: g */
    private VelocityTracker f1790g;

    public AbstractC0279h() {
        this.f1787d = -1;
        this.f1789f = -1;
    }

    public AbstractC0279h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1787d = -1;
        this.f1789f = -1;
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: b */
    public boolean mo1739b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.f1789f < 0) {
            this.f1789f = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getAction() == 2 && this.f1786c) {
            return true;
        }
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.f1786c = false;
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (mo1699c(v) && coordinatorLayout.m1805a(v, x, y)) {
                    this.f1788e = y;
                    this.f1787d = motionEvent.getPointerId(0);
                    m2118d();
                    break;
                }
                break;
            case 1:
            case 3:
                this.f1786c = false;
                this.f1787d = -1;
                if (this.f1790g != null) {
                    this.f1790g.recycle();
                    this.f1790g = null;
                    break;
                }
                break;
            case 2:
                int i = this.f1787d;
                if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) != -1) {
                    int y2 = (int) motionEvent.getY(findPointerIndex);
                    if (Math.abs(y2 - this.f1788e) > this.f1789f) {
                        this.f1786c = true;
                        this.f1788e = y2;
                        break;
                    }
                }
                break;
        }
        if (this.f1790g != null) {
            this.f1790g.addMovement(motionEvent);
        }
        return this.f1786c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean mo1646a(android.support.design.widget.CoordinatorLayout r10, V r11, android.view.MotionEvent r12) {
        /*
            r9 = this;
            r7 = 1
            r8 = -1
            r5 = 0
            int r0 = r9.f1789f
            if (r0 >= 0) goto L15
            android.content.Context r0 = r10.getContext()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            r9.f1789f = r0
        L15:
            int r0 = r12.getActionMasked()
            switch(r0) {
                case 0: goto L27;
                case 1: goto L82;
                case 2: goto L49;
                case 3: goto La5;
                default: goto L1c;
            }
        L1c:
            android.view.VelocityTracker r0 = r9.f1790g
            if (r0 == 0) goto L25
            android.view.VelocityTracker r0 = r9.f1790g
            r0.addMovement(r12)
        L25:
            r5 = r7
        L26:
            return r5
        L27:
            float r0 = r12.getX()
            int r0 = (int) r0
            float r1 = r12.getY()
            int r1 = (int) r1
            boolean r0 = r10.m1805a(r11, r0, r1)
            if (r0 == 0) goto L26
            boolean r0 = r9.mo1699c(r11)
            if (r0 == 0) goto L26
            r9.f1788e = r1
            int r0 = r12.getPointerId(r5)
            r9.f1787d = r0
            r9.m2118d()
            goto L1c
        L49:
            int r0 = r9.f1787d
            int r0 = r12.findPointerIndex(r0)
            if (r0 == r8) goto L26
            float r0 = r12.getY(r0)
            int r0 = (int) r0
            int r1 = r9.f1788e
            int r3 = r1 - r0
            boolean r1 = r9.f1786c
            if (r1 != 0) goto L6d
            int r1 = java.lang.Math.abs(r3)
            int r2 = r9.f1789f
            if (r1 <= r2) goto L6d
            r9.f1786c = r7
            if (r3 <= 0) goto L7e
            int r1 = r9.f1789f
            int r3 = r3 - r1
        L6d:
            boolean r1 = r9.f1786c
            if (r1 == 0) goto L1c
            r9.f1788e = r0
            int r4 = r9.mo1695b(r11)
            r0 = r9
            r1 = r10
            r2 = r11
            r0.m2121b(r1, r2, r3, r4, r5)
            goto L1c
        L7e:
            int r1 = r9.f1789f
            int r3 = r3 + r1
            goto L6d
        L82:
            android.view.VelocityTracker r0 = r9.f1790g
            if (r0 == 0) goto La5
            android.view.VelocityTracker r0 = r9.f1790g
            r0.addMovement(r12)
            android.view.VelocityTracker r0 = r9.f1790g
            r1 = 1000(0x3e8, float:1.401E-42)
            r0.computeCurrentVelocity(r1)
            android.view.VelocityTracker r0 = r9.f1790g
            int r1 = r9.f1787d
            float r6 = r0.getYVelocity(r1)
            int r0 = r9.mo1678a(r11)
            int r4 = -r0
            r1 = r9
            r2 = r10
            r3 = r11
            r1.m2119a(r2, r3, r4, r5, r6)
        La5:
            r9.f1786c = r5
            r9.f1787d = r8
            android.view.VelocityTracker r0 = r9.f1790g
            if (r0 == 0) goto L1c
            android.view.VelocityTracker r0 = r9.f1790g
            r0.recycle()
            r0 = 0
            r9.f1790g = r0
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.AbstractC0279h.mo1646a(android.support.design.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: a_ */
    int m2120a_(CoordinatorLayout coordinatorLayout, V v, int i) {
        return mo1677a(coordinatorLayout, (CoordinatorLayout) v, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    /* renamed from: a */
    int mo1677a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int clamp;
        int b = mo1705b();
        if (i2 == 0 || b < i2 || b > i3 || b == (clamp = MathUtils.clamp(i, i2, i3))) {
            return 0;
        }
        mo1704a(clamp);
        return b - clamp;
    }

    /* renamed from: a */
    int mo1675a() {
        return mo1705b();
    }

    /* renamed from: b */
    final int m2121b(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return mo1677a(coordinatorLayout, (CoordinatorLayout) v, mo1675a() - i, i2, i3);
    }

    /* renamed from: a */
    final boolean m2119a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, float f) {
        if (this.f1785b != null) {
            v.removeCallbacks(this.f1785b);
            this.f1785b = null;
        }
        if (this.f1784a == null) {
            this.f1784a = new OverScroller(v.getContext());
        }
        this.f1784a.fling(0, mo1705b(), 0, Math.round(f), 0, 0, i, i2);
        if (this.f1784a.computeScrollOffset()) {
            this.f1785b = new a(coordinatorLayout, v);
            ViewCompat.postOnAnimation(v, this.f1785b);
            return true;
        }
        mo1684a(coordinatorLayout, v);
        return false;
    }

    /* renamed from: a */
    void mo1684a(CoordinatorLayout coordinatorLayout, V v) {
    }

    /* renamed from: c */
    boolean mo1699c(V v) {
        return false;
    }

    /* renamed from: b */
    int mo1695b(V v) {
        return -v.getHeight();
    }

    /* renamed from: a */
    int mo1678a(V v) {
        return v.getHeight();
    }

    /* renamed from: d */
    private void m2118d() {
        if (this.f1790g == null) {
            this.f1790g = VelocityTracker.obtain();
        }
    }

    /* renamed from: android.support.design.widget.h$a */
    private class a implements Runnable {

        /* renamed from: b */
        private final CoordinatorLayout f1792b;

        /* renamed from: c */
        private final V f1793c;

        a(CoordinatorLayout coordinatorLayout, V v) {
            this.f1792b = coordinatorLayout;
            this.f1793c = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1793c != null && AbstractC0279h.this.f1784a != null) {
                if (AbstractC0279h.this.f1784a.computeScrollOffset()) {
                    AbstractC0279h.this.m2120a_(this.f1792b, this.f1793c, AbstractC0279h.this.f1784a.getCurrY());
                    ViewCompat.postOnAnimation(this.f1793c, this);
                } else {
                    AbstractC0279h.this.mo1684a(this.f1792b, this.f1793c);
                }
            }
        }
    }
}
