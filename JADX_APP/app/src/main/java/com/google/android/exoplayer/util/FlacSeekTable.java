package com.google.android.exoplayer.util;

import com.google.android.exoplayer.C1167C;
import com.google.android.exoplayer.extractor.SeekMap;

/* loaded from: classes.dex */
public final class FlacSeekTable {
    private static final int METADATA_LENGTH_OFFSET = 1;
    private static final int SEEK_POINT_SIZE = 18;
    private final long[] offsets;
    private final long[] sampleNumbers;

    public static FlacSeekTable parseSeekTable(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(1);
        int readUnsignedInt24 = parsableByteArray.readUnsignedInt24() / 18;
        long[] jArr = new long[readUnsignedInt24];
        long[] jArr2 = new long[readUnsignedInt24];
        for (int i = 0; i < readUnsignedInt24; i++) {
            jArr[i] = parsableByteArray.readLong();
            jArr2[i] = parsableByteArray.readLong();
            parsableByteArray.skipBytes(2);
        }
        return new FlacSeekTable(jArr, jArr2);
    }

    private FlacSeekTable(long[] jArr, long[] jArr2) {
        this.sampleNumbers = jArr;
        this.offsets = jArr2;
    }

    /* renamed from: com.google.android.exoplayer.util.FlacSeekTable$1 */
    class C12201 implements SeekMap {
        final /* synthetic */ long val$firstFrameOffset;
        final /* synthetic */ long val$sampleRate;

        C12201(long j, long j2) {
            j2 = j;
            j = j2;
        }

        @Override // com.google.android.exoplayer.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }

        @Override // com.google.android.exoplayer.extractor.SeekMap
        public long getPosition(long j) {
            int binarySearchFloor = Util.binarySearchFloor(FlacSeekTable.this.sampleNumbers, (j2 * j) / C1167C.MICROS_PER_SECOND, true, true);
            return FlacSeekTable.this.offsets[binarySearchFloor] + j;
        }
    }

    public SeekMap createSeekMap(long j, long j2) {
        return new SeekMap() { // from class: com.google.android.exoplayer.util.FlacSeekTable.1
            final /* synthetic */ long val$firstFrameOffset;
            final /* synthetic */ long val$sampleRate;

            C12201(long j22, long j3) {
                j2 = j22;
                j = j3;
            }

            @Override // com.google.android.exoplayer.extractor.SeekMap
            public boolean isSeekable() {
                return true;
            }

            @Override // com.google.android.exoplayer.extractor.SeekMap
            public long getPosition(long j3) {
                int binarySearchFloor = Util.binarySearchFloor(FlacSeekTable.this.sampleNumbers, (j2 * j3) / C1167C.MICROS_PER_SECOND, true, true);
                return FlacSeekTable.this.offsets[binarySearchFloor] + j;
            }
        };
    }
}
