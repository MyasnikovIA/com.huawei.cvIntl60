package com.google.android.exoplayer.extractor.mp4;

import com.google.android.exoplayer.util.Util;

/* loaded from: classes.dex */
final class FixedSampleSizeRechunker {
    private static final int MAX_SAMPLE_SIZE = 8192;

    FixedSampleSizeRechunker() {
    }

    public static final class Results {
        public final int[] flags;
        public final int maximumSize;
        public final long[] offsets;
        public final int[] sizes;
        public final long[] timestamps;

        public Results(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
            this.offsets = jArr;
            this.sizes = iArr;
            this.maximumSize = i;
            this.timestamps = jArr2;
            this.flags = iArr2;
        }
    }

    public static Results rechunk(int i, long[] jArr, int[] iArr, long j) {
        int i2 = 8192 / i;
        int length = iArr.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            int ceilDivide = Util.ceilDivide(iArr[i3], i2) + i4;
            i3++;
            i4 = ceilDivide;
        }
        long[] jArr2 = new long[i4];
        int[] iArr2 = new int[i4];
        int i5 = 0;
        long[] jArr3 = new long[i4];
        int[] iArr3 = new int[i4];
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < iArr.length; i8++) {
            int i9 = iArr[i8];
            long j2 = jArr[i8];
            while (i9 > 0) {
                int min = Math.min(i2, i9);
                jArr2[i7] = j2;
                iArr2[i7] = i * min;
                i5 = Math.max(i5, iArr2[i7]);
                jArr3[i7] = i6 * j;
                iArr3[i7] = 1;
                j2 += iArr2[i7];
                i6 += min;
                i9 -= min;
                i7++;
            }
        }
        return new Results(jArr2, iArr2, i5, jArr3, iArr3);
    }
}
