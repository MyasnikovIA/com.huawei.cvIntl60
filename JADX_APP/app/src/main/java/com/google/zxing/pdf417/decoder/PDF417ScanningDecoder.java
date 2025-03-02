package com.google.zxing.pdf417.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.pdf417.PDF417Common;
import com.google.zxing.pdf417.decoder.p096ec.ErrorCorrection;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Formatter;

/* loaded from: classes.dex */
public final class PDF417ScanningDecoder {
    private static final int CODEWORD_SKEW_SIZE = 2;
    private static final int MAX_EC_CODEWORDS = 512;
    private static final int MAX_ERRORS = 3;
    private static final ErrorCorrection errorCorrection = new ErrorCorrection();

    private PDF417ScanningDecoder() {
    }

    public static DecoderResult decode(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i, int i2) {
        DetectionResult detectionResult;
        DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn;
        DetectionResultColumn detectionResultRowIndicatorColumn2;
        DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn3 = null;
        DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn4 = null;
        DetectionResult detectionResult2 = null;
        int i3 = 0;
        BoundingBox boundingBox = new BoundingBox(bitMatrix, resultPoint, resultPoint2, resultPoint3, resultPoint4);
        while (i3 < 2) {
            DetectionResultRowIndicatorColumn rowIndicatorColumn = resultPoint != null ? getRowIndicatorColumn(bitMatrix, boundingBox, resultPoint, true, i, i2) : detectionResultRowIndicatorColumn3;
            detectionResultRowIndicatorColumn = resultPoint3 != null ? getRowIndicatorColumn(bitMatrix, boundingBox, resultPoint3, false, i, i2) : detectionResultRowIndicatorColumn4;
            detectionResult2 = merge(rowIndicatorColumn, detectionResultRowIndicatorColumn);
            if (detectionResult2 == null) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (i3 == 0 && detectionResult2.getBoundingBox() != null && (detectionResult2.getBoundingBox().getMinY() < boundingBox.getMinY() || detectionResult2.getBoundingBox().getMaxY() > boundingBox.getMaxY())) {
                boundingBox = detectionResult2.getBoundingBox();
                i3++;
                detectionResultRowIndicatorColumn4 = detectionResultRowIndicatorColumn;
                detectionResultRowIndicatorColumn3 = rowIndicatorColumn;
            } else {
                detectionResult2.setBoundingBox(boundingBox);
                detectionResult = detectionResult2;
                detectionResultRowIndicatorColumn3 = rowIndicatorColumn;
                break;
            }
        }
        detectionResult = detectionResult2;
        detectionResultRowIndicatorColumn = detectionResultRowIndicatorColumn4;
        int barcodeColumnCount = detectionResult.getBarcodeColumnCount() + 1;
        detectionResult.setDetectionResultColumn(0, detectionResultRowIndicatorColumn3);
        detectionResult.setDetectionResultColumn(barcodeColumnCount, detectionResultRowIndicatorColumn);
        boolean z = detectionResultRowIndicatorColumn3 != null;
        int i4 = i2;
        int i5 = i;
        for (int i6 = 1; i6 <= barcodeColumnCount; i6++) {
            int i7 = z ? i6 : barcodeColumnCount - i6;
            if (detectionResult.getDetectionResultColumn(i7) == null) {
                if (i7 == 0 || i7 == barcodeColumnCount) {
                    detectionResultRowIndicatorColumn2 = new DetectionResultRowIndicatorColumn(boundingBox, i7 == 0);
                } else {
                    detectionResultRowIndicatorColumn2 = new DetectionResultColumn(boundingBox);
                }
                detectionResult.setDetectionResultColumn(i7, detectionResultRowIndicatorColumn2);
                int i8 = -1;
                int minY = boundingBox.getMinY();
                while (true) {
                    int i9 = i8;
                    if (minY <= boundingBox.getMaxY()) {
                        int startColumn = getStartColumn(detectionResult, i7, minY, z);
                        if (startColumn < 0 || startColumn > boundingBox.getMaxX()) {
                            if (i9 != -1) {
                                startColumn = i9;
                            }
                            i8 = i9;
                            minY++;
                        }
                        Codeword detectCodeword = detectCodeword(bitMatrix, boundingBox.getMinX(), boundingBox.getMaxX(), z, startColumn, minY, i5, i4);
                        if (detectCodeword != null) {
                            detectionResultRowIndicatorColumn2.setCodeword(minY, detectCodeword);
                            i5 = Math.min(i5, detectCodeword.getWidth());
                            i4 = Math.max(i4, detectCodeword.getWidth());
                            i8 = startColumn;
                            minY++;
                        }
                        i8 = i9;
                        minY++;
                    }
                }
            }
        }
        return createDecoderResult(detectionResult);
    }

