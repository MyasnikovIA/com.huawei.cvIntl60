package android.support.transition;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* renamed from: android.support.transition.aa */
/* loaded from: classes.dex */
class C0303aa implements InterfaceC0305ac {

    /* renamed from: a */
    protected a f1967a;

    C0303aa(Context context, ViewGroup viewGroup, View view) {
        this.f1967a = new a(context, viewGroup, view, this);
    }

    /* renamed from: c */
    static ViewGroup m2283c(View view) {
        View view2 = view;
        while (view2 != null) {
            if (view2.getId() == 16908290 && (view2 instanceof ViewGroup)) {
                return (ViewGroup) view2;
            }
            if (view2.getParent() instanceof ViewGroup) {
                view2 = (ViewGroup) view2.getParent();
            }
        }
        return null;
    }

    /* renamed from: d */
    static C0303aa m2284d(View view) {
        ViewGroup m2283c = m2283c(view);
        if (m2283c != null) {
            int childCount = m2283c.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = m2283c.getChildAt(i);
                if (childAt instanceof a) {
                    return ((a) childAt).f1972e;
                }
            }
            return new C0333u(m2283c.getContext(), m2283c, view);
        }
        return null;
    }

    @Override // android.support.transition.InterfaceC0305ac
    /* renamed from: a */
    public void mo2285a(@NonNull Drawable drawable) {
        this.f1967a.m2288a(drawable);
    }

    @Override // android.support.transition.InterfaceC0305ac
    /* renamed from: b */
    public void mo2286b(@NonNull Drawable drawable) {
        this.f1967a.m2291b(drawable);
    }

    /* renamed from: android.support.transition.aa$a */
    static class a extends ViewGroup {

        /* renamed from: a */
        static Method f1968a;

        /* renamed from: b */
        ViewGroup f1969b;

        /* renamed from: c */
        View f1970c;

        /* renamed from: d */
        ArrayList<Drawable> f1971d;

        /* renamed from: e */
        C0303aa f1972e;

        static {
            try {
                f1968a = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException e) {
            }
        }

        a(Context context, ViewGroup viewGroup, View view, C0303aa c0303aa) {
            super(context);
            this.f1971d = null;
            this.f1969b = viewGroup;
            this.f1970c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f1972e = c0303aa;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: a */
        public void m2288a(Drawable drawable) {
            if (this.f1971d == null) {
                this.f1971d = new ArrayList<>();
            }
            if (!this.f1971d.contains(drawable)) {
                this.f1971d.add(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(this);
            }
        }

        /* renamed from: b */
        public void m2291b(Drawable drawable) {
            if (this.f1971d != null) {
                this.f1971d.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
            }
        }

        @Override // android.view.View
        protected boolean verifyDrawable(@NonNull Drawable drawable) {
            return super.verifyDrawable(drawable) || (this.f1971d != null && this.f1971d.contains(drawable));
        }

        /* renamed from: a */
        public void m2289a(View view) {
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f1969b && viewGroup.getParent() != null && ViewCompat.isAttachedToWindow(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f1969b.getLocationOnScreen(iArr2);
                    ViewCompat.offsetLeftAndRight(view, iArr[0] - iArr2[0]);
                    ViewCompat.offsetTopAndBottom(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view, getChildCount() - 1);
        }

        /* renamed from: b */
        public void m2292b(View view) {
            super.removeView(view);
            if (m2290a()) {
                this.f1969b.removeView(this);
            }
        }

        /* renamed from: a */
        boolean m2290a() {
            return getChildCount() == 0 && (this.f1971d == null || this.f1971d.size() == 0);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            this.f1969b.getLocationOnScreen(new int[2]);
            this.f1970c.getLocationOnScreen(new int[2]);
            canvas.translate(r2[0] - r1[0], r2[1] - r1[1]);
            canvas.clipRect(new Rect(0, 0, this.f1970c.getWidth(), this.f1970c.getHeight()));
            super.dispatchDraw(canvas);
            int size = this.f1971d == null ? 0 : this.f1971d.size();
            for (int i = 0; i < size; i++) {
                this.f1971d.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        }

        /* renamed from: a */
        private void m2287a(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f1969b.getLocationOnScreen(iArr2);
            this.f1970c.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f1969b != null) {
                rect.offset(iArr[0], iArr[1]);
                if (this.f1969b instanceof ViewGroup) {
                    iArr[0] = 0;
                    iArr[1] = 0;
                    int[] iArr2 = new int[2];
                    m2287a(iArr2);
                    rect.offset(iArr2[0], iArr2[1]);
                    return super.invalidateChildInParent(iArr, rect);
                }
                invalidate(rect);
            }
            return null;
        }
    }
}
