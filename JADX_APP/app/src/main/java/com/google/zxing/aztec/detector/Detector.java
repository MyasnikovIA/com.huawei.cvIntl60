package com.google.zxing.aztec.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;

/* loaded from: classes.dex */
public final class Detector {
    private static final int[] EXPECTED_CORNER_BITS = {3808, 476, 2107, 1799};
    private boolean compact;
    private final BitMatrix image;
    private int nbCenterLayers;
    private int nbDataBlocks;
    private int nbLayers;
    private int shift;

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    public AztecDetectorResult detect() {
        return detect(false);
    }

    public AztecDetectorResult detect(boolean z) {
        ResultPoint[] bullsEyeCorners = getBullsEyeCorners(getMatrixCenter());
        if (z) {
            ResultPoint resultPoint = bullsEyeCorners[0];
            bullsEyeCorners[0] = bullsEyeCorners[2];
            bullsEyeCorners[2] = resultPoint;
        }
        extractParameters(bullsEyeCorners);
        return new AztecDetectorResult(sampleGrid(this.image, bullsEyeCorners[this.shift % 4], bullsEyeCorners[(this.shift + 1) % 4], bullsEyeCorners[(this.shift + 2) % 4], bullsEyeCorners[(this.shift + 3) % 4]), getMatrixCornerPoints(bullsEyeCorners), this.compact, this.nbDataBlocks, this.nbLayers);
    }

    private void extractParameters(ResultPoint[] resultPointArr) {
        long j;
        int i;
        if (!isValid(resultPointArr[0]) || !isValid(resultPointArr[1]) || !isValid(resultPointArr[2]) || !isValid(resultPointArr[3])) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i2 = this.nbCenterLayers * 2;
        int[] iArr = {sampleLine(resultPointArr[0], resultPointArr[1], i2), sampleLine(resultPointArr[1], resultPointArr[2], i2), sampleLine(resultPointArr[2], resultPointArr[3], i2), sampleLine(resultPointArr[3], resultPointArr[0], i2)};
        this.shift = getRotation(iArr, i2);
        long j2 = 0;
        int i3 = 0;
        while (i3 < 4) {
            int i4 = iArr[(this.shift + i3) % 4];
            if (this.compact) {
                j = j2 << 7;
                i = (i4 >> 1) & 127;
            } else {
                j = j2 << 10;
                i = ((i4 >> 1) & 31) + ((i4 >> 2) & 992);
            }
            i3++;
            j2 = i + j;
        }
        int correctedParameterData = getCorrectedParameterData(j2, this.compact);
        if (this.compact) {
            this.nbLayers = (correctedParameterData >> 6) + 1;
            this.nbDataBlocks = (correctedParameterData & 63) + 1;
        } else {
            this.nbLayers = (correctedParameterData >> 11) + 1;
            this.nbDataBlocks = (correctedParameterData & 2047) + 1;
        }
    }

