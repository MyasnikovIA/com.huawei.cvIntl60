package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import java.lang.ref.WeakReference;

/* renamed from: android.support.v7.widget.bj */
/* loaded from: classes.dex */
class C0686bj extends C0673ax {

    /* renamed from: a */
    private final WeakReference<Context> f3752a;

    public C0686bj(@NonNull Context context, @NonNull Resources resources) {
        super(resources);
        this.f3752a = new WeakReference<>(context);
    }

    @Override // android.support.v7.widget.C0673ax, android.content.res.Resources
    public Drawable getDrawable(int i) {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f3752a.get();
        if (drawable != null && context != null) {
            C0705k.m4313a();
            C0705k.m4319a(context, i, drawable);
        }
        return drawable;
    }
}
