package android.support.design.p038a;

import android.animation.TimeInterpolator;
import android.support.annotation.RestrictTo;
import android.support.v4.view.animation.FastOutLinearInInterpolator;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.support.v4.view.animation.LinearOutSlowInInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.a.a */
/* loaded from: classes.dex */
public class C0155a {

    /* renamed from: a */
    public static final TimeInterpolator f1037a = new LinearInterpolator();

    /* renamed from: b */
    public static final TimeInterpolator f1038b = new FastOutSlowInInterpolator();

    /* renamed from: c */
    public static final TimeInterpolator f1039c = new FastOutLinearInInterpolator();

    /* renamed from: d */
    public static final TimeInterpolator f1040d = new LinearOutSlowInInterpolator();

    /* renamed from: e */
    public static final TimeInterpolator f1041e = new DecelerateInterpolator();

    /* renamed from: a */
    public static float m1359a(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }

    /* renamed from: a */
    public static int m1360a(int i, int i2, float f) {
        return Math.round((i2 - i) * f) + i;
    }
}
