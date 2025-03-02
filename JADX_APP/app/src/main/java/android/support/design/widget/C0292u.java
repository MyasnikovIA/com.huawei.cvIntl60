package android.support.design.widget;

import android.support.annotation.RestrictTo;
import android.widget.ImageButton;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.widget.u */
/* loaded from: classes.dex */
public class C0292u extends ImageButton {

    /* renamed from: a */
    private int f1867a;

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        m2208a(i, true);
    }

    /* renamed from: a */
    public final void m2208a(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f1867a = i;
        }
    }

    public final int getUserSetVisibility() {
        return this.f1867a;
    }
}
