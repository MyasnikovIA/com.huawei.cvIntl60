package com.p052a.p053a.p081j;

import java.io.FilterInputStream;
import java.io.InputStream;

/* renamed from: com.a.a.j.f */
/* loaded from: classes.dex */
public class C0952f extends FilterInputStream {

    /* renamed from: a */
    private int f4963a;

    public C0952f(InputStream inputStream) {
        super(inputStream);
        this.f4963a = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        super.mark(i);
        this.f4963a = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        if (m5405a(1L) == -1) {
            return -1;
        }
        int read = super.read();
        m5406b(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int m5405a = (int) m5405a(i2);
        if (m5405a == -1) {
            return -1;
        }
        int read = super.read(bArr, i, m5405a);
        m5406b(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        super.reset();
        this.f4963a = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        long m5405a = m5405a(j);
        if (m5405a == -1) {
            return -1L;
        }
        long skip = super.skip(m5405a);
        m5406b(skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        return this.f4963a == Integer.MIN_VALUE ? super.available() : Math.min(this.f4963a, super.available());
    }

    /* renamed from: a */
    private long m5405a(long j) {
        if (this.f4963a == 0) {
            return -1L;
        }
        if (this.f4963a != Integer.MIN_VALUE && j > this.f4963a) {
            return this.f4963a;
        }
        return j;
    }

    /* renamed from: b */
    private void m5406b(long j) {
        if (this.f4963a != Integer.MIN_VALUE && j != -1) {
            this.f4963a = (int) (this.f4963a - j);
        }
    }
}
