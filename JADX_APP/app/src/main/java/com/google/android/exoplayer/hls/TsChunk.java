package com.google.android.exoplayer.hls;

import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.MediaChunk;
import com.google.android.exoplayer.extractor.DefaultExtractorInput;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.Util;

/* loaded from: classes.dex */
public final class TsChunk extends MediaChunk {
    private long adjustedEndTimeUs;
    private int bytesLoaded;
    public final int discontinuitySequenceNumber;
    public final HlsExtractorWrapper extractorWrapper;
    private final boolean isEncrypted;
    private volatile boolean loadCanceled;

    public TsChunk(DataSource dataSource, DataSpec dataSpec, int i, Format format, long j, long j2, int i2, int i3, HlsExtractorWrapper hlsExtractorWrapper, byte[] bArr, byte[] bArr2) {
        super(buildDataSource(dataSource, bArr, bArr2), dataSpec, i, format, j, j2, i2);
        this.discontinuitySequenceNumber = i3;
        this.extractorWrapper = hlsExtractorWrapper;
        this.isEncrypted = this.dataSource instanceof Aes128DataSource;
        this.adjustedEndTimeUs = j;
    }

    @Override // com.google.android.exoplayer.chunk.Chunk
    public long bytesLoaded() {
        return this.bytesLoaded;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public void cancelLoad() {
        this.loadCanceled = true;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public boolean isLoadCanceled() {
        return this.loadCanceled;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Loadable
    public void load() {
        boolean z;
        DataSpec remainderDataSpec;
        int i = 0;
        if (this.isEncrypted) {
            DataSpec dataSpec = this.dataSpec;
            z = this.bytesLoaded != 0;
            remainderDataSpec = dataSpec;
        } else {
            z = false;
            remainderDataSpec = Util.getRemainderDataSpec(this.dataSpec, this.bytesLoaded);
        }
        try {
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(this.dataSource, remainderDataSpec.absoluteStreamPosition, this.dataSource.open(remainderDataSpec));
            if (z) {
                defaultExtractorInput.skipFully(this.bytesLoaded);
            }
            while (i == 0) {
                try {
                    if (this.loadCanceled) {
                        break;
                    } else {
                        i = this.extractorWrapper.read(defaultExtractorInput);
                    }
                } finally {
                    this.bytesLoaded = (int) (defaultExtractorInput.getPosition() - this.dataSpec.absoluteStreamPosition);
                }
            }
            long adjustedEndTimeUs = this.extractorWrapper.getAdjustedEndTimeUs();
            if (adjustedEndTimeUs != Long.MIN_VALUE) {
                this.adjustedEndTimeUs = adjustedEndTimeUs;
            }
        } finally {
            this.dataSource.close();
        }
    }

    public long getAdjustedEndTimeUs() {
        return this.adjustedEndTimeUs;
    }

    private static DataSource buildDataSource(DataSource dataSource, byte[] bArr, byte[] bArr2) {
        return (bArr == null || bArr2 == null) ? dataSource : new Aes128DataSource(dataSource, bArr, bArr2);
    }
}
