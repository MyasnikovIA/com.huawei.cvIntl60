package com.google.zxing.oned;

import com.google.api.client.http.HttpStatusCodes;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes.dex */
public final class Code93Reader extends OneDReader {
    private static final int ASTERISK_ENCODING;
    static final int[] CHARACTER_ENCODINGS;
    static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*";
    private static final char[] ALPHABET = ALPHABET_STRING.toCharArray();
    private final StringBuilder decodeRowResult = new StringBuilder(20);
    private final int[] counters = new int[6];

    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, 290, 336, 274, 266, 424, 420, 418, HttpStatusCodes.STATUS_CODE_NOT_FOUND, 402, 394, 360, 356, 354, 308, 282, 344, 332, 326, 300, 278, 436, 434, 428, 422, 406, 410, 364, 358, 310, 314, HttpStatusCodes.STATUS_CODE_FOUND, 468, 466, 458, 366, 374, 430, 294, 474, 470, 306, 350};
        CHARACTER_ENCODINGS = iArr;
        ASTERISK_ENCODING = iArr[47];
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) {
        int nextSet = bitArray.getNextSet(findAsteriskPattern(bitArray)[1]);
        int size = bitArray.getSize();
        int[] iArr = this.counters;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.decodeRowResult;
        sb.setLength(0);
        while (true) {
            recordPattern(bitArray, nextSet, iArr);
            int pattern = toPattern(iArr);
            if (pattern < 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            char patternToChar = patternToChar(pattern);
            sb.append(patternToChar);
            int i2 = nextSet;
            for (int i3 : iArr) {
                i2 += i3;
            }
            int nextSet2 = bitArray.getNextSet(i2);
            if (patternToChar == '*') {
                sb.deleteCharAt(sb.length() - 1);
                int i4 = 0;
                for (int i5 : iArr) {
                    i4 += i5;
                }
                if (nextSet2 == size || !bitArray.get(nextSet2)) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (sb.length() < 2) {
                    throw NotFoundException.getNotFoundInstance();
                }
                checkChecksums(sb);
                sb.setLength(sb.length() - 2);
                return new Result(decodeExtended(sb), null, new ResultPoint[]{new ResultPoint((r4[1] + r4[0]) / 2.0f, i), new ResultPoint(nextSet + (i4 / 2.0f), i)}, BarcodeFormat.CODE_93);
            }
            nextSet = nextSet2;
        }
    }

    private int[] findAsteriskPattern(BitArray bitArray) {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        Arrays.fill(this.counters, 0);
        int[] iArr = this.counters;
        int length = iArr.length;
        int i = 0;
        boolean z = false;
        int i2 = nextSet;
        for (int i3 = nextSet; i3 < size; i3++) {
            if (bitArray.get(i3) ^ z) {
                iArr[i] = iArr[i] + 1;
            } else {
                if (i == length - 1) {
                    if (toPattern(iArr) == ASTERISK_ENCODING) {
                        return new int[]{i2, i3};
                    }
                    i2 += iArr[0] + iArr[1];
                    System.arraycopy(iArr, 2, iArr, 0, length - 2);
                    iArr[length - 2] = 0;
                    iArr[length - 1] = 0;
                    i--;
                } else {
                    i++;
                }
                iArr[i] = 1;
                z = !z;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int toPattern(int[] iArr) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = iArr[i] + i2;
            i++;
            i2 = i3;
        }
        int length2 = iArr.length;
        int i4 = 0;
        for (int i5 = 0; i5 < length2; i5++) {
            int round = Math.round((iArr[i5] * 9.0f) / i2);
            if (round <= 0 || round > 4) {
                return -1;
            }
            if ((i5 & 1) == 0) {
                for (int i6 = 0; i6 < round; i6++) {
                    i4 = (i4 << 1) | 1;
                }
            } else {
                i4 <<= round;
            }
        }
        return i4;
    }

    private static char patternToChar(int i) {
        for (int i2 = 0; i2 < CHARACTER_ENCODINGS.length; i2++) {
            if (CHARACTER_ENCODINGS[i2] == i) {
                return ALPHABET[i2];
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static String decodeExtended(CharSequence charSequence) {
        int i;
        char c;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (charAt >= 'a' && charAt <= 'd') {
                if (i2 >= length - 1) {
                    throw FormatException.getFormatInstance();
                }
                char charAt2 = charSequence.charAt(i2 + 1);
                switch (charAt) {
                    case 'a':
                        if (charAt2 >= 'A' && charAt2 <= 'Z') {
                            c = (char) (charAt2 - '@');
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 'b':
                        if (charAt2 >= 'A' && charAt2 <= 'E') {
                            c = (char) (charAt2 - '&');
                            break;
                        } else if (charAt2 >= 'F' && charAt2 <= 'J') {
                            c = (char) (charAt2 - 11);
                            break;
                        } else if (charAt2 >= 'K' && charAt2 <= 'O') {
                            c = (char) (charAt2 + 16);
                            break;
                        } else if (charAt2 >= 'P' && charAt2 <= 'S') {
                            c = (char) (charAt2 + '+');
                            break;
                        } else if (charAt2 >= 'T' && charAt2 <= 'Z') {
                            c = 127;
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 'c':
                        if (charAt2 >= 'A' && charAt2 <= 'O') {
                            c = (char) (charAt2 - ' ');
                            break;
                        } else if (charAt2 == 'Z') {
                            c = ':';
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    case 'd':
                        if (charAt2 >= 'A' && charAt2 <= 'Z') {
                            c = (char) (charAt2 + ' ');
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    default:
                        c = 0;
                        break;
                }
                sb.append(c);
                i = i2 + 1;
            } else {
                sb.append(charAt);
                i = i2;
            }
            i2 = i + 1;
        }
        return sb.toString();
    }

    private static void checkChecksums(CharSequence charSequence) {
        int length = charSequence.length();
        checkOneChecksum(charSequence, length - 2, 20);
        checkOneChecksum(charSequence, length - 1, 15);
    }

    private static void checkOneChecksum(CharSequence charSequence, int i, int i2) {
        int i3 = 0;
        int i4 = i - 1;
        int i5 = 1;
        while (i4 >= 0) {
            i3 += ALPHABET_STRING.indexOf(charSequence.charAt(i4)) * i5;
            int i6 = i5 + 1;
            if (i6 > i2) {
                i6 = 1;
            }
            i4--;
            i5 = i6;
        }
        if (charSequence.charAt(i) != ALPHABET[i3 % 47]) {
            throw ChecksumException.getChecksumInstance();
        }
    }
}
