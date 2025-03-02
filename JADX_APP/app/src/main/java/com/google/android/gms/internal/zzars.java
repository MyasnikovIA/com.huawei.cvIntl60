package com.google.android.gms.internal;

import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;

/* loaded from: classes.dex */
public final class zzars {
    private int btA;
    private int btC;
    private int btw;
    private int btx;
    private int bty;
    private int btz;
    private final byte[] buffer;
    private int btB = Integer.MAX_VALUE;
    private int btD = 64;
    private int btE = 67108864;

    private zzars(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.btw = i;
        this.btx = i + i2;
        this.btz = i;
    }

    /* renamed from: ch */
    private void m6645ch() {
        this.btx += this.bty;
        int i = this.btx;
        if (i <= this.btB) {
            this.bty = 0;
        } else {
            this.bty = i - this.btB;
            this.btx -= this.bty;
        }
    }

    public static int zzags(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    public static zzars zzb(byte[] bArr, int i, int i2) {
        return new zzars(bArr, i, i2);
    }

    public static zzars zzbd(byte[] bArr) {
        return zzb(bArr, 0, bArr.length);
    }

    public static long zzct(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    /* renamed from: bU */
    public int m6646bU() {
        if (m6660cj()) {
            this.btA = 0;
            return 0;
        }
        this.btA = m6655cd();
        if (this.btA == 0) {
            throw zzarz.m6671cu();
        }
        return this.btA;
    }

    /* renamed from: bV */
    public void m6647bV() {
        int m6646bU;
        do {
            m6646bU = m6646bU();
            if (m6646bU == 0) {
                return;
            }
        } while (zzagr(m6646bU));
    }

    /* renamed from: bW */
    public long m6648bW() {
        return m6656ce();
    }

    /* renamed from: bX */
    public long m6649bX() {
        return m6656ce();
    }

    /* renamed from: bY */
    public int m6650bY() {
        return m6655cd();
    }

    /* renamed from: bZ */
    public long m6651bZ() {
        return m6658cg();
    }

    /* renamed from: ca */
    public boolean m6652ca() {
        return m6655cd() != 0;
    }

    /* renamed from: cb */
    public int m6653cb() {
        return zzags(m6655cd());
    }

    /* renamed from: cc */
    public long m6654cc() {
        return zzct(m6656ce());
    }

    /* renamed from: cd */
    public int m6655cd() {
        byte m6661ck = m6661ck();
        if (m6661ck >= 0) {
            return m6661ck;
        }
        int i = m6661ck & Byte.MAX_VALUE;
        byte m6661ck2 = m6661ck();
        if (m6661ck2 >= 0) {
            return i | (m6661ck2 << 7);
        }
        int i2 = i | ((m6661ck2 & Byte.MAX_VALUE) << 7);
        byte m6661ck3 = m6661ck();
        if (m6661ck3 >= 0) {
            return i2 | (m6661ck3 << 14);
        }
        int i3 = i2 | ((m6661ck3 & Byte.MAX_VALUE) << 14);
        byte m6661ck4 = m6661ck();
        if (m6661ck4 >= 0) {
            return i3 | (m6661ck4 << 21);
        }
        int i4 = i3 | ((m6661ck4 & Byte.MAX_VALUE) << 21);
        byte m6661ck5 = m6661ck();
        int i5 = i4 | (m6661ck5 << ClosedCaptionCtrl.MISC_CHAN_2);
        if (m6661ck5 >= 0) {
            return i5;
        }
        for (int i6 = 0; i6 < 5; i6++) {
            if (m6661ck() >= 0) {
                return i5;
            }
        }
        throw zzarz.m6670ct();
    }

    /* renamed from: ce */
    public long m6656ce() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((m6661ck() & 128) == 0) {
                return j;
            }
        }
        throw zzarz.m6670ct();
    }

    /* renamed from: cf */
    public int m6657cf() {
        return (m6661ck() & 255) | ((m6661ck() & 255) << 8) | ((m6661ck() & 255) << 16) | ((m6661ck() & 255) << 24);
    }

    /* renamed from: cg */
    public long m6658cg() {
        return ((m6661ck() & 255) << 8) | (m6661ck() & 255) | ((m6661ck() & 255) << 16) | ((m6661ck() & 255) << 24) | ((m6661ck() & 255) << 32) | ((m6661ck() & 255) << 40) | ((m6661ck() & 255) << 48) | ((m6661ck() & 255) << 56);
    }

