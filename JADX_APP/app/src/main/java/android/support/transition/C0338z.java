package android.support.transition;

import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(18)
/* renamed from: android.support.transition.z */
/* loaded from: classes.dex */
class C0338z {

    /* renamed from: a */
    private static Method f2147a;

    /* renamed from: b */
    private static boolean f2148b;

    /* renamed from: a */
    static void m2447a(@NonNull ViewGroup viewGroup, boolean z) {
        m2446a();
        if (f2147a != null) {
            try {
                f2147a.invoke(viewGroup, Boolean.valueOf(z));
            } catch (IllegalAccessException e) {
                Log.i("ViewUtilsApi18", "Failed to invoke suppressLayout method", e);
            } catch (InvocationTargetException e2) {
                Log.i("ViewUtilsApi18", "Error invoking suppressLayout method", e2);
            }
        }
    }

    /* renamed from: a */
    private static void m2446a() {
        if (!f2148b) {
            try {
                f2147a = ViewGroup.class.getDeclaredMethod("suppressLayout", Boolean.TYPE);
                f2147a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi18", "Failed to retrieve suppressLayout method", e);
            }
            f2148b = true;
        }
    }
}
