package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;

/* loaded from: classes.dex */
public final class Encoder {
    public static final int DEFAULT_AZTEC_LAYERS = 0;
    public static final int DEFAULT_EC_PERCENT = 33;
    private static final int MAX_NB_BITS = 32;
    private static final int MAX_NB_BITS_COMPACT = 4;
    private static final int[] WORD_SIZE = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private Encoder() {
    }

    public static AztecCode encode(byte[] bArr) {
        return encode(bArr, 33, 0);
    }

    public static AztecCode encode(byte[] bArr, int i, int i2) {
        boolean z;
        int i3;
        BitArray bitArray;
        int i4;
        int i5;
        int i6;
        BitArray encode = new HighLevelEncoder(bArr).encode();
        int size = ((encode.getSize() * i) / 100) + 11;
        int size2 = encode.getSize() + size;
        if (i2 != 0) {
            boolean z2 = i2 < 0;
            i5 = Math.abs(i2);
            if (i5 > (z2 ? 4 : 32)) {
                throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i2)));
            }
            i3 = totalBitsInLayer(i5, z2);
            int i7 = WORD_SIZE[i5];
            int i8 = i3 - (i3 % i7);
            BitArray stuffBits = stuffBits(encode, i7);
            if (stuffBits.getSize() + size > i8) {
                throw new IllegalArgumentException("Data to large for user specified layer");
            }
            if (z2 && stuffBits.getSize() > (i7 << 6)) {
                throw new IllegalArgumentException("Data to large for user specified layer");
            }
            bitArray = stuffBits;
            i4 = i7;
            z = z2;
        } else {
            int i9 = 0;
            BitArray bitArray2 = null;
            int i10 = 0;
            while (i10 <= 32) {
                z = i10 <= 3;
                int i11 = z ? i10 + 1 : i10;
                i3 = totalBitsInLayer(i11, z);
                if (size2 <= i3) {
                    if (i9 != WORD_SIZE[i11]) {
                        i9 = WORD_SIZE[i11];
                        bitArray2 = stuffBits(encode, i9);
                    }
                    int i12 = i3 - (i3 % i9);
                    if ((!z || bitArray2.getSize() <= (i9 << 6)) && bitArray2.getSize() + size <= i12) {
                        bitArray = bitArray2;
                        i4 = i9;
                        i5 = i11;
                    }
                }
                i10++;
            }
            throw new IllegalArgumentException("Data too large for an Aztec code");
        }
        BitArray generateCheckWords = generateCheckWords(bitArray, i3, i4);
        int size3 = bitArray.getSize() / i4;
        BitArray generateModeMessage = generateModeMessage(z, i5, size3);
        int i13 = (i5 << 2) + (z ? 11 : 14);
        int[] iArr = new int[i13];
        if (z) {
            for (int i14 = 0; i14 < iArr.length; i14++) {
                iArr[i14] = i14;
            }
            i6 = i13;
        } else {
            i6 = i13 + 1 + ((((i13 / 2) - 1) / 15) * 2);
            int i15 = i13 / 2;
            int i16 = i6 / 2;
            for (int i17 = 0; i17 < i15; i17++) {
                iArr[(i15 - i17) - 1] = (i16 - r7) - 1;
                iArr[i15 + i17] = (i17 / 15) + i17 + i16 + 1;
            }
        }
        BitMatrix bitMatrix = new BitMatrix(i6);
        int i18 = 0;
        for (int i19 = 0; i19 < i5; i19++) {
            int i20 = ((i5 - i19) << 2) + (z ? 9 : 12);
            for (int i21 = 0; i21 < i20; i21++) {
                int i22 = i21 << 1;
                for (int i23 = 0; i23 < 2; i23++) {
                    if (generateCheckWords.get(i18 + i22 + i23)) {
                        bitMatrix.set(iArr[(i19 << 1) + i23], iArr[(i19 << 1) + i21]);
                    }
                    if (generateCheckWords.get((i20 << 1) + i18 + i22 + i23)) {
                        bitMatrix.set(iArr[(i19 << 1) + i21], iArr[((i13 - 1) - (i19 << 1)) - i23]);
                    }
                    if (generateCheckWords.get((i20 << 2) + i18 + i22 + i23)) {
                        bitMatrix.set(iArr[((i13 - 1) - (i19 << 1)) - i23], iArr[((i13 - 1) - (i19 << 1)) - i21]);
                    }
                    if (generateCheckWords.get((i20 * 6) + i18 + i22 + i23)) {
                        bitMatrix.set(iArr[((i13 - 1) - (i19 << 1)) - i21], iArr[(i19 << 1) + i23]);
                    }
                }
            }
            i18 = (i20 << 3) + i18;
        }
        drawModeMessage(bitMatrix, z, i6, generateModeMessage);
        if (z) {
            drawBullsEye(bitMatrix, i6 / 2, 5);
        } else {
            drawBullsEye(bitMatrix, i6 / 2, 7);
            int i24 = 0;
            int i25 = 0;
            while (i24 < (i13 / 2) - 1) {
                for (int i26 = (i6 / 2) & 1; i26 < i6; i26 += 2) {
                    bitMatrix.set((i6 / 2) - i25, i26);
                    bitMatrix.set((i6 / 2) + i25, i26);
                    bitMatrix.set(i26, (i6 / 2) - i25);
                    bitMatrix.set(i26, (i6 / 2) + i25);
                }
                i24 += 15;
                i25 += 16;
            }
        }
        AztecCode aztecCode = new AztecCode();
        aztecCode.setCompact(z);
        aztecCode.setSize(i6);
        aztecCode.setLayers(i5);
        aztecCode.setCodeWords(size3);
        aztecCode.setMatrix(bitMatrix);
        return aztecCode;
    }

    private static void drawBullsEye(BitMatrix bitMatrix, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            for (int i4 = i - i3; i4 <= i + i3; i4++) {
                bitMatrix.set(i4, i - i3);
                bitMatrix.set(i4, i + i3);
                bitMatrix.set(i - i3, i4);
                bitMatrix.set(i + i3, i4);
            }
        }
        bitMatrix.set(i - i2, i - i2);
        bitMatrix.set((i - i2) + 1, i - i2);
        bitMatrix.set(i - i2, (i - i2) + 1);
        bitMatrix.set(i + i2, i - i2);
        bitMatrix.set(i + i2, (i - i2) + 1);
        bitMatrix.set(i + i2, (i + i2) - 1);
    }

    static BitArray generateModeMessage(boolean z, int i, int i2) {
        BitArray bitArray = new BitArray();
        if (z) {
            bitArray.appendBits(i - 1, 2);
            bitArray.appendBits(i2 - 1, 6);
            return generateCheckWords(bitArray, 28, 4);
        }
        bitArray.appendBits(i - 1, 5);
        bitArray.appendBits(i2 - 1, 11);
        return generateCheckWords(bitArray, 40, 4);
    }

    private static void drawModeMessage(BitMatrix bitMatrix, boolean z, int i, BitArray bitArray) {
        int i2 = 0;
        int i3 = i / 2;
        if (z) {
            while (i2 < 7) {
                int i4 = (i3 - 3) + i2;
                if (bitArray.get(i2)) {
                    bitMatrix.set(i4, i3 - 5);
                }
                if (bitArray.get(i2 + 7)) {
                    bitMatrix.set(i3 + 5, i4);
                }
                if (bitArray.get(20 - i2)) {
                    bitMatrix.set(i4, i3 + 5);
                }
                if (bitArray.get(27 - i2)) {
                    bitMatrix.set(i3 - 5, i4);
                }
                i2++;
            }
            return;
        }
        while (i2 < 10) {
            int i5 = (i3 - 5) + i2 + (i2 / 5);
            if (bitArray.get(i2)) {
                bitMatrix.set(i5, i3 - 7);
            }
            if (bitArray.get(i2 + 10)) {
                bitMatrix.set(i3 + 7, i5);
            }
            if (bitArray.get(29 - i2)) {
                bitMatrix.set(i5, i3 + 7);
            }
            if (bitArray.get(39 - i2)) {
                bitMatrix.set(i3 - 7, i5);
            }
            i2++;
        }
    }

    private static BitArray generateCheckWords(BitArray bitArray, int i, int i2) {
        int size = bitArray.getSize() / i2;
        ReedSolomonEncoder reedSolomonEncoder = new ReedSolomonEncoder(getGF(i2));
        int i3 = i / i2;
        int[] bitsToWords = bitsToWords(bitArray, i2, i3);
        reedSolomonEncoder.encode(bitsToWords, i3 - size);
        BitArray bitArray2 = new BitArray();
        bitArray2.appendBits(0, i % i2);
        for (int i4 : bitsToWords) {
            bitArray2.appendBits(i4, i2);
        }
        return bitArray2;
    }

    private static int[] bitsToWords(BitArray bitArray, int i, int i2) {
        int[] iArr = new int[i2];
        int size = bitArray.getSize() / i;
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i4 |= bitArray.get((i3 * i) + i5) ? 1 << ((i - i5) - 1) : 0;
            }
            iArr[i3] = i4;
        }
        return iArr;
    }

    private static GenericGF getGF(int i) {
        switch (i) {
            case 4:
                return GenericGF.AZTEC_PARAM;
            case 5:
            case 7:
            case 9:
            case 11:
            default:
                throw new IllegalArgumentException("Unsupported word size " + i);
            case 6:
                return GenericGF.AZTEC_DATA_6;
            case 8:
                return GenericGF.AZTEC_DATA_8;
            case 10:
                return GenericGF.AZTEC_DATA_10;
            case 12:
                return GenericGF.AZTEC_DATA_12;
        }
    }

    static BitArray stuffBits(BitArray bitArray, int i) {
        int i2;
        BitArray bitArray2 = new BitArray();
        int size = bitArray.getSize();
        int i3 = (1 << i) - 2;
        int i4 = 0;
        while (i4 < size) {
            int i5 = 0;
            for (int i6 = 0; i6 < i; i6++) {
                if (i4 + i6 >= size || bitArray.get(i4 + i6)) {
                    i5 |= 1 << ((i - 1) - i6);
                }
            }
            if ((i5 & i3) == i3) {
                bitArray2.appendBits(i5 & i3, i);
                i2 = i4 - 1;
            } else if ((i5 & i3) == 0) {
                bitArray2.appendBits(i5 | 1, i);
                i2 = i4 - 1;
            } else {
                bitArray2.appendBits(i5, i);
                i2 = i4;
            }
            i4 = i2 + i;
        }
        return bitArray2;
    }

    private static int totalBitsInLayer(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }
}
