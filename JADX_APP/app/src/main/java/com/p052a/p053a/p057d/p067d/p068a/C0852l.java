package com.p052a.p053a.p057d.p067d.p068a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import com.p052a.p053a.p057d.C0883g;
import com.p052a.p053a.p057d.C0885i;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.EnumC0759b;
import com.p052a.p053a.p057d.InterfaceC0882f;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import com.p052a.p053a.p057d.p067d.p068a.AbstractC0851k;
import com.p052a.p053a.p081j.C0950d;
import com.p052a.p053a.p081j.C0954h;
import com.p052a.p053a.p081j.C0955i;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* renamed from: com.a.a.d.d.a.l */
/* loaded from: classes.dex */
public final class C0852l {

    /* renamed from: a */
    public static final C0885i<EnumC0759b> f4623a = C0885i.m5107a("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", EnumC0759b.f4197d);

    /* renamed from: b */
    public static final C0885i<AbstractC0851k> f4624b = C0885i.m5107a("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", AbstractC0851k.f4619g);

    /* renamed from: c */
    public static final C0885i<Boolean> f4625c = C0885i.m5107a("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", false);

    /* renamed from: d */
    public static final C0885i<Boolean> f4626d = C0885i.m5107a("com.bumtpech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", (Object) null);

    /* renamed from: e */
    private static final Set<String> f4627e = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));

    /* renamed from: f */
    private static final a f4628f = new a() { // from class: com.a.a.d.d.a.l.1
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0852l.a
        /* renamed from: a */
        public void mo5023a() {
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0852l.a
        /* renamed from: a */
        public void mo5024a(InterfaceC0765e interfaceC0765e, Bitmap bitmap) {
        }
    };

    /* renamed from: g */
    private static final Set<InterfaceC0882f.a> f4629g = Collections.unmodifiableSet(EnumSet.of(InterfaceC0882f.a.JPEG, InterfaceC0882f.a.PNG_A, InterfaceC0882f.a.PNG));

    /* renamed from: h */
    private static final Queue<BitmapFactory.Options> f4630h = C0955i.m5424a(0);

    /* renamed from: i */
    private final InterfaceC0765e f4631i;

    /* renamed from: j */
    private final DisplayMetrics f4632j;

    /* renamed from: k */
    private final InterfaceC0762b f4633k;

    /* renamed from: l */
    private final List<InterfaceC0882f> f4634l;

    /* renamed from: m */
    private final C0854n f4635m = C0854n.m5025a();

    /* renamed from: com.a.a.d.d.a.l$a */
    public interface a {
        /* renamed from: a */
        void mo5023a();

        /* renamed from: a */
        void mo5024a(InterfaceC0765e interfaceC0765e, Bitmap bitmap);
    }

    /* renamed from: com.a.a.d.d.a.l$1 */
    static class AnonymousClass1 implements a {
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0852l.a
        /* renamed from: a */
        public void mo5023a() {
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0852l.a
        /* renamed from: a */
        public void mo5024a(InterfaceC0765e interfaceC0765e, Bitmap bitmap) {
        }
    }

    public C0852l(List<InterfaceC0882f> list, DisplayMetrics displayMetrics, InterfaceC0765e interfaceC0765e, InterfaceC0762b interfaceC0762b) {
        this.f4634l = list;
        this.f4632j = (DisplayMetrics) C0954h.m5409a(displayMetrics);
        this.f4631i = (InterfaceC0765e) C0954h.m5409a(interfaceC0765e);
        this.f4633k = (InterfaceC0762b) C0954h.m5409a(interfaceC0762b);
    }

    /* renamed from: a */
    public boolean m5021a(InputStream inputStream) {
        return true;
    }

    /* renamed from: a */
    public boolean m5022a(ByteBuffer byteBuffer) {
        return true;
    }

    /* renamed from: a */
    public InterfaceC0804s<Bitmap> m5019a(InputStream inputStream, int i, int i2, C0886j c0886j) {
        return m5020a(inputStream, i, i2, c0886j, f4628f);
    }

    /* renamed from: a */
    public InterfaceC0804s<Bitmap> m5020a(InputStream inputStream, int i, int i2, C0886j c0886j, a aVar) {
        C0954h.m5413a(inputStream.markSupported(), "You must provide an InputStream that supports mark()");
        byte[] bArr = (byte[]) this.f4633k.mo4657a(65536, byte[].class);
        BitmapFactory.Options m5004a = m5004a();
        m5004a.inTempStorage = bArr;
        EnumC0759b enumC0759b = (EnumC0759b) c0886j.m5115a(f4623a);
        try {
            return C0845e.m4976a(m5003a(inputStream, m5004a, (AbstractC0851k) c0886j.m5115a(f4624b), enumC0759b, enumC0759b == EnumC0759b.PREFER_ARGB_8888_DISALLOW_HARDWARE ? false : c0886j.m5115a(f4626d) != null && ((Boolean) c0886j.m5115a(f4626d)).booleanValue(), i, i2, ((Boolean) c0886j.m5115a(f4625c)).booleanValue(), aVar), this.f4631i);
        } finally {
            m5017c(m5004a);
            this.f4633k.mo4660a((InterfaceC0762b) bArr, (Class<InterfaceC0762b>) byte[].class);
        }
    }

    /* renamed from: a */
    private Bitmap m5003a(InputStream inputStream, BitmapFactory.Options options, AbstractC0851k abstractC0851k, EnumC0759b enumC0759b, boolean z, int i, int i2, boolean z2, a aVar) {
        long m5397a = C0950d.m5397a();
        int[] m5013a = m5013a(inputStream, options, aVar, this.f4631i);
        int i3 = m5013a[0];
        int i4 = m5013a[1];
        String str = options.outMimeType;
        boolean z3 = (i3 == -1 || i4 == -1) ? false : z;
        int m5105b = C0883g.m5105b(this.f4634l, inputStream, this.f4633k);
        int m5035a = C0858r.m5035a(m5105b);
        boolean m5045b = C0858r.m5045b(m5105b);
        int i5 = i == Integer.MIN_VALUE ? i3 : i;
        int i6 = i2 == Integer.MIN_VALUE ? i4 : i2;
        InterfaceC0882f.a m5103a = C0883g.m5103a(this.f4634l, inputStream, this.f4633k);
        m5009a(m5103a, inputStream, aVar, this.f4631i, abstractC0851k, m5035a, i3, i4, i5, i6, options);
        m5010a(inputStream, enumC0759b, z3, m5045b, options, i5, i6);
        boolean z4 = Build.VERSION.SDK_INT >= 19;
        if ((options.inSampleSize == 1 || z4) && m5012a(m5103a)) {
            if (!z2 || !z4) {
                float f = m5011a(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                int i7 = options.inSampleSize;
                int ceil = (int) Math.ceil(i3 / i7);
                int ceil2 = (int) Math.ceil(i4 / i7);
                i5 = Math.round(ceil * f);
                i6 = Math.round(ceil2 * f);
                if (Log.isLoggable("Downsampler", 2)) {
                    Log.v("Downsampler", "Calculated target [" + i5 + "x" + i6 + "] for source [" + i3 + "x" + i4 + "], sampleSize: " + i7 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f);
                }
            }
            if (i5 > 0 && i6 > 0) {
                m5008a(options, this.f4631i, i5, i6);
            }
        }
        Bitmap m5015b = m5015b(inputStream, options, aVar, this.f4631i);
        aVar.mo5024a(this.f4631i, m5015b);
        if (Log.isLoggable("Downsampler", 2)) {
            m5007a(i3, i4, str, options, m5015b, i, i2, m5397a);
        }
        Bitmap bitmap = null;
        if (m5015b != null) {
            m5015b.setDensity(this.f4632j.densityDpi);
            bitmap = C0858r.m5037a(this.f4631i, m5015b, m5105b);
            if (!m5015b.equals(bitmap)) {
                this.f4631i.mo4679a(m5015b);
            }
        }
        return bitmap;
    }

    /* renamed from: a */
    static void m5009a(InterfaceC0882f.a aVar, InputStream inputStream, a aVar2, InterfaceC0765e interfaceC0765e, AbstractC0851k abstractC0851k, int i, int i2, int i3, int i4, int i5, BitmapFactory.Options options) {
        float mo5000a;
        int min;
        int max;
        int floor;
        int floor2;
        if (i2 > 0 && i3 > 0) {
            if (i == 90 || i == 270) {
                mo5000a = abstractC0851k.mo5000a(i3, i2, i4, i5);
            } else {
                mo5000a = abstractC0851k.mo5000a(i2, i3, i4, i5);
            }
            if (mo5000a <= 0.0f) {
                throw new IllegalArgumentException("Cannot scale with factor: " + mo5000a + " from: " + abstractC0851k + ", source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "]");
            }
            AbstractC0851k.g mo5001b = abstractC0851k.mo5001b(i2, i3, i4, i5);
            if (mo5001b == null) {
                throw new IllegalArgumentException("Cannot round with null rounding");
            }
            int m5014b = i2 / m5014b(i2 * mo5000a);
            int m5014b2 = i3 / m5014b(i3 * mo5000a);
            if (mo5001b == AbstractC0851k.g.MEMORY) {
                min = Math.max(m5014b, m5014b2);
            } else {
                min = Math.min(m5014b, m5014b2);
            }
            if (Build.VERSION.SDK_INT <= 23 && f4627e.contains(options.outMimeType)) {
                max = 1;
            } else {
                max = Math.max(1, Integer.highestOneBit(min));
                if (mo5001b == AbstractC0851k.g.MEMORY && max < 1.0f / mo5000a) {
                    max <<= 1;
                }
            }
            options.inSampleSize = max;
            if (aVar == InterfaceC0882f.a.JPEG) {
                int min2 = Math.min(max, 8);
                floor = (int) Math.ceil(i2 / min2);
                floor2 = (int) Math.ceil(i3 / min2);
                int i6 = max / 8;
                if (i6 > 0) {
                    floor /= i6;
                    floor2 /= i6;
                }
            } else if (aVar == InterfaceC0882f.a.PNG || aVar == InterfaceC0882f.a.PNG_A) {
                floor = (int) Math.floor(i2 / max);
                floor2 = (int) Math.floor(i3 / max);
            } else if (aVar == InterfaceC0882f.a.WEBP || aVar == InterfaceC0882f.a.WEBP_A) {
                if (Build.VERSION.SDK_INT >= 24) {
                    floor = Math.round(i2 / max);
                    floor2 = Math.round(i3 / max);
                } else {
                    floor = (int) Math.floor(i2 / max);
                    floor2 = (int) Math.floor(i3 / max);
                }
            } else if (i2 % max != 0 || i3 % max != 0) {
                int[] m5013a = m5013a(inputStream, options, aVar2, interfaceC0765e);
                floor = m5013a[0];
                floor2 = m5013a[1];
            } else {
                floor = i2 / max;
                floor2 = i3 / max;
            }
            double mo5000a2 = abstractC0851k.mo5000a(floor, floor2, i4, i5);
            if (Build.VERSION.SDK_INT >= 19) {
                options.inTargetDensity = m5002a(mo5000a2);
                options.inDensity = 1000000000;
            }
            if (m5011a(options)) {
                options.inScaled = true;
            } else {
                options.inTargetDensity = 0;
                options.inDensity = 0;
            }
            if (Log.isLoggable("Downsampler", 2)) {
                Log.v("Downsampler", "Calculate scaling, source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "], power of two scaled: [" + floor + "x" + floor2 + "], exact scale factor: " + mo5000a + ", power of 2 sample size: " + max + ", adjusted scale factor: " + mo5000a2 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
            }
        }
    }

    /* renamed from: a */
    private static int m5002a(double d) {
        return m5014b(m5014b(1.0E9d * d) * (d / (r0 / 1.0E9f)));
    }

    /* renamed from: b */
    private static int m5014b(double d) {
        return (int) (0.5d + d);
    }

    /* renamed from: a */
    private boolean m5012a(InterfaceC0882f.a aVar) {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return f4629g.contains(aVar);
    }

    /* renamed from: a */
    private void m5010a(InputStream inputStream, EnumC0759b enumC0759b, boolean z, boolean z2, BitmapFactory.Options options, int i, int i2) {
        boolean z3;
        if (!this.f4635m.m5027a(i, i2, options, enumC0759b, z, z2)) {
            if (enumC0759b == EnumC0759b.PREFER_ARGB_8888 || enumC0759b == EnumC0759b.PREFER_ARGB_8888_DISALLOW_HARDWARE || Build.VERSION.SDK_INT == 16) {
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                return;
            }
            try {
                z3 = C0883g.m5103a(this.f4634l, inputStream, this.f4633k).m5102a();
            } catch (IOException e) {
                if (Log.isLoggable("Downsampler", 3)) {
                    Log.d("Downsampler", "Cannot determine whether the image has alpha or not from header, format " + enumC0759b, e);
                }
                z3 = false;
            }
            options.inPreferredConfig = z3 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
            if (options.inPreferredConfig == Bitmap.Config.RGB_565 || options.inPreferredConfig == Bitmap.Config.ARGB_4444 || options.inPreferredConfig == Bitmap.Config.ALPHA_8) {
                options.inDither = true;
            }
        }
    }

    /* renamed from: a */
    private static int[] m5013a(InputStream inputStream, BitmapFactory.Options options, a aVar, InterfaceC0765e interfaceC0765e) {
        options.inJustDecodeBounds = true;
        m5015b(inputStream, options, aVar, interfaceC0765e);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    /* renamed from: b */
    private static Bitmap m5015b(InputStream inputStream, BitmapFactory.Options options, a aVar, InterfaceC0765e interfaceC0765e) {
        Bitmap m5015b;
        if (options.inJustDecodeBounds) {
            inputStream.mark(MediaHttpUploader.DEFAULT_CHUNK_SIZE);
        } else {
            aVar.mo5023a();
        }
        int i = options.outWidth;
        int i2 = options.outHeight;
        String str = options.outMimeType;
        C0858r.m5039a().lock();
        try {
            try {
                m5015b = BitmapFactory.decodeStream(inputStream, null, options);
                C0858r.m5039a().unlock();
                if (options.inJustDecodeBounds) {
                    inputStream.reset();
                }
            } catch (IllegalArgumentException e) {
                IOException m5005a = m5005a(e, i, i2, str, options);
                if (Log.isLoggable("Downsampler", 3)) {
                    Log.d("Downsampler", "Failed to decode with inBitmap, trying again without Bitmap re-use", m5005a);
                }
                if (options.inBitmap != null) {
                    try {
                        inputStream.reset();
                        interfaceC0765e.mo4679a(options.inBitmap);
                        options.inBitmap = null;
                        m5015b = m5015b(inputStream, options, aVar, interfaceC0765e);
                        C0858r.m5039a().unlock();
                    } catch (IOException e2) {
                        throw m5005a;
                    }
                } else {
                    throw m5005a;
                }
            }
            return m5015b;
        } catch (Throwable th) {
            C0858r.m5039a().unlock();
            throw th;
        }
    }

    /* renamed from: a */
    private static boolean m5011a(BitmapFactory.Options options) {
        return options.inTargetDensity > 0 && options.inDensity > 0 && options.inTargetDensity != options.inDensity;
    }

    /* renamed from: a */
    private static void m5007a(int i, int i2, String str, BitmapFactory.Options options, Bitmap bitmap, int i3, int i4, long j) {
        Log.v("Downsampler", "Decoded " + m5006a(bitmap) + " from [" + i + "x" + i2 + "] " + str + " with inBitmap " + m5016b(options) + " for [" + i3 + "x" + i4 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + C0950d.m5396a(j));
    }

    /* renamed from: b */
    private static String m5016b(BitmapFactory.Options options) {
        return m5006a(options.inBitmap);
    }

    @TargetApi(19)
    @Nullable
    /* renamed from: a */
    private static String m5006a(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (Build.VERSION.SDK_INT >= 19 ? " (" + bitmap.getAllocationByteCount() + ")" : "");
    }

    /* renamed from: a */
    private static IOException m5005a(IllegalArgumentException illegalArgumentException, int i, int i2, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i + ", outHeight: " + i2 + ", outMimeType: " + str + ", inBitmap: " + m5016b(options), illegalArgumentException);
    }

    @TargetApi(26)
    /* renamed from: a */
    private static void m5008a(BitmapFactory.Options options, InterfaceC0765e interfaceC0765e, int i, int i2) {
        if (Build.VERSION.SDK_INT < 26 || options.inPreferredConfig != Bitmap.Config.HARDWARE) {
            options.inBitmap = interfaceC0765e.mo4680b(i, i2, options.inPreferredConfig);
        }
    }

    /* renamed from: a */
    private static synchronized BitmapFactory.Options m5004a() {
        BitmapFactory.Options poll;
        synchronized (C0852l.class) {
            synchronized (f4630h) {
                poll = f4630h.poll();
            }
            if (poll == null) {
                poll = new BitmapFactory.Options();
                m5018d(poll);
            }
        }
        return poll;
    }

    /* renamed from: c */
    private static void m5017c(BitmapFactory.Options options) {
        m5018d(options);
        synchronized (f4630h) {
            f4630h.offer(options);
        }
    }

    /* renamed from: d */
    private static void m5018d(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }
}
