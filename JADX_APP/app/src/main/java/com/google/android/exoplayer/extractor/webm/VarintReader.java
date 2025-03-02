package com.google.android.exoplayer.extractor.webm;

import com.google.android.exoplayer.extractor.ExtractorInput;

/* loaded from: classes.dex */
final class VarintReader {
    private static final int STATE_BEGIN_READING = 0;
    private static final int STATE_READ_CONTENTS = 1;
    private static final long[] VARINT_LENGTH_MASKS = {128, 64, 32, 16, 8, 4, 2, 1};
    private int length;
    private final byte[] scratch = new byte[8];
    private int state;

    public void reset() {
        this.state = 0;
        this.length = 0;
    }

    public long readUnsignedVarint(ExtractorInput extractorInput, boolean z, boolean z2, int i) {
        if (this.state == 0) {
            if (!extractorInput.readFully(this.scratch, 0, 1, z)) {
                return -1L;
            }
            this.length = parseUnsignedVarintLength(this.scratch[0] & 255);
            if (this.length == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.state = 1;
        }
        if (this.length > i) {
            this.state = 0;
            return -2L;
        }
        if (this.length != 1) {
            extractorInput.readFully(this.scratch, 1, this.length - 1);
        }
        this.state = 0;
        return assembleVarint(this.scratch, this.length, z2);
    }

    public int getLastLength() {
        return this.length;
    }

    public static int parseUnsignedVarintLength(int i) {
        for (int i2 = 0; i2 < VARINT_LENGTH_MASKS.length; i2++) {
            if ((VARINT_LENGTH_MASKS[i2] & i) != 0) {
                return i2 + 1;
            }
        }
        return -1;
    }

    public static long assembleVarint(byte[] bArr, int i, boolean z) {
        long j = bArr[0] & 255;
        if (z) {
            j &= VARINT_LENGTH_MASKS[i - 1] ^ (-1);
        }
        long j2 = j;
        for (int i2 = 1; i2 < i; i2++) {
            j2 = (bArr[i2] & 255) | (j2 << 8);
        }
        return j2;
    }
}
