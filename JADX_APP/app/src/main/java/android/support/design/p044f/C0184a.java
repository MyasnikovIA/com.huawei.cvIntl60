package android.support.design.p044f;

import android.R;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.ColorUtils;
import android.util.StateSet;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.f.a */
/* loaded from: classes.dex */
public class C0184a {

    /* renamed from: a */
    public static final boolean f1143a;

    /* renamed from: b */
    private static final int[] f1144b;

    /* renamed from: c */
    private static final int[] f1145c;

    /* renamed from: d */
    private static final int[] f1146d;

    /* renamed from: e */
    private static final int[] f1147e;

    /* renamed from: f */
    private static final int[] f1148f;

    /* renamed from: g */
    private static final int[] f1149g;

    /* renamed from: h */
    private static final int[] f1150h;

    /* renamed from: i */
    private static final int[] f1151i;

    /* renamed from: j */
    private static final int[] f1152j;

    static {
        f1143a = Build.VERSION.SDK_INT >= 21;
        f1144b = new int[]{R.attr.state_pressed};
        f1145c = new int[]{R.attr.state_hovered, R.attr.state_focused};
        f1146d = new int[]{R.attr.state_focused};
        f1147e = new int[]{R.attr.state_hovered};
        f1148f = new int[]{R.attr.state_selected, R.attr.state_pressed};
        f1149g = new int[]{R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};
        f1150h = new int[]{R.attr.state_selected, R.attr.state_focused};
        f1151i = new int[]{R.attr.state_selected, R.attr.state_hovered};
        f1152j = new int[]{R.attr.state_selected};
    }

    @NonNull
    /* renamed from: a */
    public static ColorStateList m1505a(@Nullable ColorStateList colorStateList) {
        if (f1143a) {
            return new ColorStateList(new int[][]{f1152j, StateSet.NOTHING}, new int[]{m1504a(colorStateList, f1148f), m1504a(colorStateList, f1144b)});
        }
        return new ColorStateList(new int[][]{f1148f, f1149g, f1150h, f1151i, f1152j, f1144b, f1145c, f1146d, f1147e, StateSet.NOTHING}, new int[]{m1504a(colorStateList, f1148f), m1504a(colorStateList, f1149g), m1504a(colorStateList, f1150h), m1504a(colorStateList, f1151i), 0, m1504a(colorStateList, f1144b), m1504a(colorStateList, f1145c), m1504a(colorStateList, f1146d), m1504a(colorStateList, f1147e), 0});
    }

    @ColorInt
    /* renamed from: a */
    private static int m1504a(@Nullable ColorStateList colorStateList, int[] iArr) {
        int i;
        if (colorStateList != null) {
            i = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        } else {
            i = 0;
        }
        return f1143a ? m1503a(i) : i;
    }

    @TargetApi(21)
    @ColorInt
    /* renamed from: a */
    private static int m1503a(@ColorInt int i) {
        return ColorUtils.setAlphaComponent(i, Math.min(Color.alpha(i) * 2, 255));
    }
}
