package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.support.design.R;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.math.MathUtils;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.AbstractC0243b<V> {

    /* renamed from: a */
    int f1391a;

    /* renamed from: b */
    int f1392b;

    /* renamed from: c */
    int f1393c;

    /* renamed from: d */
    boolean f1394d;

    /* renamed from: e */
    int f1395e;

    /* renamed from: f */
    ViewDragHelper f1396f;

    /* renamed from: g */
    int f1397g;

    /* renamed from: h */
    WeakReference<V> f1398h;

    /* renamed from: i */
    WeakReference<View> f1399i;

    /* renamed from: j */
    int f1400j;

    /* renamed from: k */
    boolean f1401k;

    /* renamed from: l */
    private boolean f1402l;

    /* renamed from: m */
    private float f1403m;

    /* renamed from: n */
    private int f1404n;

    /* renamed from: o */
    private boolean f1405o;

    /* renamed from: p */
    private int f1406p;

    /* renamed from: q */
    private int f1407q;

    /* renamed from: r */
    private boolean f1408r;

    /* renamed from: s */
    private boolean f1409s;

    /* renamed from: t */
    private int f1410t;

    /* renamed from: u */
    private boolean f1411u;

    /* renamed from: v */
    private AbstractC0237a f1412v;

    /* renamed from: w */
    private VelocityTracker f1413w;

    /* renamed from: x */
    private int f1414x;

    /* renamed from: y */
    private Map<View, Integer> f1415y;

    /* renamed from: z */
    private final ViewDragHelper.Callback f1416z;

    /* renamed from: android.support.design.widget.BottomSheetBehavior$a */
    public static abstract class AbstractC0237a {
        /* renamed from: a */
        public abstract void m1769a(@NonNull View view, float f);

        /* renamed from: a */
        public abstract void m1770a(@NonNull View view, int i);
    }

    public BottomSheetBehavior() {
        this.f1402l = true;
        this.f1395e = 4;
        this.f1416z = new ViewDragHelper.Callback() { // from class: android.support.design.widget.BottomSheetBehavior.1
            C02351() {
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(@NonNull View view, int i) {
                View view2;
                if (BottomSheetBehavior.this.f1395e == 1 || BottomSheetBehavior.this.f1401k) {
                    return false;
                }
                if (BottomSheetBehavior.this.f1395e == 3 && BottomSheetBehavior.this.f1400j == i && (view2 = BottomSheetBehavior.this.f1399i.get()) != null && view2.canScrollVertically(-1)) {
                    return false;
                }
                return BottomSheetBehavior.this.f1398h != null && BottomSheetBehavior.this.f1398h.get() == view;
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public void onViewPositionChanged(@NonNull View view, int i, int i2, int i3, int i4) {
                BottomSheetBehavior.this.m1764c(i2);
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public void onViewDragStateChanged(int i) {
                if (i == 1) {
                    BottomSheetBehavior.this.m1762b(1);
                }
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public void onViewReleased(@NonNull View view, float f, float f2) {
                int i = 0;
                int i2 = 6;
                int i3 = 3;
                if (f2 < 0.0f) {
                    if (BottomSheetBehavior.this.f1402l) {
                        i = BottomSheetBehavior.this.f1391a;
                    } else {
                        if (view.getTop() > BottomSheetBehavior.this.f1392b) {
                            i = BottomSheetBehavior.this.f1392b;
                        } else {
                            i2 = 3;
                        }
                        i3 = i2;
                    }
                } else if (BottomSheetBehavior.this.f1394d && BottomSheetBehavior.this.m1761a(view, f2) && (view.getTop() > BottomSheetBehavior.this.f1393c || Math.abs(f) < Math.abs(f2))) {
                    i = BottomSheetBehavior.this.f1397g;
                    i3 = 5;
                } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                    int top = view.getTop();
                    if (BottomSheetBehavior.this.f1402l) {
                        if (Math.abs(top - BottomSheetBehavior.this.f1391a) < Math.abs(top - BottomSheetBehavior.this.f1393c)) {
                            i = BottomSheetBehavior.this.f1391a;
                        } else {
                            i = BottomSheetBehavior.this.f1393c;
                            i3 = 4;
                        }
                    } else if (top < BottomSheetBehavior.this.f1392b) {
                        if (top >= Math.abs(top - BottomSheetBehavior.this.f1393c)) {
                            i = BottomSheetBehavior.this.f1392b;
                            i3 = 6;
                        }
                    } else if (Math.abs(top - BottomSheetBehavior.this.f1392b) < Math.abs(top - BottomSheetBehavior.this.f1393c)) {
                        i = BottomSheetBehavior.this.f1392b;
                        i3 = 6;
                    } else {
                        i = BottomSheetBehavior.this.f1393c;
                        i3 = 4;
                    }
                } else {
                    i = BottomSheetBehavior.this.f1393c;
                    i3 = 4;
                }
                if (BottomSheetBehavior.this.f1396f.settleCapturedViewAt(view.getLeft(), i)) {
                    BottomSheetBehavior.this.m1762b(2);
                    ViewCompat.postOnAnimation(view, new RunnableC0238b(view, i3));
                } else {
                    BottomSheetBehavior.this.m1762b(i3);
                }
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
                return MathUtils.clamp(i, BottomSheetBehavior.this.m1756e(), BottomSheetBehavior.this.f1394d ? BottomSheetBehavior.this.f1397g : BottomSheetBehavior.this.f1393c);
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int getViewVerticalDragRange(@NonNull View view) {
                return BottomSheetBehavior.this.f1394d ? BottomSheetBehavior.this.f1397g : BottomSheetBehavior.this.f1393c;
            }
        };
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1402l = true;
        this.f1395e = 4;
        this.f1416z = new ViewDragHelper.Callback() { // from class: android.support.design.widget.BottomSheetBehavior.1
            C02351() {
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(@NonNull View view, int i) {
                View view2;
                if (BottomSheetBehavior.this.f1395e == 1 || BottomSheetBehavior.this.f1401k) {
                    return false;
                }
                if (BottomSheetBehavior.this.f1395e == 3 && BottomSheetBehavior.this.f1400j == i && (view2 = BottomSheetBehavior.this.f1399i.get()) != null && view2.canScrollVertically(-1)) {
                    return false;
                }
                return BottomSheetBehavior.this.f1398h != null && BottomSheetBehavior.this.f1398h.get() == view;
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public void onViewPositionChanged(@NonNull View view, int i, int i2, int i3, int i4) {
                BottomSheetBehavior.this.m1764c(i2);
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public void onViewDragStateChanged(int i) {
                if (i == 1) {
                    BottomSheetBehavior.this.m1762b(1);
                }
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public void onViewReleased(@NonNull View view, float f, float f2) {
                int i = 0;
                int i2 = 6;
                int i3 = 3;
                if (f2 < 0.0f) {
                    if (BottomSheetBehavior.this.f1402l) {
                        i = BottomSheetBehavior.this.f1391a;
                    } else {
                        if (view.getTop() > BottomSheetBehavior.this.f1392b) {
                            i = BottomSheetBehavior.this.f1392b;
                        } else {
                            i2 = 3;
                        }
                        i3 = i2;
                    }
                } else if (BottomSheetBehavior.this.f1394d && BottomSheetBehavior.this.m1761a(view, f2) && (view.getTop() > BottomSheetBehavior.this.f1393c || Math.abs(f) < Math.abs(f2))) {
                    i = BottomSheetBehavior.this.f1397g;
                    i3 = 5;
                } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                    int top = view.getTop();
                    if (BottomSheetBehavior.this.f1402l) {
                        if (Math.abs(top - BottomSheetBehavior.this.f1391a) < Math.abs(top - BottomSheetBehavior.this.f1393c)) {
                            i = BottomSheetBehavior.this.f1391a;
                        } else {
                            i = BottomSheetBehavior.this.f1393c;
                            i3 = 4;
                        }
                    } else if (top < BottomSheetBehavior.this.f1392b) {
                        if (top >= Math.abs(top - BottomSheetBehavior.this.f1393c)) {
                            i = BottomSheetBehavior.this.f1392b;
                            i3 = 6;
                        }
                    } else if (Math.abs(top - BottomSheetBehavior.this.f1392b) < Math.abs(top - BottomSheetBehavior.this.f1393c)) {
                        i = BottomSheetBehavior.this.f1392b;
                        i3 = 6;
                    } else {
                        i = BottomSheetBehavior.this.f1393c;
                        i3 = 4;
                    }
                } else {
                    i = BottomSheetBehavior.this.f1393c;
                    i3 = 4;
                }
                if (BottomSheetBehavior.this.f1396f.settleCapturedViewAt(view.getLeft(), i)) {
                    BottomSheetBehavior.this.m1762b(2);
                    ViewCompat.postOnAnimation(view, new RunnableC0238b(view, i3));
                } else {
                    BottomSheetBehavior.this.m1762b(i3);
                }
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
                return MathUtils.clamp(i, BottomSheetBehavior.this.m1756e(), BottomSheetBehavior.this.f1394d ? BottomSheetBehavior.this.f1397g : BottomSheetBehavior.this.f1393c);
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int getViewVerticalDragRange(@NonNull View view) {
                return BottomSheetBehavior.this.f1394d ? BottomSheetBehavior.this.f1397g : BottomSheetBehavior.this.f1393c;
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        TypedValue peekValue = obtainStyledAttributes.peekValue(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue != null && peekValue.data == -1) {
            m1758a(peekValue.data);
        } else {
            m1758a(obtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        }
        m1763b(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        m1759a(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        m1765c(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        obtainStyledAttributes.recycle();
        this.f1403m = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: b */
    public Parcelable mo1697b(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.mo1697b(coordinatorLayout, v), this.f1395e);
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public void mo1685a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.mo1685a(coordinatorLayout, (CoordinatorLayout) v, savedState.getSuperState());
        if (savedState.f1418a == 1 || savedState.f1418a == 2) {
            this.f1395e = 4;
        } else {
            this.f1395e = savedState.f1418a;
        }
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public boolean mo1418a(CoordinatorLayout coordinatorLayout, V v, int i) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v)) {
            v.setFitsSystemWindows(true);
        }
        int top = v.getTop();
        coordinatorLayout.m1800a(v, i);
        this.f1397g = coordinatorLayout.getHeight();
        if (this.f1405o) {
            if (this.f1406p == 0) {
                this.f1406p = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            }
            this.f1407q = Math.max(this.f1406p, this.f1397g - ((coordinatorLayout.getWidth() * 9) / 16));
        } else {
            this.f1407q = this.f1404n;
        }
        this.f1391a = Math.max(0, this.f1397g - v.getHeight());
        this.f1392b = this.f1397g / 2;
        m1750a();
        if (this.f1395e == 3) {
            ViewCompat.offsetTopAndBottom(v, m1756e());
        } else if (this.f1395e == 6) {
            ViewCompat.offsetTopAndBottom(v, this.f1392b);
        } else if (this.f1394d && this.f1395e == 5) {
            ViewCompat.offsetTopAndBottom(v, this.f1397g);
        } else if (this.f1395e == 4) {
            ViewCompat.offsetTopAndBottom(v, this.f1393c);
        } else if (this.f1395e == 1 || this.f1395e == 2) {
            ViewCompat.offsetTopAndBottom(v, top - v.getTop());
        }
        if (this.f1396f == null) {
            this.f1396f = ViewDragHelper.create(coordinatorLayout, this.f1416z);
        }
        this.f1398h = new WeakReference<>(v);
        this.f1399i = new WeakReference<>(m1757a(v));
        return true;
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: b */
    public boolean mo1739b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            this.f1409s = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m1753b();
        }
        if (this.f1413w == null) {
            this.f1413w = VelocityTracker.obtain();
        }
        this.f1413w.addMovement(motionEvent);
        switch (actionMasked) {
            case 0:
                int x = (int) motionEvent.getX();
                this.f1414x = (int) motionEvent.getY();
                View view = this.f1399i != null ? this.f1399i.get() : null;
                if (view != null && coordinatorLayout.m1805a(view, x, this.f1414x)) {
                    this.f1400j = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f1401k = true;
                }
                this.f1409s = this.f1400j == -1 && !coordinatorLayout.m1805a(v, x, this.f1414x);
                break;
            case 1:
            case 3:
                this.f1401k = false;
                this.f1400j = -1;
                if (this.f1409s) {
                    this.f1409s = false;
                    return false;
                }
                break;
        }
        if (!this.f1409s && this.f1396f != null && this.f1396f.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
        View view2 = this.f1399i != null ? this.f1399i.get() : null;
        return (actionMasked != 2 || view2 == null || this.f1409s || this.f1395e == 1 || coordinatorLayout.m1805a(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f1396f == null || Math.abs(((float) this.f1414x) - motionEvent.getY()) <= ((float) this.f1396f.getTouchSlop())) ? false : true;
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public boolean mo1646a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f1395e == 1 && actionMasked == 0) {
            return true;
        }
        if (this.f1396f != null) {
            this.f1396f.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            m1753b();
        }
        if (this.f1413w == null) {
            this.f1413w = VelocityTracker.obtain();
        }
        this.f1413w.addMovement(motionEvent);
        if (actionMasked == 2 && !this.f1409s && Math.abs(this.f1414x - motionEvent.getY()) > this.f1396f.getTouchSlop()) {
            this.f1396f.captureChildView(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f1409s;
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public boolean mo1449a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
        this.f1410t = 0;
        this.f1411u = false;
        return (i & 2) != 0;
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public void mo1688a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
        if (i3 != 1 && view == this.f1399i.get()) {
            int top = v.getTop();
            int i4 = top - i2;
            if (i2 > 0) {
                if (i4 < m1756e()) {
                    iArr[1] = top - m1756e();
                    ViewCompat.offsetTopAndBottom(v, -iArr[1]);
                    m1762b(3);
                } else {
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    m1762b(1);
                }
            } else if (i2 < 0 && !view.canScrollVertically(-1)) {
                if (i4 <= this.f1393c || this.f1394d) {
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    m1762b(1);
                } else {
                    iArr[1] = top - this.f1393c;
                    ViewCompat.offsetTopAndBottom(v, -iArr[1]);
                    m1762b(4);
                }
            }
            m1764c(v.getTop());
            this.f1410t = i2;
            this.f1411u = true;
        }
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public void mo1686a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i) {
        int i2;
        int i3 = 3;
        if (v.getTop() == m1756e()) {
            m1762b(3);
            return;
        }
        if (view == this.f1399i.get() && this.f1411u) {
            if (this.f1410t > 0) {
                i2 = m1756e();
            } else if (this.f1394d && m1761a(v, m1754d())) {
                i2 = this.f1397g;
                i3 = 5;
            } else if (this.f1410t == 0) {
                int top = v.getTop();
                if (this.f1402l) {
                    if (Math.abs(top - this.f1391a) < Math.abs(top - this.f1393c)) {
                        i2 = this.f1391a;
                    } else {
                        i3 = 4;
                        i2 = this.f1393c;
                    }
                } else if (top < this.f1392b) {
                    if (top < Math.abs(top - this.f1393c)) {
                        i2 = 0;
                    } else {
                        i3 = 6;
                        i2 = this.f1392b;
                    }
                } else if (Math.abs(top - this.f1392b) < Math.abs(top - this.f1393c)) {
                    i3 = 6;
                    i2 = this.f1392b;
                } else {
                    i3 = 4;
                    i2 = this.f1393c;
                }
            } else {
                i2 = this.f1393c;
                i3 = 4;
            }
            if (this.f1396f.smoothSlideViewTo(v, v.getLeft(), i2)) {
                m1762b(2);
                ViewCompat.postOnAnimation(v, new RunnableC0238b(v, i3));
            } else {
                m1762b(i3);
            }
            this.f1411u = false;
        }
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public boolean mo1760a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f, float f2) {
        return view == this.f1399i.get() && (this.f1395e != 3 || super.mo1760a(coordinatorLayout, (CoordinatorLayout) v, view, f, f2));
    }

    /* renamed from: a */
    public void m1759a(boolean z) {
        if (this.f1402l != z) {
            this.f1402l = z;
            if (this.f1398h != null) {
                m1750a();
            }
            m1762b((this.f1402l && this.f1395e == 6) ? 3 : this.f1395e);
        }
    }

    /* renamed from: a */
    public final void m1758a(int i) {
        V v;
        boolean z = true;
        if (i == -1) {
            if (!this.f1405o) {
                this.f1405o = true;
            }
            z = false;
        } else {
            if (this.f1405o || this.f1404n != i) {
                this.f1405o = false;
                this.f1404n = Math.max(0, i);
                this.f1393c = this.f1397g - i;
            }
            z = false;
        }
        if (z && this.f1395e == 4 && this.f1398h != null && (v = this.f1398h.get()) != null) {
            v.requestLayout();
        }
    }

    /* renamed from: b */
    public void m1763b(boolean z) {
        this.f1394d = z;
    }

    /* renamed from: c */
    public void m1765c(boolean z) {
        this.f1408r = z;
    }

    /* renamed from: b */
    void m1762b(int i) {
        if (this.f1395e != i) {
            this.f1395e = i;
            if (i == 6 || i == 3) {
                m1755d(true);
            } else if (i == 5 || i == 4) {
                m1755d(false);
            }
            V v = this.f1398h.get();
            if (v != null && this.f1412v != null) {
                this.f1412v.m1770a((View) v, i);
            }
        }
    }

    /* renamed from: a */
    private void m1750a() {
        if (this.f1402l) {
            this.f1393c = Math.max(this.f1397g - this.f1407q, this.f1391a);
        } else {
            this.f1393c = this.f1397g - this.f1407q;
        }
    }

    /* renamed from: b */
    private void m1753b() {
        this.f1400j = -1;
        if (this.f1413w != null) {
            this.f1413w.recycle();
            this.f1413w = null;
        }
    }

    /* renamed from: a */
    boolean m1761a(View view, float f) {
        if (this.f1408r) {
            return true;
        }
        return view.getTop() >= this.f1393c && Math.abs((((float) view.getTop()) + (0.1f * f)) - ((float) this.f1393c)) / ((float) this.f1404n) > 0.5f;
    }

    @VisibleForTesting
    /* renamed from: a */
    View m1757a(View view) {
        if (!ViewCompat.isNestedScrollingEnabled(view)) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View m1757a = m1757a(viewGroup.getChildAt(i));
                    if (m1757a != null) {
                        return m1757a;
                    }
                }
            }
            return null;
        }
        return view;
    }

    /* renamed from: d */
    private float m1754d() {
        if (this.f1413w == null) {
            return 0.0f;
        }
        this.f1413w.computeCurrentVelocity(1000, this.f1403m);
        return this.f1413w.getYVelocity(this.f1400j);
    }

    /* renamed from: e */
    public int m1756e() {
        if (this.f1402l) {
            return this.f1391a;
        }
        return 0;
    }

    /* renamed from: android.support.design.widget.BottomSheetBehavior$1 */
    class C02351 extends ViewDragHelper.Callback {
        C02351() {
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(@NonNull View view, int i) {
            View view2;
            if (BottomSheetBehavior.this.f1395e == 1 || BottomSheetBehavior.this.f1401k) {
                return false;
            }
            if (BottomSheetBehavior.this.f1395e == 3 && BottomSheetBehavior.this.f1400j == i && (view2 = BottomSheetBehavior.this.f1399i.get()) != null && view2.canScrollVertically(-1)) {
                return false;
            }
            return BottomSheetBehavior.this.f1398h != null && BottomSheetBehavior.this.f1398h.get() == view;
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.m1764c(i2);
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (i == 1) {
                BottomSheetBehavior.this.m1762b(1);
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewReleased(@NonNull View view, float f, float f2) {
            int i = 0;
            int i2 = 6;
            int i3 = 3;
            if (f2 < 0.0f) {
                if (BottomSheetBehavior.this.f1402l) {
                    i = BottomSheetBehavior.this.f1391a;
                } else {
                    if (view.getTop() > BottomSheetBehavior.this.f1392b) {
                        i = BottomSheetBehavior.this.f1392b;
                    } else {
                        i2 = 3;
                    }
                    i3 = i2;
                }
            } else if (BottomSheetBehavior.this.f1394d && BottomSheetBehavior.this.m1761a(view, f2) && (view.getTop() > BottomSheetBehavior.this.f1393c || Math.abs(f) < Math.abs(f2))) {
                i = BottomSheetBehavior.this.f1397g;
                i3 = 5;
            } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                int top = view.getTop();
                if (BottomSheetBehavior.this.f1402l) {
                    if (Math.abs(top - BottomSheetBehavior.this.f1391a) < Math.abs(top - BottomSheetBehavior.this.f1393c)) {
                        i = BottomSheetBehavior.this.f1391a;
                    } else {
                        i = BottomSheetBehavior.this.f1393c;
                        i3 = 4;
                    }
                } else if (top < BottomSheetBehavior.this.f1392b) {
                    if (top >= Math.abs(top - BottomSheetBehavior.this.f1393c)) {
                        i = BottomSheetBehavior.this.f1392b;
                        i3 = 6;
                    }
                } else if (Math.abs(top - BottomSheetBehavior.this.f1392b) < Math.abs(top - BottomSheetBehavior.this.f1393c)) {
                    i = BottomSheetBehavior.this.f1392b;
                    i3 = 6;
                } else {
                    i = BottomSheetBehavior.this.f1393c;
                    i3 = 4;
                }
            } else {
                i = BottomSheetBehavior.this.f1393c;
                i3 = 4;
            }
            if (BottomSheetBehavior.this.f1396f.settleCapturedViewAt(view.getLeft(), i)) {
                BottomSheetBehavior.this.m1762b(2);
                ViewCompat.postOnAnimation(view, new RunnableC0238b(view, i3));
            } else {
                BottomSheetBehavior.this.m1762b(i3);
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
            return MathUtils.clamp(i, BottomSheetBehavior.this.m1756e(), BottomSheetBehavior.this.f1394d ? BottomSheetBehavior.this.f1397g : BottomSheetBehavior.this.f1393c);
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int getViewVerticalDragRange(@NonNull View view) {
            return BottomSheetBehavior.this.f1394d ? BottomSheetBehavior.this.f1397g : BottomSheetBehavior.this.f1393c;
        }
    }

    /* renamed from: c */
    void m1764c(int i) {
        V v = this.f1398h.get();
        if (v != null && this.f1412v != null) {
            if (i > this.f1393c) {
                this.f1412v.m1769a(v, (this.f1393c - i) / (this.f1397g - this.f1393c));
            } else {
                this.f1412v.m1769a(v, (this.f1393c - i) / (this.f1393c - m1756e()));
            }
        }
    }

    /* renamed from: android.support.design.widget.BottomSheetBehavior$b */
    private class RunnableC0238b implements Runnable {

        /* renamed from: b */
        private final View f1420b;

        /* renamed from: c */
        private final int f1421c;

        RunnableC0238b(View view, int i) {
            this.f1420b = view;
            this.f1421c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BottomSheetBehavior.this.f1396f != null && BottomSheetBehavior.this.f1396f.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.f1420b, this);
            } else {
                BottomSheetBehavior.this.m1762b(this.f1421c);
            }
        }
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.design.widget.BottomSheetBehavior.SavedState.1
            C02361() {
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        final int f1418a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1418a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.f1418a = i;
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1418a);
        }

        /* renamed from: android.support.design.widget.BottomSheetBehavior$SavedState$1 */
        static class C02361 implements Parcelable.ClassLoaderCreator<SavedState> {
            C02361() {
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }
    }

    /* renamed from: d */
    private void m1755d(boolean z) {
        if (this.f1398h != null) {
            ViewParent parent = this.f1398h.get().getParent();
            if (parent instanceof CoordinatorLayout) {
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
                int childCount = coordinatorLayout.getChildCount();
                if (Build.VERSION.SDK_INT >= 16 && z) {
                    if (this.f1415y == null) {
                        this.f1415y = new HashMap(childCount);
                    } else {
                        return;
                    }
                }
                for (int i = 0; i < childCount; i++) {
                    View childAt = coordinatorLayout.getChildAt(i);
                    if (childAt != this.f1398h.get()) {
                        if (!z) {
                            if (this.f1415y != null && this.f1415y.containsKey(childAt)) {
                                ViewCompat.setImportantForAccessibility(childAt, this.f1415y.get(childAt).intValue());
                            }
                        } else {
                            if (Build.VERSION.SDK_INT >= 16) {
                                this.f1415y.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                            }
                            ViewCompat.setImportantForAccessibility(childAt, 4);
                        }
                    }
                }
                if (!z) {
                    this.f1415y = null;
                }
            }
        }
    }
}
