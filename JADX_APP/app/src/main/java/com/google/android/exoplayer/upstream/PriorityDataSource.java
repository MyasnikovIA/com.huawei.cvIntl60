package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;

/* loaded from: classes.dex */
public final class PriorityDataSource implements DataSource {
    private final int priority;
    private final DataSource upstream;

    public PriorityDataSource(int i, DataSource dataSource) {
        this.priority = i;
        this.upstream = (DataSource) Assertions.checkNotNull(dataSource);
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public long open(DataSpec dataSpec) {
        NetworkLock.instance.proceedOrThrow(this.priority);
        return this.upstream.open(dataSpec);
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) {
        NetworkLock.instance.proceedOrThrow(this.priority);
        return this.upstream.read(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public void close() {
        this.upstream.close();
    }
}
