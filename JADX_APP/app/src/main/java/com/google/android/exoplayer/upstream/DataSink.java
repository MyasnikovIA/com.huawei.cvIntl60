package com.google.android.exoplayer.upstream;

/* loaded from: classes.dex */
public interface DataSink {
    void close();

    DataSink open(DataSpec dataSpec);

    void write(byte[] bArr, int i, int i2);
}
