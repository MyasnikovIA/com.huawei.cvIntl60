package com.p052a.p053a.p055b;

import android.graphics.Bitmap;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.util.Log;
import com.p052a.p053a.p055b.InterfaceC0730a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* renamed from: com.a.a.b.e */
/* loaded from: classes.dex */
public class C0734e implements InterfaceC0730a {

    /* renamed from: a */
    private static final String f4035a = C0734e.class.getSimpleName();

    /* renamed from: b */
    @ColorInt
    private int[] f4036b;

    /* renamed from: c */
    @ColorInt
    private final int[] f4037c;

    /* renamed from: d */
    private ByteBuffer f4038d;

    /* renamed from: e */
    private byte[] f4039e;

    /* renamed from: f */
    @Nullable
    private byte[] f4040f;

    /* renamed from: g */
    private int f4041g;

    /* renamed from: h */
    private int f4042h;

    /* renamed from: i */
    private short[] f4043i;

    /* renamed from: j */
    private byte[] f4044j;

    /* renamed from: k */
    private byte[] f4045k;

    /* renamed from: l */
    private byte[] f4046l;

    /* renamed from: m */
    @ColorInt
    private int[] f4047m;

    /* renamed from: n */
    private int f4048n;

    /* renamed from: o */
    private C0732c f4049o;

    /* renamed from: p */
    private InterfaceC0730a.a f4050p;

    /* renamed from: q */
    private Bitmap f4051q;

    /* renamed from: r */
    private boolean f4052r;

    /* renamed from: s */
    private int f4053s;

    /* renamed from: t */
    private int f4054t;

    /* renamed from: u */
    private int f4055u;

    /* renamed from: v */
    private int f4056v;

    /* renamed from: w */
    private boolean f4057w;

    public C0734e(InterfaceC0730a.a aVar, C0732c c0732c, ByteBuffer byteBuffer, int i) {
        this(aVar);
        m4549a(c0732c, byteBuffer, i);
    }

