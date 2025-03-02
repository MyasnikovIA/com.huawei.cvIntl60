package com.google.android.exoplayer.extractor.ogg;

import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.extractor.ogg.OggUtil;
import com.google.android.exoplayer.util.ParsableByteArray;

/* loaded from: classes.dex */
public class OggExtractor implements Extractor {
    private StreamReader streamReader;

    @Override // com.google.android.exoplayer.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        try {
            ParsableByteArray parsableByteArray = new ParsableByteArray(new byte[27], 0);
            OggUtil.PageHeader pageHeader = new OggUtil.PageHeader();
            if (!OggUtil.populatePageHeader(extractorInput, pageHeader, parsableByteArray, true) || (pageHeader.type & 2) != 2 || pageHeader.bodySize < 7) {
                return false;
            }
            parsableByteArray.reset();
            extractorInput.peekFully(parsableByteArray.data, 0, 7);
            if (FlacReader.verifyBitstreamType(parsableByteArray)) {
                this.streamReader = new FlacReader();
            } else {
                parsableByteArray.reset();
                if (!VorbisReader.verifyBitstreamType(parsableByteArray)) {
                    return false;
                }
                this.streamReader = new VorbisReader();
            }
            return true;
        } catch (ParserException e) {
            return false;
        }
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        TrackOutput track = extractorOutput.track(0);
        extractorOutput.endTracks();
        this.streamReader.init(extractorOutput, track);
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void seek() {
        this.streamReader.seek();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        return this.streamReader.read(extractorInput, positionHolder);
    }
}
