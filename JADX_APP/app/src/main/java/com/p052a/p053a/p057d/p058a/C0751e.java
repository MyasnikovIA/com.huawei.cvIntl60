package com.p052a.p053a.p057d.p058a;

import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import java.io.FilterInputStream;
import java.io.InputStream;

/* renamed from: com.a.a.d.a.e */
/* loaded from: classes.dex */
public final class C0751e extends FilterInputStream {

    /* renamed from: a */
    private static final byte[] f4176a = {-1, -31, 0, ClosedCaptionCtrl.MISC_CHAN_2, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* renamed from: b */
    private static final int f4177b = f4176a.length;

    /* renamed from: c */
    private static final int f4178c = f4177b + 2;

    /* renamed from: d */
    private final byte f4179d;

    /* renamed from: e */
    private int f4180e;

    public C0751e(InputStream inputStream, int i) {
        super(inputStream);
        if (i < -1 || i > 8) {
            throw new IllegalArgumentException("Cannot add invalid orientation: " + i);
        }
        this.f4179d = (byte) i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int read;
        if (this.f4180e < 2 || this.f4180e > f4178c) {
            read = super.read();
        } else if (this.f4180e == f4178c) {
            read = this.f4179d;
        } else {
            read = f4176a[this.f4180e - 2] & 255;
        }
        if (read != -1) {
            this.f4180e++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int min;
        if (this.f4180e > f4178c) {
            min = super.read(bArr, i, i2);
        } else if (this.f4180e == f4178c) {
            bArr[i] = this.f4179d;
            min = 1;
        } else if (this.f4180e < 2) {
            min = super.read(bArr, i, 2 - this.f4180e);
        } else {
            min = Math.min(f4178c - this.f4180e, i2);
            System.arraycopy(f4176a, this.f4180e - 2, bArr, i, min);
        }
        if (min > 0) {
            this.f4180e += min;
        }
        return min;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        long skip = super.skip(j);
        if (skip > 0) {
            this.f4180e = (int) (this.f4180e + skip);
        }
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        throw new UnsupportedOperationException();
    }
}
