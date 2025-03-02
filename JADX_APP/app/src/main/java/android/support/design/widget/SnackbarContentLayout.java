package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.design.p046h.InterfaceC0190a;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer.C1167C;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout implements InterfaceC0190a {

    /* renamed from: a */
    private TextView f1501a;

    /* renamed from: b */
    private Button f1502b;

    /* renamed from: c */
    private int f1503c;

    /* renamed from: d */
    private int f1504d;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
        this.f1503c = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
        this.f1504d = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f1501a = (TextView) findViewById(R.id.snackbar_text);
        this.f1502b = (Button) findViewById(R.id.snackbar_action);
    }

    public TextView getMessageView() {
        return this.f1501a;
    }

    public Button getActionView() {
        return this.f1502b;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z;
        super.onMeasure(i, i2);
        if (this.f1503c > 0 && getMeasuredWidth() > this.f1503c) {
            i = View.MeasureSpec.makeMeasureSpec(this.f1503c, C1167C.ENCODING_PCM_32BIT);
            super.onMeasure(i, i2);
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        boolean z2 = this.f1501a.getLayout().getLineCount() > 1;
        if (z2 && this.f1504d > 0 && this.f1502b.getMeasuredWidth() > this.f1504d) {
            if (m1889a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
                z = true;
            }
            z = false;
        } else {
            if (!z2) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (m1889a(0, dimensionPixelSize, dimensionPixelSize)) {
                z = true;
            }
            z = false;
        }
        if (z) {
            super.onMeasure(i, i2);
        }
    }

    /* renamed from: a */
    private boolean m1889a(int i, int i2, int i3) {
        boolean z = false;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        }
        if (this.f1501a.getPaddingTop() != i2 || this.f1501a.getPaddingBottom() != i3) {
            m1888a(this.f1501a, i2, i3);
            return true;
        }
        return z;
    }

    /* renamed from: a */
    private static void m1888a(View view, int i, int i2) {
        if (ViewCompat.isPaddingRelative(view)) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i, ViewCompat.getPaddingEnd(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    @Override // android.support.design.p046h.InterfaceC0190a
    /* renamed from: a */
    public void mo1537a(int i, int i2) {
        this.f1501a.setAlpha(0.0f);
        this.f1501a.animate().alpha(1.0f).setDuration(i2).setStartDelay(i).start();
        if (this.f1502b.getVisibility() == 0) {
            this.f1502b.setAlpha(0.0f);
            this.f1502b.animate().alpha(1.0f).setDuration(i2).setStartDelay(i).start();
        }
    }

    @Override // android.support.design.p046h.InterfaceC0190a
    /* renamed from: b */
    public void mo1538b(int i, int i2) {
        this.f1501a.setAlpha(1.0f);
        this.f1501a.animate().alpha(0.0f).setDuration(i2).setStartDelay(i).start();
        if (this.f1502b.getVisibility() == 0) {
            this.f1502b.setAlpha(1.0f);
            this.f1502b.animate().alpha(0.0f).setDuration(i2).setStartDelay(i).start();
        }
    }
}
