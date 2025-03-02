package com.p052a.p053a.p081j;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* renamed from: com.a.a.j.c */
/* loaded from: classes.dex */
public class C0949c extends InputStream {

    /* renamed from: a */
    private static final Queue<C0949c> f4955a = C0955i.m5424a(0);

    /* renamed from: b */
    private InputStream f4956b;

    /* renamed from: c */
    private IOException f4957c;

    /* renamed from: a */
    public static C0949c m5392a(InputStream inputStream) {
        C0949c poll;
        synchronized (f4955a) {
            poll = f4955a.poll();
        }
        if (poll == null) {
            poll = new C0949c();
        }
        poll.m5395b(inputStream);
        return poll;
    }

    C0949c() {
    }

    /* renamed from: b */
    void m5395b(InputStream inputStream) {
        this.f4956b = inputStream;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f4956b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f4956b.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f4956b.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f4956b.markSupported();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.f4956b.read(bArr);
        } catch (IOException e) {
            this.f4957c = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        try {
            return this.f4956b.read(bArr, i, i2);
        } catch (IOException e) {
            this.f4957c = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
        this.f4956b.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        try {
            return this.f4956b.skip(j);
        } catch (IOException e) {
            this.f4957c = e;
            return 0L;
        }
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.f4956b.read();
        } catch (IOException e) {
            this.f4957c = e;
            return -1;
        }
    }

    /* renamed from: a */
    public IOException m5393a() {
        return this.f4957c;
    }

    /* renamed from: b */
    public void m5394b() {
        this.f4957c = null;
        this.f4956b = null;
        synchronized (f4955a) {
            f4955a.offer(this);
        }
    }
}