    private static DetectionResult merge(DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn, DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn2) {
        BarcodeMetadata barcodeMetadata;
        if ((detectionResultRowIndicatorColumn == null && detectionResultRowIndicatorColumn2 == null) || (barcodeMetadata = getBarcodeMetadata(detectionResultRowIndicatorColumn, detectionResultRowIndicatorColumn2)) == null) {
            return null;
        }
        return new DetectionResult(barcodeMetadata, BoundingBox.merge(adjustBoundingBox(detectionResultRowIndicatorColumn), adjustBoundingBox(detectionResultRowIndicatorColumn2)));
    }

    private static BoundingBox adjustBoundingBox(DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn) {
        int[] rowHeights;
        if (detectionResultRowIndicatorColumn == null || (rowHeights = detectionResultRowIndicatorColumn.getRowHeights()) == null) {
            return null;
        }
        int max = getMax(rowHeights);
        int i = 0;
        for (int i2 : rowHeights) {
            i += max - i2;
            if (i2 > 0) {
                break;
            }
        }
        Codeword[] codewords = detectionResultRowIndicatorColumn.getCodewords();
        int i3 = i;
        for (int i4 = 0; i3 > 0 && codewords[i4] == null; i4++) {
            i3--;
        }
        int i5 = 0;
        for (int length = rowHeights.length - 1; length >= 0; length--) {
            i5 += max - rowHeights[length];
            if (rowHeights[length] > 0) {
                break;
            }
        }
        int i6 = i5;
        for (int length2 = codewords.length - 1; i6 > 0 && codewords[length2] == null; length2--) {
            i6--;
        }
        return detectionResultRowIndicatorColumn.getBoundingBox().addMissingRows(i3, i6, detectionResultRowIndicatorColumn.isLeft());
    }

    private static int getMax(int[] iArr) {
        int i = -1;
        for (int i2 : iArr) {
            i = Math.max(i, i2);
        }
        return i;
    }

    private static BarcodeMetadata getBarcodeMetadata(DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn, DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn2) {
        BarcodeMetadata barcodeMetadata;
        BarcodeMetadata barcodeMetadata2;
        if (detectionResultRowIndicatorColumn == null || (barcodeMetadata = detectionResultRowIndicatorColumn.getBarcodeMetadata()) == null) {
            if (detectionResultRowIndicatorColumn2 == null) {
                return null;
            }
            return detectionResultRowIndicatorColumn2.getBarcodeMetadata();
        }
        if (detectionResultRowIndicatorColumn2 == null || (barcodeMetadata2 = detectionResultRowIndicatorColumn2.getBarcodeMetadata()) == null) {
            return barcodeMetadata;
        }
        if (barcodeMetadata.getColumnCount() == barcodeMetadata2.getColumnCount() || barcodeMetadata.getErrorCorrectionLevel() == barcodeMetadata2.getErrorCorrectionLevel() || barcodeMetadata.getRowCount() == barcodeMetadata2.getRowCount()) {
            return barcodeMetadata;
        }
        return null;
    }

