package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

@Deprecated
/* loaded from: classes.dex */
public final class MonochromeRectangleDetector {
    private static final int MAX_MODULES = 32;
    private final BitMatrix image;

    public MonochromeRectangleDetector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    public ResultPoint[] detect() {
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i = height / 2;
        int i2 = width / 2;
        int max = Math.max(1, height / 256);
        int max2 = Math.max(1, width / 256);
        int y = ((int) findCornerFromCenter(i2, 0, 0, width, i, -max, 0, height, i2 / 2).getY()) - 1;
        ResultPoint findCornerFromCenter = findCornerFromCenter(i2, -max2, 0, width, i, 0, y, height, i / 2);
        int x = ((int) findCornerFromCenter.getX()) - 1;
        ResultPoint findCornerFromCenter2 = findCornerFromCenter(i2, max2, x, width, i, 0, y, height, i / 2);
        int x2 = ((int) findCornerFromCenter2.getX()) + 1;
        ResultPoint findCornerFromCenter3 = findCornerFromCenter(i2, 0, x, x2, i, max, y, height, i2 / 2);
        return new ResultPoint[]{findCornerFromCenter(i2, 0, x, x2, i, -max, y, ((int) findCornerFromCenter3.getY()) + 1, i2 / 4), findCornerFromCenter, findCornerFromCenter2, findCornerFromCenter3};
    }

    private ResultPoint findCornerFromCenter(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        int[] iArr = null;
        int i10 = i;
        int i11 = i5;
        while (true) {
            int[] iArr2 = iArr;
            if (i11 >= i8 || i11 < i7 || i10 >= i4 || i10 < i3) {
                break;
            }
            if (i2 == 0) {
                iArr = blackWhiteRange(i11, i9, i3, i4, true);
            } else {
                iArr = blackWhiteRange(i10, i9, i7, i8, false);
            }
            if (iArr != null) {
                i11 += i6;
                i10 += i2;
            } else {
                if (iArr2 == null) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (i2 == 0) {
                    int i12 = i11 - i6;
                    if (iArr2[0] < i) {
                        if (iArr2[1] > i) {
                            return new ResultPoint(iArr2[i6 > 0 ? (char) 0 : (char) 1], i12);
                        }
                        return new ResultPoint(iArr2[0], i12);
                    }
                    return new ResultPoint(iArr2[1], i12);
                }
                int i13 = i10 - i2;
                if (iArr2[0] < i5) {
                    if (iArr2[1] > i5) {
                        return new ResultPoint(i13, iArr2[i2 < 0 ? (char) 0 : (char) 1]);
                    }
                    return new ResultPoint(i13, iArr2[0]);
                }
                return new ResultPoint(i13, iArr2[1]);
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0065 A[EDGE_INSN: B:57:0x0065->B:36:0x0065 BREAK  A[LOOP:3: B:29:0x0057->B:51:0x0057], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x002b A[EDGE_INSN: B:74:0x002b->B:15:0x002b BREAK  A[LOOP:1: B:8:0x001d->B:68:0x001d], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int[] blackWhiteRange(int r5, int r6, int r7, int r8, boolean r9) {
        /*
            r4 = this;
            int r0 = r7 + r8
            int r1 = r0 / 2
            r0 = r1
        L5:
            if (r0 < r7) goto L31
            if (r9 == 0) goto L14
            com.google.zxing.common.BitMatrix r2 = r4.image
            boolean r2 = r2.get(r0, r5)
            if (r2 == 0) goto L1c
        L11:
            int r0 = r0 + (-1)
            goto L5
        L14:
            com.google.zxing.common.BitMatrix r2 = r4.image
            boolean r2 = r2.get(r5, r0)
            if (r2 != 0) goto L11
        L1c:
            r2 = r0
        L1d:
            int r2 = r2 + (-1)
            if (r2 < r7) goto L2b
            if (r9 == 0) goto L43
            com.google.zxing.common.BitMatrix r3 = r4.image
            boolean r3 = r3.get(r2, r5)
            if (r3 == 0) goto L1d
        L2b:
            int r3 = r0 - r2
            if (r2 < r7) goto L31
            if (r3 <= r6) goto L4c
        L31:
            int r2 = r0 + 1
            r0 = r1
        L34:
            if (r0 >= r8) goto L6b
            if (r9 == 0) goto L4e
            com.google.zxing.common.BitMatrix r1 = r4.image
            boolean r1 = r1.get(r0, r5)
            if (r1 == 0) goto L56
        L40:
            int r0 = r0 + 1
            goto L34
        L43:
            com.google.zxing.common.BitMatrix r3 = r4.image
            boolean r3 = r3.get(r5, r2)
            if (r3 == 0) goto L1d
            goto L2b
        L4c:
            r0 = r2
            goto L5
        L4e:
            com.google.zxing.common.BitMatrix r1 = r4.image
            boolean r1 = r1.get(r5, r0)
            if (r1 != 0) goto L40
        L56:
            r1 = r0
        L57:
            int r1 = r1 + 1
            if (r1 >= r8) goto L65
            if (r9 == 0) goto L79
            com.google.zxing.common.BitMatrix r3 = r4.image
            boolean r3 = r3.get(r1, r5)
            if (r3 == 0) goto L57
        L65:
            int r3 = r1 - r0
            if (r1 >= r8) goto L6b
            if (r3 <= r6) goto L82
        L6b:
            int r1 = r0 + (-1)
            if (r1 <= r2) goto L84
            r0 = 2
            int[] r0 = new int[r0]
            r3 = 0
            r0[r3] = r2
            r2 = 1
            r0[r2] = r1
        L78:
            return r0
        L79:
            com.google.zxing.common.BitMatrix r3 = r4.image
            boolean r3 = r3.get(r5, r1)
            if (r3 == 0) goto L57
            goto L65
        L82:
            r0 = r1
            goto L34
        L84:
            r0 = 0
            goto L78
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.detector.MonochromeRectangleDetector.blackWhiteRange(int, int, int, int, boolean):int[]");
    }
}
