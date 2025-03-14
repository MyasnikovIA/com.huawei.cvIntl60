package com.google.zxing.common;

import com.google.zxing.NotFoundException;

/* loaded from: classes.dex */
public final class DefaultGridSampler extends GridSampler {
    @Override // com.google.zxing.common.GridSampler
    public BitMatrix sampleGrid(BitMatrix bitMatrix, int i, int i2, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
        return sampleGrid(bitMatrix, i, i2, PerspectiveTransform.quadrilateralToQuadrilateral(f, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16));
    }

    @Override // com.google.zxing.common.GridSampler
    public BitMatrix sampleGrid(BitMatrix bitMatrix, int i, int i2, PerspectiveTransform perspectiveTransform) {
        if (i <= 0 || i2 <= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        BitMatrix bitMatrix2 = new BitMatrix(i, i2);
        float[] fArr = new float[i * 2];
        for (int i3 = 0; i3 < i2; i3++) {
            int length = fArr.length;
            float f = i3 + 0.5f;
            for (int i4 = 0; i4 < length; i4 += 2) {
                fArr[i4] = (i4 / 2) + 0.5f;
                fArr[i4 + 1] = f;
            }
            perspectiveTransform.transformPoints(fArr);
            checkAndNudgePoints(bitMatrix, fArr);
            for (int i5 = 0; i5 < length; i5 += 2) {
                try {
                    if (bitMatrix.get((int) fArr[i5], (int) fArr[i5 + 1])) {
                        bitMatrix2.set(i5 / 2, i3);
                    }
                } catch (ArrayIndexOutOfBoundsException e) {
                    throw NotFoundException.getNotFoundInstance();
                }
            }
        }
        return bitMatrix2;
    }
}
