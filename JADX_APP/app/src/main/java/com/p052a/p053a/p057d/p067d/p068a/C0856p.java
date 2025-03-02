package com.p052a.p053a.p057d.p067d.p068a;

import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.a.a.d.d.a.p */
/* loaded from: classes.dex */
public class C0856p extends FilterInputStream {

    /* renamed from: a */
    private volatile byte[] f4644a;

    /* renamed from: b */
    private int f4645b;

    /* renamed from: c */
    private int f4646c;

    /* renamed from: d */
    private int f4647d;

    /* renamed from: e */
    private int f4648e;

    /* renamed from: f */
    private final InterfaceC0762b f4649f;

    public C0856p(InputStream inputStream, InterfaceC0762b interfaceC0762b) {
        this(inputStream, interfaceC0762b, 65536);
    }

    C0856p(InputStream inputStream, InterfaceC0762b interfaceC0762b, int i) {
        super(inputStream);
        this.f4647d = -1;
        this.f4649f = interfaceC0762b;
        this.f4644a = (byte[]) interfaceC0762b.mo4657a(i, byte[].class);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() {
        InputStream inputStream;
        inputStream = this.in;
        if (this.f4644a == null || inputStream == null) {
            throw m5032c();
        }
        return inputStream.available() + (this.f4645b - this.f4648e);
    }

    /* renamed from: c */
    private static IOException m5032c() {
        throw new IOException("BufferedInputStream is closed");
    }

    /* renamed from: a */
    public synchronized void m5033a() {
        this.f4646c = this.f4644a.length;
    }

    /* renamed from: b */
    public synchronized void m5034b() {
        if (this.f4644a != null) {
            this.f4649f.mo4660a((InterfaceC0762b) this.f4644a, (Class<InterfaceC0762b>) byte[].class);
            this.f4644a = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f4644a != null) {
            this.f4649f.mo4660a((InterfaceC0762b) this.f4644a, (Class<InterfaceC0762b>) byte[].class);
            this.f4644a = null;
        }
        InputStream inputStream = this.in;
        this.in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    /* renamed from: a */
    private int m5031a(InputStream inputStream, byte[] bArr) {
        if (this.f4647d == -1 || this.f4648e - this.f4647d >= this.f4646c) {
            int read = inputStream.read(bArr);
            if (read > 0) {
                this.f4647d = -1;
                this.f4648e = 0;
                this.f4645b = read;
                return read;
            }
            return read;
        }
        if (this.f4647d == 0 && this.f4646c > bArr.length && this.f4645b == bArr.length) {
            int length = bArr.length * 2;
            if (length > this.f4646c) {
                length = this.f4646c;
            }
            byte[] bArr2 = (byte[]) this.f4649f.mo4657a(length, byte[].class);
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            this.f4644a = bArr2;
            this.f4649f.mo4660a((InterfaceC0762b) bArr, (Class<InterfaceC0762b>) byte[].class);
            bArr = bArr2;
        } else if (this.f4647d > 0) {
            System.arraycopy(bArr, this.f4647d, bArr, 0, bArr.length - this.f4647d);
        }
        this.f4648e -= this.f4647d;
        this.f4647d = 0;
        this.f4645b = 0;
        int read2 = inputStream.read(bArr, this.f4648e, bArr.length - this.f4648e);
        this.f4645b = read2 <= 0 ? this.f4648e : this.f4648e + read2;
        return read2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        this.f4646c = Math.max(this.f4646c, i);
        this.f4647d = this.f4648e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() {
        int i = -1;
        synchronized (this) {
            byte[] bArr = this.f4644a;
            InputStream inputStream = this.in;
            if (bArr == null || inputStream == null) {
                throw m5032c();
            }
            if (this.f4648e < this.f4645b || m5031a(inputStream, bArr) != -1) {
                if (bArr != this.f4644a && (bArr = this.f4644a) == null) {
                    throw m5032c();
                }
                if (this.f4645b - this.f4648e > 0) {
                    int i2 = this.f4648e;
                    this.f4648e = i2 + 1;
                    i = bArr[i2] & 255;
                }
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0090 A[Catch: all -> 0x000b, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0006, B:7:0x000a, B:13:0x0013, B:15:0x0017, B:16:0x001b, B:17:0x001c, B:19:0x0022, B:22:0x002a, B:24:0x0036, B:26:0x0044, B:28:0x0047, B:30:0x004b, B:32:0x004e, B:45:0x0056, B:34:0x0085, B:36:0x0090, B:46:0x005b, B:62:0x0063, B:48:0x0066, B:50:0x006a, B:53:0x006e, B:54:0x0072, B:55:0x0073, B:58:0x007b, B:59:0x008a, B:64:0x003e), top: B:3:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0088 A[SYNTHETIC] */
    @Override // java.io.FilterInputStream, java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized int read(byte[] r7, int r8, int r9) {
        /*
            r6 = this;
            r0 = -1
            monitor-enter(r6)
            byte[] r2 = r6.f4644a     // Catch: java.lang.Throwable -> Lb
            if (r2 != 0) goto Le
            java.io.IOException r0 = m5032c()     // Catch: java.lang.Throwable -> Lb
            throw r0     // Catch: java.lang.Throwable -> Lb
        Lb:
            r0 = move-exception
            monitor-exit(r6)
            throw r0
        Le:
            if (r9 != 0) goto L13
            r0 = 0
        L11:
            monitor-exit(r6)
            return r0
        L13:
            java.io.InputStream r4 = r6.in     // Catch: java.lang.Throwable -> Lb
            if (r4 != 0) goto L1c
            java.io.IOException r0 = m5032c()     // Catch: java.lang.Throwable -> Lb
            throw r0     // Catch: java.lang.Throwable -> Lb
        L1c:
            int r1 = r6.f4648e     // Catch: java.lang.Throwable -> Lb
            int r3 = r6.f4645b     // Catch: java.lang.Throwable -> Lb
            if (r1 >= r3) goto L59
            int r1 = r6.f4645b     // Catch: java.lang.Throwable -> Lb
            int r3 = r6.f4648e     // Catch: java.lang.Throwable -> Lb
            int r1 = r1 - r3
            if (r1 < r9) goto L3e
            r1 = r9
        L2a:
            int r3 = r6.f4648e     // Catch: java.lang.Throwable -> Lb
            java.lang.System.arraycopy(r2, r3, r7, r8, r1)     // Catch: java.lang.Throwable -> Lb
            int r3 = r6.f4648e     // Catch: java.lang.Throwable -> Lb
            int r3 = r3 + r1
            r6.f4648e = r3     // Catch: java.lang.Throwable -> Lb
            if (r1 == r9) goto L3c
            int r3 = r4.available()     // Catch: java.lang.Throwable -> Lb
            if (r3 != 0) goto L44
        L3c:
            r0 = r1
            goto L11
        L3e:
            int r1 = r6.f4645b     // Catch: java.lang.Throwable -> Lb
            int r3 = r6.f4648e     // Catch: java.lang.Throwable -> Lb
            int r1 = r1 - r3
            goto L2a
        L44:
            int r8 = r8 + r1
            int r3 = r9 - r1
        L47:
            int r1 = r6.f4647d     // Catch: java.lang.Throwable -> Lb
            if (r1 != r0) goto L5b
            int r1 = r2.length     // Catch: java.lang.Throwable -> Lb
            if (r3 < r1) goto L5b
            int r1 = r4.read(r7, r8, r3)     // Catch: java.lang.Throwable -> Lb
            if (r1 != r0) goto L85
            if (r3 == r9) goto L11
            int r0 = r9 - r3
            goto L11
        L59:
            r3 = r9
            goto L47
        L5b:
            int r1 = r6.m5031a(r4, r2)     // Catch: java.lang.Throwable -> Lb
            if (r1 != r0) goto L66
            if (r3 == r9) goto L11
            int r0 = r9 - r3
            goto L11
        L66:
            byte[] r1 = r6.f4644a     // Catch: java.lang.Throwable -> Lb
            if (r2 == r1) goto L73
            byte[] r2 = r6.f4644a     // Catch: java.lang.Throwable -> Lb
            if (r2 != 0) goto L73
            java.io.IOException r0 = m5032c()     // Catch: java.lang.Throwable -> Lb
            throw r0     // Catch: java.lang.Throwable -> Lb
        L73:
            int r1 = r6.f4645b     // Catch: java.lang.Throwable -> Lb
            int r5 = r6.f4648e     // Catch: java.lang.Throwable -> Lb
            int r1 = r1 - r5
            if (r1 < r3) goto L8a
            r1 = r3
        L7b:
            int r5 = r6.f4648e     // Catch: java.lang.Throwable -> Lb
            java.lang.System.arraycopy(r2, r5, r7, r8, r1)     // Catch: java.lang.Throwable -> Lb
            int r5 = r6.f4648e     // Catch: java.lang.Throwable -> Lb
            int r5 = r5 + r1
            r6.f4648e = r5     // Catch: java.lang.Throwable -> Lb
        L85:
            int r3 = r3 - r1
            if (r3 != 0) goto L90
            r0 = r9
            goto L11
        L8a:
            int r1 = r6.f4645b     // Catch: java.lang.Throwable -> Lb
            int r5 = r6.f4648e     // Catch: java.lang.Throwable -> Lb
            int r1 = r1 - r5
            goto L7b
        L90:
            int r5 = r4.available()     // Catch: java.lang.Throwable -> Lb
            if (r5 != 0) goto L9a
            int r0 = r9 - r3
            goto L11
        L9a:
            int r8 = r8 + r1
            goto L47
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p052a.p053a.p057d.p067d.p068a.C0856p.read(byte[], int, int):int");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        if (this.f4644a == null) {
            throw new IOException("Stream is closed");
        }
        if (-1 == this.f4647d) {
            throw new a("Mark has been invalidated, pos: " + this.f4648e + " markLimit: " + this.f4646c);
        }
        this.f4648e = this.f4647d;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) {
        byte[] bArr = this.f4644a;
        InputStream inputStream = this.in;
        if (bArr == null) {
            throw m5032c();
        }
        if (j < 1) {
            j = 0;
        } else {
            if (inputStream == null) {
                throw m5032c();
            }
            if (this.f4645b - this.f4648e >= j) {
                this.f4648e = (int) (this.f4648e + j);
            } else {
                long j2 = this.f4645b - this.f4648e;
                this.f4648e = this.f4645b;
                if (this.f4647d != -1 && j <= this.f4646c) {
                    if (m5031a(inputStream, bArr) == -1) {
                        j = j2;
                    } else if (this.f4645b - this.f4648e >= j - j2) {
                        this.f4648e = (int) ((j - j2) + this.f4648e);
                    } else {
                        j = (j2 + this.f4645b) - this.f4648e;
                        this.f4648e = this.f4645b;
                    }
                } else {
                    j = j2 + inputStream.skip(j - j2);
                }
            }
        }
        return j;
    }

    /* renamed from: com.a.a.d.d.a.p$a */
    public static class a extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        public a(String str) {
            super(str);
        }
    }
}
