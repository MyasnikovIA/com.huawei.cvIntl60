package com.google.android.exoplayer.extractor.ogg;

import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ogg.OggUtil;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.ParsableByteArray;

/* loaded from: classes.dex */
final class OggSeeker {
    private static final int MATCH_RANGE = 72000;
    private long totalSamples;
    private final OggUtil.PageHeader pageHeader = new OggUtil.PageHeader();
    private final ParsableByteArray headerArray = new ParsableByteArray(282);
    private long audioDataLength = -1;

    OggSeeker() {
    }

    public void setup(long j, long j2) {
        Assertions.checkArgument(j > 0 && j2 > 0);
        this.audioDataLength = j;
        this.totalSamples = j2;
    }

    public long getNextSeekPosition(long j, ExtractorInput extractorInput) {
        Assertions.checkState((this.audioDataLength == -1 || this.totalSamples == 0) ? false : true);
        OggUtil.populatePageHeader(extractorInput, this.pageHeader, this.headerArray, false);
        long j2 = j - this.pageHeader.granulePosition;
        if (j2 <= 0 || j2 > 72000) {
            return (extractorInput.getPosition() - ((this.pageHeader.bodySize + this.pageHeader.headerSize) * (j2 <= 0 ? 2 : 1))) + ((j2 * this.audioDataLength) / this.totalSamples);
        }
        extractorInput.resetPeekPosition();
        return -1L;
    }
}