    private static DetectionResultRowIndicatorColumn getRowIndicatorColumn(BitMatrix bitMatrix, BoundingBox boundingBox, ResultPoint resultPoint, boolean z, int i, int i2) {
        DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn = new DetectionResultRowIndicatorColumn(boundingBox, z);
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 < 2) {
                int i5 = i4 == 0 ? 1 : -1;
                int x = (int) resultPoint.getX();
                for (int y = (int) resultPoint.getY(); y <= boundingBox.getMaxY() && y >= boundingBox.getMinY(); y += i5) {
                    Codeword detectCodeword = detectCodeword(bitMatrix, 0, bitMatrix.getWidth(), z, x, y, i, i2);
                    if (detectCodeword != null) {
                        detectionResultRowIndicatorColumn.setCodeword(y, detectCodeword);
                        if (z) {
                            x = detectCodeword.getStartX();
                        } else {
                            x = detectCodeword.getEndX();
                        }
                    }
                }
                i3 = i4 + 1;
            } else {
                return detectionResultRowIndicatorColumn;
            }
        }
    }

    private static void adjustCodewordCount(DetectionResult detectionResult, BarcodeValue[][] barcodeValueArr) {
        int[] value = barcodeValueArr[0][1].getValue();
        int barcodeColumnCount = (detectionResult.getBarcodeColumnCount() * detectionResult.getBarcodeRowCount()) - getNumberOfECCodeWords(detectionResult.getBarcodeECLevel());
        if (value.length == 0) {
            if (barcodeColumnCount <= 0 || barcodeColumnCount > 928) {
                throw NotFoundException.getNotFoundInstance();
            }
            barcodeValueArr[0][1].setValue(barcodeColumnCount);
            return;
        }
        if (value[0] != barcodeColumnCount) {
            barcodeValueArr[0][1].setValue(barcodeColumnCount);
        }
    }

    private static DecoderResult createDecoderResult(DetectionResult detectionResult) {
        BarcodeValue[][] createBarcodeMatrix = createBarcodeMatrix(detectionResult);
        adjustCodewordCount(detectionResult, createBarcodeMatrix);
        ArrayList arrayList = new ArrayList();
        int[] iArr = new int[detectionResult.getBarcodeRowCount() * detectionResult.getBarcodeColumnCount()];
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < detectionResult.getBarcodeRowCount(); i++) {
            for (int i2 = 0; i2 < detectionResult.getBarcodeColumnCount(); i2++) {
                int[] value = createBarcodeMatrix[i][i2 + 1].getValue();
                int barcodeColumnCount = (detectionResult.getBarcodeColumnCount() * i) + i2;
                if (value.length == 0) {
                    arrayList.add(Integer.valueOf(barcodeColumnCount));
                } else if (value.length == 1) {
                    iArr[barcodeColumnCount] = value[0];
                } else {
                    arrayList3.add(Integer.valueOf(barcodeColumnCount));
                    arrayList2.add(value);
                }
            }
        }
        int[][] iArr2 = new int[arrayList2.size()][];
        for (int i3 = 0; i3 < iArr2.length; i3++) {
            iArr2[i3] = (int[]) arrayList2.get(i3);
        }
        return createDecoderResultFromAmbiguousValues(detectionResult.getBarcodeECLevel(), iArr, PDF417Common.toIntArray(arrayList), PDF417Common.toIntArray(arrayList3), iArr2);
    }

    private static DecoderResult createDecoderResultFromAmbiguousValues(int i, int[] iArr, int[] iArr2, int[] iArr3, int[][] iArr4) {
        int[] iArr5 = new int[iArr3.length];
        int i2 = 100;
        while (true) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                for (int i4 = 0; i4 < iArr5.length; i4++) {
                    iArr[iArr3[i4]] = iArr4[i4][iArr5[i4]];
                }
                try {
                    return decodeCodewords(iArr, i, iArr2);
                } catch (ChecksumException e) {
                    if (iArr5.length == 0) {
                        throw ChecksumException.getChecksumInstance();
                    }
                    int i5 = 0;
                    while (true) {
                        if (i5 >= iArr5.length) {
                            i2 = i3;
                            break;
                        }
                        if (iArr5[i5] < iArr4[i5].length - 1) {
                            iArr5[i5] = iArr5[i5] + 1;
                            i2 = i3;
                            break;
                        }
                        iArr5[i5] = 0;
                        if (i5 != iArr5.length - 1) {
                            i5++;
                        } else {
                            throw ChecksumException.getChecksumInstance();
                        }
                    }
                }
            } else {
                throw ChecksumException.getChecksumInstance();
            }
        }
    }

    private static BarcodeValue[][] createBarcodeMatrix(DetectionResult detectionResult) {
        int rowNumber;
        BarcodeValue[][] barcodeValueArr = (BarcodeValue[][]) Array.newInstance((Class<?>) BarcodeValue.class, detectionResult.getBarcodeRowCount(), detectionResult.getBarcodeColumnCount() + 2);
        for (int i = 0; i < barcodeValueArr.length; i++) {
            for (int i2 = 0; i2 < barcodeValueArr[i].length; i2++) {
                barcodeValueArr[i][i2] = new BarcodeValue();
            }
        }
        int i3 = 0;
        for (DetectionResultColumn detectionResultColumn : detectionResult.getDetectionResultColumns()) {
            if (detectionResultColumn != null) {
                Codeword[] codewords = detectionResultColumn.getCodewords();
                for (Codeword codeword : codewords) {
                    if (codeword != null && (rowNumber = codeword.getRowNumber()) >= 0 && rowNumber < barcodeValueArr.length) {
                        barcodeValueArr[rowNumber][i3].setValue(codeword.getValue());
                    }
                }
            }
            i3++;
        }
        return barcodeValueArr;
    }

    private static boolean isValidBarcodeColumn(DetectionResult detectionResult, int i) {
        return i >= 0 && i <= detectionResult.getBarcodeColumnCount() + 1;
    }

    private static int getStartColumn(DetectionResult detectionResult, int i, int i2, boolean z) {
        int i3 = z ? 1 : -1;
        Codeword codeword = null;
        if (isValidBarcodeColumn(detectionResult, i - i3)) {
            codeword = detectionResult.getDetectionResultColumn(i - i3).getCodeword(i2);
        }
        if (codeword != null) {
            return z ? codeword.getEndX() : codeword.getStartX();
        }
        Codeword codewordNearby = detectionResult.getDetectionResultColumn(i).getCodewordNearby(i2);
        if (codewordNearby != null) {
            return z ? codewordNearby.getStartX() : codewordNearby.getEndX();
        }
        if (isValidBarcodeColumn(detectionResult, i - i3)) {
            codewordNearby = detectionResult.getDetectionResultColumn(i - i3).getCodewordNearby(i2);
        }
        if (codewordNearby != null) {
            return z ? codewordNearby.getEndX() : codewordNearby.getStartX();
        }
        int i4 = 0;
        while (isValidBarcodeColumn(detectionResult, i - i3)) {
            i -= i3;
            for (Codeword codeword2 : detectionResult.getDetectionResultColumn(i).getCodewords()) {
                if (codeword2 != null) {
                    return (i3 * i4 * (codeword2.getEndX() - codeword2.getStartX())) + (z ? codeword2.getEndX() : codeword2.getStartX());
                }
            }
            i4++;
        }
        return z ? detectionResult.getBoundingBox().getMinX() : detectionResult.getBoundingBox().getMaxX();
    }

    private static Codeword detectCodeword(BitMatrix bitMatrix, int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
        int i7;
        int i8;
        int decodedValue;
        int codeword;
        int adjustCodewordStartColumn = adjustCodewordStartColumn(bitMatrix, i, i2, z, i3, i4);
        int[] moduleBitCount = getModuleBitCount(bitMatrix, i, i2, z, adjustCodewordStartColumn, i4);
        if (moduleBitCount == null) {
            return null;
        }
        int sum = MathUtils.sum(moduleBitCount);
        if (z) {
            i8 = adjustCodewordStartColumn + sum;
            i7 = adjustCodewordStartColumn;
        } else {
            for (int i9 = 0; i9 < moduleBitCount.length / 2; i9++) {
                int i10 = moduleBitCount[i9];
                moduleBitCount[i9] = moduleBitCount[(moduleBitCount.length - 1) - i9];
                moduleBitCount[(moduleBitCount.length - 1) - i9] = i10;
            }
            i7 = adjustCodewordStartColumn - sum;
            i8 = adjustCodewordStartColumn;
        }
        if (checkCodewordSkew(sum, i5, i6) && (codeword = PDF417Common.getCodeword((decodedValue = PDF417CodewordDecoder.getDecodedValue(moduleBitCount)))) != -1) {
            return new Codeword(i7, i8, getCodewordBucketNumber(decodedValue), codeword);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0023 A[EDGE_INSN: B:23:0x0023->B:24:0x0023 BREAK  A[LOOP:0: B:5:0x000b->B:16:0x000b], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int[] getModuleBitCount(com.google.zxing.common.BitMatrix r8, int r9, int r10, boolean r11, int r12, int r13) {
        /*
            r1 = 1
            r3 = 0
            r7 = 8
            int[] r4 = new int[r7]
            if (r11 == 0) goto L1f
            r0 = r1
        L9:
            r2 = r11
            r5 = r3
        Lb:
            if (r11 == 0) goto L21
            if (r12 >= r10) goto L23
        Lf:
            if (r5 >= r7) goto L23
            boolean r6 = r8.get(r12, r13)
            if (r6 != r2) goto L2e
            r6 = r4[r5]
            int r6 = r6 + 1
            r4[r5] = r6
            int r12 = r12 + r0
            goto Lb
        L1f:
            r0 = -1
            goto L9
        L21:
            if (r12 >= r9) goto Lf
        L23:
            if (r5 == r7) goto L2c
            if (r11 == 0) goto L36
        L27:
            if (r12 != r10) goto L38
            r0 = 7
            if (r5 != r0) goto L38
        L2c:
            r0 = r4
        L2d:
            return r0
        L2e:
            int r5 = r5 + 1
            if (r2 != 0) goto L34
            r2 = r1
            goto Lb
        L34:
            r2 = r3
            goto Lb
        L36:
            r10 = r9
            goto L27
        L38:
            r0 = 0
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.PDF417ScanningDecoder.getModuleBitCount(com.google.zxing.common.BitMatrix, int, int, boolean, int, int):int[]");
    }

    private static int getNumberOfECCodeWords(int i) {
        return 2 << i;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0015  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0022 A[EDGE_INSN: B:16:0x0022->B:17:0x0022 BREAK  A[LOOP:1: B:6:0x000b->B:12:0x002a], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int adjustCodewordStartColumn(com.google.zxing.common.BitMatrix r7, int r8, int r9, boolean r10, int r11, int r12) {
        /*
            r6 = 2
            r1 = 1
            r2 = 0
            if (r10 == 0) goto L1e
            r0 = -1
        L6:
            r4 = r2
            r5 = r0
            r3 = r11
        L9:
            if (r4 >= r6) goto L2e
        Lb:
            if (r10 == 0) goto L20
            if (r3 < r8) goto L22
        Lf:
            boolean r0 = r7.get(r3, r12)
            if (r10 != r0) goto L22
            int r0 = r11 - r3
            int r0 = java.lang.Math.abs(r0)
            if (r0 <= r6) goto L2a
        L1d:
            return r11
        L1e:
            r0 = r1
            goto L6
        L20:
            if (r3 < r9) goto Lf
        L22:
            int r5 = -r5
            if (r10 != 0) goto L2c
            r0 = r1
        L26:
            int r4 = r4 + 1
            r10 = r0
            goto L9
        L2a:
            int r3 = r3 + r5
            goto Lb
        L2c:
            r0 = r2
            goto L26
        L2e:
            r11 = r3
            goto L1d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.PDF417ScanningDecoder.adjustCodewordStartColumn(com.google.zxing.common.BitMatrix, int, int, boolean, int, int):int");
    }

    private static boolean checkCodewordSkew(int i, int i2, int i3) {
        return i2 + (-2) <= i && i <= i3 + 2;
    }

    private static DecoderResult decodeCodewords(int[] iArr, int i, int[] iArr2) {
        if (iArr.length == 0) {
            throw FormatException.getFormatInstance();
        }
        int i2 = 1 << (i + 1);
        int correctErrors = correctErrors(iArr, iArr2, i2);
        verifyCodewordCount(iArr, i2);
        DecoderResult decode = DecodedBitStreamParser.decode(iArr, String.valueOf(i));
        decode.setErrorsCorrected(Integer.valueOf(correctErrors));
        decode.setErasures(Integer.valueOf(iArr2.length));
        return decode;
    }

    private static int correctErrors(int[] iArr, int[] iArr2, int i) {
        if ((iArr2 != null && iArr2.length > (i / 2) + 3) || i < 0 || i > 512) {
            throw ChecksumException.getChecksumInstance();
        }
        return errorCorrection.decode(iArr, i, iArr2);
    }

    private static void verifyCodewordCount(int[] iArr, int i) {
        if (iArr.length < 4) {
            throw FormatException.getFormatInstance();
        }
        int i2 = iArr[0];
        if (i2 > iArr.length) {
            throw FormatException.getFormatInstance();
        }
        if (i2 == 0) {
            if (i < iArr.length) {
                iArr[0] = iArr.length - i;
                return;
            }
            throw FormatException.getFormatInstance();
        }
    }

    private static int[] getBitCountForCodeword(int i) {
        int[] iArr = new int[8];
        int i2 = 0;
        int i3 = 7;
        while (true) {
            if ((i & 1) != i2) {
                i2 = i & 1;
                i3--;
                if (i3 < 0) {
                    return iArr;
                }
            }
            iArr[i3] = iArr[i3] + 1;
            i >>= 1;
        }
    }

    private static int getCodewordBucketNumber(int i) {
        return getCodewordBucketNumber(getBitCountForCodeword(i));
    }

    private static int getCodewordBucketNumber(int[] iArr) {
        return ((((iArr[0] - iArr[2]) + iArr[4]) - iArr[6]) + 9) % 9;
    }

    public static String toString(BarcodeValue[][] barcodeValueArr) {
        Formatter formatter = new Formatter();
        for (int i = 0; i < barcodeValueArr.length; i++) {
            formatter.format("Row %2d: ", Integer.valueOf(i));
            for (int i2 = 0; i2 < barcodeValueArr[i].length; i2++) {
                BarcodeValue barcodeValue = barcodeValueArr[i][i2];
                if (barcodeValue.getValue().length == 0) {
                    formatter.format("        ", null);
                } else {
                    formatter.format("%4d(%2d)", Integer.valueOf(barcodeValue.getValue()[0]), barcodeValue.getConfidence(barcodeValue.getValue()[0]));
                }
            }
            formatter.format("%n", new Object[0]);
        }
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }
}
