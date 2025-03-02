package com.p052a.p053a.p056c;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.Log;
import com.google.android.exoplayer.extractor.p095ts.PsExtractor;
import java.io.IOException;
import java.io.OutputStream;

/* renamed from: com.a.a.c.a */
/* loaded from: classes.dex */
public class C0736a {

    /* renamed from: a */
    private int f4071a;

    /* renamed from: b */
    private int f4072b;

    /* renamed from: d */
    private int f4074d;

    /* renamed from: h */
    private OutputStream f4078h;

    /* renamed from: i */
    private Bitmap f4079i;

    /* renamed from: j */
    private byte[] f4080j;

    /* renamed from: k */
    private byte[] f4081k;

    /* renamed from: l */
    private int f4082l;

    /* renamed from: m */
    private byte[] f4083m;

    /* renamed from: u */
    private boolean f4091u;

    /* renamed from: c */
    private Integer f4073c = null;

    /* renamed from: e */
    private int f4075e = -1;

    /* renamed from: f */
    private int f4076f = 0;

    /* renamed from: g */
    private boolean f4077g = false;

    /* renamed from: n */
    private boolean[] f4084n = new boolean[256];

    /* renamed from: o */
    private int f4085o = 7;

    /* renamed from: p */
    private int f4086p = -1;

    /* renamed from: q */
    private boolean f4087q = false;

    /* renamed from: r */
    private boolean f4088r = true;

    /* renamed from: s */
    private boolean f4089s = false;

    /* renamed from: t */
    private int f4090t = 10;

    /* renamed from: v */
    private int[] f4092v = null;

    /* renamed from: w */
    private C0739d[] f4093w = null;

    /* renamed from: a */
    public void m4581a(int[] iArr) {
        this.f4092v = iArr;
    }

    /* renamed from: a */
    public void m4582a(C0739d[] c0739dArr) {
        this.f4093w = c0739dArr;
    }

    /* renamed from: a */
    public void m4579a(int i) {
        this.f4076f = Math.round(i / 10.0f);
    }

    /* renamed from: b */
    public void m4586b(int i) {
        if (i >= 0) {
            this.f4075e = i;
        }
    }

    /* renamed from: a */
    public boolean m4584a(Bitmap bitmap) {
        if (bitmap == null || !this.f4077g) {
            return false;
        }
        try {
            if (!this.f4089s) {
                m4580a(bitmap.getWidth(), bitmap.getHeight());
            }
            this.f4079i = bitmap;
            m4570c();
            m4569b();
            if (this.f4088r) {
                m4575f();
                m4577h();
                if (this.f4075e >= 0) {
                    m4576g();
                }
            }
            m4572d();
            m4573e();
            if (!this.f4088r) {
                m4577h();
            }
            m4578i();
            this.f4088r = false;
            return true;
        } catch (IOException e) {
            return false;
        }
    }

    /* renamed from: a */
    public boolean m4583a() {
        boolean z;
        if (!this.f4077g) {
            return false;
        }
        this.f4077g = false;
        try {
            this.f4078h.write(59);
            this.f4078h.flush();
            if (this.f4087q) {
                this.f4078h.close();
            }
            z = true;
        } catch (IOException e) {
            z = false;
        }
        this.f4074d = 0;
        this.f4078h = null;
        this.f4079i = null;
        this.f4080j = null;
        this.f4081k = null;
        this.f4083m = null;
        this.f4087q = false;
        this.f4088r = true;
        return z;
    }

    /* renamed from: c */
    public void m4587c(int i) {
        if (i < 1) {
            i = 1;
        }
        this.f4090t = i;
    }

    /* renamed from: a */
    public void m4580a(int i, int i2) {
        if (!this.f4077g || this.f4088r) {
            this.f4071a = i;
            this.f4072b = i2;
            if (this.f4071a < 1) {
                this.f4071a = 320;
            }
            if (this.f4072b < 1) {
                this.f4072b = PsExtractor.VIDEO_STREAM_MASK;
            }
            this.f4089s = true;
        }
    }

    /* renamed from: a */
    public boolean m4585a(OutputStream outputStream) {
        if (outputStream == null) {
            return false;
        }
        boolean z = true;
        this.f4087q = false;
        this.f4078h = outputStream;
        try {
            m4568a("GIF89a");
        } catch (IOException e) {
            z = false;
        }
        this.f4077g = z;
        return z;
    }

    /* renamed from: b */
    private void m4569b() {
        int length = this.f4080j.length;
        int i = length / 3;
        this.f4081k = new byte[i];
        C0738c c0738c = new C0738c(this.f4080j, length, this.f4090t, this.f4071a, this.f4072b, this.f4092v, this.f4093w);
        this.f4083m = c0738c.m4604d();
        for (int i2 = 0; i2 < this.f4083m.length; i2 += 3) {
            byte b = this.f4083m[i2];
            this.f4083m[i2] = this.f4083m[i2 + 2];
            this.f4083m[i2 + 2] = b;
            this.f4084n[i2 / 3] = false;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = i3 + 1;
            int i6 = i5 + 1;
            i3 = i6 + 1;
            int m4597a = c0738c.m4597a(this.f4080j[i3] & 255, this.f4080j[i5] & 255, this.f4080j[i6] & 255);
            this.f4084n[m4597a] = true;
            this.f4081k[i4] = (byte) m4597a;
        }
        this.f4080j = null;
        this.f4082l = 8;
        this.f4085o = 7;
        if (this.f4073c != null) {
            this.f4074d = m4571d(this.f4073c.intValue());
        } else if (this.f4091u) {
            this.f4074d = m4571d(0);
        }
    }

