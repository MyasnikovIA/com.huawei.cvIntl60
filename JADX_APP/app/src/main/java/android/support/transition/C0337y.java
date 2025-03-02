package android.support.transition;

import android.animation.LayoutTransition;
import android.support.annotation.NonNull;
import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: android.support.transition.y */
/* loaded from: classes.dex */
class C0337y {

    /* renamed from: a */
    private static LayoutTransition f2142a;

    /* renamed from: b */
    private static Field f2143b;

    /* renamed from: c */
    private static boolean f2144c;

    /* renamed from: d */
    private static Method f2145d;

    /* renamed from: e */
    private static boolean f2146e;

    /* renamed from: android.support.transition.y$1 */
    static class AnonymousClass1 extends LayoutTransition {
        AnonymousClass1() {
        }

        @Override // android.animation.LayoutTransition
        public boolean isChangingLayout() {
            return true;
        }
    }

    /* renamed from: a */
    static void m2445a(@NonNull ViewGroup viewGroup, boolean z) {
        boolean z2 = false;
        if (f2142a == null) {
            f2142a = new LayoutTransition() { // from class: android.support.transition.y.1
                AnonymousClass1() {
                }

                @Override // android.animation.LayoutTransition
                public boolean isChangingLayout() {
                    return true;
                }
            };
            f2142a.setAnimator(2, null);
            f2142a.setAnimator(0, null);
            f2142a.setAnimator(1, null);
            f2142a.setAnimator(3, null);
            f2142a.setAnimator(4, null);
        }
        if (z) {
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null) {
                if (layoutTransition.isRunning()) {
                    m2444a(layoutTransition);
                }
                if (layoutTransition != f2142a) {
                    viewGroup.setTag(R.id.transition_layout_save, layoutTransition);
                }
            }
            viewGroup.setLayoutTransition(f2142a);
            return;
        }
        viewGroup.setLayoutTransition(null);
        if (!f2144c) {
            try {
                f2143b = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                f2143b.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("ViewGroupUtilsApi14", "Failed to access mLayoutSuppressed field by reflection");
            }
            f2144c = true;
        }
        if (f2143b != null) {
            try {
                z2 = f2143b.getBoolean(viewGroup);
                if (z2) {
                    f2143b.setBoolean(viewGroup, false);
                }
            } catch (IllegalAccessException e2) {
                Log.i("ViewGroupUtilsApi14", "Failed to get mLayoutSuppressed field by reflection");
            }
        }
        if (z2) {
            viewGroup.requestLayout();
        }
        LayoutTransition layoutTransition2 = (LayoutTransition) viewGroup.getTag(R.id.transition_layout_save);
        if (layoutTransition2 != null) {
            viewGroup.setTag(R.id.transition_layout_save, null);
            viewGroup.setLayoutTransition(layoutTransition2);
        }
    }

    /* renamed from: a */
    private static void m2444a(LayoutTransition layoutTransition) {
        if (!f2146e) {
            try {
                f2145d = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f2145d.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            }
            f2146e = true;
        }
        if (f2145d != null) {
            try {
                f2145d.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException e2) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            } catch (InvocationTargetException e3) {
                Log.i("ViewGroupUtilsApi14", "Failed to invoke cancel method by reflection");
            }
        }
    }
}
