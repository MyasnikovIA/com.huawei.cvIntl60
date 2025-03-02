package android.support.transition;

import android.animation.PropertyValuesHolder;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;

/* renamed from: android.support.transition.i */
/* loaded from: classes.dex */
class C0322i {
    /* renamed from: a */
    static PropertyValuesHolder m2363a(Property<?, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? PropertyValuesHolder.ofObject(property, (TypeConverter) null, path) : PropertyValuesHolder.ofFloat(new C0321h(property, path), 0.0f, 1.0f);
    }
}
