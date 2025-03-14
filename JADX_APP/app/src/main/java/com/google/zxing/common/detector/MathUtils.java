package com.google.zxing.common.detector;

/* loaded from: classes.dex */
public final class MathUtils {
    private MathUtils() {
    }

    public static int round(float f) {
        return (int) ((f < 0.0f ? -0.5f : 0.5f) + f);
    }

    public static float distance(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    public static float distance(int i, int i2, int i3, int i4) {
        int i5 = i - i3;
        int i6 = i2 - i4;
        return (float) Math.sqrt((i5 * i5) + (i6 * i6));
    }

    public static int sum(int[] iArr) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = iArr[i] + i2;
            i++;
            i2 = i3;
        }
        return i2;
    }
}
