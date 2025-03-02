package android.support.design.internal;

import android.graphics.PorterDuff;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.view.View;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.internal.i */
/* loaded from: classes.dex */
public class C0202i {
    /* renamed from: a */
    public static PorterDuff.Mode m1612a(int i, PorterDuff.Mode mode) {
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

    /* renamed from: a */
    public static boolean m1613a(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }
}