    /* renamed from: ci */
    public int m6659ci() {
        if (this.btB == Integer.MAX_VALUE) {
            return -1;
        }
        return this.btB - this.btz;
    }

    /* renamed from: cj */
    public boolean m6660cj() {
        return this.btz == this.btx;
    }

    /* renamed from: ck */
    public byte m6661ck() {
        if (this.btz == this.btx) {
            throw zzarz.m6668cr();
        }
        byte[] bArr = this.buffer;
        int i = this.btz;
        this.btz = i + 1;
        return bArr[i];
    }

    public int getPosition() {
        return this.btz - this.btw;
    }

    public byte[] readBytes() {
        int m6655cd = m6655cd();
        if (m6655cd < 0) {
            throw zzarz.m6669cs();
        }
        if (m6655cd == 0) {
            return zzasd.btY;
        }
        if (m6655cd > this.btx - this.btz) {
            throw zzarz.m6668cr();
        }
        byte[] bArr = new byte[m6655cd];
        System.arraycopy(this.buffer, this.btz, bArr, 0, m6655cd);
        this.btz = m6655cd + this.btz;
        return bArr;
    }

    public double readDouble() {
        return Double.longBitsToDouble(m6658cg());
    }

    public float readFloat() {
        return Float.intBitsToFloat(m6657cf());
    }

    public String readString() {
        int m6655cd = m6655cd();
        if (m6655cd < 0) {
            throw zzarz.m6669cs();
        }
        if (m6655cd > this.btx - this.btz) {
            throw zzarz.m6668cr();
        }
        String str = new String(this.buffer, this.btz, m6655cd, zzary.UTF_8);
        this.btz = m6655cd + this.btz;
        return str;
    }

    public void zza(zzasa zzasaVar) {
        int m6655cd = m6655cd();
        if (this.btC >= this.btD) {
            throw zzarz.m6674cx();
        }
        int zzagt = zzagt(m6655cd);
        this.btC++;
        zzasaVar.zzb(this);
        zzagq(0);
        this.btC--;
        zzagu(zzagt);
    }

    public void zza(zzasa zzasaVar, int i) {
        if (this.btC >= this.btD) {
            throw zzarz.m6674cx();
        }
        this.btC++;
        zzasaVar.zzb(this);
        zzagq(zzasd.zzak(i, 4));
        this.btC--;
    }

    public byte[] zzae(int i, int i2) {
        if (i2 == 0) {
            return zzasd.btY;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.buffer, this.btw + i, bArr, 0, i2);
        return bArr;
    }

    public void zzagq(int i) {
        if (this.btA != i) {
            throw zzarz.m6672cv();
        }
    }

    public boolean zzagr(int i) {
        switch (zzasd.zzahk(i)) {
            case 0:
                m6650bY();
                return true;
            case 1:
                m6658cg();
                return true;
            case 2:
                zzagw(m6655cd());
                return true;
            case 3:
                m6647bV();
                zzagq(zzasd.zzak(zzasd.zzahl(i), 4));
                return true;
            case 4:
                return false;
            case 5:
                m6657cf();
                return true;
            default:
                throw zzarz.m6673cw();
        }
    }

    public int zzagt(int i) {
        if (i < 0) {
            throw zzarz.m6669cs();
        }
        int i2 = this.btz + i;
        int i3 = this.btB;
        if (i2 > i3) {
            throw zzarz.m6668cr();
        }
        this.btB = i2;
        m6645ch();
        return i3;
    }

    public void zzagu(int i) {
        this.btB = i;
        m6645ch();
    }

    public void zzagv(int i) {
        if (i > this.btz - this.btw) {
            throw new IllegalArgumentException(new StringBuilder(50).append("Position ").append(i).append(" is beyond current ").append(this.btz - this.btw).toString());
        }
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuilder(24).append("Bad position ").append(i).toString());
        }
        this.btz = this.btw + i;
    }

    public void zzagw(int i) {
        if (i < 0) {
            throw zzarz.m6669cs();
        }
        if (this.btz + i > this.btB) {
            zzagw(this.btB - this.btz);
            throw zzarz.m6668cr();
        }
        if (i > this.btx - this.btz) {
            throw zzarz.m6668cr();
        }
        this.btz += i;
    }
}
