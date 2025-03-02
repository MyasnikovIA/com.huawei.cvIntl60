package android.support.transition;

import android.annotation.SuppressLint;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(22)
/* renamed from: android.support.transition.ag */
/* loaded from: classes.dex */
class C0309ag extends C0308af {

    /* renamed from: a */
    private static Method f1987a;

    /* renamed from: b */
    private static boolean f1988b;

    C0309ag() {
    }

    @Override // android.support.transition.C0310ah
    /* renamed from: a */
    public void mo2319a(View view, int i, int i2, int i3, int i4) {
        m2318a();
        if (f1987a != null) {
            try {
                f1987a.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: a */
    private void m2318a() {
        if (!f1988b) {
            try {
                f1987a = View.class.getDeclaredMethod("setLeftTopRightBottom", Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
                f1987a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi22", "Failed to retrieve setLeftTopRightBottom method", e);
            }
            f1988b = true;
        }
    }
}
