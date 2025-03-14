package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;

/* loaded from: classes.dex */
public class GlobalHistogramBinarizer extends Binarizer {
    private static final byte[] EMPTY = new byte[0];
    private static final int LUMINANCE_BITS = 5;
    private static final int LUMINANCE_BUCKETS = 32;
    private static final int LUMINANCE_SHIFT = 3;
    private final int[] buckets;
    private byte[] luminances;

    public GlobalHistogramBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
        this.luminances = EMPTY;
        this.buckets = new int[32];
    }

    @Override // com.google.zxing.Binarizer
    public BitArray getBlackRow(int i, BitArray bitArray) {
        int i2 = 1;
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        if (bitArray == null || bitArray.getSize() < width) {
            bitArray = new BitArray(width);
        } else {
            bitArray.clear();
        }
        initArrays(width);
        byte[] row = luminanceSource.getRow(i, this.luminances);
        int[] iArr = this.buckets;
        for (int i3 = 0; i3 < width; i3++) {
            int i4 = (row[i3] & 255) >> 3;
            iArr[i4] = iArr[i4] + 1;
        }
        int estimateBlackPoint = estimateBlackPoint(iArr);
        if (width < 3) {
            for (int i5 = 0; i5 < width; i5++) {
                if ((row[i5] & 255) < estimateBlackPoint) {
                    bitArray.set(i5);
                }
            }
        } else {
            int i6 = row[0] & 255;
            int i7 = row[1] & 255;
            int i8 = i6;
            while (i2 < width - 1) {
                int i9 = row[i2 + 1] & 255;
                if ((((i7 << 2) - i8) - i9) / 2 < estimateBlackPoint) {
                    bitArray.set(i2);
                }
                i2++;
                i8 = i7;
                i7 = i9;
            }
        }
        return bitArray;
    }

    @Override // com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() {
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        BitMatrix bitMatrix = new BitMatrix(width, height);
        initArrays(width);
        int[] iArr = this.buckets;
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 >= 5) {
                break;
            }
            byte[] row = luminanceSource.getRow((height * i2) / 5, this.luminances);
            int i3 = (width << 2) / 5;
            for (int i4 = width / 5; i4 < i3; i4++) {
                int i5 = (row[i4] & 255) >> 3;
                iArr[i5] = iArr[i5] + 1;
            }
            i = i2 + 1;
        }
        int estimateBlackPoint = estimateBlackPoint(iArr);
        byte[] matrix = luminanceSource.getMatrix();
        for (int i6 = 0; i6 < height; i6++) {
            int i7 = i6 * width;
            for (int i8 = 0; i8 < width; i8++) {
                if ((matrix[i7 + i8] & 255) < estimateBlackPoint) {
                    bitMatrix.set(i8, i6);
                }
            }
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new GlobalHistogramBinarizer(luminanceSource);
    }

    private void initArrays(int i) {
        if (this.luminances.length < i) {
            this.luminances = new byte[i];
        }
        for (int i2 = 0; i2 < 32; i2++) {
            this.buckets[i2] = 0;
        }
    }

    private static int estimateBlackPoint(int[] iArr) {
        int i;
        int i2;
        int length = iArr.length;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            if (iArr[i6] > i3) {
                i3 = iArr[i6];
                i4 = i6;
            }
            if (iArr[i6] > i5) {
                i5 = iArr[i6];
            }
        }
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 < length) {
            int i10 = i7 - i4;
            int i11 = i10 * iArr[i7] * i10;
            if (i11 > i8) {
                i9 = i7;
            } else {
                i11 = i8;
            }
            i7++;
            i8 = i11;
        }
        if (i4 > i9) {
            i = i4;
            i2 = i9;
        } else {
            i = i9;
            i2 = i4;
        }
        if (i - i2 <= length / 16) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i12 = i - 1;
        int i13 = -1;
        int i14 = i - 1;
        while (i14 > i2) {
            int i15 = i14 - i2;
            int i16 = i15 * i15 * (i - i14) * (i5 - iArr[i14]);
            if (i16 > i13) {
                i12 = i14;
            } else {
                i16 = i13;
            }
            i14--;
            i13 = i16;
        }
        return i12 << 3;
    }
}
