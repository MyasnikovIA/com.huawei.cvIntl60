package com.google.android.exoplayer.util;

import android.util.Log;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class NalUnitUtil {
    public static final int EXTENDED_SAR = 255;
    private static final int NAL_UNIT_TYPE_SPS = 7;
    private static final String TAG = "NalUnitUtil";
    public static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    public static final float[] ASPECT_RATIO_IDC_VALUES = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object scratchEscapePositionsLock = new Object();
    private static int[] scratchEscapePositions = new int[10];

    public static final class SpsData {
        public final boolean deltaPicOrderAlwaysZeroFlag;
        public final boolean frameMbsOnlyFlag;
        public final int frameNumLength;
        public final int height;
        public final int picOrderCntLsbLength;
        public final int picOrderCountType;
        public final float pixelWidthAspectRatio;
        public final boolean separateColorPlaneFlag;
        public final int seqParameterSetId;
        public final int width;

        public SpsData(int i, int i2, int i3, float f, boolean z, boolean z2, int i4, int i5, int i6, boolean z3) {
            this.seqParameterSetId = i;
            this.width = i2;
            this.height = i3;
            this.pixelWidthAspectRatio = f;
            this.separateColorPlaneFlag = z;
            this.frameMbsOnlyFlag = z2;
            this.frameNumLength = i4;
            this.picOrderCountType = i5;
            this.picOrderCntLsbLength = i6;
            this.deltaPicOrderAlwaysZeroFlag = z3;
        }
    }

    public static final class PpsData {
        public final boolean bottomFieldPicOrderInFramePresentFlag;
        public final int picParameterSetId;
        public final int seqParameterSetId;

        public PpsData(int i, int i2, boolean z) {
            this.picParameterSetId = i;
            this.seqParameterSetId = i2;
            this.bottomFieldPicOrderInFramePresentFlag = z;
        }
    }

    public static int unescapeStream(byte[] bArr, int i) {
        int i2;
        synchronized (scratchEscapePositionsLock) {
            int i3 = 0;
            int i4 = 0;
            while (i4 < i) {
                i4 = findNextUnescapeIndex(bArr, i4, i);
                if (i4 < i) {
                    if (scratchEscapePositions.length <= i3) {
                        scratchEscapePositions = Arrays.copyOf(scratchEscapePositions, scratchEscapePositions.length * 2);
                    }
                    scratchEscapePositions[i3] = i4;
                    i4 += 3;
                    i3++;
                }
            }
            i2 = i - i3;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (i5 < i3) {
                int i8 = scratchEscapePositions[i5] - i7;
                System.arraycopy(bArr, i7, bArr, i6, i8);
                int i9 = i6 + i8;
                int i10 = i9 + 1;
                bArr[i9] = 0;
                bArr[i10] = 0;
                i7 += i8 + 3;
                i5++;
                i6 = i10 + 1;
            }
            System.arraycopy(bArr, i7, bArr, i6, i2 - i6);
        }
        return i2;
    }

    public static void discardToSps(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int i = 0;
        for (int i2 = 0; i2 + 1 < position; i2++) {
            int i3 = byteBuffer.get(i2) & 255;
            if (i == 3) {
                if (i3 == 1 && (byteBuffer.get(i2 + 1) & ClosedCaptionCtrl.TAB_OFFSET_CHAN_2) == 7) {
                    ByteBuffer duplicate = byteBuffer.duplicate();
                    duplicate.position(i2 - 3);
                    duplicate.limit(position);
                    byteBuffer.position(0);
                    byteBuffer.put(duplicate);
                    return;
                }
            } else if (i3 == 0) {
                i++;
            }
            if (i3 != 0) {
                i = 0;
            }
        }
        byteBuffer.clear();
    }

    public static byte[] parseChildNalUnit(ParsableByteArray parsableByteArray) {
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(readUnsignedShort);
        return CodecSpecificDataUtil.buildNalUnit(parsableByteArray.data, position, readUnsignedShort);
    }

    public static int getNalUnitType(byte[] bArr, int i) {
        return bArr[i + 3] & ClosedCaptionCtrl.TAB_OFFSET_CHAN_2;
    }

    public static int getH265NalUnitType(byte[] bArr, int i) {
        return (bArr[i + 3] & 126) >> 1;
    }

    public static SpsData parseSpsNalUnit(ParsableBitArray parsableBitArray) {
        boolean z;
        int i;
        int i2;
        float f;
        int i3;
        int i4;
        int readBits = parsableBitArray.readBits(8);
        parsableBitArray.skipBits(16);
        int readUnsignedExpGolombCodedInt = parsableBitArray.readUnsignedExpGolombCodedInt();
        int i5 = 1;
        boolean z2 = false;
        if (readBits != 100 && readBits != 110 && readBits != 122 && readBits != 244 && readBits != 44 && readBits != 83 && readBits != 86 && readBits != 118 && readBits != 128 && readBits != 138) {
            z = false;
        } else {
            int readUnsignedExpGolombCodedInt2 = parsableBitArray.readUnsignedExpGolombCodedInt();
            if (readUnsignedExpGolombCodedInt2 == 3) {
                z2 = parsableBitArray.readBit();
            }
            parsableBitArray.readUnsignedExpGolombCodedInt();
            parsableBitArray.readUnsignedExpGolombCodedInt();
            parsableBitArray.skipBits(1);
            if (parsableBitArray.readBit()) {
                int i6 = readUnsignedExpGolombCodedInt2 != 3 ? 8 : 12;
                int i7 = 0;
                while (i7 < i6) {
                    if (parsableBitArray.readBit()) {
                        skipScalingList(parsableBitArray, i7 < 6 ? 16 : 64);
                    }
                    i7++;
                }
            }
            z = z2;
            i5 = readUnsignedExpGolombCodedInt2;
        }
        int readUnsignedExpGolombCodedInt3 = parsableBitArray.readUnsignedExpGolombCodedInt() + 4;
        int readUnsignedExpGolombCodedInt4 = parsableBitArray.readUnsignedExpGolombCodedInt();
        int i8 = 0;
        boolean z3 = false;
        if (readUnsignedExpGolombCodedInt4 == 0) {
            i8 = parsableBitArray.readUnsignedExpGolombCodedInt() + 4;
        } else if (readUnsignedExpGolombCodedInt4 == 1) {
            z3 = parsableBitArray.readBit();
            parsableBitArray.readSignedExpGolombCodedInt();
            parsableBitArray.readSignedExpGolombCodedInt();
            long readUnsignedExpGolombCodedInt5 = parsableBitArray.readUnsignedExpGolombCodedInt();
            for (int i9 = 0; i9 < readUnsignedExpGolombCodedInt5; i9++) {
                parsableBitArray.readUnsignedExpGolombCodedInt();
            }
        }
        parsableBitArray.readUnsignedExpGolombCodedInt();
        parsableBitArray.skipBits(1);
        int readUnsignedExpGolombCodedInt6 = parsableBitArray.readUnsignedExpGolombCodedInt() + 1;
        int readUnsignedExpGolombCodedInt7 = parsableBitArray.readUnsignedExpGolombCodedInt() + 1;
        boolean readBit = parsableBitArray.readBit();
        int i10 = (2 - (readBit ? 1 : 0)) * readUnsignedExpGolombCodedInt7;
        if (!readBit) {
            parsableBitArray.skipBits(1);
        }
        parsableBitArray.skipBits(1);
        int i11 = readUnsignedExpGolombCodedInt6 * 16;
        int i12 = i10 * 16;
        if (parsableBitArray.readBit()) {
            int readUnsignedExpGolombCodedInt8 = parsableBitArray.readUnsignedExpGolombCodedInt();
            int readUnsignedExpGolombCodedInt9 = parsableBitArray.readUnsignedExpGolombCodedInt();
            int readUnsignedExpGolombCodedInt10 = parsableBitArray.readUnsignedExpGolombCodedInt();
            int readUnsignedExpGolombCodedInt11 = parsableBitArray.readUnsignedExpGolombCodedInt();
            if (i5 == 0) {
                i4 = 1;
                i3 = 2 - (readBit ? 1 : 0);
            } else {
                int i13 = i5 == 3 ? 1 : 2;
                i3 = (2 - (readBit ? 1 : 0)) * (i5 == 1 ? 2 : 1);
                i4 = i13;
            }
            i2 = i11 - (i4 * (readUnsignedExpGolombCodedInt8 + readUnsignedExpGolombCodedInt9));
            i = i12 - (i3 * (readUnsignedExpGolombCodedInt10 + readUnsignedExpGolombCodedInt11));
        } else {
            i = i12;
            i2 = i11;
        }
        float f2 = 1.0f;
        if (parsableBitArray.readBit() && parsableBitArray.readBit()) {
            int readBits2 = parsableBitArray.readBits(8);
            if (readBits2 == 255) {
                int readBits3 = parsableBitArray.readBits(16);
                int readBits4 = parsableBitArray.readBits(16);
                if (readBits3 != 0 && readBits4 != 0) {
                    f2 = readBits3 / readBits4;
                }
                f = f2;
            } else if (readBits2 < ASPECT_RATIO_IDC_VALUES.length) {
                f = ASPECT_RATIO_IDC_VALUES[readBits2];
            } else {
                Log.w(TAG, "Unexpected aspect_ratio_idc value: " + readBits2);
            }
            return new SpsData(readUnsignedExpGolombCodedInt, i2, i, f, z, readBit, readUnsignedExpGolombCodedInt3, readUnsignedExpGolombCodedInt4, i8, z3);
        }
        f = 1.0f;
        return new SpsData(readUnsignedExpGolombCodedInt, i2, i, f, z, readBit, readUnsignedExpGolombCodedInt3, readUnsignedExpGolombCodedInt4, i8, z3);
    }

    public static PpsData parsePpsNalUnit(ParsableBitArray parsableBitArray) {
        int readUnsignedExpGolombCodedInt = parsableBitArray.readUnsignedExpGolombCodedInt();
        int readUnsignedExpGolombCodedInt2 = parsableBitArray.readUnsignedExpGolombCodedInt();
        parsableBitArray.skipBits(1);
        return new PpsData(readUnsignedExpGolombCodedInt, readUnsignedExpGolombCodedInt2, parsableBitArray.readBit());
    }

    public static int findNalUnit(byte[] bArr, int i, int i2, boolean[] zArr) {
        int i3 = i2 - i;
        Assertions.checkState(i3 >= 0);
        if (i3 != 0) {
            if (zArr != null) {
                if (zArr[0]) {
                    clearPrefixFlags(zArr);
                    return i - 3;
                }
                if (i3 > 1 && zArr[1] && bArr[i] == 1) {
                    clearPrefixFlags(zArr);
                    return i - 2;
                }
                if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
                    clearPrefixFlags(zArr);
                    return i - 1;
                }
            }
            int i4 = i2 - 1;
            int i5 = i + 2;
            while (i5 < i4) {
                if ((bArr[i5] & 254) == 0) {
                    if (bArr[i5 - 2] == 0 && bArr[i5 - 1] == 0 && bArr[i5] == 1) {
                        if (zArr != null) {
                            clearPrefixFlags(zArr);
                        }
                        return i5 - 2;
                    }
                    i5 -= 2;
                }
                i5 += 3;
            }
            if (zArr != null) {
                zArr[0] = i3 > 2 ? bArr[i2 + (-3)] == 0 && bArr[i2 + (-2)] == 0 && bArr[i2 + (-1)] == 1 : i3 == 2 ? zArr[2] && bArr[i2 + (-2)] == 0 && bArr[i2 + (-1)] == 1 : zArr[1] && bArr[i2 + (-1)] == 1;
                zArr[1] = i3 > 1 ? bArr[i2 + (-2)] == 0 && bArr[i2 + (-1)] == 0 : zArr[2] && bArr[i2 + (-1)] == 0;
                zArr[2] = bArr[i2 + (-1)] == 0;
                return i2;
            }
            return i2;
        }
        return i2;
    }

    public static void clearPrefixFlags(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    private static int findNextUnescapeIndex(byte[] bArr, int i, int i2) {
        for (int i3 = i; i3 < i2 - 2; i3++) {
            if (bArr[i3] == 0 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 3) {
                return i3;
            }
        }
        return i2;
    }

    private static void skipScalingList(ParsableBitArray parsableBitArray, int i) {
        int i2 = 8;
        int i3 = 8;
        for (int i4 = 0; i4 < i; i4++) {
            if (i2 != 0) {
                i2 = ((parsableBitArray.readSignedExpGolombCodedInt() + i3) + 256) % 256;
            }
            if (i2 != 0) {
                i3 = i2;
            }
        }
    }

    private NalUnitUtil() {
    }
}
