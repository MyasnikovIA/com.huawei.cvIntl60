package android.support.design.p038a;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import java.util.WeakHashMap;

/* renamed from: android.support.design.a.e */
/* loaded from: classes.dex */
public class C0159e extends Property<Drawable, Integer> {

    /* renamed from: a */
    public static final Property<Drawable, Integer> f1044a = new C0159e();

    /* renamed from: b */
    private final WeakHashMap<Drawable, Integer> f1045b;

    private C0159e() {
        super(Integer.class, "drawableAlphaCompat");
        this.f1045b = new WeakHashMap<>();
    }

    @Override // android.util.Property
    /* renamed from: a */
    public Integer get(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Integer.valueOf(drawable.getAlpha());
        }
        if (this.f1045b.containsKey(drawable)) {
            return this.f1045b.get(drawable);
        }
        return 255;
    }

    @Override // android.util.Property
    /* renamed from: a */
    public void set(Drawable drawable, Integer num) {
        if (Build.VERSION.SDK_INT < 19) {
            this.f1045b.put(drawable, num);
        }
        drawable.setAlpha(num.intValue());
    }
}
