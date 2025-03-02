package com.google.android.exoplayer.hls;

import android.util.SparseArray;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.DefaultTrackOutput;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;

/* loaded from: classes.dex */
public final class HlsExtractorWrapper implements ExtractorOutput {
    private final int adaptiveMaxHeight;
    private final int adaptiveMaxWidth;
    private Allocator allocator;
    private final Extractor extractor;
    public final Format format;
    private boolean prepared;
    private MediaFormat[] sampleQueueFormats;
    private final SparseArray<DefaultTrackOutput> sampleQueues = new SparseArray<>();
    private final boolean shouldSpliceIn;
    private boolean spliceConfigured;
    public final long startTimeUs;
    private volatile boolean tracksBuilt;
    public final int trigger;

    public HlsExtractorWrapper(int i, Format format, long j, Extractor extractor, boolean z, int i2, int i3) {
        this.trigger = i;
        this.format = format;
        this.startTimeUs = j;
        this.extractor = extractor;
        this.shouldSpliceIn = z;
        this.adaptiveMaxWidth = i2;
        this.adaptiveMaxHeight = i3;
    }

    public void init(Allocator allocator) {
        this.allocator = allocator;
        this.extractor.init(this);
    }

    public boolean isPrepared() {
        if (!this.prepared && this.tracksBuilt) {
            for (int i = 0; i < this.sampleQueues.size(); i++) {
                if (!this.sampleQueues.valueAt(i).hasFormat()) {
                    return false;
                }
            }
            this.prepared = true;
            this.sampleQueueFormats = new MediaFormat[this.sampleQueues.size()];
            for (int i2 = 0; i2 < this.sampleQueueFormats.length; i2++) {
                MediaFormat format = this.sampleQueues.valueAt(i2).getFormat();
                if (MimeTypes.isVideo(format.mimeType) && (this.adaptiveMaxWidth != -1 || this.adaptiveMaxHeight != -1)) {
                    format = format.copyWithMaxVideoDimensions(this.adaptiveMaxWidth, this.adaptiveMaxHeight);
                }
                this.sampleQueueFormats[i2] = format;
            }
        }
        return this.prepared;
    }

    public void clear() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.sampleQueues.size()) {
                this.sampleQueues.valueAt(i2).clear();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public long getLargestParsedTimestampUs() {
        long j = Long.MIN_VALUE;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.sampleQueues.size()) {
                j = Math.max(j, this.sampleQueues.valueAt(i2).getLargestParsedTimestampUs());
                i = i2 + 1;
            } else {
                return j;
            }
        }
    }

    public final void configureSpliceTo(HlsExtractorWrapper hlsExtractorWrapper) {
        Assertions.checkState(isPrepared());
        if (!this.spliceConfigured && hlsExtractorWrapper.shouldSpliceIn && hlsExtractorWrapper.isPrepared()) {
            int trackCount = getTrackCount();
            int i = 0;
            boolean z = true;
            while (i < trackCount) {
                boolean configureSpliceTo = z & this.sampleQueues.valueAt(i).configureSpliceTo(hlsExtractorWrapper.sampleQueues.valueAt(i));
                i++;
                z = configureSpliceTo;
            }
            this.spliceConfigured = z;
        }
    }

    public int getTrackCount() {
        Assertions.checkState(isPrepared());
        return this.sampleQueues.size();
    }

    public MediaFormat getMediaFormat(int i) {
        Assertions.checkState(isPrepared());
        return this.sampleQueueFormats[i];
    }

    public boolean getSample(int i, SampleHolder sampleHolder) {
        Assertions.checkState(isPrepared());
        return this.sampleQueues.valueAt(i).getSample(sampleHolder);
    }

    public void discardUntil(int i, long j) {
        Assertions.checkState(isPrepared());
        this.sampleQueues.valueAt(i).discardUntil(j);
    }

    public boolean hasSamples(int i) {
        Assertions.checkState(isPrepared());
        return !this.sampleQueues.valueAt(i).isEmpty();
    }

    public int read(ExtractorInput extractorInput) {
        int read = this.extractor.read(extractorInput, null);
        Assertions.checkState(read != 1);
        return read;
    }

    public long getAdjustedEndTimeUs() {
        long j = Long.MIN_VALUE;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.sampleQueues.size()) {
                j = Math.max(j, this.sampleQueues.valueAt(i2).getLargestParsedTimestampUs());
                i = i2 + 1;
            } else {
                return j;
            }
        }
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorOutput
    public TrackOutput track(int i) {
        DefaultTrackOutput defaultTrackOutput = new DefaultTrackOutput(this.allocator);
        this.sampleQueues.put(i, defaultTrackOutput);
        return defaultTrackOutput;
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorOutput
    public void endTracks() {
        this.tracksBuilt = true;
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorOutput
    public void drmInitData(DrmInitData drmInitData) {
    }
}
