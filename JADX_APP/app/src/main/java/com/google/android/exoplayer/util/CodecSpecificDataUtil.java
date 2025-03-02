package com.google.android.exoplayer.util;

import android.util.Pair;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class CodecSpecificDataUtil {
    private static final int AUDIO_OBJECT_TYPE_AAC_LC = 2;
    private static final int AUDIO_OBJECT_TYPE_ER_BSAC = 22;
    private static final int AUDIO_OBJECT_TYPE_PS = 29;
    private static final int AUDIO_OBJECT_TYPE_SBR = 5;
    private static final int AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID = -1;
    private static final int AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY = 15;
    private static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    private static final int[] AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    private static final int[] AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    private CodecSpecificDataUtil() {
    }

    public static Pair<Integer, Integer> parseAacAudioSpecificConfig(byte[] bArr) {
        int i;
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        int readBits = parsableBitArray.readBits(5);
        int readBits2 = parsableBitArray.readBits(4);
        if (readBits2 == 15) {
            i = parsableBitArray.readBits(24);
        } else {
            Assertions.checkArgument(readBits2 < 13);
            i = AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE[readBits2];
        }
        int readBits3 = parsableBitArray.readBits(4);
        if (readBits == 5 || readBits == 29) {
            int readBits4 = parsableBitArray.readBits(4);
            if (readBits4 == 15) {
                i = parsableBitArray.readBits(24);
            } else {
                Assertions.checkArgument(readBits4 < 13);
                i = AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE[readBits4];
            }
            if (parsableBitArray.readBits(5) == 22) {
                readBits3 = parsableBitArray.readBits(4);
            }
        }
        int i2 = AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE[readBits3];
        Assertions.checkArgument(i2 != -1);
        return Pair.create(Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static byte[] buildAacAudioSpecificConfig(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    public static byte[] buildAacAudioSpecificConfig(int i, int i2) {
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE.length; i5++) {
            if (i == AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE[i5]) {
                i4 = i5;
            }
        }
        for (int i6 = 0; i6 < AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE.length; i6++) {
            if (i2 == AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE[i6]) {
                i3 = i6;
            }
        }
        return new byte[]{(byte) ((i4 >> 1) | 16), (byte) (((i4 & 1) << 7) | (i3 << 3))};
    }

    public static byte[] buildNalUnit(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[NAL_START_CODE.length + i2];
        System.arraycopy(NAL_START_CODE, 0, bArr2, 0, NAL_START_CODE.length);
        System.arraycopy(bArr, i, bArr2, NAL_START_CODE.length, i2);
        return bArr2;
    }

    public static byte[][] splitNalUnits(byte[] bArr) {
        if (!isNalStartCode(bArr, 0)) {
            return (byte[][]) null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        do {
            arrayList.add(Integer.valueOf(i));
            i = findNalStartCode(bArr, i + NAL_START_CODE.length);
        } while (i != -1);
        byte[][] bArr2 = new byte[arrayList.size()][];
        int i2 = 0;
        while (i2 < arrayList.size()) {
            int intValue = ((Integer) arrayList.get(i2)).intValue();
            byte[] bArr3 = new byte[(i2 < arrayList.size() + (-1) ? ((Integer) arrayList.get(i2 + 1)).intValue() : bArr.length) - intValue];
            System.arraycopy(bArr, intValue, bArr3, 0, bArr3.length);
            bArr2[i2] = bArr3;
            i2++;
        }
        return bArr2;
    }

    private static int findNalStartCode(byte[] bArr, int i) {
        int length = bArr.length - NAL_START_CODE.length;
        for (int i2 = i; i2 <= length; i2++) {
            if (isNalStartCode(bArr, i2)) {
                return i2;
            }
        }
        return -1;
    }

    private static boolean isNalStartCode(byte[] bArr, int i) {
        if (bArr.length - i <= NAL_START_CODE.length) {
            return false;
        }
        for (int i2 = 0; i2 < NAL_START_CODE.length; i2++) {
            if (bArr[i + i2] != NAL_START_CODE[i2]) {
                return false;
            }
        }
        return true;
    }
}
