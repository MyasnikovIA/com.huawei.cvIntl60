package GeneralFunction;

/* renamed from: GeneralFunction.i */
/* loaded from: classes.dex */
public class C0074i {
    /* renamed from: a */
    public static float[] m688a(double d) {
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        return new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, cos, sin, 0.0f, 0.0f, -sin, cos, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    }

    /* renamed from: b */
    public static float[] m692b(double d) {
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        return new float[]{cos, 0.0f, -sin, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, sin, 0.0f, cos, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    }

    /* renamed from: c */
    public static float[] m693c(double d) {
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        return new float[]{cos, sin, 0.0f, 0.0f, -sin, cos, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    }

    /* renamed from: a */
    public static float[] m689a(float f, float f2, float f3) {
        return m691a(m693c(f3), m691a(m692b(f2), m688a(f)));
    }

    /* renamed from: a */
    public static float[] m691a(float[] fArr, float[] fArr2) {
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[3];
        float f5 = fArr[4];
        float f6 = fArr[5];
        float f7 = fArr[6];
        float f8 = fArr[7];
        float f9 = fArr[8];
        float f10 = fArr[9];
        float f11 = fArr[10];
        float f12 = fArr[11];
        float f13 = fArr[12];
        float f14 = fArr[13];
        float f15 = fArr[14];
        float f16 = fArr[15];
        float f17 = fArr2[0];
        float f18 = fArr2[1];
        float f19 = fArr2[2];
        float f20 = fArr2[3];
        float f21 = fArr2[4];
        float f22 = fArr2[5];
        float f23 = fArr2[6];
        float f24 = fArr2[7];
        float f25 = fArr2[8];
        float f26 = fArr2[9];
        float f27 = fArr2[10];
        float f28 = fArr2[11];
        float f29 = fArr2[12];
        float f30 = fArr2[13];
        float f31 = fArr2[14];
        float f32 = fArr2[15];
        return new float[]{(f * f17) + (f2 * f21) + (f3 * f25) + (f4 * f29), (f * f18) + (f2 * f22) + (f3 * f26) + (f4 * f30), (f * f19) + (f2 * f23) + (f3 * f27) + (f4 * f31), (f * f20) + (f2 * f24) + (f3 * f28) + (f4 * f32), (f5 * f17) + (f6 * f21) + (f7 * f25) + (f8 * f29), (f5 * f18) + (f6 * f22) + (f7 * f26) + (f8 * f30), (f5 * f19) + (f6 * f23) + (f7 * f27) + (f8 * f31), (f5 * f20) + (f6 * f24) + (f7 * f28) + (f8 * f32), (f9 * f17) + (f10 * f21) + (f11 * f25) + (f12 * f29), (f9 * f18) + (f10 * f22) + (f11 * f26) + (f12 * f30), (f9 * f19) + (f10 * f23) + (f11 * f27) + (f12 * f31), (f9 * f20) + (f10 * f24) + (f11 * f28) + (f12 * f32), (f13 * f17) + (f14 * f21) + (f15 * f25) + (f16 * f29), (f13 * f18) + (f14 * f22) + (f15 * f26) + (f16 * f30), (f13 * f19) + (f14 * f23) + (f15 * f27) + (f16 * f31), (f13 * f20) + (f14 * f24) + (f15 * f28) + (f16 * f32)};
    }

    /* renamed from: a */
    public static float[] m690a(float[] fArr) {
        return new float[]{-((float) Math.atan2(fArr[9], fArr[10])), -((float) Math.atan2(-fArr[8], Math.sqrt((fArr[9] * fArr[9]) + (fArr[10] * fArr[10])))), -((float) Math.atan2(fArr[4], fArr[0]))};
    }
}
