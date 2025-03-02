package com.google.api.client.repackaged.org.apache.commons.codec.binary;

import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import java.math.BigInteger;

/* loaded from: classes.dex */
public class Base64 extends BaseNCodec {
    private static final int BITS_PER_ENCODED_BYTE = 6;
    private static final int BYTES_PER_ENCODED_BLOCK = 4;
    private static final int BYTES_PER_UNENCODED_BLOCK = 3;
    private static final int MASK_6BITS = 63;
    private int bitWorkArea;
    private final int decodeSize;
    private final byte[] decodeTable;
    private final int encodeSize;
    private final byte[] encodeTable;
    private final byte[] lineSeparator;
    static final byte[] CHUNK_SEPARATOR = {13, 10};
    private static final byte[] STANDARD_ENCODE_TABLE = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, ClosedCaptionCtrl.END_OF_CAPTION};
    private static final byte[] URL_SAFE_ENCODE_TABLE = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, ClosedCaptionCtrl.CARRIAGE_RETURN, 95};
    private static final byte[] DECODE_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, ClosedCaptionCtrl.MID_ROW_CHAN_1, 18, 19, ClosedCaptionCtrl.MISC_CHAN_1, 21, 22, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, 24, ClosedCaptionCtrl.MID_ROW_CHAN_2, -1, -1, -1, -1, 63, -1, 26, 27, ClosedCaptionCtrl.MISC_CHAN_2, 29, 30, ClosedCaptionCtrl.TAB_OFFSET_CHAN_2, ClosedCaptionCtrl.RESUME_CAPTION_LOADING, ClosedCaptionCtrl.BACKSPACE, 34, 35, 36, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_2_ROWS, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_3_ROWS, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_4_ROWS, 40, ClosedCaptionCtrl.RESUME_DIRECT_CAPTIONING, 42, 43, ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY, ClosedCaptionCtrl.CARRIAGE_RETURN, ClosedCaptionCtrl.ERASE_NON_DISPLAYED_MEMORY, ClosedCaptionCtrl.END_OF_CAPTION, 48, 49, 50, 51};

    public Base64() {
        this(0);
    }

    public Base64(boolean z) {
        this(76, CHUNK_SEPARATOR, z);
    }

    public Base64(int i) {
        this(i, CHUNK_SEPARATOR);
    }

    public Base64(int i, byte[] bArr) {
        this(i, bArr, false);
    }

    public Base64(int i, byte[] bArr, boolean z) {
        super(3, 4, i, bArr == null ? 0 : bArr.length);
        this.decodeTable = DECODE_TABLE;
        if (bArr != null) {
            if (containsAlphabetOrPad(bArr)) {
                throw new IllegalArgumentException("lineSeparator must not contain base64 characters: [" + StringUtils.newStringUtf8(bArr) + "]");
            }
            if (i > 0) {
                this.encodeSize = bArr.length + 4;
                this.lineSeparator = new byte[bArr.length];
                System.arraycopy(bArr, 0, this.lineSeparator, 0, bArr.length);
            } else {
                this.encodeSize = 4;
                this.lineSeparator = null;
            }
        } else {
            this.encodeSize = 4;
            this.lineSeparator = null;
        }
        this.decodeSize = this.encodeSize - 1;
        this.encodeTable = z ? URL_SAFE_ENCODE_TABLE : STANDARD_ENCODE_TABLE;
    }

    public boolean isUrlSafe() {
        return this.encodeTable == URL_SAFE_ENCODE_TABLE;
    }

    @Override // com.google.api.client.repackaged.org.apache.commons.codec.binary.BaseNCodec
    void encode(byte[] bArr, int i, int i2) {
        if (!this.eof) {
            if (i2 < 0) {
                this.eof = true;
                if (this.modulus != 0 || this.lineLength != 0) {
                    ensureBufferSize(this.encodeSize);
                    int i3 = this.pos;
                    switch (this.modulus) {
                        case 1:
                            byte[] bArr2 = this.buffer;
                            int i4 = this.pos;
                            this.pos = i4 + 1;
                            bArr2[i4] = this.encodeTable[(this.bitWorkArea >> 2) & 63];
                            byte[] bArr3 = this.buffer;
                            int i5 = this.pos;
                            this.pos = i5 + 1;
                            bArr3[i5] = this.encodeTable[(this.bitWorkArea << 4) & 63];
                            if (this.encodeTable == STANDARD_ENCODE_TABLE) {
                                byte[] bArr4 = this.buffer;
                                int i6 = this.pos;
                                this.pos = i6 + 1;
                                bArr4[i6] = 61;
                                byte[] bArr5 = this.buffer;
                                int i7 = this.pos;
                                this.pos = i7 + 1;
                                bArr5[i7] = 61;
                                break;
                            }
                            break;
                        case 2:
                            byte[] bArr6 = this.buffer;
                            int i8 = this.pos;
                            this.pos = i8 + 1;
                            bArr6[i8] = this.encodeTable[(this.bitWorkArea >> 10) & 63];
                            byte[] bArr7 = this.buffer;
                            int i9 = this.pos;
                            this.pos = i9 + 1;
                            bArr7[i9] = this.encodeTable[(this.bitWorkArea >> 4) & 63];
                            byte[] bArr8 = this.buffer;
                            int i10 = this.pos;
                            this.pos = i10 + 1;
                            bArr8[i10] = this.encodeTable[(this.bitWorkArea << 2) & 63];
                            if (this.encodeTable == STANDARD_ENCODE_TABLE) {
                                byte[] bArr9 = this.buffer;
                                int i11 = this.pos;
                                this.pos = i11 + 1;
                                bArr9[i11] = 61;
                                break;
                            }
                            break;
                    }
                    this.currentLinePos = (this.pos - i3) + this.currentLinePos;
                    if (this.lineLength > 0 && this.currentLinePos > 0) {
                        System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
                        this.pos += this.lineSeparator.length;
                        return;
                    }
                    return;
                }
                return;
            }
            int i12 = 0;
            while (i12 < i2) {
                ensureBufferSize(this.encodeSize);
                this.modulus = (this.modulus + 1) % 3;
                int i13 = i + 1;
                int i14 = bArr[i];
                if (i14 < 0) {
                    i14 += 256;
                }
                this.bitWorkArea = i14 + (this.bitWorkArea << 8);
                if (this.modulus == 0) {
                    byte[] bArr10 = this.buffer;
                    int i15 = this.pos;
                    this.pos = i15 + 1;
                    bArr10[i15] = this.encodeTable[(this.bitWorkArea >> 18) & 63];
                    byte[] bArr11 = this.buffer;
                    int i16 = this.pos;
                    this.pos = i16 + 1;
                    bArr11[i16] = this.encodeTable[(this.bitWorkArea >> 12) & 63];
                    byte[] bArr12 = this.buffer;
                    int i17 = this.pos;
                    this.pos = i17 + 1;
                    bArr12[i17] = this.encodeTable[(this.bitWorkArea >> 6) & 63];
                    byte[] bArr13 = this.buffer;
                    int i18 = this.pos;
                    this.pos = i18 + 1;
                    bArr13[i18] = this.encodeTable[this.bitWorkArea & 63];
                    this.currentLinePos += 4;
                    if (this.lineLength > 0 && this.lineLength <= this.currentLinePos) {
                        System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
                        this.pos += this.lineSeparator.length;
                        this.currentLinePos = 0;
                    }
                }
                i12++;
                i = i13;
            }
        }
    }

    @Override // com.google.api.client.repackaged.org.apache.commons.codec.binary.BaseNCodec
    void decode(byte[] bArr, int i, int i2) {
        byte b;
        if (!this.eof) {
            if (i2 < 0) {
                this.eof = true;
            }
            int i3 = 0;
            while (true) {
                if (i3 >= i2) {
                    break;
                }
                ensureBufferSize(this.decodeSize);
                int i4 = i + 1;
                byte b2 = bArr[i];
                if (b2 == 61) {
                    this.eof = true;
                    break;
                }
                if (b2 >= 0 && b2 < DECODE_TABLE.length && (b = DECODE_TABLE[b2]) >= 0) {
                    this.modulus = (this.modulus + 1) % 4;
                    this.bitWorkArea = b + (this.bitWorkArea << 6);
                    if (this.modulus == 0) {
                        byte[] bArr2 = this.buffer;
                        int i5 = this.pos;
                        this.pos = i5 + 1;
                        bArr2[i5] = (byte) ((this.bitWorkArea >> 16) & 255);
                        byte[] bArr3 = this.buffer;
                        int i6 = this.pos;
                        this.pos = i6 + 1;
                        bArr3[i6] = (byte) ((this.bitWorkArea >> 8) & 255);
                        byte[] bArr4 = this.buffer;
                        int i7 = this.pos;
                        this.pos = i7 + 1;
                        bArr4[i7] = (byte) (this.bitWorkArea & 255);
                    }
                }
                i3++;
                i = i4;
            }
            if (this.eof && this.modulus != 0) {
                ensureBufferSize(this.decodeSize);
                switch (this.modulus) {
                    case 2:
                        this.bitWorkArea >>= 4;
                        byte[] bArr5 = this.buffer;
                        int i8 = this.pos;
                        this.pos = i8 + 1;
                        bArr5[i8] = (byte) (this.bitWorkArea & 255);
                        break;
                    case 3:
                        this.bitWorkArea >>= 2;
                        byte[] bArr6 = this.buffer;
                        int i9 = this.pos;
                        this.pos = i9 + 1;
                        bArr6[i9] = (byte) ((this.bitWorkArea >> 8) & 255);
                        byte[] bArr7 = this.buffer;
                        int i10 = this.pos;
                        this.pos = i10 + 1;
                        bArr7[i10] = (byte) (this.bitWorkArea & 255);
                        break;
                }
            }
        }
    }

    public static boolean isArrayByteBase64(byte[] bArr) {
        return isBase64(bArr);
    }

    public static boolean isBase64(byte b) {
        return b == 61 || (b >= 0 && b < DECODE_TABLE.length && DECODE_TABLE[b] != -1);
    }

    public static boolean isBase64(String str) {
        return isBase64(StringUtils.getBytesUtf8(str));
    }

    public static boolean isBase64(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            if (!isBase64(bArr[i]) && !isWhiteSpace(bArr[i])) {
                return false;
            }
        }
        return true;
    }

    public static byte[] encodeBase64(byte[] bArr) {
        return encodeBase64(bArr, false);
    }

    public static String encodeBase64String(byte[] bArr) {
        return StringUtils.newStringUtf8(encodeBase64(bArr, false));
    }

    public static byte[] encodeBase64URLSafe(byte[] bArr) {
        return encodeBase64(bArr, false, true);
    }

    public static String encodeBase64URLSafeString(byte[] bArr) {
        return StringUtils.newStringUtf8(encodeBase64(bArr, false, true));
    }

    public static byte[] encodeBase64Chunked(byte[] bArr) {
        return encodeBase64(bArr, true);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z) {
        return encodeBase64(bArr, z, false);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z, boolean z2) {
        return encodeBase64(bArr, z, z2, Integer.MAX_VALUE);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z, boolean z2, int i) {
        if (bArr != null && bArr.length != 0) {
            Base64 base64 = z ? new Base64(z2) : new Base64(0, CHUNK_SEPARATOR, z2);
            long encodedLength = base64.getEncodedLength(bArr);
            if (encodedLength > i) {
                throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + encodedLength + ") than the specified maximum size of " + i);
            }
            return base64.encode(bArr);
        }
        return bArr;
    }

    public static byte[] decodeBase64(String str) {
        return new Base64().decode(str);
    }

    public static byte[] decodeBase64(byte[] bArr) {
        return new Base64().decode(bArr);
    }

    public static BigInteger decodeInteger(byte[] bArr) {
        return new BigInteger(1, decodeBase64(bArr));
    }

    public static byte[] encodeInteger(BigInteger bigInteger) {
        if (bigInteger == null) {
            throw new NullPointerException("encodeInteger called with null parameter");
        }
        return encodeBase64(toIntegerBytes(bigInteger), false);
    }

    static byte[] toIntegerBytes(BigInteger bigInteger) {
        int bitLength = ((bigInteger.bitLength() + 7) >> 3) << 3;
        byte[] byteArray = bigInteger.toByteArray();
        if (bigInteger.bitLength() % 8 != 0 && (bigInteger.bitLength() / 8) + 1 == bitLength / 8) {
            return byteArray;
        }
        int i = 0;
        int length = byteArray.length;
        if (bigInteger.bitLength() % 8 == 0) {
            i = 1;
            length--;
        }
        int i2 = (bitLength / 8) - length;
        byte[] bArr = new byte[bitLength / 8];
        System.arraycopy(byteArray, i, bArr, i2, length);
        return bArr;
    }

    @Override // com.google.api.client.repackaged.org.apache.commons.codec.binary.BaseNCodec
    protected boolean isInAlphabet(byte b) {
        return b >= 0 && b < this.decodeTable.length && this.decodeTable[b] != -1;
    }
}
