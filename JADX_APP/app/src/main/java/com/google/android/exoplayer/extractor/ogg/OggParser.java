package com.google.android.exoplayer.extractor.ogg;

import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ogg.OggUtil;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.ParsableByteArray;

/* loaded from: classes.dex */
final class OggParser {
    public static final int OGG_MAX_SEGMENT_SIZE = 255;
    private long elapsedSamples;
    private final OggUtil.PageHeader pageHeader = new OggUtil.PageHeader();
    private final ParsableByteArray headerArray = new ParsableByteArray(282);
    private final OggUtil.PacketInfoHolder holder = new OggUtil.PacketInfoHolder();
    private int currentSegmentIndex = -1;

    OggParser() {
    }

    public void reset() {
        this.pageHeader.reset();
        this.headerArray.reset();
        this.currentSegmentIndex = -1;
    }

    public boolean readPacket(ExtractorInput extractorInput, ParsableByteArray parsableByteArray) {
        boolean z;
        int i;
        Assertions.checkState((extractorInput == null || parsableByteArray == null) ? false : true);
        for (boolean z2 = false; !z2; z2 = z) {
            if (this.currentSegmentIndex < 0) {
                if (!OggUtil.populatePageHeader(extractorInput, this.pageHeader, this.headerArray, true)) {
                    return false;
                }
                int i2 = this.pageHeader.headerSize;
                if ((this.pageHeader.type & 1) == 1 && parsableByteArray.limit() == 0) {
                    OggUtil.calculatePacketSize(this.pageHeader, 0, this.holder);
                    i = this.holder.segmentCount + 0;
                    i2 += this.holder.size;
                } else {
                    i = 0;
                }
                extractorInput.skipFully(i2);
                this.currentSegmentIndex = i;
            }
            OggUtil.calculatePacketSize(this.pageHeader, this.currentSegmentIndex, this.holder);
            int i3 = this.holder.segmentCount + this.currentSegmentIndex;
            if (this.holder.size > 0) {
                extractorInput.readFully(parsableByteArray.data, parsableByteArray.limit(), this.holder.size);
                parsableByteArray.setLimit(parsableByteArray.limit() + this.holder.size);
                z = this.pageHeader.laces[i3 + (-1)] != 255;
            } else {
                z = z2;
            }
            if (i3 == this.pageHeader.pageSegmentCount) {
                i3 = -1;
            }
            this.currentSegmentIndex = i3;
        }
        return true;
    }

    public long readGranuleOfLastPage(ExtractorInput extractorInput) {
        Assertions.checkArgument(extractorInput.getLength() != -1);
        OggUtil.skipToNextPage(extractorInput);
        this.pageHeader.reset();
        while ((this.pageHeader.type & 4) != 4 && extractorInput.getPosition() < extractorInput.getLength()) {
            OggUtil.populatePageHeader(extractorInput, this.pageHeader, this.headerArray, false);
            extractorInput.skipFully(this.pageHeader.headerSize + this.pageHeader.bodySize);
        }
        return this.pageHeader.granulePosition;
    }

    public long skipToPageOfGranule(ExtractorInput extractorInput, long j) {
        OggUtil.skipToNextPage(extractorInput);
        OggUtil.populatePageHeader(extractorInput, this.pageHeader, this.headerArray, false);
        while (this.pageHeader.granulePosition < j) {
            extractorInput.skipFully(this.pageHeader.headerSize + this.pageHeader.bodySize);
            this.elapsedSamples = this.pageHeader.granulePosition;
            OggUtil.populatePageHeader(extractorInput, this.pageHeader, this.headerArray, false);
        }
        if (this.elapsedSamples == 0) {
            throw new ParserException();
        }
        extractorInput.resetPeekPosition();
        long j2 = this.elapsedSamples;
        this.elapsedSamples = 0L;
        this.currentSegmentIndex = -1;
        return j2;
    }

    public OggUtil.PageHeader getPageHeader() {
        return this.pageHeader;
    }
}
