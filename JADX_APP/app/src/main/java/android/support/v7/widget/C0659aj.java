package android.support.v7.widget;

import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.WrappedDrawable;
import android.support.v7.p050b.p051a.C0524c;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.aj */
/* loaded from: classes.dex */
public class C0659aj {

    /* renamed from: a */
    public static final Rect f3492a = new Rect();

    /* renamed from: b */
    private static Class<?> f3493b;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                f3493b = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    /* renamed from: a */
    static void m3930a(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            m3932c(drawable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static boolean m3931b(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (drawable instanceof DrawableContainer) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState instanceof DrawableContainer.DrawableContainerState) {
                Drawable[] children = ((DrawableContainer.DrawableContainerState) constantState).getChildren();
                for (Drawable drawable2 : children) {
                    if (!m3931b(drawable2)) {
                        return false;
                    }
                }
            }
        } else {
            if (drawable instanceof WrappedDrawable) {
                return m3931b(((WrappedDrawable) drawable).getWrappedDrawable());
            }
            if (drawable instanceof C0524c) {
                return m3931b(((C0524c) drawable).m2726b());
            }
            if (drawable instanceof ScaleDrawable) {
                return m3931b(((ScaleDrawable) drawable).getDrawable());
            }
        }
        return true;
    }

    /* renamed from: c */
    private static void m3932c(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(C0682bf.f3738e);
        } else {
            drawable.setState(C0682bf.f3741h);
        }
        drawable.setState(state);
    }

    /* renamed from: a */
    public static PorterDuff.Mode m3929a(int i, PorterDuff.Mode mode) {
        switch (i) {
            case 3:
                return PorterDuff.Mode.SRC_OVER;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            default:
                return mode;
            case 5:
                return PorterDuff.Mode.SRC_IN;
            case 9:
                return PorterDuff.Mode.SRC_ATOP;
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
        }
    }
}
