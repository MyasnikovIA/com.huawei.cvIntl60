package android.support.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.util.Property;
import android.view.View;
import java.lang.reflect.Field;

/* renamed from: android.support.transition.ad */
/* loaded from: classes.dex */
class C0306ad {

    /* renamed from: a */
    static final Property<View, Float> f1974a;

    /* renamed from: b */
    static final Property<View, Rect> f1975b;

    /* renamed from: c */
    private static final C0310ah f1976c;

    /* renamed from: d */
    private static Field f1977d;

    /* renamed from: e */
    private static boolean f1978e;

    static {
        if (Build.VERSION.SDK_INT >= 22) {
            f1976c = new C0309ag();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f1976c = new C0308af();
        } else if (Build.VERSION.SDK_INT >= 19) {
            f1976c = new C0307ae();
        } else {
            f1976c = new C0310ah();
        }
        f1974a = new Property<View, Float>(Float.class, "translationAlpha") { // from class: android.support.transition.ad.1
            AnonymousClass1(Class cls, String str) {
                super(cls, str);
            }

            @Override // android.util.Property
            /* renamed from: a */
            public Float get(View view) {
                return Float.valueOf(C0306ad.m2301c(view));
            }

            @Override // android.util.Property
            /* renamed from: a */
            public void set(View view, Float f) {
                C0306ad.m2295a(view, f.floatValue());
            }
        };
        f1975b = new Property<View, Rect>(Rect.class, "clipBounds") { // from class: android.support.transition.ad.2
            AnonymousClass2(Class cls, String str) {
                super(cls, str);
            }

            @Override // android.util.Property
            /* renamed from: a */
            public Rect get(View view) {
                return ViewCompat.getClipBounds(view);
            }

            @Override // android.util.Property
            /* renamed from: a */
            public void set(View view, Rect rect) {
                ViewCompat.setClipBounds(view, rect);
            }
        };
    }

    /* renamed from: android.support.transition.ad$1 */
    static class AnonymousClass1 extends Property<View, Float> {
        AnonymousClass1(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public Float get(View view) {
            return Float.valueOf(C0306ad.m2301c(view));
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(View view, Float f) {
            C0306ad.m2295a(view, f.floatValue());
        }
    }

    /* renamed from: android.support.transition.ad$2 */
    static class AnonymousClass2 extends Property<View, Rect> {
        AnonymousClass2(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public Rect get(View view) {
            return ViewCompat.getClipBounds(view);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(View view, Rect rect) {
            ViewCompat.setClipBounds(view, rect);
        }
    }

    /* renamed from: a */
    static InterfaceC0305ac m2293a(@NonNull View view) {
        return Build.VERSION.SDK_INT >= 18 ? new C0304ab(view) : C0303aa.m2284d(view);
    }

    /* renamed from: b */
    static InterfaceC0314al m2299b(@NonNull View view) {
        return Build.VERSION.SDK_INT >= 18 ? new C0313ak(view) : new C0312aj(view.getWindowToken());
    }

    /* renamed from: a */
    static void m2295a(@NonNull View view, float f) {
        f1976c.mo2311a(view, f);
    }

    /* renamed from: c */
    static float m2301c(@NonNull View view) {
        return f1976c.mo2310a(view);
    }

    /* renamed from: d */
    static void m2302d(@NonNull View view) {
        f1976c.mo2312b(view);
    }

    /* renamed from: e */
    static void m2303e(@NonNull View view) {
        f1976c.mo2313c(view);
    }

    /* renamed from: a */
    static void m2296a(@NonNull View view, int i) {
        m2294a();
        if (f1977d != null) {
            try {
                f1977d.setInt(view, (f1977d.getInt(view) & (-13)) | i);
            } catch (IllegalAccessException e) {
            }
        }
    }

    /* renamed from: a */
    static void m2298a(@NonNull View view, @NonNull Matrix matrix) {
        f1976c.mo2316a(view, matrix);
    }

    /* renamed from: b */
    static void m2300b(@NonNull View view, @NonNull Matrix matrix) {
        f1976c.mo2317b(view, matrix);
    }

    /* renamed from: a */
    static void m2297a(@NonNull View view, int i, int i2, int i3, int i4) {
        f1976c.mo2319a(view, i, i2, i3, i4);
    }

    /* renamed from: a */
    private static void m2294a() {
        if (!f1978e) {
            try {
                f1977d = View.class.getDeclaredField("mViewFlags");
                f1977d.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("ViewUtils", "fetchViewFlagsField: ");
            }
            f1978e = true;
        }
    }
}
