package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Map;

/* loaded from: classes.dex */
public final class ITFReader extends OneDReader {
    private static final float MAX_AVG_VARIANCE = 0.38f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.78f;

    /* renamed from: N */
    private static final int f7041N = 1;

    /* renamed from: W */
    private static final int f7042W = 3;
    private int narrowLineWidth = -1;
    private static final int[] DEFAULT_ALLOWED_LENGTHS = {6, 8, 10, 12, 14};
    private static final int[] START_PATTERN = {1, 1, 1, 1};
    private static final int[] END_PATTERN_REVERSED = {1, 1, 3};
    static final int[][] PATTERNS = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) {
        boolean z;
        int[] decodeStart = decodeStart(bitArray);
        int[] decodeEnd = decodeEnd(bitArray);
        StringBuilder sb = new StringBuilder(20);
        decodeMiddle(bitArray, decodeStart[1], decodeEnd[0], sb);
        String sb2 = sb.toString();
        int[] iArr = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_LENGTHS) : null;
        if (iArr == null) {
            iArr = DEFAULT_ALLOWED_LENGTHS;
        }
        int length = sb2.length();
        int length2 = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= length2) {
                z = false;
                break;
            }
            int i4 = iArr[i2];
            if (length == i4) {
                z = true;
                break;
            }
            if (i4 <= i3) {
                i4 = i3;
            }
            i2++;
            i3 = i4;
        }
        if (!z && length > i3) {
            z = true;
        }
        if (!z) {
            throw FormatException.getFormatInstance();
        }
        return new Result(sb2, null, new ResultPoint[]{new ResultPoint(decodeStart[1], i), new ResultPoint(decodeEnd[0], i)}, BarcodeFormat.ITF);
    }

    private static void decodeMiddle(BitArray bitArray, int i, int i2, StringBuilder sb) {
        int[] iArr = new int[10];
        int[] iArr2 = new int[5];
        int[] iArr3 = new int[5];
        int i3 = i;
        while (i3 < i2) {
            recordPattern(bitArray, i3, iArr);
            for (int i4 = 0; i4 < 5; i4++) {
                int i5 = i4 * 2;
                iArr2[i4] = iArr[i5];
                iArr3[i4] = iArr[i5 + 1];
            }
            sb.append((char) (decodeDigit(iArr2) + 48));
            sb.append((char) (decodeDigit(iArr3) + 48));
            for (int i6 = 0; i6 < 10; i6++) {
                i3 += iArr[i6];
            }
        }
    }

    private int[] decodeStart(BitArray bitArray) {
        int[] findGuardPattern = findGuardPattern(bitArray, skipWhiteSpace(bitArray), START_PATTERN);
        this.narrowLineWidth = (findGuardPattern[1] - findGuardPattern[0]) / 4;
        validateQuietZone(bitArray, findGuardPattern[0]);
        return findGuardPattern;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
    
        throw com.google.zxing.NotFoundException.getNotFoundInstance();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void validateQuietZone(com.google.zxing.common.BitArray r4, int r5) {
        /*
            r3 = this;
            int r0 = r3.narrowLineWidth
            int r0 = r0 * 10
            if (r0 >= r5) goto L19
        L6:
            int r1 = r5 + (-1)
            r2 = r0
        L9:
            if (r2 <= 0) goto L1b
            if (r1 < 0) goto L1b
            boolean r0 = r4.get(r1)
            if (r0 != 0) goto L1b
            int r2 = r2 + (-1)
            int r0 = r1 + (-1)
            r1 = r0
            goto L9
        L19:
            r0 = r5
            goto L6
        L1b:
            if (r2 == 0) goto L22
            com.google.zxing.NotFoundException r0 = com.google.zxing.NotFoundException.getNotFoundInstance()
            throw r0
        L22:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.ITFReader.validateQuietZone(com.google.zxing.common.BitArray, int):void");
    }

    private static int skipWhiteSpace(BitArray bitArray) {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        if (nextSet == size) {
            throw NotFoundException.getNotFoundInstance();
        }
        return nextSet;
    }

    private int[] decodeEnd(BitArray bitArray) {
        bitArray.reverse();
        try {
            int[] findGuardPattern = findGuardPattern(bitArray, skipWhiteSpace(bitArray), END_PATTERN_REVERSED);
            validateQuietZone(bitArray, findGuardPattern[0]);
            int i = findGuardPattern[0];
            findGuardPattern[0] = bitArray.getSize() - findGuardPattern[1];
            findGuardPattern[1] = bitArray.getSize() - i;
            return findGuardPattern;
        } finally {
            bitArray.reverse();
        }
    }

    private static int[] findGuardPattern(BitArray bitArray, int i, int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int size = bitArray.getSize();
        int i2 = i;
        int i3 = 0;
        boolean z = false;
        for (int i4 = i; i4 < size; i4++) {
            if (bitArray.get(i4) ^ z) {
                iArr2[i3] = iArr2[i3] + 1;
            } else {
                if (i3 == length - 1) {
                    if (patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) < MAX_AVG_VARIANCE) {
                        return new int[]{i2, i4};
                    }
                    i2 += iArr2[0] + iArr2[1];
                    System.arraycopy(iArr2, 2, iArr2, 0, length - 2);
                    iArr2[length - 2] = 0;
                    iArr2[length - 1] = 0;
                    i3--;
                } else {
                    i3++;
                }
                iArr2[i3] = 1;
                z = !z;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int decodeDigit(int[] iArr) {
        float f = MAX_AVG_VARIANCE;
        int i = -1;
        int length = PATTERNS.length;
        int i2 = 0;
        while (i2 < length) {
            float patternMatchVariance = patternMatchVariance(iArr, PATTERNS[i2], MAX_INDIVIDUAL_VARIANCE);
            if (patternMatchVariance < f) {
                i = i2;
            } else {
                patternMatchVariance = f;
            }
            i2++;
            f = patternMatchVariance;
        }
        if (i >= 0) {
            return i;
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
