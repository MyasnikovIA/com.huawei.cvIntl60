package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;
import java.io.ByteArrayOutputStream;

/* loaded from: classes.dex */
public final class ByteArrayDataSink implements DataSink {
    private ByteArrayOutputStream stream;

    @Override // com.google.android.exoplayer.upstream.DataSink
    public DataSink open(DataSpec dataSpec) {
        if (dataSpec.length == -1) {
            this.stream = new ByteArrayOutputStream();
        } else {
            Assertions.checkArgument(dataSpec.length <= 2147483647L);
            this.stream = new ByteArrayOutputStream((int) dataSpec.length);
        }
        return this;
    }

    @Override // com.google.android.exoplayer.upstream.DataSink
    public void close() {
        this.stream.close();
    }

    @Override // com.google.android.exoplayer.upstream.DataSink
    public void write(byte[] bArr, int i, int i2) {
        this.stream.write(bArr, i, i2);
    }

    public byte[] getData() {
        if (this.stream == null) {
            return null;
        }
        return this.stream.toByteArray();
    }
}
