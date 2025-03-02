package com.p052a.p053a.p056c;

/* renamed from: com.a.a.c.c */
/* loaded from: classes.dex */
class C0738c {

    /* renamed from: a */
    protected static int f4117a = 6;

    /* renamed from: b */
    protected static final int f4118b = 1 << f4117a;

    /* renamed from: c */
    protected static final int f4119c = f4118b * 32;

    /* renamed from: d */
    protected int f4120d;

    /* renamed from: e */
    protected byte[] f4121e;

    /* renamed from: f */
    protected int f4122f;

    /* renamed from: g */
    protected int f4123g;

    /* renamed from: m */
    private int f4129m;

    /* renamed from: n */
    private C0739d[] f4130n;

    /* renamed from: o */
    private int f4131o;

    /* renamed from: p */
    private int f4132p;

    /* renamed from: i */
    protected int[] f4125i = new int[256];

    /* renamed from: j */
    protected int[] f4126j = new int[256];

    /* renamed from: k */
    protected int[] f4127k = new int[256];

    /* renamed from: l */
    protected int[] f4128l = new int[32];

    /* renamed from: h */
    protected int[][] f4124h = new int[256][];

    public C0738c(byte[] bArr, int i, int i2, int i3, int i4, int[] iArr, C0739d[] c0739dArr) {
        this.f4129m = 0;
        this.f4130n = null;
        this.f4131o = 0;
        this.f4132p = 0;
        this.f4121e = bArr;
        this.f4122f = i;
        this.f4123g = i2;
        this.f4130n = c0739dArr;
        this.f4131o = i3;
        this.f4132p = i4;
        for (int i5 = 0; i5 < 256; i5++) {
            this.f4124h[i5] = new int[4];
            int[] iArr2 = this.f4124h[i5];
            int i6 = (i5 << 12) / 256;
            iArr2[2] = i6;
            iArr2[1] = i6;
            iArr2[0] = i6;
            this.f4127k[i5] = 256;
            this.f4126j[i5] = 0;
        }
        if (iArr != null) {
            this.f4129m = iArr.length / 3;
            for (int i7 = 0; i7 < this.f4129m; i7++) {
                this.f4124h[255 - i7][0] = (iArr[i7 * 3] & 255) << 4;
                this.f4124h[255 - i7][1] = (iArr[(i7 * 3) + 1] & 255) << 4;
                this.f4124h[255 - i7][2] = (iArr[(i7 * 3) + 2] & 255) << 4;
            }
        }
    }

    /* renamed from: a */
    public byte[] m4599a() {
        byte[] bArr = new byte[768];
        int[] iArr = new int[256];
        for (int i = 0; i < 256; i++) {
            iArr[this.f4124h[i][3]] = i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            int i4 = iArr[i3];
            int i5 = i2 + 1;
            bArr[i2] = (byte) this.f4124h[i4][0];
            int i6 = i5 + 1;
            bArr[i5] = (byte) this.f4124h[i4][1];
            i2 = i6 + 1;
            bArr[i6] = (byte) this.f4124h[i4][2];
        }
        return bArr;
    }

