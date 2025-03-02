package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;

/* loaded from: classes.dex */
public final class ByteArrayDataSource implements DataSource {
    private final byte[] data;
    private int readPosition;
    private int remainingBytes;

    public ByteArrayDataSource(byte[] bArr) {
        Assertions.checkNotNull(bArr);
        Assertions.checkArgument(bArr.length > 0);
        this.data = bArr;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public long open(DataSpec dataSpec) {
        this.readPosition = (int) dataSpec.position;
        this.remainingBytes = (int) (dataSpec.length == -1 ? this.data.length - dataSpec.position : dataSpec.length);
        if (this.remainingBytes <= 0 || this.readPosition + this.remainingBytes > this.data.length) {
            throw new IOException("Unsatisfiable range: [" + this.readPosition + ", " + dataSpec.length + "], length: " + this.data.length);
        }
        return this.remainingBytes;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public void close() {
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) {
        if (this.remainingBytes == 0) {
            return -1;
        }
        int min = Math.min(i2, this.remainingBytes);
        System.arraycopy(this.data, this.readPosition, bArr, i, min);
        this.readPosition += min;
        this.remainingBytes -= min;
        return min;
    }
}
