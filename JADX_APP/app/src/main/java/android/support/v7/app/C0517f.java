package android.support.v7.app;

import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;

/* renamed from: android.support.v7.app.f */
/* loaded from: classes.dex */
class C0517f {

    /* renamed from: a */
    private static Field f2376a;

    /* renamed from: b */
    private static boolean f2377b;

    /* renamed from: c */
    private static Class f2378c;

    /* renamed from: d */
    private static boolean f2379d;

    /* renamed from: e */
    private static Field f2380e;

    /* renamed from: f */
    private static boolean f2381f;

    /* renamed from: g */
    private static Field f2382g;

    /* renamed from: h */
    private static boolean f2383h;

    /* renamed from: a */
    static void m2614a(@NonNull Resources resources) {
        if (Build.VERSION.SDK_INT < 28) {
            if (Build.VERSION.SDK_INT >= 24) {
                m2618d(resources);
            } else if (Build.VERSION.SDK_INT >= 23) {
                m2617c(resources);
            } else if (Build.VERSION.SDK_INT >= 21) {
                m2616b(resources);
            }
        }
    }

    @RequiresApi(21)
    /* renamed from: b */
    private static void m2616b(@NonNull Resources resources) {
        Map map;
        if (!f2377b) {
            try {
                f2376a = Resources.class.getDeclaredField("mDrawableCache");
                f2376a.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f2377b = true;
        }
        if (f2376a != null) {
            try {
                map = (Map) f2376a.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e2);
                map = null;
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0024 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0038  */
    @android.support.annotation.RequiresApi(23)
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void m2617c(@android.support.annotation.NonNull android.content.res.Resources r4) {
        /*
            r3 = 1
            boolean r0 = android.support.v7.app.C0517f.f2377b
            if (r0 != 0) goto L17
            java.lang.Class<android.content.res.Resources> r0 = android.content.res.Resources.class
            java.lang.String r1 = "mDrawableCache"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: java.lang.NoSuchFieldException -> L25
            android.support.v7.app.C0517f.f2376a = r0     // Catch: java.lang.NoSuchFieldException -> L25
            java.lang.reflect.Field r0 = android.support.v7.app.C0517f.f2376a     // Catch: java.lang.NoSuchFieldException -> L25
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.NoSuchFieldException -> L25
        L15:
            android.support.v7.app.C0517f.f2377b = r3
        L17:
            r1 = 0
            java.lang.reflect.Field r0 = android.support.v7.app.C0517f.f2376a
            if (r0 == 0) goto L36
            java.lang.reflect.Field r0 = android.support.v7.app.C0517f.f2376a     // Catch: java.lang.IllegalAccessException -> L2e
            java.lang.Object r0 = r0.get(r4)     // Catch: java.lang.IllegalAccessException -> L2e
        L22:
            if (r0 != 0) goto L38
        L24:
            return
        L25:
            r0 = move-exception
            java.lang.String r1 = "ResourcesFlusher"
            java.lang.String r2 = "Could not retrieve Resources#mDrawableCache field"
            android.util.Log.e(r1, r2, r0)
            goto L15
        L2e:
            r0 = move-exception
            java.lang.String r2 = "ResourcesFlusher"
            java.lang.String r3 = "Could not retrieve value from Resources#mDrawableCache"
            android.util.Log.e(r2, r3, r0)
        L36:
            r0 = r1
            goto L22
        L38:
            m2615a(r0)
            goto L24
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.C0517f.m2617c(android.content.res.Resources):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    @android.support.annotation.RequiresApi(24)
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void m2618d(@android.support.annotation.NonNull android.content.res.Resources r6) {
        /*
            r1 = 0
            r5 = 1
            boolean r0 = android.support.v7.app.C0517f.f2383h
            if (r0 != 0) goto L18
            java.lang.Class<android.content.res.Resources> r0 = android.content.res.Resources.class
            java.lang.String r2 = "mResourcesImpl"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r2)     // Catch: java.lang.NoSuchFieldException -> L1d
            android.support.v7.app.C0517f.f2382g = r0     // Catch: java.lang.NoSuchFieldException -> L1d
            java.lang.reflect.Field r0 = android.support.v7.app.C0517f.f2382g     // Catch: java.lang.NoSuchFieldException -> L1d
            r2 = 1
            r0.setAccessible(r2)     // Catch: java.lang.NoSuchFieldException -> L1d
        L16:
            android.support.v7.app.C0517f.f2383h = r5
        L18:
            java.lang.reflect.Field r0 = android.support.v7.app.C0517f.f2382g
            if (r0 != 0) goto L26
        L1c:
            return
        L1d:
            r0 = move-exception
            java.lang.String r2 = "ResourcesFlusher"
            java.lang.String r3 = "Could not retrieve Resources#mResourcesImpl field"
            android.util.Log.e(r2, r3, r0)
            goto L16
        L26:
            java.lang.reflect.Field r0 = android.support.v7.app.C0517f.f2382g     // Catch: java.lang.IllegalAccessException -> L57
            java.lang.Object r0 = r0.get(r6)     // Catch: java.lang.IllegalAccessException -> L57
            r2 = r0
        L2d:
            if (r2 == 0) goto L1c
            boolean r0 = android.support.v7.app.C0517f.f2377b
            if (r0 != 0) goto L47
            java.lang.Class r0 = r2.getClass()     // Catch: java.lang.NoSuchFieldException -> L61
            java.lang.String r3 = "mDrawableCache"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r3)     // Catch: java.lang.NoSuchFieldException -> L61
            android.support.v7.app.C0517f.f2376a = r0     // Catch: java.lang.NoSuchFieldException -> L61
            java.lang.reflect.Field r0 = android.support.v7.app.C0517f.f2376a     // Catch: java.lang.NoSuchFieldException -> L61
            r3 = 1
            r0.setAccessible(r3)     // Catch: java.lang.NoSuchFieldException -> L61
        L45:
            android.support.v7.app.C0517f.f2377b = r5
        L47:
            java.lang.reflect.Field r0 = android.support.v7.app.C0517f.f2376a
            if (r0 == 0) goto L72
            java.lang.reflect.Field r0 = android.support.v7.app.C0517f.f2376a     // Catch: java.lang.IllegalAccessException -> L6a
            java.lang.Object r0 = r0.get(r2)     // Catch: java.lang.IllegalAccessException -> L6a
        L51:
            if (r0 == 0) goto L1c
            m2615a(r0)
            goto L1c
        L57:
            r0 = move-exception
            java.lang.String r2 = "ResourcesFlusher"
            java.lang.String r3 = "Could not retrieve value from Resources#mResourcesImpl"
            android.util.Log.e(r2, r3, r0)
            r2 = r1
            goto L2d
        L61:
            r0 = move-exception
            java.lang.String r3 = "ResourcesFlusher"
            java.lang.String r4 = "Could not retrieve ResourcesImpl#mDrawableCache field"
            android.util.Log.e(r3, r4, r0)
            goto L45
        L6a:
            r0 = move-exception
            java.lang.String r2 = "ResourcesFlusher"
            java.lang.String r3 = "Could not retrieve value from ResourcesImpl#mDrawableCache"
            android.util.Log.e(r2, r3, r0)
        L72:
            r0 = r1
            goto L51
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.C0517f.m2618d(android.content.res.Resources):void");
    }

    @RequiresApi(16)
    /* renamed from: a */
    private static void m2615a(@NonNull Object obj) {
        LongSparseArray longSparseArray;
        if (!f2379d) {
            try {
                f2378c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            f2379d = true;
        }
        if (f2378c != null) {
            if (!f2381f) {
                try {
                    f2380e = f2378c.getDeclaredField("mUnthemedEntries");
                    f2380e.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
                }
                f2381f = true;
            }
            if (f2380e != null) {
                try {
                    longSparseArray = (LongSparseArray) f2380e.get(obj);
                } catch (IllegalAccessException e3) {
                    Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
                    longSparseArray = null;
                }
                if (longSparseArray != null) {
                    longSparseArray.clear();
                }
            }
        }
    }
}
