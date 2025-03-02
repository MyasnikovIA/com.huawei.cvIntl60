package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.util.Assertions;

/* loaded from: classes.dex */
public final class TeeDataSource implements DataSource {
    private final DataSink dataSink;
    private final DataSource upstream;

    public TeeDataSource(DataSource dataSource, DataSink dataSink) {
        this.upstream = (DataSource) Assertions.checkNotNull(dataSource);
        this.dataSink = (DataSink) Assertions.checkNotNull(dataSink);
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public long open(DataSpec dataSpec) {
        long open = this.upstream.open(dataSpec);
        if (dataSpec.length == -1 && open != -1) {
            dataSpec = new DataSpec(dataSpec.uri, dataSpec.absoluteStreamPosition, dataSpec.position, open, dataSpec.key, dataSpec.flags);
        }
        this.dataSink.open(dataSpec);
        return open;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) {
        int read = this.upstream.read(bArr, i, i2);
        if (read > 0) {
            this.dataSink.write(bArr, i, read);
        }
        return read;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public void close() {
        try {
            this.upstream.close();
        } finally {
            this.dataSink.close();
        }
    }
}
