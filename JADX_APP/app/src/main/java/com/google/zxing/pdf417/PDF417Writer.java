package com.google.zxing.pdf417;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.pdf417.encoder.Compaction;
import com.google.zxing.pdf417.encoder.Dimensions;
import com.google.zxing.pdf417.encoder.PDF417;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Map;

/* loaded from: classes.dex */
public final class PDF417Writer implements Writer {
    static final int DEFAULT_ERROR_CORRECTION_LEVEL = 2;
    static final int WHITE_SPACE = 30;

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        int i3;
        int i4;
        if (barcodeFormat != BarcodeFormat.PDF_417) {
            throw new IllegalArgumentException("Can only encode PDF_417, but got " + barcodeFormat);
        }
        PDF417 pdf417 = new PDF417();
        int i5 = 2;
        if (map == null) {
            i3 = 30;
        } else {
            if (map.containsKey(EncodeHintType.PDF417_COMPACT)) {
                pdf417.setCompact(Boolean.valueOf(map.get(EncodeHintType.PDF417_COMPACT).toString()).booleanValue());
            }
            if (map.containsKey(EncodeHintType.PDF417_COMPACTION)) {
                pdf417.setCompaction(Compaction.valueOf(map.get(EncodeHintType.PDF417_COMPACTION).toString()));
            }
            if (map.containsKey(EncodeHintType.PDF417_DIMENSIONS)) {
                Dimensions dimensions = (Dimensions) map.get(EncodeHintType.PDF417_DIMENSIONS);
                pdf417.setDimensions(dimensions.getMaxCols(), dimensions.getMinCols(), dimensions.getMaxRows(), dimensions.getMinRows());
            }
            if (!map.containsKey(EncodeHintType.MARGIN)) {
                i4 = 30;
            } else {
                i4 = Integer.parseInt(map.get(EncodeHintType.MARGIN).toString());
            }
            if (map.containsKey(EncodeHintType.ERROR_CORRECTION)) {
                i5 = Integer.parseInt(map.get(EncodeHintType.ERROR_CORRECTION).toString());
            }
            if (map.containsKey(EncodeHintType.CHARACTER_SET)) {
                pdf417.setEncoding(Charset.forName(map.get(EncodeHintType.CHARACTER_SET).toString()));
            }
            i3 = i4;
        }
        return bitMatrixFromEncoder(pdf417, str, i5, i, i2, i3);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) {
        return encode(str, barcodeFormat, i, i2, null);
    }

    private static BitMatrix bitMatrixFromEncoder(PDF417 pdf417, String str, int i, int i2, int i3, int i4) {
        boolean z;
        pdf417.generateBarcodeLogic(str, i);
        byte[][] scaledMatrix = pdf417.getBarcodeMatrix().getScaledMatrix(1, 4);
        if ((i3 > i2) ^ (scaledMatrix[0].length < scaledMatrix.length)) {
            scaledMatrix = rotateArray(scaledMatrix);
            z = true;
        } else {
            z = false;
        }
        int length = i2 / scaledMatrix[0].length;
        int length2 = i3 / scaledMatrix.length;
        if (length >= length2) {
            length = length2;
        }
        if (length > 1) {
            byte[][] scaledMatrix2 = pdf417.getBarcodeMatrix().getScaledMatrix(length, length << 2);
            return bitMatrixFrombitArray(z ? rotateArray(scaledMatrix2) : scaledMatrix2, i4);
        }
        return bitMatrixFrombitArray(scaledMatrix, i4);
    }

    private static BitMatrix bitMatrixFrombitArray(byte[][] bArr, int i) {
        BitMatrix bitMatrix = new BitMatrix(bArr[0].length + (i * 2), bArr.length + (i * 2));
        bitMatrix.clear();
        int height = (bitMatrix.getHeight() - i) - 1;
        int i2 = 0;
        while (i2 < bArr.length) {
            for (int i3 = 0; i3 < bArr[0].length; i3++) {
                if (bArr[i2][i3] == 1) {
                    bitMatrix.set(i3 + i, height);
                }
            }
            i2++;
            height--;
        }
        return bitMatrix;
    }

    private static byte[][] rotateArray(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, bArr[0].length, bArr.length);
        for (int i = 0; i < bArr.length; i++) {
            int length = (bArr.length - i) - 1;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][length] = bArr[i][i2];
            }
        }
        return bArr2;
    }
}