    public C0734e(InterfaceC0730a.a aVar) {
        this.f4037c = new int[256];
        this.f4041g = 0;
        this.f4042h = 0;
        this.f4050p = aVar;
        this.f4049o = new C0732c();
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a
    /* renamed from: a */
    public ByteBuffer mo4504a() {
        return this.f4038d;
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a
    /* renamed from: b */
    public void mo4505b() {
        this.f4048n = (this.f4048n + 1) % this.f4049o.f4020c;
    }

    /* renamed from: a */
    public int m4548a(int i) {
        if (i < 0 || i >= this.f4049o.f4020c) {
            return -1;
        }
        return this.f4049o.f4022e.get(i).f4015i;
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a
    /* renamed from: c */
    public int mo4506c() {
        if (this.f4049o.f4020c <= 0 || this.f4048n < 0) {
            return 0;
        }
        return m4548a(this.f4048n);
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a
    /* renamed from: d */
    public int mo4507d() {
        return this.f4049o.f4020c;
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a
    /* renamed from: e */
    public int mo4508e() {
        return this.f4048n;
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a
    /* renamed from: f */
    public void mo4509f() {
        this.f4048n = -1;
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a
    /* renamed from: g */
    public int mo4510g() {
        return this.f4038d.limit() + this.f4046l.length + (this.f4047m.length * 4);
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a
    /* renamed from: h */
    public synchronized Bitmap mo4511h() {
        Bitmap bitmap;
        if (this.f4049o.f4020c <= 0 || this.f4048n < 0) {
            if (Log.isLoggable(f4035a, 3)) {
                Log.d(f4035a, "Unable to decode frame, frameCount=" + this.f4049o.f4020c + ", framePointer=" + this.f4048n);
            }
            this.f4053s = 1;
        }
        if (this.f4053s == 1 || this.f4053s == 2) {
            if (Log.isLoggable(f4035a, 3)) {
                Log.d(f4035a, "Unable to decode frame, status=" + this.f4053s);
            }
            bitmap = null;
        } else {
            this.f4053s = 0;
            C0731b c0731b = this.f4049o.f4022e.get(this.f4048n);
            int i = this.f4048n - 1;
            C0731b c0731b2 = i >= 0 ? this.f4049o.f4022e.get(i) : null;
            this.f4036b = c0731b.f4017k != null ? c0731b.f4017k : this.f4049o.f4018a;
            if (this.f4036b == null) {
                if (Log.isLoggable(f4035a, 3)) {
                    Log.d(f4035a, "No valid color table found for frame #" + this.f4048n);
                }
                this.f4053s = 1;
                bitmap = null;
            } else {
                if (c0731b.f4012f) {
                    System.arraycopy(this.f4036b, 0, this.f4037c, 0, this.f4036b.length);
                    this.f4036b = this.f4037c;
                    this.f4036b[c0731b.f4014h] = 0;
                }
                bitmap = m4542a(c0731b, c0731b2);
            }
        }
        return bitmap;
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a
    /* renamed from: i */
    public void mo4512i() {
        this.f4049o = null;
        if (this.f4046l != null) {
            this.f4050p.mo4515a(this.f4046l);
        }
        if (this.f4047m != null) {
            this.f4050p.mo4516a(this.f4047m);
        }
        if (this.f4051q != null) {
            this.f4050p.mo4514a(this.f4051q);
        }
        this.f4051q = null;
        this.f4038d = null;
        this.f4057w = false;
        if (this.f4039e != null) {
            this.f4050p.mo4515a(this.f4039e);
        }
        if (this.f4040f != null) {
            this.f4050p.mo4515a(this.f4040f);
        }
    }

    /* renamed from: a */
    public synchronized void m4549a(C0732c c0732c, ByteBuffer byteBuffer, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
        }
        int highestOneBit = Integer.highestOneBit(i);
        this.f4053s = 0;
        this.f4049o = c0732c;
        this.f4057w = false;
        this.f4048n = -1;
        this.f4038d = byteBuffer.asReadOnlyBuffer();
        this.f4038d.position(0);
        this.f4038d.order(ByteOrder.LITTLE_ENDIAN);
        this.f4052r = false;
        Iterator<C0731b> it = c0732c.f4022e.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().f4013g == 3) {
                this.f4052r = true;
                break;
            }
        }
        this.f4054t = highestOneBit;
        this.f4056v = c0732c.f4023f / highestOneBit;
        this.f4055u = c0732c.f4024g / highestOneBit;
        this.f4046l = this.f4050p.mo4517a(c0732c.f4023f * c0732c.f4024g);
        this.f4047m = this.f4050p.mo4518b(this.f4056v * this.f4055u);
    }

    /* renamed from: a */
    private Bitmap m4542a(C0731b c0731b, C0731b c0731b2) {
        int i;
        int i2;
        int m4541a;
        int[] iArr = this.f4047m;
        if (c0731b2 == null) {
            Arrays.fill(iArr, 0);
        }
        if (c0731b2 != null && c0731b2.f4013g > 0) {
            if (c0731b2.f4013g == 2) {
                int i3 = 0;
                if (!c0731b.f4012f) {
                    i3 = this.f4049o.f4029l;
                    if (c0731b.f4017k != null && this.f4049o.f4027j == c0731b.f4014h) {
                        i3 = 0;
                    }
                } else if (this.f4048n == 0) {
                    this.f4057w = true;
                }
                int i4 = c0731b2.f4010d / this.f4054t;
                int i5 = c0731b2.f4008b / this.f4054t;
                int i6 = c0731b2.f4009c / this.f4054t;
                int i7 = (i5 * this.f4056v) + (c0731b2.f4007a / this.f4054t);
                int i8 = i7 + (i4 * this.f4056v);
                while (i7 < i8) {
                    int i9 = i7 + i6;
                    for (int i10 = i7; i10 < i9; i10++) {
                        iArr[i10] = i3;
                    }
                    i7 += this.f4056v;
                }
            } else if (c0731b2.f4013g == 3 && this.f4051q != null) {
                this.f4051q.getPixels(iArr, 0, this.f4056v, 0, 0, this.f4056v, this.f4055u);
            }
        }
        m4543a(c0731b);
        int i11 = c0731b.f4010d / this.f4054t;
        int i12 = c0731b.f4008b / this.f4054t;
        int i13 = c0731b.f4009c / this.f4054t;
        int i14 = c0731b.f4007a / this.f4054t;
        int i15 = 1;
        int i16 = 8;
        int i17 = 0;
        boolean z = this.f4048n == 0;
        int i18 = 0;
        while (i18 < i11) {
            if (c0731b.f4011e) {
                if (i17 >= i11) {
                    i15++;
                    switch (i15) {
                        case 2:
                            i17 = 4;
                            break;
                        case 3:
                            i17 = 2;
                            i16 = 4;
                            break;
                        case 4:
                            i17 = 1;
                            i16 = 2;
                            break;
                    }
                }
                i2 = i17 + i16;
                i = i17;
            } else {
                i = i18;
                i2 = i17;
            }
            int i19 = i + i12;
            if (i19 < this.f4055u) {
                int i20 = this.f4056v * i19;
                int i21 = i20 + i14;
                int i22 = i21 + i13;
                if (this.f4056v + i20 < i22) {
                    i22 = this.f4056v + i20;
                }
                int i23 = this.f4054t * i18 * c0731b.f4009c;
                int i24 = i23 + ((i22 - i21) * this.f4054t);
                int i25 = i23;
                while (i21 < i22) {
                    if (this.f4054t == 1) {
                        m4541a = this.f4036b[this.f4046l[i25] & 255];
                    } else {
                        m4541a = m4541a(i25, i24, c0731b.f4009c);
                    }
                    if (m4541a != 0) {
                        iArr[i21] = m4541a;
                    } else if (!this.f4057w && z) {
                        this.f4057w = true;
                    }
                    i21++;
                    i25 = this.f4054t + i25;
                }
            }
            i18++;
            i17 = i2;
        }
        if (this.f4052r && (c0731b.f4013g == 0 || c0731b.f4013g == 1)) {
            if (this.f4051q == null) {
                this.f4051q = m4547m();
            }
            this.f4051q.setPixels(iArr, 0, this.f4056v, 0, 0, this.f4056v, this.f4055u);
        }
        Bitmap m4547m = m4547m();
        m4547m.setPixels(iArr, 0, this.f4056v, 0, 0, this.f4056v, this.f4055u);
        return m4547m;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
    
        return 0;
     */
    @android.support.annotation.ColorInt
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int m4541a(int r10, int r11, int r12) {
        /*
            r9 = this;
            r2 = 0
            r0 = r10
            r1 = r2
            r3 = r2
            r4 = r2
            r5 = r2
            r6 = r2
        L7:
            int r7 = r9.f4054t
            int r7 = r7 + r10
            if (r0 >= r7) goto L36
            byte[] r7 = r9.f4046l
            int r7 = r7.length
            if (r0 >= r7) goto L36
            if (r0 >= r11) goto L36
            byte[] r7 = r9.f4046l
            r7 = r7[r0]
            r7 = r7 & 255(0xff, float:3.57E-43)
            int[] r8 = r9.f4036b
            r7 = r8[r7]
            if (r7 == 0) goto L33
            int r8 = r7 >> 24
            r8 = r8 & 255(0xff, float:3.57E-43)
            int r6 = r6 + r8
            int r8 = r7 >> 16
            r8 = r8 & 255(0xff, float:3.57E-43)
            int r5 = r5 + r8
            int r8 = r7 >> 8
            r8 = r8 & 255(0xff, float:3.57E-43)
            int r4 = r4 + r8
            r7 = r7 & 255(0xff, float:3.57E-43)
            int r3 = r3 + r7
            int r1 = r1 + 1
        L33:
            int r0 = r0 + 1
            goto L7
        L36:
            int r0 = r10 + r12
        L38:
            int r7 = r10 + r12
            int r8 = r9.f4054t
            int r7 = r7 + r8
            if (r0 >= r7) goto L69
            byte[] r7 = r9.f4046l
            int r7 = r7.length
            if (r0 >= r7) goto L69
            if (r0 >= r11) goto L69
            byte[] r7 = r9.f4046l
            r7 = r7[r0]
            r7 = r7 & 255(0xff, float:3.57E-43)
            int[] r8 = r9.f4036b
            r7 = r8[r7]
            if (r7 == 0) goto L66
            int r8 = r7 >> 24
            r8 = r8 & 255(0xff, float:3.57E-43)
            int r6 = r6 + r8
            int r8 = r7 >> 16
            r8 = r8 & 255(0xff, float:3.57E-43)
            int r5 = r5 + r8
            int r8 = r7 >> 8
            r8 = r8 & 255(0xff, float:3.57E-43)
            int r4 = r4 + r8
            r7 = r7 & 255(0xff, float:3.57E-43)
            int r3 = r3 + r7
            int r1 = r1 + 1
        L66:
            int r0 = r0 + 1
            goto L38
        L69:
            if (r1 != 0) goto L6c
        L6b:
            return r2
        L6c:
            int r0 = r6 / r1
            int r0 = r0 << 24
            int r2 = r5 / r1
            int r2 = r2 << 16
            r0 = r0 | r2
            int r2 = r4 / r1
            int r2 = r2 << 8
            r0 = r0 | r2
            int r1 = r3 / r1
            r2 = r0 | r1
            goto L6b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p052a.p053a.p055b.C0734e.m4541a(int, int, int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x016f A[LOOP:5: B:64:0x016d->B:65:0x016f, LOOP_END] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m4543a(com.p052a.p053a.p055b.C0731b r22) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p052a.p053a.p055b.C0734e.m4543a(com.a.a.b.b):void");
    }

    /* renamed from: j */
    private void m4544j() {
        if (this.f4041g <= this.f4042h) {
            if (this.f4040f == null) {
                this.f4040f = this.f4050p.mo4517a(16384);
            }
            this.f4042h = 0;
            this.f4041g = Math.min(this.f4038d.remaining(), 16384);
            this.f4038d.get(this.f4040f, 0, this.f4041g);
        }
    }

    /* renamed from: k */
    private int m4545k() {
        try {
            m4544j();
            byte[] bArr = this.f4040f;
            int i = this.f4042h;
            this.f4042h = i + 1;
            return bArr[i] & 255;
        } catch (Exception e) {
            this.f4053s = 1;
            return 0;
        }
    }

    /* renamed from: l */
    private int m4546l() {
        int m4545k = m4545k();
        if (m4545k > 0) {
            try {
                if (this.f4039e == null) {
                    this.f4039e = this.f4050p.mo4517a(255);
                }
                int i = this.f4041g - this.f4042h;
                if (i >= m4545k) {
                    System.arraycopy(this.f4040f, this.f4042h, this.f4039e, 0, m4545k);
                    this.f4042h += m4545k;
                } else if (this.f4038d.remaining() + i >= m4545k) {
                    System.arraycopy(this.f4040f, this.f4042h, this.f4039e, 0, i);
                    this.f4042h = this.f4041g;
                    m4544j();
                    int i2 = m4545k - i;
                    System.arraycopy(this.f4040f, 0, this.f4039e, i, i2);
                    this.f4042h += i2;
                } else {
                    this.f4053s = 1;
                }
            } catch (Exception e) {
                Log.w(f4035a, "Error Reading Block", e);
                this.f4053s = 1;
            }
        }
        return m4545k;
    }

    /* renamed from: m */
    private Bitmap m4547m() {
        Bitmap mo4513a = this.f4050p.mo4513a(this.f4056v, this.f4055u, this.f4057w ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        mo4513a.setHasAlpha(true);
        return mo4513a;
    }
}
