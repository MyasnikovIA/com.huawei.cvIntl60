package android.support.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.graphics.PathParser;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import org.xmlpull.v1.XmlPullParser;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.graphics.drawable.g */
/* loaded from: classes.dex */
public class InterpolatorC0299g implements Interpolator {

    /* renamed from: a */
    private float[] f1895a;

    /* renamed from: b */
    private float[] f1896b;

    public InterpolatorC0299g(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    public InterpolatorC0299g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0293a.f1879l);
        m2238a(obtainAttributes, xmlPullParser);
        obtainAttributes.recycle();
    }

    /* renamed from: a */
    private void m2238a(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
            String namedString = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "pathData", 4);
            Path createPathFromPathData = PathParser.createPathFromPathData(namedString);
            if (createPathFromPathData == null) {
                throw new InflateException("The path is null, which is created from " + namedString);
            }
            m2239a(createPathFromPathData);
            return;
        }
        if (!TypedArrayUtils.hasAttribute(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
        if (!TypedArrayUtils.hasAttribute(xmlPullParser, "controlY1")) {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        float namedFloat = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
        float namedFloat2 = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
        boolean hasAttribute = TypedArrayUtils.hasAttribute(xmlPullParser, "controlX2");
        if (hasAttribute != TypedArrayUtils.hasAttribute(xmlPullParser, "controlY2")) {
            throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
        }
        if (!hasAttribute) {
            m2236a(namedFloat, namedFloat2);
        } else {
            m2237a(namedFloat, namedFloat2, TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlX2", 2, 0.0f), TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
        }
    }

    /* renamed from: a */
    private void m2236a(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
        m2239a(path);
    }

    /* renamed from: a */
    private void m2237a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        m2239a(path);
    }

    /* renamed from: a */
    private void m2239a(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int min = Math.min(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, ((int) (length / 0.002f)) + 1);
        if (min <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.f1895a = new float[min];
        this.f1896b = new float[min];
        float[] fArr = new float[2];
        for (int i = 0; i < min; i++) {
            pathMeasure.getPosTan((i * length) / (min - 1), fArr, null);
            this.f1895a[i] = fArr[0];
            this.f1896b[i] = fArr[1];
        }
        if (Math.abs(this.f1895a[0]) > 1.0E-5d || Math.abs(this.f1896b[0]) > 1.0E-5d || Math.abs(this.f1895a[min - 1] - 1.0f) > 1.0E-5d || Math.abs(this.f1896b[min - 1] - 1.0f) > 1.0E-5d) {
            throw new IllegalArgumentException("The Path must start at (0,0) and end at (1,1) start: " + this.f1895a[0] + "," + this.f1896b[0] + " end:" + this.f1895a[min - 1] + "," + this.f1896b[min - 1]);
        }
        float f = 0.0f;
        int i2 = 0;
        int i3 = 0;
        while (i2 < min) {
            int i4 = i3 + 1;
            float f2 = this.f1895a[i3];
            if (f2 < f) {
                throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f2);
            }
            this.f1895a[i2] = f2;
            i2++;
            i3 = i4;
            f = f2;
        }
        if (pathMeasure.nextContour()) {
            throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
        }
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
        int length = this.f1895a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.f1895a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float f2 = this.f1895a[length] - this.f1895a[i];
        if (f2 == 0.0f) {
            return this.f1896b[i];
        }
        float f3 = (f - this.f1895a[i]) / f2;
        float f4 = this.f1896b[i];
        return ((this.f1896b[length] - f4) * f3) + f4;
    }
}
