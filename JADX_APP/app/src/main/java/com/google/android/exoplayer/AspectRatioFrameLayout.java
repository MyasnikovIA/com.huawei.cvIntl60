package com.google.android.exoplayer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public final class AspectRatioFrameLayout extends FrameLayout {
    private static final float MAX_ASPECT_RATIO_DEFORMATION_FRACTION = 0.01f;
    private float videoAspectRatio;

    public AspectRatioFrameLayout(Context context) {
        super(context);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setAspectRatio(float f) {
        if (this.videoAspectRatio != f) {
            this.videoAspectRatio = f;
            requestLayout();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.videoAspectRatio != 0.0f) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            float f = (this.videoAspectRatio / (measuredWidth / measuredHeight)) - 1.0f;
            if (Math.abs(f) > MAX_ASPECT_RATIO_DEFORMATION_FRACTION) {
                if (f > 0.0f) {
                    measuredHeight = (int) (measuredWidth / this.videoAspectRatio);
                } else {
                    measuredWidth = (int) (measuredHeight * this.videoAspectRatio);
                }
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, C1167C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(measuredHeight, C1167C.ENCODING_PCM_32BIT));
            }
        }
    }
}
