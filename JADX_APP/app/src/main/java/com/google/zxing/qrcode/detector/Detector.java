package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.PerspectiveTransform;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.qrcode.decoder.Version;
import java.util.Map;

/* loaded from: classes.dex */
public class Detector {
    private final BitMatrix image;
    private ResultPointCallback resultPointCallback;

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    protected final BitMatrix getImage() {
        return this.image;
    }

    protected final ResultPointCallback getResultPointCallback() {
        return this.resultPointCallback;
    }

    public DetectorResult detect() {
        return detect(null);
    }

    public final DetectorResult detect(Map<DecodeHintType, ?> map) {
        this.resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        return processFinderPatternInfo(new FinderPatternFinder(this.image, this.resultPointCallback).find(map));
    }

    protected final DetectorResult processFinderPatternInfo(FinderPatternInfo finderPatternInfo) {
        ResultPoint[] resultPointArr;
        FinderPattern topLeft = finderPatternInfo.getTopLeft();
        FinderPattern topRight = finderPatternInfo.getTopRight();
        FinderPattern bottomLeft = finderPatternInfo.getBottomLeft();
        float calculateModuleSize = calculateModuleSize(topLeft, topRight, bottomLeft);
        if (calculateModuleSize < 1.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int computeDimension = computeDimension(topLeft, topRight, bottomLeft, calculateModuleSize);
        Version provisionalVersionForDimension = Version.getProvisionalVersionForDimension(computeDimension);
        int dimensionForVersion = provisionalVersionForDimension.getDimensionForVersion() - 7;
        AlignmentPattern alignmentPattern = null;
        if (provisionalVersionForDimension.getAlignmentPatternCenters().length > 0) {
            float x = (topRight.getX() - topLeft.getX()) + bottomLeft.getX();
            float y = (topRight.getY() - topLeft.getY()) + bottomLeft.getY();
            float f = 1.0f - (3.0f / dimensionForVersion);
            int x2 = (int) (((x - topLeft.getX()) * f) + topLeft.getX());
            int y2 = (int) (topLeft.getY() + (f * (y - topLeft.getY())));
            for (int i = 4; i <= 16; i <<= 1) {
                try {
                    alignmentPattern = findAlignmentInRegion(calculateModuleSize, x2, y2, i);
                    break;
                } catch (NotFoundException e) {
                }
            }
        }
        BitMatrix sampleGrid = sampleGrid(this.image, createTransform(topLeft, topRight, bottomLeft, alignmentPattern, computeDimension), computeDimension);
        if (alignmentPattern == null) {
            resultPointArr = new ResultPoint[]{bottomLeft, topLeft, topRight};
        } else {
            resultPointArr = new ResultPoint[]{bottomLeft, topLeft, topRight, alignmentPattern};
        }
        return new DetectorResult(sampleGrid, resultPointArr);
    }

    private static PerspectiveTransform createTransform(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i) {
        float x;
        float y;
        float f;
        float f2;
        float f3 = i - 3.5f;
        if (resultPoint4 != null) {
            x = resultPoint4.getX();
            y = resultPoint4.getY();
            float f4 = f3 - 3.0f;
            f = f4;
            f2 = f4;
        } else {
            x = (resultPoint2.getX() - resultPoint.getX()) + resultPoint3.getX();
            y = (resultPoint2.getY() - resultPoint.getY()) + resultPoint3.getY();
            f = f3;
            f2 = f3;
        }
        return PerspectiveTransform.quadrilateralToQuadrilateral(3.5f, 3.5f, f3, 3.5f, f2, f, 3.5f, f3, resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY(), x, y, resultPoint3.getX(), resultPoint3.getY());
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, PerspectiveTransform perspectiveTransform, int i) {
        return GridSampler.getInstance().sampleGrid(bitMatrix, i, i, perspectiveTransform);
    }

    private static int computeDimension(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, float f) {
        int round = ((MathUtils.round(ResultPoint.distance(resultPoint, resultPoint2) / f) + MathUtils.round(ResultPoint.distance(resultPoint, resultPoint3) / f)) / 2) + 7;
        switch (round & 3) {
            case 0:
                return round + 1;
            case 1:
            default:
                return round;
            case 2:
                return round - 1;
            case 3:
                throw NotFoundException.getNotFoundInstance();
        }
    }

    protected final float calculateModuleSize(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        return (calculateModuleSizeOneWay(resultPoint, resultPoint2) + calculateModuleSizeOneWay(resultPoint, resultPoint3)) / 2.0f;
    }

    private float calculateModuleSizeOneWay(ResultPoint resultPoint, ResultPoint resultPoint2) {
        float sizeOfBlackWhiteBlackRunBothWays = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint.getX(), (int) resultPoint.getY(), (int) resultPoint2.getX(), (int) resultPoint2.getY());
        float sizeOfBlackWhiteBlackRunBothWays2 = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint2.getX(), (int) resultPoint2.getY(), (int) resultPoint.getX(), (int) resultPoint.getY());
        if (Float.isNaN(sizeOfBlackWhiteBlackRunBothWays)) {
            return sizeOfBlackWhiteBlackRunBothWays2 / 7.0f;
        }
        if (Float.isNaN(sizeOfBlackWhiteBlackRunBothWays2)) {
            return sizeOfBlackWhiteBlackRunBothWays / 7.0f;
        }
        return (sizeOfBlackWhiteBlackRunBothWays + sizeOfBlackWhiteBlackRunBothWays2) / 14.0f;
    }

    private float sizeOfBlackWhiteBlackRunBothWays(int i, int i2, int i3, int i4) {
        int i5;
        float f;
        float f2;
        int i6 = 0;
        float sizeOfBlackWhiteBlackRun = sizeOfBlackWhiteBlackRun(i, i2, i3, i4);
        int i7 = i - (i3 - i);
        if (i7 < 0) {
            i5 = 0;
            f = i / (i - i7);
        } else if (i7 >= this.image.getWidth()) {
            f = ((this.image.getWidth() - 1) - i) / (i7 - i);
            i5 = this.image.getWidth() - 1;
        } else {
            i5 = i7;
            f = 1.0f;
        }
        int i8 = (int) (i2 - (f * (i4 - i2)));
        if (i8 < 0) {
            f2 = i2 / (i2 - i8);
        } else if (i8 >= this.image.getHeight()) {
            i6 = this.image.getHeight() - 1;
            f2 = ((this.image.getHeight() - 1) - i2) / (i8 - i2);
        } else {
            i6 = i8;
            f2 = 1.0f;
        }
        return (sizeOfBlackWhiteBlackRun(i, i2, (int) (i + (f2 * (i5 - i))), i6) + sizeOfBlackWhiteBlackRun) - 1.0f;
    }

    private float sizeOfBlackWhiteBlackRun(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z = Math.abs(i4 - i2) > Math.abs(i3 - i);
        if (z) {
            i5 = i3;
            i6 = i4;
            i7 = i;
            i8 = i2;
        } else {
            i5 = i4;
            i6 = i3;
            i7 = i2;
            i8 = i;
        }
        int abs = Math.abs(i6 - i8);
        int abs2 = Math.abs(i5 - i7);
        int i10 = (-abs) / 2;
        int i11 = i8 < i6 ? 1 : -1;
        int i12 = i7 < i5 ? 1 : -1;
        int i13 = 0;
        int i14 = i6 + i11;
        int i15 = i7;
        int i16 = i8;
        while (true) {
            int i17 = i10;
            if (i16 == i14) {
                break;
            }
            if ((i13 == 1) == this.image.get(z ? i15 : i16, z ? i16 : i15)) {
                if (i13 == 2) {
                    return MathUtils.distance(i16, i15, i8, i7);
                }
                i13++;
            }
            i10 = i17 + abs2;
            if (i10 <= 0) {
                i9 = i15;
            } else {
                if (i15 == i5) {
                    break;
                }
                i9 = i15 + i12;
                i10 -= abs;
            }
            i16 += i11;
            i15 = i9;
        }
        if (i13 == 2) {
            return MathUtils.distance(i6 + i11, i5, i8, i7);
        }
        return Float.NaN;
    }

    protected final AlignmentPattern findAlignmentInRegion(float f, int i, int i2, float f2) {
        int i3 = (int) (f2 * f);
        int max = Math.max(0, i - i3);
        int min = Math.min(this.image.getWidth() - 1, i + i3);
        if (min - max < f * 3.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int max2 = Math.max(0, i2 - i3);
        int min2 = Math.min(this.image.getHeight() - 1, i3 + i2);
        if (min2 - max2 < f * 3.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        return new AlignmentPatternFinder(this.image, max, max2, min - max, min2 - max2, f, this.resultPointCallback).find();
    }
}
