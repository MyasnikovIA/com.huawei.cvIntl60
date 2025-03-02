package com.p052a.p053a.p081j;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.a.a.j.b */
/* loaded from: classes.dex */
public final class C0948b extends FilterInputStream {

    /* renamed from: a */
    private final long f4952a;

    /* renamed from: b */
    private int f4953b;

    /* renamed from: a */
    public static InputStream m5391a(InputStream inputStream, long j) {
        return new C0948b(inputStream, j);
    }

    C0948b(InputStream inputStream, long j) {
        super(inputStream);
        this.f4952a = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() {
        return (int) Math.max(this.f4952a - this.f4953b, this.in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() {
        int read;
        read = super.read();
        m5390a(read >= 0 ? 1 : -1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) {
        return m5390a(super.read(bArr, i, i2));
    }

    /* renamed from: a */
    private int m5390a(int i) {
        if (i >= 0) {
            this.f4953b += i;
        } else if (this.f4952a - this.f4953b > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f4952a + ", but read: " + this.f4953b);
        }
        return i;
    }
}
