package android.support.transition;

import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(19)
/* renamed from: android.support.transition.ae */
/* loaded from: classes.dex */
class C0307ae extends C0310ah {

    /* renamed from: a */
    private static Method f1979a;

    /* renamed from: b */
    private static boolean f1980b;

    /* renamed from: c */
    private static Method f1981c;

    /* renamed from: d */
    private static boolean f1982d;

    C0307ae() {
    }

    @Override // android.support.transition.C0310ah
    /* renamed from: a */
    public void mo2311a(@NonNull View view, float f) {
        m2308a();
        if (f1979a != null) {
            try {
                f1979a.invoke(view, Float.valueOf(f));
                return;
            } catch (IllegalAccessException e) {
                return;
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        view.setAlpha(f);
    }

    @Override // android.support.transition.C0310ah
    /* renamed from: a */
    public float mo2310a(@NonNull View view) {
        m2309b();
        if (f1981c != null) {
            try {
                return ((Float) f1981c.invoke(view, new Object[0])).floatValue();
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        return super.mo2310a(view);
    }

    @Override // android.support.transition.C0310ah
    /* renamed from: b */
    public void mo2312b(@NonNull View view) {
    }

    @Override // android.support.transition.C0310ah
    /* renamed from: c */
    public void mo2313c(@NonNull View view) {
    }

    /* renamed from: a */
    private void m2308a() {
        if (!f1980b) {
            try {
                f1979a = View.class.getDeclaredMethod("setTransitionAlpha", Float.TYPE);
                f1979a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi19", "Failed to retrieve setTransitionAlpha method", e);
            }
            f1980b = true;
        }
    }

    /* renamed from: b */
    private void m2309b() {
        if (!f1982d) {
            try {
                f1981c = View.class.getDeclaredMethod("getTransitionAlpha", new Class[0]);
                f1981c.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi19", "Failed to retrieve getTransitionAlpha method", e);
            }
            f1982d = true;
        }
    }
}
