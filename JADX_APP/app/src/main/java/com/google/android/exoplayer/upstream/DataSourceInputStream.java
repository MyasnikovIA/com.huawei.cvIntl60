package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class DataSourceInputStream extends InputStream {
    private final DataSource dataSource;
    private final DataSpec dataSpec;
    private boolean opened = false;
    private boolean closed = false;
    private final byte[] singleByteArray = new byte[1];

    public DataSourceInputStream(DataSource dataSource, DataSpec dataSpec) {
        this.dataSource = dataSource;
        this.dataSpec = dataSpec;
    }

    public void open() {
        checkOpened();
    }

    @Override // java.io.InputStream
    public int read() {
        if (read(this.singleByteArray) == -1) {
            return -1;
        }
        return this.singleByteArray[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        Assertions.checkState(!this.closed);
        checkOpened();
        return this.dataSource.read(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        Assertions.checkState(!this.closed);
        checkOpened();
        return super.skip(j);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.closed) {
            this.dataSource.close();
            this.closed = true;
        }
    }

    private void checkOpened() {
        if (!this.opened) {
            this.dataSource.open(this.dataSpec);
            this.opened = true;
        }
    }
}
