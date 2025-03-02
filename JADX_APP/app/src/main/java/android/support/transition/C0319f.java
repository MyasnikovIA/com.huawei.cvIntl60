package android.support.transition;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;

/* renamed from: android.support.transition.f */
/* loaded from: classes.dex */
class C0319f {
    /* renamed from: a */
    static <T> ObjectAnimator m2359a(T t, Property<T, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? ObjectAnimator.ofObject(t, property, (TypeConverter) null, path) : ObjectAnimator.ofFloat(t, new C0321h(property, path), 0.0f, 1.0f);
    }
}
