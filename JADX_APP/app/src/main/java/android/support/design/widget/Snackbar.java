package android.support.design.widget;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.design.widget.BaseTransientBottomBar;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.exoplayer.C1167C;

/* loaded from: classes.dex */
public final class Snackbar extends BaseTransientBottomBar<Snackbar> {

    /* renamed from: d */
    private static final int[] f1500d = {R.attr.snackbarButtonStyle};

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final class SnackbarLayout extends BaseTransientBottomBar.C0231e {
        public SnackbarLayout(Context context) {
            super(context);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, C1167C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), C1167C.ENCODING_PCM_32BIT));
                }
            }
        }
    }
}
