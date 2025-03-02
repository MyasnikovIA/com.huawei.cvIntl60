package android.support.transition;

import android.graphics.Matrix;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(21)
/* renamed from: android.support.transition.af */
/* loaded from: classes.dex */
class C0308af extends C0307ae {

    /* renamed from: a */
    private static Method f1983a;

    /* renamed from: b */
    private static boolean f1984b;

    /* renamed from: c */
    private static Method f1985c;

    /* renamed from: d */
    private static boolean f1986d;

    C0308af() {
    }

    @Override // android.support.transition.C0310ah
    /* renamed from: a */
    public void mo2316a(@NonNull View view, @NonNull Matrix matrix) {
        m2314a();
        if (f1983a != null) {
            try {
                f1983a.invoke(view, matrix);
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    @Override // android.support.transition.C0310ah
    /* renamed from: b */
    public void mo2317b(@NonNull View view, @NonNull Matrix matrix) {
        m2315b();
        if (f1985c != null) {
            try {
                f1985c.invoke(view, matrix);
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    /* renamed from: a */
    private void m2314a() {
        if (!f1984b) {
            try {
                f1983a = View.class.getDeclaredMethod("transformMatrixToGlobal", Matrix.class);
                f1983a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToGlobal method", e);
            }
            f1984b = true;
        }
    }

    /* renamed from: b */
    private void m2315b() {
        if (!f1986d) {
            try {
                f1985c = View.class.getDeclaredMethod("transformMatrixToLocal", Matrix.class);
                f1985c.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToLocal method", e);
            }
            f1986d = true;
        }
    }
}
