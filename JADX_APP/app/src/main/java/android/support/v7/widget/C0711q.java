package android.support.v7.widget;

import android.content.Context;
import android.os.Build;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;

/* renamed from: android.support.v7.widget.q */
/* loaded from: classes.dex */
class C0711q extends PopupWindow {

    /* renamed from: a */
    private static final boolean f3894a;

    /* renamed from: b */
    private boolean f3895b;

    static {
        f3894a = Build.VERSION.SDK_INT < 21;
    }

    public C0711q(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        m4350a(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    private void m4350a(Context context, AttributeSet attributeSet, int i, int i2) {
        C0687bk m4167a = C0687bk.m4167a(context, attributeSet, R.styleable.PopupWindow, i, i2);
        if (m4167a.m4186g(R.styleable.PopupWindow_overlapAnchor)) {
            m4351a(m4167a.m4173a(R.styleable.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(m4167a.m4171a(R.styleable.PopupWindow_android_popupBackground));
        m4167a.m4172a();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        if (f3894a && this.f3895b) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        if (f3894a && this.f3895b) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        super.update(view, i, (f3894a && this.f3895b) ? i2 - view.getHeight() : i2, i3, i4);
    }

    /* renamed from: a */
    private void m4351a(boolean z) {
        if (f3894a) {
            this.f3895b = z;
        } else {
            PopupWindowCompat.setOverlapAnchor(this, z);
        }
    }
}
