package android.support.v7.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;

/* renamed from: android.support.v7.widget.t */
/* loaded from: classes.dex */
public class C0714t extends RatingBar {

    /* renamed from: a */
    private final C0712r f3901a;

    public C0714t(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ratingBarStyle);
    }

    public C0714t(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3901a = new C0712r(this);
        this.f3901a.mo4356a(attributeSet, i);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        Bitmap m4355a = this.f3901a.m4355a();
        if (m4355a != null) {
            setMeasuredDimension(View.resolveSizeAndState(m4355a.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
        }
    }
}
