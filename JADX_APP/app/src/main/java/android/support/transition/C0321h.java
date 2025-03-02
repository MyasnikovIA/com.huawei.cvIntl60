package android.support.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

/* renamed from: android.support.transition.h */
/* loaded from: classes.dex */
class C0321h<T> extends Property<T, Float> {

    /* renamed from: a */
    private final Property<T, PointF> f2063a;

    /* renamed from: b */
    private final PathMeasure f2064b;

    /* renamed from: c */
    private final float f2065c;

    /* renamed from: d */
    private final float[] f2066d;

    /* renamed from: e */
    private final PointF f2067e;

    /* renamed from: f */
    private float f2068f;

    C0321h(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f2066d = new float[2];
        this.f2067e = new PointF();
        this.f2063a = property;
        this.f2064b = new PathMeasure(path, false);
        this.f2065c = this.f2064b.getLength();
    }

    @Override // android.util.Property
    /* renamed from: a */
    public Float get(T t) {
        return Float.valueOf(this.f2068f);
    }

    @Override // android.util.Property
    /* renamed from: a */
    public void set(T t, Float f) {
        this.f2068f = f.floatValue();
        this.f2064b.getPosTan(this.f2065c * f.floatValue(), this.f2066d, null);
        this.f2067e.x = this.f2066d[0];
        this.f2067e.y = this.f2066d[1];
        this.f2063a.set(t, this.f2067e);
    }
}
