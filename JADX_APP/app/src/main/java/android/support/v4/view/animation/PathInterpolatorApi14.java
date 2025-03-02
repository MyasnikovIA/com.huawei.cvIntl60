package android.support.v4.view.animation;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
class PathInterpolatorApi14 implements Interpolator {
    private static final float PRECISION = 0.002f;

    /* renamed from: mX */
    private final float[] f2154mX;

    /* renamed from: mY */
    private final float[] f2155mY;

    PathInterpolatorApi14(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i = ((int) (length / PRECISION)) + 1;
        this.f2154mX = new float[i];
        this.f2155mY = new float[i];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < i; i2++) {
            pathMeasure.getPosTan((i2 * length) / (i - 1), fArr, null);
            this.f2154mX[i2] = fArr[0];
            this.f2155mY[i2] = fArr[1];
        }
    }

    PathInterpolatorApi14(float f, float f2) {
        this(createQuad(f, f2));
    }

    PathInterpolatorApi14(float f, float f2, float f3, float f4) {
        this(createCubic(f, f2, f3, f4));
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int i = 0;
        int length = this.f2154mX.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.f2154mX[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float f2 = this.f2154mX[length] - this.f2154mX[i];
        if (f2 == 0.0f) {
            return this.f2155mY[i];
        }
        float f3 = (f - this.f2154mX[i]) / f2;
        float f4 = this.f2155mY[i];
        return ((this.f2155mY[length] - f4) * f3) + f4;
    }

    private static Path createQuad(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
        return path;
    }

    private static Path createCubic(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        return path;
    }
}
