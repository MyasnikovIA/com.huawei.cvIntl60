package android.support.v7.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.bh */
/* loaded from: classes.dex */
public class C0684bh extends ContextWrapper {

    /* renamed from: a */
    private static final Object f3744a = new Object();

    /* renamed from: b */
    private static ArrayList<WeakReference<C0684bh>> f3745b;

    /* renamed from: c */
    private final Resources f3746c;

    /* renamed from: d */
    private final Resources.Theme f3747d;

    /* renamed from: a */
    public static Context m4162a(@NonNull Context context) {
        if (m4163b(context)) {
            synchronized (f3744a) {
                if (f3745b == null) {
                    f3745b = new ArrayList<>();
                } else {
                    for (int size = f3745b.size() - 1; size >= 0; size--) {
                        WeakReference<C0684bh> weakReference = f3745b.get(size);
                        if (weakReference == null || weakReference.get() == null) {
                            f3745b.remove(size);
                        }
                    }
                    for (int size2 = f3745b.size() - 1; size2 >= 0; size2--) {
                        WeakReference<C0684bh> weakReference2 = f3745b.get(size2);
                        C0684bh c0684bh = weakReference2 != null ? weakReference2.get() : null;
                        if (c0684bh != null && c0684bh.getBaseContext() == context) {
                            return c0684bh;
                        }
                    }
                }
                C0684bh c0684bh2 = new C0684bh(context);
                f3745b.add(new WeakReference<>(c0684bh2));
                return c0684bh2;
            }
        }
        return context;
    }

    /* renamed from: b */
    private static boolean m4163b(@NonNull Context context) {
        if ((context instanceof C0684bh) || (context.getResources() instanceof C0686bj) || (context.getResources() instanceof C0692bp)) {
            return false;
        }
        return Build.VERSION.SDK_INT < 21 || C0692bp.m4214a();
    }

    private C0684bh(@NonNull Context context) {
        super(context);
        if (C0692bp.m4214a()) {
            this.f3746c = new C0692bp(this, context.getResources());
            this.f3747d = this.f3746c.newTheme();
            this.f3747d.setTo(context.getTheme());
        } else {
            this.f3746c = new C0686bj(this, context.getResources());
            this.f3747d = null;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        return this.f3747d == null ? super.getTheme() : this.f3747d;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f3747d == null) {
            super.setTheme(i);
        } else {
            this.f3747d.applyStyle(i, true);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f3746c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f3746c.getAssets();
    }
}
