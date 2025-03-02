package android.support.design.widget;

import android.support.annotation.NonNull;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.AbstractC0243b<V> {

    /* renamed from: a */
    ViewDragHelper f1505a;

    /* renamed from: b */
    InterfaceC0255a f1506b;

    /* renamed from: g */
    private boolean f1511g;

    /* renamed from: i */
    private boolean f1513i;

    /* renamed from: h */
    private float f1512h = 0.0f;

    /* renamed from: c */
    int f1507c = 2;

    /* renamed from: d */
    float f1508d = 0.5f;

    /* renamed from: e */
    float f1509e = 0.0f;

    /* renamed from: f */
    float f1510f = 0.5f;

    /* renamed from: j */
    private final ViewDragHelper.Callback f1514j = new ViewDragHelper.Callback() { // from class: android.support.design.widget.SwipeDismissBehavior.1

        /* renamed from: b */
        private int f1516b;

        /* renamed from: c */
        private int f1517c = -1;

        C02541() {
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            return this.f1517c == -1 && SwipeDismissBehavior.this.mo1738a(view);
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i) {
            this.f1517c = i;
            this.f1516b = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (SwipeDismissBehavior.this.f1506b != null) {
                SwipeDismissBehavior.this.f1506b.mo1731a(i);
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f, float f2) {
            int i;
            boolean z;
            this.f1517c = -1;
            int width = view.getWidth();
            if (m1898a(view, f)) {
                int i2 = view.getLeft() < this.f1516b ? this.f1516b - width : this.f1516b + width;
                z = true;
                i = i2;
            } else {
                i = this.f1516b;
                z = false;
            }
            if (SwipeDismissBehavior.this.f1505a.settleCapturedViewAt(i, view.getTop())) {
                ViewCompat.postOnAnimation(view, new RunnableC0256b(view, z));
            } else if (z && SwipeDismissBehavior.this.f1506b != null) {
                SwipeDismissBehavior.this.f1506b.mo1732a(view);
            }
        }

        /* renamed from: a */
        private boolean m1898a(View view, float f) {
            if (f == 0.0f) {
                return Math.abs(view.getLeft() - this.f1516b) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.f1508d);
            }
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            if (SwipeDismissBehavior.this.f1507c == 2) {
                return true;
            }
            if (SwipeDismissBehavior.this.f1507c == 0) {
                return z ? f < 0.0f : f > 0.0f;
            }
            if (SwipeDismissBehavior.this.f1507c == 1) {
                return z ? f > 0.0f : f < 0.0f;
            }
            return false;
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            int width;
            int width2;
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            if (SwipeDismissBehavior.this.f1507c == 0) {
                if (z) {
                    width = this.f1516b - view.getWidth();
                    width2 = this.f1516b;
                } else {
                    width = this.f1516b;
                    width2 = this.f1516b + view.getWidth();
                }
            } else if (SwipeDismissBehavior.this.f1507c == 1) {
                if (z) {
                    width = this.f1516b;
                    width2 = this.f1516b + view.getWidth();
                } else {
                    width = this.f1516b - view.getWidth();
                    width2 = this.f1516b;
                }
            } else {
                width = this.f1516b - view.getWidth();
                width2 = this.f1516b + view.getWidth();
            }
            return SwipeDismissBehavior.m1891a(width, i, width2);
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            float width = this.f1516b + (view.getWidth() * SwipeDismissBehavior.this.f1509e);
            float width2 = this.f1516b + (view.getWidth() * SwipeDismissBehavior.this.f1510f);
            if (i <= width) {
                view.setAlpha(1.0f);
            } else if (i >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.m1890a(0.0f, 1.0f - SwipeDismissBehavior.m1893b(width, width2, i), 1.0f));
            }
        }
    };

    /* renamed from: android.support.design.widget.SwipeDismissBehavior$a */
    public interface InterfaceC0255a {
        /* renamed from: a */
        void mo1731a(int i);

        /* renamed from: a */
        void mo1732a(View view);
    }

    /* renamed from: a */
    public void m1896a(InterfaceC0255a interfaceC0255a) {
        this.f1506b = interfaceC0255a;
    }

    /* renamed from: a */
    public void m1895a(int i) {
        this.f1507c = i;
    }

    /* renamed from: a */
    public void m1894a(float f) {
        this.f1509e = m1890a(0.0f, f, 1.0f);
    }

    /* renamed from: b */
    public void m1897b(float f) {
        this.f1510f = m1890a(0.0f, f, 1.0f);
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: b */
    public boolean mo1739b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.f1511g;
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.f1511g = coordinatorLayout.m1805a(v, (int) motionEvent.getX(), (int) motionEvent.getY());
                z = this.f1511g;
                break;
            case 1:
            case 3:
                this.f1511g = false;
                break;
        }
        if (!z) {
            return false;
        }
        m1892a((ViewGroup) coordinatorLayout);
        return this.f1505a.shouldInterceptTouchEvent(motionEvent);
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public boolean mo1646a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (this.f1505a == null) {
            return false;
        }
        this.f1505a.processTouchEvent(motionEvent);
        return true;
    }

    /* renamed from: a */
    public boolean mo1738a(@NonNull View view) {
        return true;
    }

    /* renamed from: android.support.design.widget.SwipeDismissBehavior$1 */
    class C02541 extends ViewDragHelper.Callback {

        /* renamed from: b */
        private int f1516b;

        /* renamed from: c */
        private int f1517c = -1;

        C02541() {
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            return this.f1517c == -1 && SwipeDismissBehavior.this.mo1738a(view);
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i) {
            this.f1517c = i;
            this.f1516b = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (SwipeDismissBehavior.this.f1506b != null) {
                SwipeDismissBehavior.this.f1506b.mo1731a(i);
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f, float f2) {
            int i;
            boolean z;
            this.f1517c = -1;
            int width = view.getWidth();
            if (m1898a(view, f)) {
                int i2 = view.getLeft() < this.f1516b ? this.f1516b - width : this.f1516b + width;
                z = true;
                i = i2;
            } else {
                i = this.f1516b;
                z = false;
            }
            if (SwipeDismissBehavior.this.f1505a.settleCapturedViewAt(i, view.getTop())) {
                ViewCompat.postOnAnimation(view, new RunnableC0256b(view, z));
            } else if (z && SwipeDismissBehavior.this.f1506b != null) {
                SwipeDismissBehavior.this.f1506b.mo1732a(view);
            }
        }

        /* renamed from: a */
        private boolean m1898a(View view, float f) {
            if (f == 0.0f) {
                return Math.abs(view.getLeft() - this.f1516b) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.f1508d);
            }
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            if (SwipeDismissBehavior.this.f1507c == 2) {
                return true;
            }
            if (SwipeDismissBehavior.this.f1507c == 0) {
                return z ? f < 0.0f : f > 0.0f;
            }
            if (SwipeDismissBehavior.this.f1507c == 1) {
                return z ? f > 0.0f : f < 0.0f;
            }
            return false;
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            int width;
            int width2;
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            if (SwipeDismissBehavior.this.f1507c == 0) {
                if (z) {
                    width = this.f1516b - view.getWidth();
                    width2 = this.f1516b;
                } else {
                    width = this.f1516b;
                    width2 = this.f1516b + view.getWidth();
                }
            } else if (SwipeDismissBehavior.this.f1507c == 1) {
                if (z) {
                    width = this.f1516b;
                    width2 = this.f1516b + view.getWidth();
                } else {
                    width = this.f1516b - view.getWidth();
                    width2 = this.f1516b;
                }
            } else {
                width = this.f1516b - view.getWidth();
                width2 = this.f1516b + view.getWidth();
            }
            return SwipeDismissBehavior.m1891a(width, i, width2);
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            float width = this.f1516b + (view.getWidth() * SwipeDismissBehavior.this.f1509e);
            float width2 = this.f1516b + (view.getWidth() * SwipeDismissBehavior.this.f1510f);
            if (i <= width) {
                view.setAlpha(1.0f);
            } else if (i >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.m1890a(0.0f, 1.0f - SwipeDismissBehavior.m1893b(width, width2, i), 1.0f));
            }
        }
    }

    /* renamed from: a */
    private void m1892a(ViewGroup viewGroup) {
        ViewDragHelper create;
        if (this.f1505a == null) {
            if (this.f1513i) {
                create = ViewDragHelper.create(viewGroup, this.f1512h, this.f1514j);
            } else {
                create = ViewDragHelper.create(viewGroup, this.f1514j);
            }
            this.f1505a = create;
        }
    }

    /* renamed from: android.support.design.widget.SwipeDismissBehavior$b */
    private class RunnableC0256b implements Runnable {

        /* renamed from: b */
        private final View f1519b;

        /* renamed from: c */
        private final boolean f1520c;

        RunnableC0256b(View view, boolean z) {
            this.f1519b = view;
            this.f1520c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SwipeDismissBehavior.this.f1505a != null && SwipeDismissBehavior.this.f1505a.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.f1519b, this);
            } else if (this.f1520c && SwipeDismissBehavior.this.f1506b != null) {
                SwipeDismissBehavior.this.f1506b.mo1732a(this.f1519b);
            }
        }
    }

    /* renamed from: a */
    static float m1890a(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    /* renamed from: a */
    static int m1891a(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    /* renamed from: b */
    static float m1893b(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }
}
