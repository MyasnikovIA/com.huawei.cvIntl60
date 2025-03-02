package android.support.design.p038a;

import android.animation.TypeEvaluator;

/* renamed from: android.support.design.a.c */
/* loaded from: classes.dex */
public class C0157c implements TypeEvaluator<Integer> {

    /* renamed from: a */
    private static final C0157c f1042a = new C0157c();

    /* renamed from: a */
    public static C0157c m1362a() {
        return f1042a;
    }

    @Override // android.animation.TypeEvaluator
    /* renamed from: a */
    public Integer evaluate(float f, Integer num, Integer num2) {
        int intValue = num.intValue();
        float f2 = ((intValue >> 24) & 255) / 255.0f;
        int intValue2 = num2.intValue();
        float pow = (float) Math.pow(((intValue >> 16) & 255) / 255.0f, 2.2d);
        float pow2 = (float) Math.pow(((intValue >> 8) & 255) / 255.0f, 2.2d);
        float pow3 = (float) Math.pow((intValue & 255) / 255.0f, 2.2d);
        float pow4 = (float) Math.pow(((intValue2 >> 16) & 255) / 255.0f, 2.2d);
        float pow5 = (float) Math.pow(((intValue2 >> 8) & 255) / 255.0f, 2.2d);
        float pow6 = pow3 + ((((float) Math.pow((intValue2 & 255) / 255.0f, 2.2d)) - pow3) * f);
        float pow7 = ((float) Math.pow(pow + ((pow4 - pow) * f), 0.45454545454545453d)) * 255.0f;
        float pow8 = ((float) Math.pow(pow2 + ((pow5 - pow2) * f), 0.45454545454545453d)) * 255.0f;
        return Integer.valueOf(Math.round(((float) Math.pow(pow6, 0.45454545454545453d)) * 255.0f) | (Math.round((f2 + (((((intValue2 >> 24) & 255) / 255.0f) - f2) * f)) * 255.0f) << 24) | (Math.round(pow7) << 16) | (Math.round(pow8) << 8));
    }
}
