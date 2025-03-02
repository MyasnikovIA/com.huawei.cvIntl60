package com.google.android.exoplayer.upstream;

/* loaded from: classes.dex */
public interface DataSource {
    void close();

    long open(DataSpec dataSpec);

    int read(byte[] bArr, int i, int i2);
}
