package com.google.zxing.oned;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class OneDReader implements Reader {
    public abstract Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map);

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) {
        return decode(binaryBitmap, null);
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) {
        try {
            return doDecode(binaryBitmap, map);
        } catch (NotFoundException e) {
            if ((map != null && map.containsKey(DecodeHintType.TRY_HARDER)) && binaryBitmap.isRotateSupported()) {
                BinaryBitmap rotateCounterClockwise = binaryBitmap.rotateCounterClockwise();
                Result doDecode = doDecode(rotateCounterClockwise, map);
                Map<ResultMetadataType, Object> resultMetadata = doDecode.getResultMetadata();
                int i = 270;
                if (resultMetadata != null && resultMetadata.containsKey(ResultMetadataType.ORIENTATION)) {
                    i = (((Integer) resultMetadata.get(ResultMetadataType.ORIENTATION)).intValue() + 270) % 360;
                }
                doDecode.putMetadata(ResultMetadataType.ORIENTATION, Integer.valueOf(i));
                ResultPoint[] resultPoints = doDecode.getResultPoints();
                if (resultPoints != null) {
                    int height = rotateCounterClockwise.getHeight();
                    for (int i2 = 0; i2 < resultPoints.length; i2++) {
                        resultPoints[i2] = new ResultPoint((height - resultPoints[i2].getY()) - 1.0f, resultPoints[i2].getX());
                    }
                }
                return doDecode;
            }
            throw e;
        }
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    private Result doDecode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) {
        int width = binaryBitmap.getWidth();
        int height = binaryBitmap.getHeight();
        BitArray bitArray = new BitArray(width);
        int i = height >> 1;
        boolean z = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        int max = Math.max(1, height >> (z ? 8 : 5));
        int i2 = z ? height : 15;
        Map<DecodeHintType, ?> map2 = map;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = (i3 + 1) / 2;
            if (!((i3 & 1) == 0)) {
                i4 = -i4;
            }
            int i5 = i + (i4 * max);
            if (i5 < 0 || i5 >= height) {
                break;
            }
            try {
                bitArray = binaryBitmap.getBlackRow(i5, bitArray);
                for (int i6 = 0; i6 < 2; i6++) {
                    if (i6 == 1) {
                        bitArray.reverse();
                        if (map2 != null && map2.containsKey(DecodeHintType.NEED_RESULT_POINT_CALLBACK)) {
                            EnumMap enumMap = new EnumMap(DecodeHintType.class);
                            enumMap.putAll(map2);
                            enumMap.remove(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
                            map2 = enumMap;
                        }
                    }
                    try {
                        Result decodeRow = decodeRow(i5, bitArray, map2);
                        if (i6 == 1) {
                            decodeRow.putMetadata(ResultMetadataType.ORIENTATION, 180);
                            ResultPoint[] resultPoints = decodeRow.getResultPoints();
                            if (resultPoints != null) {
                                resultPoints[0] = new ResultPoint((width - resultPoints[0].getX()) - 1.0f, resultPoints[0].getY());
                                resultPoints[1] = new ResultPoint((width - resultPoints[1].getX()) - 1.0f, resultPoints[1].getY());
                            }
                        }
                        return decodeRow;
                    } catch (ReaderException e) {
                    }
                }
            } catch (NotFoundException e2) {
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    protected static void recordPattern(BitArray bitArray, int i, int[] iArr) {
        int length = iArr.length;
        Arrays.fill(iArr, 0, length, 0);
        int size = bitArray.getSize();
        if (i >= size) {
            throw NotFoundException.getNotFoundInstance();
        }
        boolean z = !bitArray.get(i);
        int i2 = 0;
        while (i < size) {
            if (bitArray.get(i) ^ z) {
                iArr[i2] = iArr[i2] + 1;
            } else {
                i2++;
                if (i2 == length) {
                    break;
                }
                iArr[i2] = 1;
                z = !z;
            }
            i++;
        }
        if (i2 != length) {
            if (i2 != length - 1 || i != size) {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }

    protected static void recordPatternInReverse(BitArray bitArray, int i, int[] iArr) {
        int length = iArr.length;
        boolean z = bitArray.get(i);
        while (i > 0 && length >= 0) {
            i--;
            if (bitArray.get(i) != z) {
                length--;
                z = !z;
            }
        }
        if (length >= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        recordPattern(bitArray, i + 1, iArr);
    }

    protected static float patternMatchVariance(int[] iArr, int[] iArr2, float f) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i2 += iArr[i3];
            i += iArr2[i3];
        }
        if (i2 < i) {
            return Float.POSITIVE_INFINITY;
        }
        float f2 = i2 / i;
        float f3 = f * f2;
        float f4 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = iArr[i4];
            float f5 = iArr2[i4] * f2;
            float f6 = ((float) i5) > f5 ? i5 - f5 : f5 - i5;
            if (f6 > f3) {
                return Float.POSITIVE_INFINITY;
            }
            f4 += f6;
        }
        return f4 / i2;
    }
}
