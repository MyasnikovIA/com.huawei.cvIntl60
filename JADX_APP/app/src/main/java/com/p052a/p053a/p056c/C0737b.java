package com.p052a.p053a.p056c;

import android.support.v4.app.FrameMetricsAggregator;
import android.support.v4.internal.view.SupportMenu;
import java.io.OutputStream;

/* renamed from: com.a.a.c.b */
/* loaded from: classes.dex */
class C0737b {

    /* renamed from: a */
    int f4094a;

    /* renamed from: c */
    int f4096c;

    /* renamed from: j */
    int f4103j;

    /* renamed from: k */
    int f4104k;

    /* renamed from: l */
    int f4105l;

    /* renamed from: p */
    int f4109p;

    /* renamed from: r */
    private int f4111r;

    /* renamed from: s */
    private int f4112s;

    /* renamed from: t */
    private byte[] f4113t;

    /* renamed from: u */
    private int f4114u;

    /* renamed from: v */
    private int f4115v;

    /* renamed from: w */
    private int f4116w;

    /* renamed from: b */
    int f4095b = 12;

    /* renamed from: d */
    int f4097d = 4096;

    /* renamed from: e */
    int[] f4098e = new int[5003];

    /* renamed from: f */
    int[] f4099f = new int[5003];

    /* renamed from: g */
    int f4100g = 5003;

    /* renamed from: h */
    int f4101h = 0;

    /* renamed from: i */
    boolean f4102i = false;

    /* renamed from: m */
    int f4106m = 0;

    /* renamed from: n */
    int f4107n = 0;

    /* renamed from: o */
    int[] f4108o = {0, 1, 3, 7, 15, 31, 63, 127, 255, FrameMetricsAggregator.EVERY_DURATION, 1023, 2047, 4095, 8191, 16383, 32767, SupportMenu.USER_MASK};

    /* renamed from: q */
    byte[] f4110q = new byte[256];

    C0737b(int i, int i2, byte[] bArr, int i3) {
        this.f4111r = i;
        this.f4112s = i2;
        this.f4113t = bArr;
        this.f4114u = Math.max(2, i3);
    }

    /* renamed from: a */
    void m4589a(byte b, OutputStream outputStream) {
        byte[] bArr = this.f4110q;
        int i = this.f4109p;
        this.f4109p = i + 1;
        bArr[i] = b;
        if (this.f4109p >= 254) {
            m4596c(outputStream);
        }
    }

    /* renamed from: a */
    void m4592a(OutputStream outputStream) {
        m4590a(this.f4100g);
        this.f4101h = this.f4104k + 2;
        this.f4102i = true;
        m4594b(this.f4104k, outputStream);
    }

    /* renamed from: a */
    void m4590a(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            this.f4098e[i2] = -1;
        }
    }

    /* renamed from: a */
    void m4591a(int i, OutputStream outputStream) {
        int i2 = 0;
        this.f4103j = i;
        this.f4102i = false;
        this.f4094a = this.f4103j;
        this.f4096c = m4593b(this.f4094a);
        this.f4104k = 1 << (i - 1);
        this.f4105l = this.f4104k + 1;
        this.f4101h = this.f4104k + 2;
        this.f4109p = 0;
        int m4588a = m4588a();
        for (int i3 = this.f4100g; i3 < 65536; i3 *= 2) {
            i2++;
        }
        int i4 = 8 - i2;
        int i5 = this.f4100g;
        m4590a(i5);
        m4594b(this.f4104k, outputStream);
        while (true) {
            int m4588a2 = m4588a();
            if (m4588a2 != -1) {
                int i6 = (m4588a2 << this.f4095b) + m4588a;
                int i7 = (m4588a2 << i4) ^ m4588a;
                if (this.f4098e[i7] == i6) {
                    m4588a = this.f4099f[i7];
                } else {
                    if (this.f4098e[i7] >= 0) {
                        int i8 = i5 - i7;
                        if (i7 == 0) {
                            i8 = 1;
                        }
                        do {
                            i7 -= i8;
                            if (i7 < 0) {
                                i7 += i5;
                            }
                            if (this.f4098e[i7] == i6) {
                                m4588a = this.f4099f[i7];
                                break;
                            }
                        } while (this.f4098e[i7] >= 0);
                    }
                    m4594b(m4588a, outputStream);
                    if (this.f4101h < this.f4097d) {
                        int[] iArr = this.f4099f;
                        int i9 = this.f4101h;
                        this.f4101h = i9 + 1;
                        iArr[i7] = i9;
                        this.f4098e[i7] = i6;
                        m4588a = m4588a2;
                    } else {
                        m4592a(outputStream);
                        m4588a = m4588a2;
                    }
                }
            } else {
                m4594b(m4588a, outputStream);
                m4594b(this.f4105l, outputStream);
                return;
            }
        }
    }

    /* renamed from: b */
    void m4595b(OutputStream outputStream) {
        outputStream.write(this.f4114u);
        this.f4115v = this.f4111r * this.f4112s;
        this.f4116w = 0;
        m4591a(this.f4114u + 1, outputStream);
        outputStream.write(0);
    }

    /* renamed from: c */
    void m4596c(OutputStream outputStream) {
        if (this.f4109p > 0) {
            outputStream.write(this.f4109p);
            outputStream.write(this.f4110q, 0, this.f4109p);
            this.f4109p = 0;
        }
    }

    /* renamed from: b */
    final int m4593b(int i) {
        return (1 << i) - 1;
    }

    /* renamed from: a */
    private int m4588a() {
        if (this.f4115v == 0) {
            return -1;
        }
        this.f4115v--;
        byte[] bArr = this.f4113t;
        int i = this.f4116w;
        this.f4116w = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: b */
    void m4594b(int i, OutputStream outputStream) {
        this.f4106m &= this.f4108o[this.f4107n];
        if (this.f4107n > 0) {
            this.f4106m |= i << this.f4107n;
        } else {
            this.f4106m = i;
        }
        this.f4107n += this.f4094a;
        while (this.f4107n >= 8) {
            m4589a((byte) (this.f4106m & 255), outputStream);
            this.f4106m >>= 8;
            this.f4107n -= 8;
        }
        if (this.f4101h > this.f4096c || this.f4102i) {
            if (this.f4102i) {
                int i2 = this.f4103j;
                this.f4094a = i2;
                this.f4096c = m4593b(i2);
                this.f4102i = false;
            } else {
                this.f4094a++;
                if (this.f4094a == this.f4095b) {
                    this.f4096c = this.f4097d;
                } else {
                    this.f4096c = m4593b(this.f4094a);
                }
            }
        }
        if (i == this.f4105l) {
            while (this.f4107n > 0) {
                m4589a((byte) (this.f4106m & 255), outputStream);
                this.f4106m >>= 8;
                this.f4107n -= 8;
            }
            m4596c(outputStream);
        }
    }
}
