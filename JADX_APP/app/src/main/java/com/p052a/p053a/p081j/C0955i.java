package com.p052a.p053a.p081j;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import com.p052a.p053a.p057d.p065c.InterfaceC0826l;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

/* renamed from: com.a.a.j.i */
/* loaded from: classes.dex */
public final class C0955i {

    /* renamed from: a */
    private static final char[] f4967a = "0123456789abcdef".toCharArray();

    /* renamed from: b */
    private static final char[] f4968b = new char[64];

    /* renamed from: a */
    public static String m5421a(byte[] bArr) {
        String m5422a;
        synchronized (f4968b) {
            m5422a = m5422a(bArr, f4968b);
        }
        return m5422a;
    }

    /* renamed from: a */
    private static String m5422a(byte[] bArr, char[] cArr) {
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            cArr[i * 2] = f4967a[i2 >>> 4];
            cArr[(i * 2) + 1] = f4967a[i2 & 15];
        }
        return new String(cArr);
    }

    @TargetApi(19)
    /* renamed from: a */
    public static int m5418a(Bitmap bitmap) {
        if (bitmap.isRecycled()) {
            throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
        }
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException e) {
            }
        }
        return bitmap.getHeight() * bitmap.getRowBytes();
    }

    /* renamed from: a */
    public static int m5416a(int i, int i2, Bitmap.Config config) {
        return i * i2 * m5417a(config);
    }

    /* renamed from: a */
    private static int m5417a(Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        switch (AnonymousClass1.f4969a[config.ordinal()]) {
            case 1:
                return 1;
            case 2:
            case 3:
                return 2;
            default:
                return 4;
        }
    }

    /* renamed from: com.a.a.j.i$1 */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4969a = new int[Bitmap.Config.values().length];

        static {
            try {
                f4969a[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4969a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4969a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4969a[Bitmap.Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m5426a(int i, int i2) {
        return m5430b(i) && m5430b(i2);
    }

    /* renamed from: b */
    private static boolean m5430b(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    /* renamed from: a */
    public static void m5425a() {
        if (!m5429b()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    /* renamed from: b */
    public static boolean m5429b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: c */
    public static boolean m5432c() {
        return !m5429b();
    }

    /* renamed from: a */
    public static <T> Queue<T> m5424a(int i) {
        return new ArrayDeque(i);
    }

    /* renamed from: a */
    public static <T> List<T> m5423a(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    /* renamed from: a */
    public static boolean m5427a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static boolean m5431b(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        if (obj instanceof InterfaceC0826l) {
            return ((InterfaceC0826l) obj).m4939a(obj2);
        }
        return obj.equals(obj2);
    }

    /* renamed from: b */
    public static int m5428b(int i, int i2) {
        return (i2 * 31) + i;
    }

    /* renamed from: a */
    public static int m5414a(float f) {
        return m5415a(f, 17);
    }

    /* renamed from: a */
    public static int m5415a(float f, int i) {
        return m5428b(Float.floatToIntBits(f), i);
    }

    /* renamed from: a */
    public static int m5419a(Object obj, int i) {
        return m5428b(obj == null ? 0 : obj.hashCode(), i);
    }

    /* renamed from: a */
    public static int m5420a(boolean z, int i) {
        return m5428b(z ? 1 : 0, i);
    }
}
