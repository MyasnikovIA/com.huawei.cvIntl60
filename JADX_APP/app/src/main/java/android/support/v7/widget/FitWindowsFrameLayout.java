package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.support.v7.widget.InterfaceC0662am;
import android.util.AttributeSet;
import android.widget.FrameLayout;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class FitWindowsFrameLayout extends FrameLayout implements InterfaceC0662am {

    /* renamed from: a */
    private InterfaceC0662am.a f2978a;

    public FitWindowsFrameLayout(Context context) {
        super(context);
    }

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.support.v7.widget.InterfaceC0662am
    public void setOnFitSystemWindowsListener(InterfaceC0662am.a aVar) {
        this.f2978a = aVar;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (this.f2978a != null) {
            this.f2978a.mo2555a(rect);
        }
        return super.fitSystemWindows(rect);
    }
}
