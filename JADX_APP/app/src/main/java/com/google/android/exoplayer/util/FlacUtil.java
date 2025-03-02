package com.google.android.exoplayer.util;

import com.google.android.exoplayer.C1167C;

/* loaded from: classes.dex */
public final class FlacUtil {
    private static final int FRAME_HEADER_SAMPLE_NUMBER_OFFSET = 4;

    private FlacUtil() {
    }

    public static long extractSampleTimestamp(FlacStreamInfo flacStreamInfo, ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(4);
        long readUTF8EncodedLong = parsableByteArray.readUTF8EncodedLong();
        if (flacStreamInfo.minBlockSize == flacStreamInfo.maxBlockSize) {
            readUTF8EncodedLong *= flacStreamInfo.minBlockSize;
        }
        return (readUTF8EncodedLong * C1167C.MICROS_PER_SECOND) / flacStreamInfo.sampleRate;
    }
}
