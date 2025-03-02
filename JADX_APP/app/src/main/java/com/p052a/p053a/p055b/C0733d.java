package com.p052a.p053a.p055b;

import android.support.v4.view.ViewCompat;
import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* renamed from: com.a.a.b.d */
/* loaded from: classes.dex */
public class C0733d {

    /* renamed from: b */
    private ByteBuffer f4032b;

    /* renamed from: c */
    private C0732c f4033c;

    /* renamed from: a */
    private final byte[] f4031a = new byte[256];

    /* renamed from: d */
    private int f4034d = 0;

    /* renamed from: a */
    public C0733d m4538a(ByteBuffer byteBuffer) {
        m4525c();
        this.f4032b = byteBuffer.asReadOnlyBuffer();
        this.f4032b.position(0);
        this.f4032b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    /* renamed from: a */
    public void m4539a() {
        this.f4032b = null;
        this.f4033c = null;
    }

    /* renamed from: c */
    private void m4525c() {
        this.f4032b = null;
        Arrays.fill(this.f4031a, (byte) 0);
        this.f4033c = new C0732c();
        this.f4034d = 0;
    }

    /* renamed from: b */
    public C0732c m4540b() {
        if (this.f4032b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (m4537o()) {
            return this.f4033c;
        }
        m4530h();
        if (!m4537o()) {
            m4526d();
            if (this.f4033c.f4020c < 0) {
                this.f4033c.f4019b = 1;
            }
        }
        return this.f4033c;
    }

    /* renamed from: d */
    private void m4526d() {
        m4523a(Integer.MAX_VALUE);
    }

    /* renamed from: a */
    private void m4523a(int i) {
        boolean z = false;
        while (!z && !m4537o() && this.f4033c.f4020c <= i) {
            switch (m4535m()) {
                case 33:
                    switch (m4535m()) {
                        case 1:
                            m4533k();
                            break;
                        case 249:
                            this.f4033c.f4021d = new C0731b();
                            m4527e();
                            break;
                        case 254:
                            m4533k();
                            break;
                        case 255:
                            m4534l();
                            String str = "";
                            for (int i2 = 0; i2 < 11; i2++) {
                                str = str + ((char) this.f4031a[i2]);
                            }
                            if (str.equals("NETSCAPE2.0")) {
                                m4529g();
                                break;
                            } else {
                                m4533k();
                                break;
                            }
                        default:
                            m4533k();
                            break;
                    }
                case 44:
                    if (this.f4033c.f4021d == null) {
                        this.f4033c.f4021d = new C0731b();
                    }
                    m4528f();
                    break;
                case 59:
                    z = true;
                    break;
                default:
                    this.f4033c.f4019b = 1;
                    break;
            }
        }
    }

    /* renamed from: e */
    private void m4527e() {
        m4535m();
        int m4535m = m4535m();
        this.f4033c.f4021d.f4013g = (m4535m & 28) >> 2;
        if (this.f4033c.f4021d.f4013g == 0) {
            this.f4033c.f4021d.f4013g = 1;
        }
        this.f4033c.f4021d.f4012f = (m4535m & 1) != 0;
        int m4536n = m4536n();
        if (m4536n < 2) {
            m4536n = 10;
        }
        this.f4033c.f4021d.f4015i = m4536n * 10;
        this.f4033c.f4021d.f4014h = m4535m();
        m4535m();
    }

    /* renamed from: f */
    private void m4528f() {
        this.f4033c.f4021d.f4007a = m4536n();
        this.f4033c.f4021d.f4008b = m4536n();
        this.f4033c.f4021d.f4009c = m4536n();
        this.f4033c.f4021d.f4010d = m4536n();
        int m4535m = m4535m();
        boolean z = (m4535m & 128) != 0;
        int pow = (int) Math.pow(2.0d, (m4535m & 7) + 1);
        this.f4033c.f4021d.f4011e = (m4535m & 64) != 0;
        if (z) {
            this.f4033c.f4021d.f4017k = m4524b(pow);
        } else {
            this.f4033c.f4021d.f4017k = null;
        }
        this.f4033c.f4021d.f4016j = this.f4032b.position();
        m4532j();
        if (!m4537o()) {
            this.f4033c.f4020c++;
            this.f4033c.f4022e.add(this.f4033c.f4021d);
        }
    }

    /* renamed from: g */
    private void m4529g() {
        do {
            m4534l();
            if (this.f4031a[0] == 1) {
                this.f4033c.f4030m = (this.f4031a[1] & 255) | ((this.f4031a[2] & 255) << 8);
            }
            if (this.f4034d <= 0) {
                return;
            }
        } while (!m4537o());
    }

    /* renamed from: h */
    private void m4530h() {
        String str = "";
        for (int i = 0; i < 6; i++) {
            str = str + ((char) m4535m());
        }
        if (!str.startsWith("GIF")) {
            this.f4033c.f4019b = 1;
            return;
        }
        m4531i();
        if (this.f4033c.f4025h && !m4537o()) {
            this.f4033c.f4018a = m4524b(this.f4033c.f4026i);
            this.f4033c.f4029l = this.f4033c.f4018a[this.f4033c.f4027j];
        }
    }

    /* renamed from: i */
    private void m4531i() {
        this.f4033c.f4023f = m4536n();
        this.f4033c.f4024g = m4536n();
        this.f4033c.f4025h = (m4535m() & 128) != 0;
        this.f4033c.f4026i = (int) Math.pow(2.0d, (r1 & 7) + 1);
        this.f4033c.f4027j = m4535m();
        this.f4033c.f4028k = m4535m();
    }

    /* renamed from: b */
    private int[] m4524b(int i) {
        int[] iArr = null;
        byte[] bArr = new byte[i * 3];
        try {
            this.f4032b.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i3 < i) {
                int i4 = i2 + 1;
                int i5 = bArr[i2] & 255;
                int i6 = i4 + 1;
                int i7 = bArr[i4] & 255;
                i2 = i6 + 1;
                int i8 = i3 + 1;
                iArr[i3] = (i5 << 16) | ViewCompat.MEASURED_STATE_MASK | (i7 << 8) | (bArr[i6] & 255);
                i3 = i8;
            }
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e);
            }
            this.f4033c.f4019b = 1;
        }
        return iArr;
    }

    /* renamed from: j */
    private void m4532j() {
        m4535m();
        m4533k();
    }

    /* renamed from: k */
    private void m4533k() {
        int m4535m;
        do {
            m4535m = m4535m();
            this.f4032b.position(Math.min(this.f4032b.position() + m4535m, this.f4032b.limit()));
        } while (m4535m > 0);
    }

    /* renamed from: l */
    private int m4534l() {
        this.f4034d = m4535m();
        if (this.f4034d <= 0) {
            return 0;
        }
        int i = 0;
        int i2 = 0;
        while (i2 < this.f4034d) {
            try {
                i = this.f4034d - i2;
                this.f4032b.get(this.f4031a, i2, i);
                i2 += i;
            } catch (Exception e) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    Log.d("GifHeaderParser", "Error Reading Block n: " + i2 + " count: " + i + " blockSize: " + this.f4034d, e);
                }
                this.f4033c.f4019b = 1;
                return i2;
            }
        }
        return i2;
    }

    /* renamed from: m */
    private int m4535m() {
        try {
            return this.f4032b.get() & 255;
        } catch (Exception e) {
            this.f4033c.f4019b = 1;
            return 0;
        }
    }

    /* renamed from: n */
    private int m4536n() {
        return this.f4032b.getShort();
    }

    /* renamed from: o */
    private boolean m4537o() {
        return this.f4033c.f4019b != 0;
    }
}
