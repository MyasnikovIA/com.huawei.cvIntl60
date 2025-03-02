package com.google.android.exoplayer.extractor.flv;

import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.ParsableByteArray;

/* loaded from: classes.dex */
abstract class TagPayloadReader {
    private long durationUs = -1;
    protected final TrackOutput output;

    protected abstract boolean parseHeader(ParsableByteArray parsableByteArray);

    protected abstract void parsePayload(ParsableByteArray parsableByteArray, long j);

    public abstract void seek();

    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str);
        }
    }

    protected TagPayloadReader(TrackOutput trackOutput) {
        this.output = trackOutput;
    }

    public final void setDurationUs(long j) {
        this.durationUs = j;
    }

    public final long getDurationUs() {
        return this.durationUs;
    }

    public final void consume(ParsableByteArray parsableByteArray, long j) {
        if (parseHeader(parsableByteArray)) {
            parsePayload(parsableByteArray, j);
        }
    }
}
