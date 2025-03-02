package com.p052a.p053a.p057d.p067d.p068a;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import android.support.annotation.NonNull;
import android.util.Log;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: com.a.a.d.d.a.r */
/* loaded from: classes.dex */
public final class C0858r {

    /* renamed from: c */
    private static final Paint f4656c;

    /* renamed from: e */
    private static final Lock f4658e;

    /* renamed from: a */
    private static final Paint f4654a = new Paint(6);

    /* renamed from: b */
    private static final Paint f4655b = new Paint(7);

    /* renamed from: d */
    private static final List<String> f4657d = Arrays.asList("XT1097", "XT1085");

    static {
        f4658e = (f4657d.contains(Build.MODEL) && Build.VERSION.SDK_INT == 22) ? new ReentrantLock() : new a();
        f4656c = new Paint(7);
        f4656c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    /* renamed from: a */
    public static Lock m5039a() {
        return f4658e;
    }

    /* renamed from: a */
    public static Bitmap m5038a(@NonNull InterfaceC0765e interfaceC0765e, @NonNull Bitmap bitmap, int i, int i2) {
        float width;
        float height;
        float f;
        if (bitmap.getWidth() != i || bitmap.getHeight() != i2) {
            Matrix matrix = new Matrix();
            if (bitmap.getWidth() * i2 > bitmap.getHeight() * i) {
                width = i2 / bitmap.getHeight();
                f = (i - (bitmap.getWidth() * width)) * 0.5f;
                height = 0.0f;
            } else {
                width = i / bitmap.getWidth();
                height = (i2 - (bitmap.getHeight() * width)) * 0.5f;
                f = 0.0f;
            }
            matrix.setScale(width, width);
            matrix.postTranslate((int) (f + 0.5f), (int) (height + 0.5f));
            Bitmap mo4676a = interfaceC0765e.mo4676a(i, i2, m5036a(bitmap));
            m5041a(bitmap, mo4676a);
            m5042a(bitmap, mo4676a, matrix);
            return mo4676a;
        }
        return bitmap;
    }

    /* renamed from: b */
    public static Bitmap m5044b(@NonNull InterfaceC0765e interfaceC0765e, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size matches input, returning input");
                return bitmap;
            }
            return bitmap;
        }
        float min = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
        int round = Math.round(bitmap.getWidth() * min);
        int round2 = Math.round(bitmap.getHeight() * min);
        if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "adjusted target size matches input, returning input");
                return bitmap;
            }
            return bitmap;
        }
        Bitmap mo4676a = interfaceC0765e.mo4676a((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), m5036a(bitmap));
        m5041a(bitmap, mo4676a);
        if (Log.isLoggable("TransformationUtils", 2)) {
            Log.v("TransformationUtils", "request: " + i + "x" + i2);
            Log.v("TransformationUtils", "toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight());
            Log.v("TransformationUtils", "toReuse: " + mo4676a.getWidth() + "x" + mo4676a.getHeight());
            Log.v("TransformationUtils", "minPct:   " + min);
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        m5042a(bitmap, mo4676a, matrix);
        return mo4676a;
    }

    /* renamed from: c */
    public static Bitmap m5046c(@NonNull InterfaceC0765e interfaceC0765e, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() <= i && bitmap.getHeight() <= i2) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
                return bitmap;
            }
            return bitmap;
        }
        if (Log.isLoggable("TransformationUtils", 2)) {
            Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
        }
        return m5044b(interfaceC0765e, bitmap, i, i2);
    }

    /* renamed from: a */
    public static void m5041a(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }

    /* renamed from: a */
    public static int m5035a(int i) {
        switch (i) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return 270;
            default:
                return 0;
        }
    }

    /* renamed from: a */
    public static Bitmap m5037a(@NonNull InterfaceC0765e interfaceC0765e, @NonNull Bitmap bitmap, int i) {
        if (m5045b(i)) {
            Matrix matrix = new Matrix();
            m5040a(i, matrix);
            RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
            matrix.mapRect(rectF);
            Bitmap mo4676a = interfaceC0765e.mo4676a(Math.round(rectF.width()), Math.round(rectF.height()), m5036a(bitmap));
            matrix.postTranslate(-rectF.left, -rectF.top);
            m5042a(bitmap, mo4676a, matrix);
            return mo4676a;
        }
        return bitmap;
    }

    /* renamed from: b */
    public static boolean m5045b(int i) {
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: a */
    private static void m5043a(Canvas canvas) {
        canvas.setBitmap(null);
    }

    /* renamed from: a */
    private static Bitmap.Config m5036a(Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    /* renamed from: a */
    private static void m5042a(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, Matrix matrix) {
        f4658e.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f4654a);
            m5043a(canvas);
        } finally {
            f4658e.unlock();
        }
    }

    /* renamed from: a */
    static void m5040a(int i, Matrix matrix) {
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                break;
            case 3:
                matrix.setRotate(180.0f);
                break;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 6:
                matrix.setRotate(90.0f);
                break;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 8:
                matrix.setRotate(-90.0f);
                break;
        }
    }

    /* renamed from: com.a.a.d.d.a.r$a */
    private static final class a implements Lock {
        a() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lockInterruptibly() {
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock(long j, @NonNull TimeUnit timeUnit) {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public void unlock() {
        }

        @Override // java.util.concurrent.locks.Lock
        @NonNull
        public Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }
    }
}