    /* renamed from: d */
    private int m4571d(int i) {
        if (this.f4083m == null) {
            return -1;
        }
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        int i2 = 16777216;
        int length = this.f4083m.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            int i5 = i3 + 1;
            int i6 = red - (this.f4083m[i3] & 255);
            int i7 = i5 + 1;
            int i8 = green - (this.f4083m[i5] & 255);
            int i9 = blue - (this.f4083m[i7] & 255);
            int i10 = (i6 * i6) + (i8 * i8) + (i9 * i9);
            int i11 = i7 / 3;
            if (!this.f4084n[i11] || i10 >= i2) {
                i10 = i2;
                i11 = i4;
            }
            i3 = i7 + 1;
            i2 = i10;
            i4 = i11;
        }
        return i4;
    }

    /* renamed from: c */
    private void m4570c() {
        int width = this.f4079i.getWidth();
        int height = this.f4079i.getHeight();
        if (width != this.f4071a || height != this.f4072b) {
            Bitmap createBitmap = Bitmap.createBitmap(this.f4071a, this.f4072b, Bitmap.Config.ARGB_8888);
            new Canvas(createBitmap).drawBitmap(createBitmap, 0.0f, 0.0f, (Paint) null);
            this.f4079i = createBitmap;
        }
        int[] iArr = new int[width * height];
        this.f4079i.getPixels(iArr, 0, width, 0, 0, width, height);
        this.f4080j = new byte[iArr.length * 3];
        this.f4091u = false;
        int i = 0;
        int i2 = 0;
        for (int i3 : iArr) {
            if (i3 == 0) {
                i++;
            }
            int i4 = i2 + 1;
            this.f4080j[i2] = (byte) (i3 & 255);
            int i5 = i4 + 1;
            this.f4080j[i4] = (byte) ((i3 >> 8) & 255);
            i2 = i5 + 1;
            this.f4080j[i5] = (byte) ((i3 >> 16) & 255);
        }
        double length = (i * 100) / iArr.length;
        this.f4091u = length > 4.0d;
        if (Log.isLoggable("AnimatedGifEncoderEx", 3)) {
            Log.d("AnimatedGifEncoderEx", "got pixels for frame with " + length + "% transparent pixels");
        }
    }

    /* renamed from: d */
    private void m4572d() {
        int i;
        int i2;
        this.f4078h.write(33);
        this.f4078h.write(249);
        this.f4078h.write(4);
        if (this.f4073c != null || this.f4091u) {
            i = 1;
            i2 = 2;
        } else {
            i2 = 0;
            i = 0;
        }
        if (this.f4086p >= 0) {
            i2 = this.f4086p & 7;
        }
        this.f4078h.write((i2 << 2) | 0 | 0 | i);
        m4574e(this.f4076f);
        this.f4078h.write(this.f4074d);
        this.f4078h.write(0);
    }

    /* renamed from: e */
    private void m4573e() {
        this.f4078h.write(44);
        m4574e(0);
        m4574e(0);
        m4574e(this.f4071a);
        m4574e(this.f4072b);
        if (this.f4088r) {
            this.f4078h.write(0);
        } else {
            this.f4078h.write(this.f4085o | 128);
        }
    }

    /* renamed from: f */
    private void m4575f() {
        m4574e(this.f4071a);
        m4574e(this.f4072b);
        this.f4078h.write(this.f4085o | PsExtractor.VIDEO_STREAM_MASK);
        this.f4078h.write(0);
        this.f4078h.write(0);
    }

    /* renamed from: g */
    private void m4576g() {
        this.f4078h.write(33);
        this.f4078h.write(255);
        this.f4078h.write(11);
        m4568a("NETSCAPE2.0");
        this.f4078h.write(3);
        this.f4078h.write(1);
        m4574e(this.f4075e);
        this.f4078h.write(0);
    }

    /* renamed from: h */
    private void m4577h() {
        this.f4078h.write(this.f4083m, 0, this.f4083m.length);
        int length = 768 - this.f4083m.length;
        for (int i = 0; i < length; i++) {
            this.f4078h.write(0);
        }
    }

    /* renamed from: i */
    private void m4578i() {
        new C0737b(this.f4071a, this.f4072b, this.f4081k, this.f4082l).m4595b(this.f4078h);
    }

    /* renamed from: e */
    private void m4574e(int i) {
        this.f4078h.write(i & 255);
        this.f4078h.write((i >> 8) & 255);
    }

    /* renamed from: a */
    private void m4568a(String str) {
        for (int i = 0; i < str.length(); i++) {
            this.f4078h.write((byte) str.charAt(i));
        }
    }
}
