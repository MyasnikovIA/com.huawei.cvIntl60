package com.google.zxing.qrcode.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Version;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes.dex */
final class MatrixUtil {
    private static final int TYPE_INFO_MASK_PATTERN = 21522;
    private static final int TYPE_INFO_POLY = 1335;
    private static final int VERSION_INFO_POLY = 7973;
    private static final int[][] POSITION_DETECTION_PATTERN = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};
    private static final int[][] POSITION_ADJUSTMENT_PATTERN = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};
    private static final int[][] POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, IjkMediaMeta.FF_PROFILE_H264_HIGH_422, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};
    private static final int[][] TYPE_INFO_COORDINATES = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    private MatrixUtil() {
    }

    static void clearMatrix(ByteMatrix byteMatrix) {
        byteMatrix.clear((byte) -1);
    }

    static void buildMatrix(BitArray bitArray, ErrorCorrectionLevel errorCorrectionLevel, Version version, int i, ByteMatrix byteMatrix) {
        clearMatrix(byteMatrix);
        embedBasicPatterns(version, byteMatrix);
        embedTypeInfo(errorCorrectionLevel, i, byteMatrix);
        maybeEmbedVersionInfo(version, byteMatrix);
        embedDataBits(bitArray, i, byteMatrix);
    }

    static void embedBasicPatterns(Version version, ByteMatrix byteMatrix) {
        embedPositionDetectionPatternsAndSeparators(byteMatrix);
        embedDarkDotAtLeftBottomCorner(byteMatrix);
        maybeEmbedPositionAdjustmentPatterns(version, byteMatrix);
        embedTimingPatterns(byteMatrix);
    }

    static void embedTypeInfo(ErrorCorrectionLevel errorCorrectionLevel, int i, ByteMatrix byteMatrix) {
        BitArray bitArray = new BitArray();
        makeTypeInfoBits(errorCorrectionLevel, i, bitArray);
        for (int i2 = 0; i2 < bitArray.getSize(); i2++) {
            boolean z = bitArray.get((bitArray.getSize() - 1) - i2);
            byteMatrix.set(TYPE_INFO_COORDINATES[i2][0], TYPE_INFO_COORDINATES[i2][1], z);
            if (i2 < 8) {
                byteMatrix.set((byteMatrix.getWidth() - i2) - 1, 8, z);
            } else {
                byteMatrix.set(8, (byteMatrix.getHeight() - 7) + (i2 - 8), z);
            }
        }
    }

    static void maybeEmbedVersionInfo(Version version, ByteMatrix byteMatrix) {
        if (version.getVersionNumber() >= 7) {
            BitArray bitArray = new BitArray();
            makeVersionInfoBits(version, bitArray);
            int i = 17;
            for (int i2 = 0; i2 < 6; i2++) {
                for (int i3 = 0; i3 < 3; i3++) {
                    boolean z = bitArray.get(i);
                    i--;
                    byteMatrix.set(i2, (byteMatrix.getHeight() - 11) + i3, z);
                    byteMatrix.set((byteMatrix.getHeight() - 11) + i3, i2, z);
                }
            }
        }
    }

    static void embedDataBits(BitArray bitArray, int i, ByteMatrix byteMatrix) {
        int i2;
        int i3;
        boolean z;
        int height = byteMatrix.getHeight() - 1;
        int i4 = -1;
        int i5 = 0;
        for (int width = byteMatrix.getWidth() - 1; width > 0; width = i3 - 2) {
            if (width == 6) {
                i2 = height;
                i3 = width - 1;
            } else {
                i2 = height;
                i3 = width;
            }
            while (i2 >= 0 && i2 < byteMatrix.getHeight()) {
                int i6 = 0;
                while (i6 < 2) {
                    int i7 = i3 - i6;
                    if (isEmpty(byteMatrix.get(i7, i2))) {
                        if (i5 < bitArray.getSize()) {
                            z = bitArray.get(i5);
                            i5++;
                        } else {
                            z = false;
                        }
                        if (i != -1 && MaskUtil.getDataMaskBit(i, i7, i2)) {
                            z = !z;
                        }
                        byteMatrix.set(i7, i2, z);
                    }
                    i6++;
                    i5 = i5;
                }
                i2 += i4;
            }
            i4 = -i4;
            height = i2 + i4;
        }
        if (i5 != bitArray.getSize()) {
            throw new WriterException("Not all bits consumed: " + i5 + '/' + bitArray.getSize());
        }
    }

    static int findMSBSet(int i) {
        return 32 - Integer.numberOfLeadingZeros(i);
    }

    static int calculateBCHCode(int i, int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int findMSBSet = findMSBSet(i2);
        int i3 = i << (findMSBSet - 1);
        while (findMSBSet(i3) >= findMSBSet) {
            i3 ^= i2 << (findMSBSet(i3) - findMSBSet);
        }
        return i3;
    }

    static void makeTypeInfoBits(ErrorCorrectionLevel errorCorrectionLevel, int i, BitArray bitArray) {
        if (!QRCode.isValidMaskPattern(i)) {
            throw new WriterException("Invalid mask pattern");
        }
        int bits = (errorCorrectionLevel.getBits() << 3) | i;
        bitArray.appendBits(bits, 5);
        bitArray.appendBits(calculateBCHCode(bits, TYPE_INFO_POLY), 10);
        BitArray bitArray2 = new BitArray();
        bitArray2.appendBits(TYPE_INFO_MASK_PATTERN, 15);
        bitArray.xor(bitArray2);
        if (bitArray.getSize() != 15) {
            throw new WriterException("should not happen but we got: " + bitArray.getSize());
        }
    }

    static void makeVersionInfoBits(Version version, BitArray bitArray) {
        bitArray.appendBits(version.getVersionNumber(), 6);
        bitArray.appendBits(calculateBCHCode(version.getVersionNumber(), VERSION_INFO_POLY), 12);
        if (bitArray.getSize() != 18) {
            throw new WriterException("should not happen but we got: " + bitArray.getSize());
        }
    }

    private static boolean isEmpty(int i) {
        return i == -1;
    }

    private static void embedTimingPatterns(ByteMatrix byteMatrix) {
        for (int i = 8; i < byteMatrix.getWidth() - 8; i++) {
            int i2 = (i + 1) % 2;
            if (isEmpty(byteMatrix.get(i, 6))) {
                byteMatrix.set(i, 6, i2);
            }
            if (isEmpty(byteMatrix.get(6, i))) {
                byteMatrix.set(6, i, i2);
            }
        }
    }

    private static void embedDarkDotAtLeftBottomCorner(ByteMatrix byteMatrix) {
        if (byteMatrix.get(8, byteMatrix.getHeight() - 8) == 0) {
            throw new WriterException();
        }
        byteMatrix.set(8, byteMatrix.getHeight() - 8, 1);
    }

    private static void embedHorizontalSeparationPattern(int i, int i2, ByteMatrix byteMatrix) {
        for (int i3 = 0; i3 < 8; i3++) {
            if (!isEmpty(byteMatrix.get(i + i3, i2))) {
                throw new WriterException();
            }
            byteMatrix.set(i + i3, i2, 0);
        }
    }

    private static void embedVerticalSeparationPattern(int i, int i2, ByteMatrix byteMatrix) {
        for (int i3 = 0; i3 < 7; i3++) {
            if (!isEmpty(byteMatrix.get(i, i2 + i3))) {
                throw new WriterException();
            }
            byteMatrix.set(i, i2 + i3, 0);
        }
    }

    private static void embedPositionAdjustmentPattern(int i, int i2, ByteMatrix byteMatrix) {
        for (int i3 = 0; i3 < 5; i3++) {
            for (int i4 = 0; i4 < 5; i4++) {
                byteMatrix.set(i + i4, i2 + i3, POSITION_ADJUSTMENT_PATTERN[i3][i4]);
            }
        }
    }

    private static void embedPositionDetectionPattern(int i, int i2, ByteMatrix byteMatrix) {
        for (int i3 = 0; i3 < 7; i3++) {
            for (int i4 = 0; i4 < 7; i4++) {
                byteMatrix.set(i + i4, i2 + i3, POSITION_DETECTION_PATTERN[i3][i4]);
            }
        }
    }

    private static void embedPositionDetectionPatternsAndSeparators(ByteMatrix byteMatrix) {
        int length = POSITION_DETECTION_PATTERN[0].length;
        embedPositionDetectionPattern(0, 0, byteMatrix);
        embedPositionDetectionPattern(byteMatrix.getWidth() - length, 0, byteMatrix);
        embedPositionDetectionPattern(0, byteMatrix.getWidth() - length, byteMatrix);
        embedHorizontalSeparationPattern(0, 7, byteMatrix);
        embedHorizontalSeparationPattern(byteMatrix.getWidth() - 8, 7, byteMatrix);
        embedHorizontalSeparationPattern(0, byteMatrix.getWidth() - 8, byteMatrix);
        embedVerticalSeparationPattern(7, 0, byteMatrix);
        embedVerticalSeparationPattern((byteMatrix.getHeight() - 7) - 1, 0, byteMatrix);
        embedVerticalSeparationPattern(7, byteMatrix.getHeight() - 7, byteMatrix);
    }

    private static void maybeEmbedPositionAdjustmentPatterns(Version version, ByteMatrix byteMatrix) {
        if (version.getVersionNumber() >= 2) {
            int versionNumber = version.getVersionNumber() - 1;
            int[] iArr = POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE[versionNumber];
            int length = POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE[versionNumber].length;
            for (int i = 0; i < length; i++) {
                for (int i2 = 0; i2 < length; i2++) {
                    int i3 = iArr[i];
                    int i4 = iArr[i2];
                    if (i4 != -1 && i3 != -1 && isEmpty(byteMatrix.get(i4, i3))) {
                        embedPositionAdjustmentPattern(i4 - 2, i3 - 2, byteMatrix);
                    }
                }
            }
        }
    }
}
