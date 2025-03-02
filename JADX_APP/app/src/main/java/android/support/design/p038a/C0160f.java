package android.support.design.p038a;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;

/* renamed from: android.support.design.a.f */
/* loaded from: classes.dex */
public class C0160f extends Property<ImageView, Matrix> {

    /* renamed from: a */
    private final Matrix f1046a;

    public C0160f() {
        super(Matrix.class, "imageMatrixProperty");
        this.f1046a = new Matrix();
    }

    @Override // android.util.Property
    /* renamed from: a */
    public void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }

    @Override // android.util.Property
    /* renamed from: a */
    public Matrix get(ImageView imageView) {
        this.f1046a.set(imageView.getImageMatrix());
        return this.f1046a;
    }
}
