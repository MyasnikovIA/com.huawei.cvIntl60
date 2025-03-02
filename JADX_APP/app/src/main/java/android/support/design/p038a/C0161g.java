package android.support.design.p038a;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* renamed from: android.support.design.a.g */
/* loaded from: classes.dex */
public class C0161g implements TypeEvaluator<Matrix> {

    /* renamed from: a */
    private final float[] f1047a = new float[9];

    /* renamed from: b */
    private final float[] f1048b = new float[9];

    /* renamed from: c */
    private final Matrix f1049c = new Matrix();

    @Override // android.animation.TypeEvaluator
    /* renamed from: a */
    public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f1047a);
        matrix2.getValues(this.f1048b);
        for (int i = 0; i < 9; i++) {
            this.f1048b[i] = ((this.f1048b[i] - this.f1047a[i]) * f) + this.f1047a[i];
        }
        this.f1049c.setValues(this.f1048b);
        return this.f1049c;
    }
}
