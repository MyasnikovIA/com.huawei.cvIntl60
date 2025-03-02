package com.google.android.exoplayer.util;

/* loaded from: classes.dex */
public final class ParsableBitArray {
    private int bitOffset;
    private int byteLimit;
    private int byteOffset;
    public byte[] data;

    public ParsableBitArray() {
    }

    public ParsableBitArray(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public ParsableBitArray(byte[] bArr, int i) {
        this.data = bArr;
        this.byteLimit = i;
    }

    public void reset(byte[] bArr) {
        reset(bArr, bArr.length);
    }

    public void reset(byte[] bArr, int i) {
        this.data = bArr;
        this.byteOffset = 0;
        this.bitOffset = 0;
        this.byteLimit = i;
    }

    public int bitsLeft() {
        return ((this.byteLimit - this.byteOffset) * 8) - this.bitOffset;
    }

    public int getPosition() {
        return (this.byteOffset * 8) + this.bitOffset;
    }

    public void setPosition(int i) {
        this.byteOffset = i / 8;
        this.bitOffset = i - (this.byteOffset * 8);
        assertValidOffset();
    }

    public void skipBits(int i) {
        this.byteOffset += i / 8;
        this.bitOffset += i % 8;
        if (this.bitOffset > 7) {
            this.byteOffset++;
            this.bitOffset -= 8;
        }
        assertValidOffset();
    }

    public boolean readBit() {
        return readBits(1) == 1;
    }

    public int readBits(int i) {
        int i2;
        int i3 = 0;
        if (i != 0) {
            int i4 = i / 8;
            int i5 = 0;
            for (int i6 = 0; i6 < i4; i6++) {
                if (this.bitOffset != 0) {
                    i2 = ((this.data[this.byteOffset] & 255) << this.bitOffset) | ((this.data[this.byteOffset + 1] & 255) >>> (8 - this.bitOffset));
                } else {
                    i2 = this.data[this.byteOffset];
                }
                i -= 8;
                i5 |= (i2 & 255) << i;
                this.byteOffset++;
            }
            if (i > 0) {
                int i7 = this.bitOffset + i;
                byte b = (byte) (255 >> (8 - i));
                if (i7 > 8) {
                    i3 = (b & (((this.data[this.byteOffset] & 255) << (i7 - 8)) | ((this.data[this.byteOffset + 1] & 255) >> (16 - i7)))) | i5;
                    this.byteOffset++;
                } else {
                    i3 = (b & ((this.data[this.byteOffset] & 255) >> (8 - i7))) | i5;
                    if (i7 == 8) {
                        this.byteOffset++;
                    }
                }
                this.bitOffset = i7 % 8;
            } else {
                i3 = i5;
            }
            assertValidOffset();
        }
        return i3;
    }

    public boolean canReadExpGolombCodedNum() {
        int i = this.byteOffset;
        int i2 = this.bitOffset;
        int i3 = 0;
        while (this.byteOffset < this.byteLimit && !readBit()) {
            i3++;
        }
        boolean z = this.byteOffset == this.byteLimit;
        this.byteOffset = i;
        this.bitOffset = i2;
        return !z && bitsLeft() >= (i3 * 2) + 1;
    }

    public int readUnsignedExpGolombCodedInt() {
        return readExpGolombCodeNum();
    }

    public int readSignedExpGolombCodedInt() {
        int readExpGolombCodeNum = readExpGolombCodeNum();
        return (readExpGolombCodeNum % 2 == 0 ? -1 : 1) * ((readExpGolombCodeNum + 1) / 2);
    }

    private int readExpGolombCodeNum() {
        int i = 0;
        while (!readBit()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? readBits(i) : 0);
    }

    private void assertValidOffset() {
        Assertions.checkState(this.byteOffset >= 0 && this.bitOffset >= 0 && this.bitOffset < 8 && (this.byteOffset < this.byteLimit || (this.byteOffset == this.byteLimit && this.bitOffset == 0)));
    }
}
