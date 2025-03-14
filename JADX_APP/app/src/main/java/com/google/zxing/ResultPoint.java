package com.google.zxing;

import com.google.zxing.common.detector.MathUtils;

/* loaded from: classes.dex */
public class ResultPoint {

    /* renamed from: x */
    private final float f7031x;

    /* renamed from: y */
    private final float f7032y;

    public ResultPoint(float f, float f2) {
        this.f7031x = f;
        this.f7032y = f2;
    }

    public final float getX() {
        return this.f7031x;
    }

    public final float getY() {
        return this.f7032y;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ResultPoint)) {
            return false;
        }
        ResultPoint resultPoint = (ResultPoint) obj;
        return this.f7031x == resultPoint.f7031x && this.f7032y == resultPoint.f7032y;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.f7031x) * 31) + Float.floatToIntBits(this.f7032y);
    }

    public final String toString() {
        return "(" + this.f7031x + ',' + this.f7032y + ')';
    }

    public static void orderBestPatterns(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        ResultPoint resultPoint4;
        ResultPoint resultPoint5;
        float distance = distance(resultPointArr[0], resultPointArr[1]);
        float distance2 = distance(resultPointArr[1], resultPointArr[2]);
        float distance3 = distance(resultPointArr[0], resultPointArr[2]);
        if (distance2 >= distance && distance2 >= distance3) {
            resultPoint = resultPointArr[0];
            resultPoint2 = resultPointArr[1];
            resultPoint3 = resultPointArr[2];
        } else if (distance3 >= distance2 && distance3 >= distance) {
            resultPoint = resultPointArr[1];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[2];
        } else {
            resultPoint = resultPointArr[2];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[1];
        }
        if (crossProductZ(resultPoint2, resultPoint, resultPoint3) < 0.0f) {
            resultPoint4 = resultPoint2;
            resultPoint5 = resultPoint3;
        } else {
            resultPoint4 = resultPoint3;
            resultPoint5 = resultPoint2;
        }
        resultPointArr[0] = resultPoint5;
        resultPointArr[1] = resultPoint;
        resultPointArr[2] = resultPoint4;
    }

    public static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.distance(resultPoint.f7031x, resultPoint.f7032y, resultPoint2.f7031x, resultPoint2.f7032y);
    }

    private static float crossProductZ(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        float f = resultPoint2.f7031x;
        float f2 = resultPoint2.f7032y;
        return ((resultPoint3.f7031x - f) * (resultPoint.f7032y - f2)) - ((resultPoint.f7031x - f) * (resultPoint3.f7032y - f2));
    }
}