    /* renamed from: b */
    public void m4601b() {
        int i;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i4 < 256) {
            int[] iArr = this.f4124h[i4];
            int i5 = iArr[1];
            int i6 = i4;
            for (int i7 = i4 + 1; i7 < 256; i7++) {
                int[] iArr2 = this.f4124h[i7];
                if (iArr2[1] < i5) {
                    i5 = iArr2[1];
                    i6 = i7;
                }
            }
            int[] iArr3 = this.f4124h[i6];
            if (i4 != i6) {
                int i8 = iArr3[0];
                iArr3[0] = iArr[0];
                iArr[0] = i8;
                int i9 = iArr3[1];
                iArr3[1] = iArr[1];
                iArr[1] = i9;
                int i10 = iArr3[2];
                iArr3[2] = iArr[2];
                iArr[2] = i10;
                int i11 = iArr3[3];
                iArr3[3] = iArr[3];
                iArr[3] = i11;
            }
            if (i5 != i3) {
                this.f4125i[i3] = (i2 + i4) >> 1;
                for (int i12 = i3 + 1; i12 < i5; i12++) {
                    this.f4125i[i12] = i4;
                }
                i = i4;
            } else {
                i = i2;
                i5 = i3;
            }
            i4++;
            i2 = i;
            i3 = i5;
        }
        this.f4125i[i3] = (i2 + 255) >> 1;
        for (int i13 = i3 + 1; i13 < 256; i13++) {
            this.f4125i[i13] = 255;
        }
    }

    /* renamed from: c */
    public void m4603c() {
        int i;
        int[] iArr;
        if (this.f4122f < 1509) {
            this.f4123g = 1;
        }
        this.f4120d = ((this.f4123g - 1) / 3) + 30;
        byte[] bArr = this.f4121e;
        int i2 = this.f4122f;
        int i3 = this.f4122f / (this.f4123g * 3);
        int i4 = i3 / 100;
        int i5 = f4119c;
        int i6 = i5 >> f4117a;
        if (i6 <= 1) {
            i6 = 0;
        }
        for (int i7 = 0; i7 < i6; i7++) {
            this.f4128l[i7] = ((((i6 * i6) - (i7 * i7)) * 256) / (i6 * i6)) * 1024;
        }
        if (this.f4122f < 1509) {
            i = 3;
        } else if (this.f4122f % 499 != 0) {
            i = 1497;
        } else if (this.f4122f % 491 != 0) {
            i = 1473;
        } else if (this.f4122f % 487 != 0) {
            i = 1461;
        } else {
            i = 1509;
        }
        if (this.f4130n != null) {
            int[] iArr2 = new int[this.f4130n.length + 1];
            float f = 1.0f;
            iArr2[this.f4130n.length] = i3;
            for (int length = this.f4130n.length - 1; length >= 0; length--) {
                f -= ((this.f4130n[length].f4136d * this.f4130n[length].f4137e) / (this.f4131o * this.f4132p)) * this.f4130n[length].f4133a;
                iArr2[length] = (int) (i3 * f);
            }
            iArr = iArr2;
        } else {
            iArr = new int[]{i3};
        }
        int i8 = 0;
        int i9 = i4;
        int i10 = 1024;
        int i11 = i6;
        int i12 = i5;
        int i13 = 0;
        while (i13 < iArr[0]) {
            int i14 = (bArr[i8 + 0] & 255) << 4;
            int i15 = (bArr[i8 + 1] & 255) << 4;
            int i16 = (bArr[i8 + 2] & 255) << 4;
            int m4600b = m4600b(i14, i15, i16);
            m4602b(i10, m4600b, i14, i15, i16);
            if (i11 != 0) {
                m4598a(i11, m4600b, i14, i15, i16);
            }
            int i17 = i8 + i;
            if (i17 >= i2) {
                i17 -= this.f4122f;
            }
            int i18 = i13 + 1;
            int i19 = i9 == 0 ? 1 : i9;
            if (i18 % i19 == 0) {
                i10 -= i10 / this.f4120d;
                int i20 = i12 - (i12 / 30);
                i11 = i20 >> f4117a;
                if (i11 <= 1) {
                    i11 = 0;
                }
                for (int i21 = 0; i21 < i11; i21++) {
                    this.f4128l[i21] = ((((i11 * i11) - (i21 * i21)) * 256) / (i11 * i11)) * i10;
                }
                i8 = i17;
                i9 = i19;
                i12 = i20;
                i13 = i18;
            } else {
                i8 = i17;
                i9 = i19;
                i13 = i18;
            }
        }
        if (this.f4130n != null) {
            int i22 = 1;
            while (true) {
                int i23 = i22;
                if (i23 < iArr.length) {
                    int i24 = ((this.f4131o * this.f4130n[i23 - 1].f4135c) + this.f4130n[i23 - 1].f4134b) * 3;
                    int i25 = this.f4130n[i23 - 1].f4136d;
                    int i26 = i25 * this.f4130n[i23 - 1].f4137e;
                    int i27 = 0;
                    int i28 = i24;
                    while (i13 < iArr[i23]) {
                        int i29 = (bArr[i28 + 0] & 255) << 4;
                        int i30 = (bArr[i28 + 1] & 255) << 4;
                        int i31 = (bArr[i28 + 2] & 255) << 4;
                        int m4600b2 = m4600b(i29, i30, i31);
                        m4602b(i10, m4600b2, i29, i30, i31);
                        if (i11 != 0) {
                            m4598a(i11, m4600b2, i29, i30, i31);
                        }
                        int i32 = (i / 3) + i27;
                        while (i32 >= i26) {
                            i32 -= i26;
                        }
                        i28 = ((((i32 / i25) * this.f4131o) + (i32 % i25)) * 3) + i24;
                        i13++;
                        if (i9 == 0) {
                            i9 = 1;
                        }
                        if (i13 % i9 == 0) {
                            i10 -= i10 / this.f4120d;
                            i12 -= i12 / 30;
                            i11 = i12 >> f4117a;
                            if (i11 <= 1) {
                                i11 = 0;
                            }
                            for (int i33 = 0; i33 < i11; i33++) {
                                this.f4128l[i33] = ((((i11 * i11) - (i33 * i33)) * 256) / (i11 * i11)) * i10;
                            }
                        }
                        i27 = i32;
                    }
                    i22 = i23 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public int m4597a(int i, int i2, int i3) {
        int i4;
        int i5 = 1000;
        int i6 = this.f4125i[i2];
        int i7 = -1;
        int i8 = i6 - 1;
        while (true) {
            int i9 = i6;
            if (i9 < 256 || i8 >= 0) {
                if (i9 < 256) {
                    int[] iArr = this.f4124h[i9];
                    int i10 = iArr[1] - i2;
                    if (i10 >= i5) {
                        i4 = i7;
                        i6 = 256;
                    } else {
                        i6 = i9 + 1;
                        if (i10 < 0) {
                            i10 = -i10;
                        }
                        int i11 = iArr[0] - i;
                        if (i11 < 0) {
                            i11 = -i11;
                        }
                        int i12 = i11 + i10;
                        if (i12 < i5) {
                            int i13 = iArr[2] - i3;
                            if (i13 < 0) {
                                i13 = -i13;
                            }
                            int i14 = i12 + i13;
                            if (i14 < i5) {
                                i4 = iArr[3];
                                i5 = i14;
                            }
                        }
                        i4 = i7;
                    }
                } else {
                    i4 = i7;
                    i6 = i9;
                }
                if (i8 >= 0) {
                    int[] iArr2 = this.f4124h[i8];
                    int i15 = i2 - iArr2[1];
                    if (i15 >= i5) {
                        i7 = i4;
                        i8 = -1;
                    } else {
                        i8--;
                        if (i15 < 0) {
                            i15 = -i15;
                        }
                        int i16 = iArr2[0] - i;
                        if (i16 < 0) {
                            i16 = -i16;
                        }
                        int i17 = i16 + i15;
                        if (i17 < i5) {
                            int i18 = iArr2[2] - i3;
                            if (i18 < 0) {
                                i18 = -i18;
                            }
                            int i19 = i18 + i17;
                            if (i19 < i5) {
                                i7 = iArr2[3];
                                i5 = i19;
                            }
                        }
                    }
                }
                i7 = i4;
            } else {
                return i7;
            }
        }
    }

    /* renamed from: d */
    public byte[] m4604d() {
        m4603c();
        m4605e();
        m4601b();
        return m4599a();
    }

    /* renamed from: e */
    public void m4605e() {
        for (int i = 0; i < 256; i++) {
            int[] iArr = this.f4124h[i];
            iArr[0] = iArr[0] >> 4;
            int[] iArr2 = this.f4124h[i];
            iArr2[1] = iArr2[1] >> 4;
            int[] iArr3 = this.f4124h[i];
            iArr3[2] = iArr3[2] >> 4;
            this.f4124h[i][3] = i;
        }
    }

    /* renamed from: a */
    protected void m4598a(int i, int i2, int i3, int i4, int i5) {
        int i6;
        int i7 = i2 - i;
        if (i7 < -1) {
            i7 = -1;
        }
        int i8 = i2 + i;
        if (i8 > 256 - this.f4129m) {
            i8 = 256 - this.f4129m;
        }
        int i9 = i2 + 1;
        int i10 = 1;
        int i11 = i2 - 1;
        while (true) {
            if (i9 < i8 || i11 > i7) {
                int i12 = i10 + 1;
                int i13 = this.f4128l[i10];
                if (i9 < i8) {
                    i6 = i9 + 1;
                    int[] iArr = this.f4124h[i9];
                    try {
                        iArr[0] = iArr[0] - (((iArr[0] - i3) * i13) / 262144);
                        iArr[1] = iArr[1] - (((iArr[1] - i4) * i13) / 262144);
                        iArr[2] = iArr[2] - (((iArr[2] - i5) * i13) / 262144);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    i6 = i9;
                }
                if (i11 > i7) {
                    int i14 = i11 - 1;
                    int[] iArr2 = this.f4124h[i11];
                    try {
                        iArr2[0] = iArr2[0] - (((iArr2[0] - i3) * i13) / 262144);
                        iArr2[1] = iArr2[1] - (((iArr2[1] - i4) * i13) / 262144);
                        iArr2[2] = iArr2[2] - ((i13 * (iArr2[2] - i5)) / 262144);
                        i10 = i12;
                        i11 = i14;
                        i9 = i6;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        i10 = i12;
                        i11 = i14;
                        i9 = i6;
                    }
                } else {
                    i10 = i12;
                    i9 = i6;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    protected void m4602b(int i, int i2, int i3, int i4, int i5) {
        int[] iArr = this.f4124h[i2];
        iArr[0] = iArr[0] - (((iArr[0] - i3) * i) / 1024);
        iArr[1] = iArr[1] - (((iArr[1] - i4) * i) / 1024);
        iArr[2] = iArr[2] - (((iArr[2] - i5) * i) / 1024);
    }

    /* renamed from: b */
    protected int m4600b(int i, int i2, int i3) {
        int i4;
        int i5;
        int i6 = Integer.MAX_VALUE;
        int i7 = Integer.MAX_VALUE;
        int i8 = -1;
        int i9 = -1;
        int i10 = 0;
        while (i10 < 256 - this.f4129m) {
            int[] iArr = this.f4124h[i10];
            int i11 = iArr[0] - i;
            if (i11 < 0) {
                i11 = -i11;
            }
            int i12 = iArr[1] - i2;
            if (i12 < 0) {
                i12 = -i12;
            }
            int i13 = i12 + i11;
            int i14 = iArr[2] - i3;
            if (i14 < 0) {
                i14 = -i14;
            }
            int i15 = i13 + i14;
            if (i15 < i7) {
                i4 = i15;
                i5 = i10;
            } else {
                i4 = i7;
                i5 = i9;
            }
            int i16 = i15 - (this.f4126j[i10] >> 12);
            if (i16 < i6) {
                i6 = i16;
                i8 = i10;
            }
            int i17 = this.f4127k[i10] >> 10;
            int[] iArr2 = this.f4127k;
            iArr2[i10] = iArr2[i10] - i17;
            int[] iArr3 = this.f4126j;
            iArr3[i10] = (i17 << 10) + iArr3[i10];
            i10++;
            i7 = i4;
            i9 = i5;
        }
        int[] iArr4 = this.f4127k;
        iArr4[i9] = iArr4[i9] + 64;
        int[] iArr5 = this.f4126j;
        iArr5[i9] = iArr5[i9] - 65536;
        return i8;
    }
}
