package android.support.v7.p048a.p049a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.res.ColorStateListInflaterCompat;
import android.support.v7.widget.C0705k;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.util.WeakHashMap;

/* renamed from: android.support.v7.a.a.a */
/* loaded from: classes.dex */
public final class C0488a {

    /* renamed from: a */
    private static final ThreadLocal<TypedValue> f2156a = new ThreadLocal<>();

    /* renamed from: b */
    private static final WeakHashMap<Context, SparseArray<a>> f2157b = new WeakHashMap<>(0);

    /* renamed from: c */
    private static final Object f2158c = new Object();

    /* renamed from: a */
    public static ColorStateList m2454a(@NonNull Context context, @ColorRes int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList m2459d = m2459d(context, i);
        if (m2459d == null) {
            ColorStateList m2458c = m2458c(context, i);
            if (m2458c != null) {
                m2456a(context, i, m2458c);
                return m2458c;
            }
            return ContextCompat.getColorStateList(context, i);
        }
        return m2459d;
    }

    @Nullable
    /* renamed from: b */
    public static Drawable m2457b(@NonNull Context context, @DrawableRes int i) {
        return C0705k.m4313a().m4331a(context, i);
    }

    @Nullable
    /* renamed from: c */
    private static ColorStateList m2458c(Context context, int i) {
        if (m2460e(context, i)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return ColorStateListInflaterCompat.createFromXml(resources, resources.getXml(i), context.getTheme());
        } catch (Exception e) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    @Nullable
    /* renamed from: d */
    private static ColorStateList m2459d(@NonNull Context context, @ColorRes int i) {
        a aVar;
        synchronized (f2158c) {
            SparseArray<a> sparseArray = f2157b.get(context);
            if (sparseArray != null && sparseArray.size() > 0 && (aVar = sparseArray.get(i)) != null) {
                if (aVar.f2160b.equals(context.getResources().getConfiguration())) {
                    return aVar.f2159a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    /* renamed from: a */
    private static void m2456a(@NonNull Context context, @ColorRes int i, @NonNull ColorStateList colorStateList) {
        synchronized (f2158c) {
            SparseArray<a> sparseArray = f2157b.get(context);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                f2157b.put(context, sparseArray);
            }
            sparseArray.append(i, new a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    /* renamed from: e */
    private static boolean m2460e(@NonNull Context context, @ColorRes int i) {
        Resources resources = context.getResources();
        TypedValue m2455a = m2455a();
        resources.getValue(i, m2455a, true);
        return m2455a.type >= 28 && m2455a.type <= 31;
    }

    @NonNull
    /* renamed from: a */
    private static TypedValue m2455a() {
        TypedValue typedValue = f2156a.get();
        if (typedValue == null) {
            TypedValue typedValue2 = new TypedValue();
            f2156a.set(typedValue2);
            return typedValue2;
        }
        return typedValue;
    }

    /* renamed from: android.support.v7.a.a.a$a */
    private static class a {

        /* renamed from: a */
        final ColorStateList f2159a;

        /* renamed from: b */
        final Configuration f2160b;

        a(@NonNull ColorStateList colorStateList, @NonNull Configuration configuration) {
            this.f2159a = colorStateList;
            this.f2160b = configuration;
        }
    }
}
