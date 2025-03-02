package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.support.v7.widget.InterfaceC0662am;
import android.util.AttributeSet;
import android.widget.LinearLayout;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class FitWindowsLinearLayout extends LinearLayout implements InterfaceC0662am {

    /* renamed from: a */
    private InterfaceC0662am.a f2979a;

    public FitWindowsLinearLayout(Context context) {
        super(context);
    }

    public FitWindowsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.support.v7.widget.InterfaceC0662am
    public void setOnFitSystemWindowsListener(InterfaceC0662am.a aVar) {
        this.f2979a = aVar;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (this.f2979a != null) {
            this.f2979a.mo2555a(rect);
        }
        return super.fitSystemWindows(rect);
    }
}
