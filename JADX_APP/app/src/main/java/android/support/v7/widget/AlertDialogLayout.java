package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.widget.C0666aq;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer.C1167C;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class AlertDialogLayout extends C0666aq {
    public AlertDialogLayout(@Nullable Context context) {
        super(context);
    }

    public AlertDialogLayout(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.support.v7.widget.C0666aq, android.view.View
    protected void onMeasure(int i, int i2) {
        if (!m3041c(i, i2)) {
            super.onMeasure(i, i2);
        }
    }

    /* renamed from: c */
    private boolean m3041c(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int makeMeasureSpec;
        View view = null;
        View view2 = null;
        View view3 = null;
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                int id = childAt.getId();
                if (id == R.id.topPanel) {
                    view = childAt;
                } else if (id == R.id.buttonPanel) {
                    view2 = childAt;
                } else {
                    if ((id != R.id.contentPanel && id != R.id.customPanel) || view3 != null) {
                        return false;
                    }
                    view3 = childAt;
                }
            }
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i);
        int i9 = 0;
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (view != null) {
            view.measure(i, 0);
            paddingBottom += view.getMeasuredHeight();
            i9 = View.combineMeasuredStates(0, view.getMeasuredState());
        }
        int i10 = 0;
        if (view2 == null) {
            i3 = 0;
        } else {
            view2.measure(i, 0);
            i10 = m3040c(view2);
            int measuredHeight = view2.getMeasuredHeight() - i10;
            paddingBottom += i10;
            i9 = View.combineMeasuredStates(i9, view2.getMeasuredState());
            i3 = measuredHeight;
        }
        if (view3 == null) {
            i4 = 0;
        } else {
            if (mode == 0) {
                makeMeasureSpec = 0;
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingBottom), mode);
            }
            view3.measure(i, makeMeasureSpec);
            int measuredHeight2 = view3.getMeasuredHeight();
            paddingBottom += measuredHeight2;
            i9 = View.combineMeasuredStates(i9, view3.getMeasuredState());
            i4 = measuredHeight2;
        }
        int i11 = size - paddingBottom;
        if (view2 != null) {
            int i12 = paddingBottom - i10;
            int min = Math.min(i11, i3);
            if (min > 0) {
                i11 -= min;
                i10 += min;
            }
            view2.measure(i, View.MeasureSpec.makeMeasureSpec(i10, C1167C.ENCODING_PCM_32BIT));
            int measuredHeight3 = i12 + view2.getMeasuredHeight();
            i6 = View.combineMeasuredStates(i9, view2.getMeasuredState());
            i5 = measuredHeight3;
        } else {
            i5 = paddingBottom;
            i6 = i9;
        }
        if (view3 == null || i11 <= 0) {
            i7 = i5;
        } else {
            int i13 = i11 - i11;
            view3.measure(i, View.MeasureSpec.makeMeasureSpec(i11 + i4, mode));
            int measuredHeight4 = view3.getMeasuredHeight() + (i5 - i4);
            int combineMeasuredStates = View.combineMeasuredStates(i6, view3.getMeasuredState());
            i7 = measuredHeight4;
            i6 = combineMeasuredStates;
        }
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt2 = getChildAt(i15);
            if (childAt2.getVisibility() != 8) {
                i14 = Math.max(i14, childAt2.getMeasuredWidth());
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i14 + getPaddingLeft() + getPaddingRight(), i, i6), View.resolveSizeAndState(i7, i2, 0));
        if (mode2 != 1073741824) {
            m3042d(childCount, i2);
        }
        return true;
    }

    /* renamed from: d */
    private void m3042d(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), C1167C.ENCODING_PCM_32BIT);
        for (int i3 = 0; i3 < i; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                C0666aq.a aVar = (C0666aq.a) childAt.getLayoutParams();
                if (aVar.width == -1) {
                    int i4 = aVar.height;
                    aVar.height = childAt.getMeasuredHeight();
                    measureChildWithMargins(childAt, makeMeasureSpec, 0, i2, 0);
                    aVar.height = i4;
                }
            }
        }
    }

    /* renamed from: c */
    private static int m3040c(View view) {
        int minimumHeight = ViewCompat.getMinimumHeight(view);
        if (minimumHeight <= 0) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (viewGroup.getChildCount() == 1) {
                    return m3040c(viewGroup.getChildAt(0));
                }
            }
            return 0;
        }
        return minimumHeight;
    }

    @Override // android.support.v7.widget.C0666aq, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingTop;
        int i5;
        int paddingLeft = getPaddingLeft();
        int i6 = i3 - i;
        int paddingRight = i6 - getPaddingRight();
        int paddingRight2 = (i6 - paddingLeft) - getPaddingRight();
        int measuredHeight = getMeasuredHeight();
        int childCount = getChildCount();
        int gravity = getGravity();
        int i7 = gravity & 112;
        int i8 = gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        switch (i7) {
            case 16:
                paddingTop = (((i4 - i2) - measuredHeight) / 2) + getPaddingTop();
                break;
            case 80:
                paddingTop = ((getPaddingTop() + i4) - i2) - measuredHeight;
                break;
            default:
                paddingTop = getPaddingTop();
                break;
        }
        Drawable dividerDrawable = getDividerDrawable();
        int intrinsicHeight = dividerDrawable == null ? 0 : dividerDrawable.getIntrinsicHeight();
        int i9 = paddingTop;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt != null && childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight2 = childAt.getMeasuredHeight();
                C0666aq.a aVar = (C0666aq.a) childAt.getLayoutParams();
                int i11 = aVar.f3597h;
                if (i11 < 0) {
                    i11 = i8;
                }
                switch (GravityCompat.getAbsoluteGravity(i11, ViewCompat.getLayoutDirection(this)) & 7) {
                    case 1:
                        i5 = ((((paddingRight2 - measuredWidth) / 2) + paddingLeft) + aVar.leftMargin) - aVar.rightMargin;
                        break;
                    case 5:
                        i5 = (paddingRight - measuredWidth) - aVar.rightMargin;
                        break;
                    default:
                        i5 = paddingLeft + aVar.leftMargin;
                        break;
                }
                int i12 = aVar.topMargin + (m4008c(i10) ? i9 + intrinsicHeight : i9);
                m3039a(childAt, i5, i12, measuredWidth, measuredHeight2);
                i9 = i12 + aVar.bottomMargin + measuredHeight2;
            }
        }
    }

    /* renamed from: a */
    private void m3039a(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i + i3, i2 + i4);
    }
}
