package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.lang.ref.WeakReference;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.bp */
/* loaded from: classes.dex */
public class C0692bp extends Resources {

    /* renamed from: a */
    private static boolean f3798a = false;

    /* renamed from: b */
    private final WeakReference<Context> f3799b;

    /* renamed from: a */
    public static boolean m4214a() {
        return m4215b() && Build.VERSION.SDK_INT <= 20;
    }

    public C0692bp(@NonNull Context context, @NonNull Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f3799b = new WeakReference<>(context);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) {
        Context context = this.f3799b.get();
        return context != null ? C0705k.m4313a().m4333a(context, this, i) : super.getDrawable(i);
    }

    /* renamed from: a */
    final Drawable m4216a(int i) {
        return super.getDrawable(i);
    }

    /* renamed from: b */
    public static boolean m4215b() {
        return f3798a;
    }
}