    private static int getRotation(int[] iArr, int i) {
        int i2 = 0;
        for (int i3 : iArr) {
            i2 = (i2 << 3) + (i3 & 1) + ((i3 >> (i - 2)) << 1);
        }
        int i4 = ((i2 & 1) << 11) + (i2 >> 1);
        for (int i5 = 0; i5 < 4; i5++) {
            if (Integer.bitCount(EXPECTED_CORNER_BITS[i5] ^ i4) <= 2) {
                return i5;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int getCorrectedParameterData(long j, boolean z) {
        int i;
        int i2;
        if (z) {
            i = 7;
            i2 = 2;
        } else {
            i = 10;
            i2 = 4;
        }
        int i3 = i - i2;
        int[] iArr = new int[i];
        for (int i4 = i - 1; i4 >= 0; i4--) {
            iArr[i4] = ((int) j) & 15;
            j >>= 4;
        }
        try {
            new ReedSolomonDecoder(GenericGF.AZTEC_PARAM).decode(iArr, i3);
            int i5 = 0;
            int i6 = 0;
            while (i5 < i2) {
                int i7 = iArr[i5];
                i5++;
                i6 = i7 + (i6 << 4);
            }
            return i6;
        } catch (ReedSolomonException e) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private ResultPoint[] getBullsEyeCorners(Point point) {
        boolean z = true;
        this.nbCenterLayers = 1;
        Point point2 = point;
        Point point3 = point;
        Point point4 = point;
        Point point5 = point;
        while (this.nbCenterLayers < 9) {
            Point firstDifferent = getFirstDifferent(point5, z, 1, -1);
            Point firstDifferent2 = getFirstDifferent(point4, z, 1, 1);
            Point firstDifferent3 = getFirstDifferent(point3, z, -1, 1);
            Point firstDifferent4 = getFirstDifferent(point2, z, -1, -1);
            if (this.nbCenterLayers > 2) {
                float distance = (distance(firstDifferent4, firstDifferent) * this.nbCenterLayers) / (distance(point2, point5) * (this.nbCenterLayers + 2));
                if (distance >= 0.75d) {
                    if (distance <= 1.25d) {
                        if (!isWhiteOrBlackRectangle(firstDifferent, firstDifferent2, firstDifferent3, firstDifferent4)) {
                            break;
                        }
                    } else {
                        break;
                    }
                } else {
                    break;
                }
            }
            z = !z;
            this.nbCenterLayers++;
            point2 = firstDifferent4;
            point3 = firstDifferent3;
            point4 = firstDifferent2;
            point5 = firstDifferent;
        }
        if (this.nbCenterLayers != 5 && this.nbCenterLayers != 7) {
            throw NotFoundException.getNotFoundInstance();
        }
        this.compact = this.nbCenterLayers == 5;
        return expandSquare(new ResultPoint[]{new ResultPoint(point5.getX() + 0.5f, point5.getY() - 0.5f), new ResultPoint(point4.getX() + 0.5f, point4.getY() + 0.5f), new ResultPoint(point3.getX() - 0.5f, point3.getY() + 0.5f), new ResultPoint(point2.getX() - 0.5f, point2.getY() - 0.5f)}, (this.nbCenterLayers * 2) - 3, this.nbCenterLayers * 2);
    }

    private Point getMatrixCenter() {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        ResultPoint resultPoint4;
        ResultPoint resultPoint5;
        ResultPoint resultPoint6;
        ResultPoint resultPoint7;
        ResultPoint resultPoint8;
        try {
            ResultPoint[] detect = new WhiteRectangleDetector(this.image).detect();
            resultPoint = detect[0];
            resultPoint2 = detect[1];
            resultPoint3 = detect[2];
            resultPoint4 = detect[3];
        } catch (NotFoundException e) {
            int width = this.image.getWidth() / 2;
            int height = this.image.getHeight() / 2;
            resultPoint = getFirstDifferent(new Point(width + 7, height - 7), false, 1, -1).toResultPoint();
            resultPoint2 = getFirstDifferent(new Point(width + 7, height + 7), false, 1, 1).toResultPoint();
            resultPoint3 = getFirstDifferent(new Point(width - 7, height + 7), false, -1, 1).toResultPoint();
            resultPoint4 = getFirstDifferent(new Point(width - 7, height - 7), false, -1, -1).toResultPoint();
        }
        int round = MathUtils.round((((resultPoint.getX() + resultPoint4.getX()) + resultPoint2.getX()) + resultPoint3.getX()) / 4.0f);
        int round2 = MathUtils.round((((resultPoint4.getY() + resultPoint.getY()) + resultPoint2.getY()) + resultPoint3.getY()) / 4.0f);
        try {
            ResultPoint[] detect2 = new WhiteRectangleDetector(this.image, 15, round, round2).detect();
            resultPoint5 = detect2[0];
            resultPoint6 = detect2[1];
            resultPoint7 = detect2[2];
            resultPoint8 = detect2[3];
        } catch (NotFoundException e2) {
            resultPoint5 = getFirstDifferent(new Point(round + 7, round2 - 7), false, 1, -1).toResultPoint();
            resultPoint6 = getFirstDifferent(new Point(round + 7, round2 + 7), false, 1, 1).toResultPoint();
            resultPoint7 = getFirstDifferent(new Point(round - 7, round2 + 7), false, -1, 1).toResultPoint();
            resultPoint8 = getFirstDifferent(new Point(round - 7, round2 - 7), false, -1, -1).toResultPoint();
        }
        return new Point(MathUtils.round((((resultPoint5.getX() + resultPoint8.getX()) + resultPoint6.getX()) + resultPoint7.getX()) / 4.0f), MathUtils.round((((resultPoint8.getY() + resultPoint5.getY()) + resultPoint6.getY()) + resultPoint7.getY()) / 4.0f));
    }

    private ResultPoint[] getMatrixCornerPoints(ResultPoint[] resultPointArr) {
        return expandSquare(resultPointArr, this.nbCenterLayers * 2, getDimension());
    }

    private BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) {
        GridSampler gridSampler = GridSampler.getInstance();
        int dimension = getDimension();
        float f = (dimension / 2.0f) - this.nbCenterLayers;
        float f2 = (dimension / 2.0f) + this.nbCenterLayers;
        return gridSampler.sampleGrid(bitMatrix, dimension, dimension, f, f, f2, f, f2, f2, f, f2, resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint4.getX(), resultPoint4.getY());
    }

    private int sampleLine(ResultPoint resultPoint, ResultPoint resultPoint2, int i) {
        float distance = distance(resultPoint, resultPoint2);
        float f = distance / i;
        float x = resultPoint.getX();
        float y = resultPoint.getY();
        float x2 = ((resultPoint2.getX() - resultPoint.getX()) * f) / distance;
        float y2 = (f * (resultPoint2.getY() - resultPoint.getY())) / distance;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (this.image.get(MathUtils.round((i3 * x2) + x), MathUtils.round((i3 * y2) + y))) {
                i2 |= 1 << ((i - i3) - 1);
            }
        }
        return i2;
    }

    private boolean isWhiteOrBlackRectangle(Point point, Point point2, Point point3, Point point4) {
        Point point5 = new Point(point.getX() - 3, point.getY() + 3);
        Point point6 = new Point(point2.getX() - 3, point2.getY() - 3);
        Point point7 = new Point(point3.getX() + 3, point3.getY() - 3);
        Point point8 = new Point(point4.getX() + 3, point4.getY() + 3);
        int color = getColor(point8, point5);
        return color != 0 && getColor(point5, point6) == color && getColor(point6, point7) == color && getColor(point7, point8) == color;
    }

    private int getColor(Point point, Point point2) {
        float distance = distance(point, point2);
        float x = (point2.getX() - point.getX()) / distance;
        float y = (point2.getY() - point.getY()) / distance;
        int i = 0;
        float x2 = point.getX();
        float y2 = point.getY();
        boolean z = this.image.get(point.getX(), point.getY());
        int ceil = (int) Math.ceil(distance);
        for (int i2 = 0; i2 < ceil; i2++) {
            x2 += x;
            y2 += y;
            if (this.image.get(MathUtils.round(x2), MathUtils.round(y2)) != z) {
                i++;
            }
        }
        float f = i / distance;
        if (f <= 0.1f || f >= 0.9f) {
            return ((f > 0.1f ? 1 : (f == 0.1f ? 0 : -1)) <= 0) == z ? 1 : -1;
        }
        return 0;
    }

    private Point getFirstDifferent(Point point, boolean z, int i, int i2) {
        int x = point.getX() + i;
        int y = point.getY();
        while (true) {
            y += i2;
            if (!isValid(x, y) || this.image.get(x, y) != z) {
                break;
            }
            x += i;
        }
        int i3 = y - i2;
        int i4 = x - i;
        while (isValid(i4, i3) && this.image.get(i4, i3) == z) {
            i4 += i;
        }
        int i5 = i4 - i;
        int i6 = i3;
        while (isValid(i5, i6) && this.image.get(i5, i6) == z) {
            i6 += i2;
        }
        return new Point(i5, i6 - i2);
    }

    private static ResultPoint[] expandSquare(ResultPoint[] resultPointArr, float f, float f2) {
        float f3 = f2 / (2.0f * f);
        float x = resultPointArr[0].getX() - resultPointArr[2].getX();
        float y = resultPointArr[0].getY() - resultPointArr[2].getY();
        float x2 = (resultPointArr[0].getX() + resultPointArr[2].getX()) / 2.0f;
        float y2 = (resultPointArr[0].getY() + resultPointArr[2].getY()) / 2.0f;
        ResultPoint resultPoint = new ResultPoint((f3 * x) + x2, (f3 * y) + y2);
        ResultPoint resultPoint2 = new ResultPoint(x2 - (x * f3), y2 - (y * f3));
        float x3 = resultPointArr[1].getX() - resultPointArr[3].getX();
        float y3 = resultPointArr[1].getY() - resultPointArr[3].getY();
        float x4 = (resultPointArr[1].getX() + resultPointArr[3].getX()) / 2.0f;
        float y4 = (resultPointArr[1].getY() + resultPointArr[3].getY()) / 2.0f;
        return new ResultPoint[]{resultPoint, new ResultPoint((f3 * x3) + x4, (f3 * y3) + y4), resultPoint2, new ResultPoint(x4 - (x3 * f3), y4 - (f3 * y3))};
    }

    private boolean isValid(int i, int i2) {
        return i >= 0 && i < this.image.getWidth() && i2 > 0 && i2 < this.image.getHeight();
    }

    private boolean isValid(ResultPoint resultPoint) {
        return isValid(MathUtils.round(resultPoint.getX()), MathUtils.round(resultPoint.getY()));
    }

    private static float distance(Point point, Point point2) {
        return MathUtils.distance(point.getX(), point.getY(), point2.getX(), point2.getY());
    }

    private static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.distance(resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    private int getDimension() {
        if (this.compact) {
            return (this.nbLayers * 4) + 11;
        }
        if (this.nbLayers <= 4) {
            return (this.nbLayers * 4) + 15;
        }
        return (this.nbLayers * 4) + ((((this.nbLayers - 4) / 8) + 1) * 2) + 15;
    }

    static final class Point {

        /* renamed from: x */
        private final int f7033x;

        /* renamed from: y */
        private final int f7034y;

        ResultPoint toResultPoint() {
            return new ResultPoint(getX(), getY());
        }

        Point(int i, int i2) {
            this.f7033x = i;
            this.f7034y = i2;
        }

        int getX() {
            return this.f7033x;
        }

        int getY() {
            return this.f7034y;
        }

        public String toString() {
            return "<" + this.f7033x + ' ' + this.f7034y + '>';
        }
    }
}
