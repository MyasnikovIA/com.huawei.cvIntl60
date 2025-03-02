package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: a */
    private boolean f2956a;

    /* renamed from: b */
    private int f2957b;

    /* renamed from: c */
    private int f2958c;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2957b = -1;
        this.f2958c = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ButtonBarLayout);
        this.f2956a = obtainStyledAttributes.getBoolean(R.styleable.ButtonBarLayout_allowStacking, true);
        obtainStyledAttributes.recycle();
    }

    public void setAllowStacking(boolean z) {
        if (this.f2956a != z) {
            this.f2956a = z;
            if (!this.f2956a && getOrientation() == 1) {
                setStacked(false);
            }
            requestLayout();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int size = View.MeasureSpec.getSize(i);
        if (this.f2956a) {
            if (size > this.f2957b && m3044a()) {
                setStacked(false);
            }
            this.f2957b = size;
        }
        if (m3044a() || View.MeasureSpec.getMode(i) != 1073741824) {
            i3 = i;
            z = false;
        } else {
            i3 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z = true;
        }
        super.onMeasure(i3, i2);
        if (this.f2956a && !m3044a()) {
            if ((getMeasuredWidthAndState() & ViewCompat.MEASURED_STATE_MASK) == 16777216) {
                setStacked(true);
                z = true;
            }
        }
        if (z) {
            super.onMeasure(i, i2);
        }
        int m3043a = m3043a(0);
        if (m3043a >= 0) {
            View childAt = getChildAt(m3043a);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            i4 = layoutParams.bottomMargin + childAt.getMeasuredHeight() + getPaddingTop() + layoutParams.topMargin + 0;
            if (m3044a()) {
                int m3043a2 = m3043a(m3043a + 1);
                if (m3043a2 >= 0) {
                    i4 += getChildAt(m3043a2).getPaddingTop() + ((int) (16.0f * getResources().getDisplayMetrics().density));
                }
            } else {
                i4 += getPaddingBottom();
            }
        } else {
            i4 = 0;
        }
        if (ViewCompat.getMinimumHeight(this) != i4) {
            setMinimumHeight(i4);
        }
    }

    /* renamed from: a */
    private int m3043a(int i) {
        int childCount = getChildCount();
        for (int i2 = i; i2 < childCount; i2++) {
            if (getChildAt(i2).getVisibility() == 0) {
                return i2;
            }
        }
        return -1;
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return Math.max(this.f2958c, super.getMinimumHeight());
    }

    private void setStacked(boolean z) {
        setOrientation(z ? 1 : 0);
        setGravity(z ? 5 : 80);
        View findViewById = findViewById(R.id.spacer);
        if (findViewById != null) {
            findViewById.setVisibility(z ? 8 : 4);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    /* renamed from: a */
    private boolean m3044a() {
        return getOrientation() == 1;
    }
}
