package android.support.v7.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.support.v4.view.PointerIconCompat;
import android.support.v7.appcompat.R;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.bo */
/* loaded from: classes.dex */
class C0691bo {

    /* renamed from: a */
    private final Context f3791a;

    /* renamed from: b */
    private final View f3792b;

    /* renamed from: c */
    private final TextView f3793c;

    /* renamed from: d */
    private final WindowManager.LayoutParams f3794d = new WindowManager.LayoutParams();

    /* renamed from: e */
    private final Rect f3795e = new Rect();

    /* renamed from: f */
    private final int[] f3796f = new int[2];

    /* renamed from: g */
    private final int[] f3797g = new int[2];

    C0691bo(Context context) {
        this.f3791a = context;
        this.f3792b = LayoutInflater.from(this.f3791a).inflate(R.layout.abc_tooltip, (ViewGroup) null);
        this.f3793c = (TextView) this.f3792b.findViewById(R.id.message);
        this.f3794d.setTitle(getClass().getSimpleName());
        this.f3794d.packageName = this.f3791a.getPackageName();
        this.f3794d.type = PointerIconCompat.TYPE_HAND;
        this.f3794d.width = -2;
        this.f3794d.height = -2;
        this.f3794d.format = -3;
        this.f3794d.windowAnimations = R.style.Animation_AppCompat_Tooltip;
        this.f3794d.flags = 24;
    }

    /* renamed from: a */
    void m4212a(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (m4213b()) {
            m4211a();
        }
        this.f3793c.setText(charSequence);
        m4210a(view, i, i2, z, this.f3794d);
        ((WindowManager) this.f3791a.getSystemService("window")).addView(this.f3792b, this.f3794d);
    }

    /* renamed from: a */
    void m4211a() {
        if (m4213b()) {
            ((WindowManager) this.f3791a.getSystemService("window")).removeView(this.f3792b);
        }
    }

    /* renamed from: b */
    boolean m4213b() {
        return this.f3792b.getParent() != null;
    }

    /* renamed from: a */
    private void m4210a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int height;
        int i3;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f3791a.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f3791a.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
            height = i2 + dimensionPixelOffset2;
            i3 = i2 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f3791a.getResources().getDimensionPixelOffset(z ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
        View m4209a = m4209a(view);
        if (m4209a == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        m4209a.getWindowVisibleDisplayFrame(this.f3795e);
        if (this.f3795e.left < 0 && this.f3795e.top < 0) {
            Resources resources = this.f3791a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f3795e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        m4209a.getLocationOnScreen(this.f3797g);
        view.getLocationOnScreen(this.f3796f);
        int[] iArr = this.f3796f;
        iArr[0] = iArr[0] - this.f3797g[0];
        int[] iArr2 = this.f3796f;
        iArr2[1] = iArr2[1] - this.f3797g[1];
        layoutParams.x = (this.f3796f[0] + i) - (m4209a.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f3792b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f3792b.getMeasuredHeight();
        int i4 = ((i3 + this.f3796f[1]) - dimensionPixelOffset3) - measuredHeight;
        int i5 = height + this.f3796f[1] + dimensionPixelOffset3;
        if (z) {
            if (i4 >= 0) {
                layoutParams.y = i4;
                return;
            } else {
                layoutParams.y = i5;
                return;
            }
        }
        if (measuredHeight + i5 <= this.f3795e.height()) {
            layoutParams.y = i5;
        } else {
            layoutParams.y = i4;
        }
    }

    /* renamed from: a */
    private static View m4209a(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if ((layoutParams instanceof WindowManager.LayoutParams) && ((WindowManager.LayoutParams) layoutParams).type == 2) {
            return rootView;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getDecorView();
            }
        }
        return rootView;
    }
}
