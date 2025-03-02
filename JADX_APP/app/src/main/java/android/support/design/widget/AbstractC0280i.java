package android.support.design.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.math.MathUtils;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.exoplayer.C1167C;
import java.util.List;

/* renamed from: android.support.design.widget.i */
/* loaded from: classes.dex */
abstract class AbstractC0280i extends C0289r<View> {

    /* renamed from: a */
    final Rect f1794a;

    /* renamed from: b */
    final Rect f1795b;

    /* renamed from: c */
    private int f1796c;

    /* renamed from: d */
    private int f1797d;

    /* renamed from: b */
    abstract View mo1713b(List<View> list);

    public AbstractC0280i() {
        this.f1794a = new Rect();
        this.f1795b = new Rect();
        this.f1796c = 0;
    }

    public AbstractC0280i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1794a = new Rect();
        this.f1795b = new Rect();
        this.f1796c = 0;
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public boolean mo1693a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View mo1713b;
        int i5 = view.getLayoutParams().height;
        if ((i5 == -1 || i5 == -2) && (mo1713b = mo1713b(coordinatorLayout.m1810c(view))) != null) {
            if (ViewCompat.getFitsSystemWindows(mo1713b) && !ViewCompat.getFitsSystemWindows(view)) {
                ViewCompat.setFitsSystemWindows(view, true);
                if (ViewCompat.getFitsSystemWindows(view)) {
                    view.requestLayout();
                    return true;
                }
            }
            int size = View.MeasureSpec.getSize(i3);
            if (size == 0) {
                size = coordinatorLayout.getHeight();
            }
            coordinatorLayout.m1801a(view, i, i2, View.MeasureSpec.makeMeasureSpec(mo1712b(mo1713b) + (size - mo1713b.getMeasuredHeight()), i5 == -1 ? C1167C.ENCODING_PCM_32BIT : Integer.MIN_VALUE), i4);
            return true;
        }
        return false;
    }

    @Override // android.support.design.widget.C0289r
    /* renamed from: b */
    protected void mo2125b(CoordinatorLayout coordinatorLayout, View view, int i) {
        View mo1713b = mo1713b(coordinatorLayout.m1810c(view));
        if (mo1713b != null) {
            CoordinatorLayout.C0246e c0246e = (CoordinatorLayout.C0246e) view.getLayoutParams();
            Rect rect = this.f1794a;
            rect.set(coordinatorLayout.getPaddingLeft() + c0246e.leftMargin, mo1713b.getBottom() + c0246e.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - c0246e.rightMargin, ((coordinatorLayout.getHeight() + mo1713b.getBottom()) - coordinatorLayout.getPaddingBottom()) - c0246e.bottomMargin);
            WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
                rect.left += lastWindowInsets.getSystemWindowInsetLeft();
                rect.right -= lastWindowInsets.getSystemWindowInsetRight();
            }
            Rect rect2 = this.f1795b;
            GravityCompat.apply(m2122c(c0246e.f1454c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
            int m2126c = m2126c(mo1713b);
            view.layout(rect2.left, rect2.top - m2126c, rect2.right, rect2.bottom - m2126c);
            this.f1796c = rect2.top - mo1713b.getBottom();
            return;
        }
        super.mo2125b(coordinatorLayout, (CoordinatorLayout) view, i);
        this.f1796c = 0;
    }

    /* renamed from: a */
    float mo1709a(View view) {
        return 1.0f;
    }

    /* renamed from: c */
    final int m2126c(View view) {
        if (this.f1797d == 0) {
            return 0;
        }
        return MathUtils.clamp((int) (mo1709a(view) * this.f1797d), 0, this.f1797d);
    }

    /* renamed from: c */
    private static int m2122c(int i) {
        if (i == 0) {
            return 8388659;
        }
        return i;
    }

    /* renamed from: b */
    int mo1712b(View view) {
        return view.getMeasuredHeight();
    }

    /* renamed from: a */
    final int m2123a() {
        return this.f1796c;
    }

    /* renamed from: b */
    public final void m2124b(int i) {
        this.f1797d = i;
    }

    /* renamed from: d */
    public final int m2127d() {
        return this.f1797d;
    }
}
