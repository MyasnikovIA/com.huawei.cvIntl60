package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.chunk.ChunkExtractorWrapper;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.DefaultExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;

/* loaded from: classes.dex */
public class InitializationChunk extends Chunk implements ChunkExtractorWrapper.SingleTrackOutput {
    private volatile int bytesLoaded;
    private DrmInitData drmInitData;
    private final ChunkExtractorWrapper extractorWrapper;
    private volatile boolean loadCanceled;
    private MediaFormat mediaFormat;
    private SeekMap seekMap;

    public InitializationChunk(DataSource dataSource, DataSpec dataSpec, int i, Format format, ChunkExtractorWrapper chunkExtractorWrapper) {
        this(dataSource, dataSpec, i, format, chunkExtractorWrapper, -1);
    }

    public InitializationChunk(DataSource dataSource, DataSpec dataSpec, int i, Format format, ChunkExtractorWrapper chunkExtractorWrapper, int i2) {
        super(dataSource, dataSpec, 2, i, format, i2);
        this.extractorWrapper = chunkExtractorWrapper;
    }

    @Override // com.google.android.exoplayer.chunk.Chunk
    public long bytesLoaded() {
        return this.bytesLoaded;
    }

    public boolean hasFormat() {
        return this.mediaFormat != null;
    }

    public MediaFormat getFormat() {
        return this.mediaFormat;
    }

    public boolean hasDrmInitData() {
        return this.drmInitData != null;
    }

    public DrmInitData getDrmInitData() {
        return this.drmInitData;
    }

    public boolean hasSeekMap() {
        return this.seekMap != null;
    }

    public SeekMap getSeekMap() {
        return this.seekMap;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkExtractorWrapper.SingleTrackOutput
    public void seekMap(SeekMap seekMap) {
        this.seekMap = seekMap;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkExtractorWrapper.SingleTrackOutput
    public void drmInitData(DrmInitData drmInitData) {
        this.drmInitData = drmInitData;
    }

    @Override // com.google.android.exoplayer.extractor.TrackOutput
    public void format(MediaFormat mediaFormat) {
        this.mediaFormat = mediaFormat;
    }

    @Override // com.google.android.exoplayer.extractor.TrackOutput
    public int sampleData(ExtractorInput extractorInput, int i, boolean z) {
        throw new IllegalStateException("Unexpected sample data in initialization chunk");
    }

    @Override // com.google.android.exoplayer.extractor.TrackOutput
    public void sampleData(ParsableByteArray parsableByteArray, int i) {
        throw new IllegalStateException("Unexpected sample data in initialization chunk");
    }

    @Override // com.google.android.exoplayer.extractor.TrackOutput
    public void sampleMetadata(long j, int i, int i2, int i3, byte[] bArr) {
        throw new IllegalStateException("Unexpected sample data in initialization chunk");
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
        DataSpec remainderDataSpec = Util.getRemainderDataSpec(this.dataSpec, this.bytesLoaded);
        try {
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(this.dataSource, remainderDataSpec.absoluteStreamPosition, this.dataSource.open(remainderDataSpec));
            if (this.bytesLoaded == 0) {
                this.extractorWrapper.init(this);
            }
            int i = 0;
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
        } finally {
            this.dataSource.close();
        }
    }
}
