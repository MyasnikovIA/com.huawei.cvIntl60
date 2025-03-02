package com.p052a.p053a.p081j;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.a.a.j.a */
/* loaded from: classes.dex */
public final class C0945a {

    /* renamed from: a */
    private static final AtomicReference<byte[]> f4941a = new AtomicReference<>();

    /* renamed from: a */
    public static ByteBuffer m5372a(File file) {
        Throwable th;
        FileChannel fileChannel;
        RandomAccessFile randomAccessFile;
        FileChannel channel;
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IOException("File too large to map into memory");
            }
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                channel = randomAccessFile2.getChannel();
            } catch (Throwable th2) {
                th = th2;
                fileChannel = null;
                randomAccessFile = randomAccessFile2;
            }
            try {
                MappedByteBuffer load = channel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException e) {
                    }
                }
                if (randomAccessFile2 != null) {
                    try {
                        randomAccessFile2.close();
                    } catch (IOException e2) {
                    }
                }
                return load;
            } catch (Throwable th3) {
                th = th3;
                fileChannel = channel;
                randomAccessFile = randomAccessFile2;
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException e3) {
                    }
                }
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                        throw th;
                    } catch (IOException e4) {
                        throw th;
                    }
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            fileChannel = null;
            randomAccessFile = null;
        }
    }

    /* renamed from: a */
    public static void m5373a(ByteBuffer byteBuffer, File file) {
        FileChannel fileChannel;
        RandomAccessFile randomAccessFile;
        byteBuffer.position(0);
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                fileChannel = randomAccessFile.getChannel();
            } catch (Throwable th) {
                th = th;
                fileChannel = null;
            }
        } catch (Throwable th2) {
            th = th2;
            fileChannel = null;
            randomAccessFile = null;
        }
        try {
            fileChannel.write(byteBuffer);
            fileChannel.force(false);
            fileChannel.close();
            randomAccessFile.close();
            if (fileChannel != null) {
                try {
                    fileChannel.close();
                } catch (IOException e) {
                }
            }
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (IOException e2) {
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (fileChannel != null) {
                try {
                    fileChannel.close();
                } catch (IOException e3) {
                }
            }
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException e4) {
                    throw th;
                }
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static byte[] m5374a(ByteBuffer byteBuffer) {
        b m5376c = m5376c(byteBuffer);
        if (m5376c != null && m5376c.f4948a == 0 && m5376c.f4949b == m5376c.f4950c.length) {
            return byteBuffer.array();
        }
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[asReadOnlyBuffer.limit()];
        asReadOnlyBuffer.position(0);
        asReadOnlyBuffer.get(bArr);
        return bArr;
    }

    /* renamed from: b */
    public static InputStream m5375b(ByteBuffer byteBuffer) {
        return new a(byteBuffer);
    }

    /* renamed from: c */
    private static b m5376c(ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    /* renamed from: com.a.a.j.a$b */
    static final class b {

        /* renamed from: a */
        final int f4948a;

        /* renamed from: b */
        final int f4949b;

        /* renamed from: c */
        final byte[] f4950c;

        public b(byte[] bArr, int i, int i2) {
            this.f4950c = bArr;
            this.f4948a = i;
            this.f4949b = i2;
        }
    }

    /* renamed from: com.a.a.j.a$a */
    private static class a extends InputStream {

        /* renamed from: a */
        private final ByteBuffer f4942a;

        /* renamed from: b */
        private int f4943b = -1;

        public a(ByteBuffer byteBuffer) {
            this.f4942a = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f4942a.remaining();
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f4942a.hasRemaining()) {
                return this.f4942a.get();
            }
            return -1;
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i) {
            this.f4943b = this.f4942a.position();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            if (!this.f4942a.hasRemaining()) {
                return -1;
            }
            int min = Math.min(i2, available());
            this.f4942a.get(bArr, i, min);
            return min;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            if (this.f4943b == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.f4942a.position(this.f4943b);
        }

        @Override // java.io.InputStream
        public long skip(long j) {
            if (!this.f4942a.hasRemaining()) {
                return -1L;
            }
            long min = Math.min(j, available());
            this.f4942a.position((int) (this.f4942a.position() + min));
            return min;
        }
    }
}
