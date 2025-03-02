package com.google.android.exoplayer.util;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.p095ts.PsExtractor;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class DtsUtil {
    private static final int[] CHANNELS_BY_AMODE = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] SAMPLE_RATE_BY_SFREQ = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};
    private static final int[] TWICE_BITRATE_KBPS_BY_RATE = {64, 112, 128, PsExtractor.AUDIO_STREAM, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};
    private static final ParsableBitArray SCRATCH_BITS = new ParsableBitArray();

    public static MediaFormat parseDtsFormat(byte[] bArr, String str, long j, String str2) {
        ParsableBitArray parsableBitArray = SCRATCH_BITS;
        parsableBitArray.reset(bArr);
        parsableBitArray.skipBits(60);
        int i = CHANNELS_BY_AMODE[parsableBitArray.readBits(6)];
        int i2 = SAMPLE_RATE_BY_SFREQ[parsableBitArray.readBits(4)];
        int readBits = parsableBitArray.readBits(5);
        int i3 = readBits >= TWICE_BITRATE_KBPS_BY_RATE.length ? -1 : (TWICE_BITRATE_KBPS_BY_RATE[readBits] * 1000) / 2;
        parsableBitArray.skipBits(10);
        return MediaFormat.createAudioFormat(str, MimeTypes.AUDIO_DTS, i3, -1, j, i + (parsableBitArray.readBits(2) > 0 ? 1 : 0), i2, null, str2);
    }

    public static int parseDtsAudioSampleCount(byte[] bArr) {
        return ((((bArr[4] & 1) << 6) | ((bArr[5] & 252) >> 2)) + 1) * 32;
    }

    public static int parseDtsAudioSampleCount(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        return ((((byteBuffer.get(position + 5) & 252) >> 2) | ((byteBuffer.get(position + 4) & 1) << 6)) + 1) * 32;
    }

    public static int getDtsFrameSize(byte[] bArr) {
        return (((bArr[5] & 2) << 12) | ((bArr[6] & 255) << 4) | ((bArr[7] & 240) >> 4)) + 1;
    }

    private DtsUtil() {
    }
}
