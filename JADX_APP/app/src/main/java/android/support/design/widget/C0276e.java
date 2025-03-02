package android.support.design.widget;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.support.annotation.RestrictTo;
import android.util.Log;
import java.lang.reflect.Method;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.widget.e */
/* loaded from: classes.dex */
public class C0276e {

    /* renamed from: a */
    private static Method f1731a;

    /* renamed from: b */
    private static boolean f1732b;

    /* renamed from: a */
    public static boolean m2071a(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        return m2072b(drawableContainer, constantState);
    }

    /* renamed from: b */
    private static boolean m2072b(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        if (!f1732b) {
            try {
                f1731a = DrawableContainer.class.getDeclaredMethod("setConstantState", DrawableContainer.DrawableContainerState.class);
                f1731a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.e("DrawableUtils", "Could not fetch setConstantState(). Oh well.");
            }
            f1732b = true;
        }
        if (f1731a != null) {
            try {
                f1731a.invoke(drawableContainer, constantState);
                return true;
            } catch (Exception e2) {
                Log.e("DrawableUtils", "Could not invoke setConstantState(). Oh well.");
            }
        }
        return false;
    }
}
