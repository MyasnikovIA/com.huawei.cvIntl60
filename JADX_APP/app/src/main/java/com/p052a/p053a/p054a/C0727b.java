package com.p052a.p053a.p054a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* renamed from: com.a.a.a.b */
/* loaded from: classes.dex */
class C0727b implements Closeable {

    /* renamed from: a */
    private final InputStream f3999a;

    /* renamed from: b */
    private final Charset f4000b;

    /* renamed from: c */
    private byte[] f4001c;

    /* renamed from: d */
    private int f4002d;

    /* renamed from: e */
    private int f4003e;

    public C0727b(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    public C0727b(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(C0728c.f4005a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f3999a = inputStream;
        this.f4000b = charset;
        this.f4001c = new byte[i];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f3999a) {
            if (this.f4001c != null) {
                this.f4001c = null;
                this.f3999a.close();
            }
        }
    }

    /* renamed from: a */
    public String m4500a() {
        int i;
        String byteArrayOutputStream;
        synchronized (this.f3999a) {
            if (this.f4001c == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.f4002d >= this.f4003e) {
                m4499c();
            }
            int i2 = this.f4002d;
            while (true) {
                if (i2 != this.f4003e) {
                    if (this.f4001c[i2] != 10) {
                        i2++;
                    } else {
                        byteArrayOutputStream = new String(this.f4001c, this.f4002d, ((i2 == this.f4002d || this.f4001c[i2 + (-1)] != 13) ? i2 : i2 - 1) - this.f4002d, this.f4000b.name());
                        this.f4002d = i2 + 1;
                    }
                } else {
                    AnonymousClass1 anonymousClass1 = new ByteArrayOutputStream((this.f4003e - this.f4002d) + 80) { // from class: com.a.a.a.b.1
                        AnonymousClass1(int i3) {
                            super(i3);
                        }

                        @Override // java.io.ByteArrayOutputStream
                        public String toString() {
                            try {
                                return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count + (-1)] != 13) ? this.count : this.count - 1, C0727b.this.f4000b.name());
                            } catch (UnsupportedEncodingException e) {
                                throw new AssertionError(e);
                            }
                        }
                    };
                    loop1: while (true) {
                        anonymousClass1.write(this.f4001c, this.f4002d, this.f4003e - this.f4002d);
                        this.f4003e = -1;
                        m4499c();
                        i = this.f4002d;
                        while (i != this.f4003e) {
                            if (this.f4001c[i] == 10) {
                                break loop1;
                            }
                            i++;
                        }
                    }
                    if (i != this.f4002d) {
                        anonymousClass1.write(this.f4001c, this.f4002d, i - this.f4002d);
                    }
                    this.f4002d = i + 1;
                    byteArrayOutputStream = anonymousClass1.toString();
                }
            }
            return byteArrayOutputStream;
        }
    }

    /* renamed from: com.a.a.a.b$1 */
    class AnonymousClass1 extends ByteArrayOutputStream {
        AnonymousClass1(int i3) {
            super(i3);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            try {
                return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count + (-1)] != 13) ? this.count : this.count - 1, C0727b.this.f4000b.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* renamed from: b */
    public boolean m4501b() {
        return this.f4003e == -1;
    }

    /* renamed from: c */
    private void m4499c() {
        int read = this.f3999a.read(this.f4001c, 0, this.f4001c.length);
        if (read == -1) {
            throw new EOFException();
        }
        this.f4002d = 0;
        this.f4003e = read;
    }
}
