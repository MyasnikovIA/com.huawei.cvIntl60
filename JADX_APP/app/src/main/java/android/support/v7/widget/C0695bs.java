package android.support.v7.widget;

import android.graphics.Rect;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.bs */
/* loaded from: classes.dex */
public class C0695bs {

    /* renamed from: a */
    private static Method f3813a;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                f3813a = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                if (!f3813a.isAccessible()) {
                    f3813a.setAccessible(true);
                }
            } catch (NoSuchMethodException e) {
                Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
            }
        }
    }

    /* renamed from: a */
    public static boolean m4245a(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    /* renamed from: a */
    public static void m4244a(View view, Rect rect, Rect rect2) {
        if (f3813a != null) {
            try {
                f3813a.invoke(view, rect, rect2);
            } catch (Exception e) {
                Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e);
            }
        }
    }

    /* renamed from: b */
    public static void m4246b(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                Method method = view.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
                if (!method.isAccessible()) {
                    method.setAccessible(true);
                }
                method.invoke(view, new Object[0]);
            } catch (IllegalAccessException e) {
                Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e);
            } catch (NoSuchMethodException e2) {
                Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
            } catch (InvocationTargetException e3) {
                Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e3);
            }
        }
    }
}
