package com.google.zxing.aztec.decoder;

import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.zxing.FormatException;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class Decoder {
    private AztecDetectorResult ddata;
    private static final String[] UPPER_TABLE = {"CTRL_PS", " ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] LOWER_TABLE = {"CTRL_PS", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", TtmlNode.TAG_P, "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] MIXED_TABLE = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};
    private static final String[] PUNCT_TABLE = {"", "\r", "\r\n", ". ", ", ", ": ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", ":", ";", "<", "=", ">", "?", "[", "]", "{", "}", "CTRL_UL"};
    private static final String[] DIGIT_TABLE = {"CTRL_PS", " ", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ",", ".", "CTRL_UL", "CTRL_US"};

    private enum Table {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    public DecoderResult decode(AztecDetectorResult aztecDetectorResult) {
        this.ddata = aztecDetectorResult;
        boolean[] correctBits = correctBits(extractBits(aztecDetectorResult.getBits()));
        DecoderResult decoderResult = new DecoderResult(convertBoolArrayToByteArray(correctBits), getEncodedData(correctBits), null, null);
        decoderResult.setNumBits(correctBits.length);
        return decoderResult;
    }

    public static String highLevelDecode(boolean[] zArr) {
        return getEncodedData(zArr);
    }

    private static String getEncodedData(boolean[] zArr) {
        int i;
        Table table;
        Table table2;
        int length = zArr.length;
        Table table3 = Table.UPPER;
        Table table4 = Table.UPPER;
        StringBuilder sb = new StringBuilder(20);
        int i2 = 0;
        Table table5 = table4;
        while (i2 < length) {
            if (table5 == Table.BINARY) {
                if (length - i2 < 5) {
                    break;
                }
                int readCode = readCode(zArr, i2, 5);
                int i3 = i2 + 5;
                if (readCode == 0) {
                    if (length - i3 < 11) {
                        break;
                    }
                    readCode = readCode(zArr, i3, 11) + 31;
                    i3 += 11;
                }
                int i4 = 0;
                while (true) {
                    if (i4 >= readCode) {
                        i = i3;
                        break;
                    }
                    if (length - i3 < 8) {
                        i = length;
                        break;
                    }
                    sb.append((char) readCode(zArr, i3, 8));
                    i3 += 8;
                    i4++;
                }
                i2 = i;
                table5 = table3;
            } else {
                int i5 = table5 == Table.DIGIT ? 4 : 5;
                if (length - i2 < i5) {
                    break;
                }
                int readCode2 = readCode(zArr, i2, i5);
                i2 += i5;
                String character = getCharacter(table5, readCode2);
                if (character.startsWith("CTRL_")) {
                    table = getTable(character.charAt(5));
                    if (character.charAt(6) == 'L') {
                        table5 = table;
                        table3 = table;
                    } else {
                        table2 = table5;
                    }
                } else {
                    sb.append(character);
                    table = table3;
                    table2 = table3;
                }
                table5 = table;
                table3 = table2;
            }
        }
        return sb.toString();
    }

    private static Table getTable(char c) {
        switch (c) {
            case 'B':
                return Table.BINARY;
            case 'D':
                return Table.DIGIT;
            case 'L':
                return Table.LOWER;
            case 'M':
                return Table.MIXED;
            case 'P':
                return Table.PUNCT;
            default:
                return Table.UPPER;
        }
    }

    private static String getCharacter(Table table, int i) {
        switch (table) {
            case UPPER:
                return UPPER_TABLE[i];
            case LOWER:
                return LOWER_TABLE[i];
            case MIXED:
                return MIXED_TABLE[i];
            case PUNCT:
                return PUNCT_TABLE[i];
            case DIGIT:
                return DIGIT_TABLE[i];
            default:
                throw new IllegalStateException("Bad table");
        }
    }

    private boolean[] correctBits(boolean[] zArr) {
        GenericGF genericGF;
        int i;
        int i2 = 8;
        if (this.ddata.getNbLayers() <= 2) {
            i2 = 6;
            genericGF = GenericGF.AZTEC_DATA_6;
        } else if (this.ddata.getNbLayers() <= 8) {
            genericGF = GenericGF.AZTEC_DATA_8;
        } else if (this.ddata.getNbLayers() <= 22) {
            i2 = 10;
            genericGF = GenericGF.AZTEC_DATA_10;
        } else {
            i2 = 12;
            genericGF = GenericGF.AZTEC_DATA_12;
        }
        int nbDatablocks = this.ddata.getNbDatablocks();
        int length = zArr.length / i2;
        if (length < nbDatablocks) {
            throw FormatException.getFormatInstance();
        }
        int length2 = zArr.length % i2;
        int[] iArr = new int[length];
        int i3 = 0;
        while (i3 < length) {
            iArr[i3] = readCode(zArr, length2, i2);
            i3++;
            length2 += i2;
        }
        try {
            new ReedSolomonDecoder(genericGF).decode(iArr, length - nbDatablocks);
            int i4 = (1 << i2) - 1;
            int i5 = 0;
            for (int i6 = 0; i6 < nbDatablocks; i6++) {
                int i7 = iArr[i6];
                if (i7 == 0 || i7 == i4) {
                    throw FormatException.getFormatInstance();
                }
                if (i7 == 1 || i7 == i4 - 1) {
                    i5++;
                }
            }
            boolean[] zArr2 = new boolean[(nbDatablocks * i2) - i5];
            int i8 = 0;
            int i9 = 0;
            while (i8 < nbDatablocks) {
                int i10 = iArr[i8];
                if (i10 == 1 || i10 == i4 - 1) {
                    Arrays.fill(zArr2, i9, (i9 + i2) - 1, i10 > 1);
                    i = (i2 - 1) + i9;
                } else {
                    int i11 = i2 - 1;
                    while (i11 >= 0) {
                        int i12 = i9 + 1;
                        zArr2[i9] = ((1 << i11) & i10) != 0;
                        i11--;
                        i9 = i12;
                    }
                    i = i9;
                }
                i8++;
                i9 = i;
            }
            return zArr2;
        } catch (ReedSolomonException e) {
            throw FormatException.getFormatInstance(e);
        }
    }

    private boolean[] extractBits(BitMatrix bitMatrix) {
        boolean isCompact = this.ddata.isCompact();
        int nbLayers = this.ddata.getNbLayers();
        int i = (isCompact ? 11 : 14) + (nbLayers << 2);
        int[] iArr = new int[i];
        boolean[] zArr = new boolean[totalBitsInLayer(nbLayers, isCompact)];
        if (isCompact) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr[i2] = i2;
            }
        } else {
            int i3 = i / 2;
            int i4 = ((i + 1) + ((((i / 2) - 1) / 15) * 2)) / 2;
            for (int i5 = 0; i5 < i3; i5++) {
                iArr[(i3 - i5) - 1] = (i4 - r6) - 1;
                iArr[i3 + i5] = (i5 / 15) + i5 + i4 + 1;
            }
        }
        int i6 = 0;
        for (int i7 = 0; i7 < nbLayers; i7++) {
            int i8 = ((nbLayers - i7) << 2) + (isCompact ? 9 : 12);
            int i9 = i7 << 1;
            int i10 = (i - 1) - i9;
            for (int i11 = 0; i11 < i8; i11++) {
                int i12 = i11 << 1;
                for (int i13 = 0; i13 < 2; i13++) {
                    zArr[i6 + i12 + i13] = bitMatrix.get(iArr[i9 + i13], iArr[i9 + i11]);
                    zArr[(i8 * 2) + i6 + i12 + i13] = bitMatrix.get(iArr[i9 + i11], iArr[i10 - i13]);
                    zArr[(i8 * 4) + i6 + i12 + i13] = bitMatrix.get(iArr[i10 - i13], iArr[i10 - i11]);
                    zArr[(i8 * 6) + i6 + i12 + i13] = bitMatrix.get(iArr[i10 - i11], iArr[i9 + i13]);
                }
            }
            i6 = (i8 << 3) + i6;
        }
        return zArr;
    }

    private static int readCode(boolean[] zArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i + i2; i4++) {
            i3 <<= 1;
            if (zArr[i4]) {
                i3 |= 1;
            }
        }
        return i3;
    }

    private static byte readByte(boolean[] zArr, int i) {
        int length = zArr.length - i;
        return length >= 8 ? (byte) readCode(zArr, i, 8) : (byte) (readCode(zArr, i, length) << (8 - length));
    }

    static byte[] convertBoolArrayToByteArray(boolean[] zArr) {
        byte[] bArr = new byte[(zArr.length + 7) / 8];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = readByte(zArr, i << 3);
        }
        return bArr;
    }

    private static int totalBitsInLayer(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }
}
