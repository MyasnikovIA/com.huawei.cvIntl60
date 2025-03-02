package com.google.android.exoplayer.util;

import com.google.android.exoplayer.extractor.p095ts.PsExtractor;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes.dex */
public final class MpegAudioHeader {
    public static final int MAX_FRAME_SIZE_BYTES = 4096;
    public int bitrate;
    public int channels;
    public int frameSize;
    public String mimeType;
    public int sampleRate;
    public int samplesPerFrame;
    public int version;
    private static final String[] MIME_TYPE_BY_LAYER = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, MimeTypes.AUDIO_MPEG};
    private static final int[] SAMPLING_RATE_V1 = {44100, 48000, 32000};
    private static final int[] BITRATE_V1_L1 = {32, 64, 96, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, 288, 320, 352, 384, 416, 448};
    private static final int[] BITRATE_V2_L1 = {32, 48, 56, 64, 80, 96, 112, 128, IjkMediaMeta.FF_PROFILE_H264_HIGH_444, 160, 176, PsExtractor.AUDIO_STREAM, 224, 256};
    private static final int[] BITRATE_V1_L2 = {32, 48, 56, 64, 80, 96, 112, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, 320, 384};
    private static final int[] BITRATE_V1_L3 = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, 320};
    private static final int[] BITRATE_V2 = {8, 16, 24, 32, 40, 48, 56, 64, 80, 96, 112, 128, IjkMediaMeta.FF_PROFILE_H264_HIGH_444, 160};

    public static int getFrameSize(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i8 = SAMPLING_RATE_V1[i5];
        if (i2 == 2) {
            i6 = i8 / 2;
        } else {
            i6 = i2 == 0 ? i8 / 4 : i8;
        }
        int i9 = (i >>> 9) & 1;
        if (i3 == 3) {
            return ((((i2 == 3 ? BITRATE_V1_L1[i4 - 1] : BITRATE_V2_L1[i4 - 1]) * 12000) / i6) + i9) * 4;
        }
        if (i2 == 3) {
            i7 = i3 == 2 ? BITRATE_V1_L2[i4 - 1] : BITRATE_V1_L3[i4 - 1];
        } else {
            i7 = BITRATE_V2[i4 - 1];
        }
        if (i2 == 3) {
            return ((144000 * i7) / i6) + i9;
        }
        return (((i3 == 1 ? 72000 : 144000) * i7) / i6) + i9;
    }

    public static boolean populateHeader(int i, MpegAudioHeader mpegAudioHeader) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if ((i & (-2097152)) == -2097152 && (i2 = (i >>> 19) & 3) != 1 && (i3 = (i >>> 17) & 3) != 0) {
            int i7 = (i >>> 12) & 15;
            if (i7 == 0 || i7 == 15) {
                return false;
            }
            int i8 = (i >>> 10) & 3;
            if (i8 == 3) {
                return false;
            }
            int i9 = SAMPLING_RATE_V1[i8];
            if (i2 == 2) {
                i9 /= 2;
            } else if (i2 == 0) {
                i9 /= 4;
            }
            int i10 = (i >>> 9) & 1;
            if (i3 == 3) {
                i6 = i2 == 3 ? BITRATE_V1_L1[i7 - 1] : BITRATE_V2_L1[i7 - 1];
                i5 = (((i6 * 12000) / i9) + i10) * 4;
                i4 = 384;
            } else if (i2 == 3) {
                i6 = i3 == 2 ? BITRATE_V1_L2[i7 - 1] : BITRATE_V1_L3[i7 - 1];
                i4 = 1152;
                i5 = i10 + ((144000 * i6) / i9);
            } else {
                int i11 = BITRATE_V2[i7 - 1];
                i4 = i3 == 1 ? 576 : 1152;
                i5 = i10 + (((i3 == 1 ? 72000 : 144000) * i11) / i9);
                i6 = i11;
            }
            mpegAudioHeader.setValues(i2, MIME_TYPE_BY_LAYER[3 - i3], i5, i9, ((i >> 6) & 3) == 3 ? 1 : 2, i6 * 1000, i4);
            return true;
        }
        return false;
    }

    private void setValues(int i, String str, int i2, int i3, int i4, int i5, int i6) {
        this.version = i;
        this.mimeType = str;
        this.frameSize = i2;
        this.sampleRate = i3;
        this.channels = i4;
        this.bitrate = i5;
        this.samplesPerFrame = i6;
    }
}
