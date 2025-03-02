package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@TargetApi(16)
/* loaded from: classes.dex */
public final class MediaCodecUtil {
    private static final String TAG = "MediaCodecUtil";
    private static final DecoderInfo PASSTHROUGH_DECODER_INFO = new DecoderInfo("OMX.google.raw.decoder", null);
    private static final Map<CodecKey, List<DecoderInfo>> decoderInfosCache = new HashMap();
    private static int maxH264DecodableFrameSize = -1;

    private interface MediaCodecListCompat {
        int getCodecCount();

        MediaCodecInfo getCodecInfoAt(int i);

        boolean isSecurePlaybackSupported(String str, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean secureDecodersExplicit();
    }

    public static class DecoderQueryException extends IOException {
        /* synthetic */ DecoderQueryException(Throwable th, C11771 c11771) {
            this(th);
        }

        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    private MediaCodecUtil() {
    }

    public static void warmCodec(String str, boolean z) {
        try {
            getDecoderInfos(str, z);
        } catch (DecoderQueryException e) {
            Log.e(TAG, "Codec warming failed", e);
        }
    }

    public static DecoderInfo getPassthroughDecoderInfo() {
        return PASSTHROUGH_DECODER_INFO;
    }

    public static DecoderInfo getDecoderInfo(String str, boolean z) {
        List<DecoderInfo> decoderInfos = getDecoderInfos(str, z);
        if (decoderInfos.isEmpty()) {
            return null;
        }
        return decoderInfos.get(0);
    }

    public static synchronized List<DecoderInfo> getDecoderInfos(String str, boolean z) {
        List<DecoderInfo> list;
        synchronized (MediaCodecUtil.class) {
            CodecKey codecKey = new CodecKey(str, z);
            list = decoderInfosCache.get(codecKey);
            if (list == null) {
                List<DecoderInfo> decoderInfosInternal = getDecoderInfosInternal(codecKey, Util.SDK_INT >= 21 ? new MediaCodecListCompatV21(z) : new MediaCodecListCompatV16());
                if (z && decoderInfosInternal.isEmpty() && 21 <= Util.SDK_INT && Util.SDK_INT <= 23) {
                    List<DecoderInfo> decoderInfosInternal2 = getDecoderInfosInternal(codecKey, new MediaCodecListCompatV16());
                    if (!decoderInfosInternal2.isEmpty()) {
                        Log.w(TAG, "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + decoderInfosInternal2.get(0).name);
                    }
                    decoderInfosInternal = decoderInfosInternal2;
                }
                list = Collections.unmodifiableList(decoderInfosInternal);
                decoderInfosCache.put(codecKey, list);
            }
        }
        return list;
    }

    private static List<DecoderInfo> getDecoderInfosInternal(CodecKey codecKey, MediaCodecListCompat mediaCodecListCompat) {
        try {
            ArrayList arrayList = new ArrayList();
            String str = codecKey.mimeType;
            int codecCount = mediaCodecListCompat.getCodecCount();
            boolean secureDecodersExplicit = mediaCodecListCompat.secureDecodersExplicit();
            loop0: for (int i = 0; i < codecCount; i++) {
                MediaCodecInfo codecInfoAt = mediaCodecListCompat.getCodecInfoAt(i);
                String name = codecInfoAt.getName();
                if (isCodecUsableDecoder(codecInfoAt, name, secureDecodersExplicit)) {
                    for (String str2 : codecInfoAt.getSupportedTypes()) {
                        if (str2.equalsIgnoreCase(str)) {
                            try {
                                MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(str2);
                                boolean isSecurePlaybackSupported = mediaCodecListCompat.isSecurePlaybackSupported(str, capabilitiesForType);
                                if ((secureDecodersExplicit && codecKey.secure == isSecurePlaybackSupported) || (!secureDecodersExplicit && !codecKey.secure)) {
                                    arrayList.add(new DecoderInfo(name, capabilitiesForType));
                                } else if (!secureDecodersExplicit && isSecurePlaybackSupported) {
                                    arrayList.add(new DecoderInfo(name + ".secure", capabilitiesForType));
                                    break loop0;
                                }
                            } catch (Exception e) {
                                if (Util.SDK_INT <= 23 && !arrayList.isEmpty()) {
                                    Log.e(TAG, "Skipping codec " + name + " (failed to query capabilities)");
                                } else {
                                    Log.e(TAG, "Failed to query codec " + name + " (" + str2 + ")");
                                    throw e;
                                }
                            }
                        }
                    }
                }
            }
            return arrayList;
        } catch (Exception e2) {
            throw new DecoderQueryException(e2);
        }
    }

    private static boolean isCodecUsableDecoder(MediaCodecInfo mediaCodecInfo, String str, boolean z) {
        if (mediaCodecInfo.isEncoder()) {
            return false;
        }
        if (!z && str.endsWith(".secure")) {
            return false;
        }
        if (Util.SDK_INT < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (Util.SDK_INT < 18 && "OMX.SEC.MP3.Decoder".equals(str)) {
            return false;
        }
        if (Util.SDK_INT < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str) && "a70".equals(Util.DEVICE)) {
            return false;
        }
        if (Util.SDK_INT == 16 && Util.DEVICE != null && "OMX.qcom.audio.decoder.mp3".equals(str) && ("dlxu".equals(Util.DEVICE) || "protou".equals(Util.DEVICE) || "ville".equals(Util.DEVICE) || "villeplus".equals(Util.DEVICE) || "villec2".equals(Util.DEVICE) || Util.DEVICE.startsWith("gee") || "C6602".equals(Util.DEVICE) || "C6603".equals(Util.DEVICE) || "C6606".equals(Util.DEVICE) || "C6616".equals(Util.DEVICE) || "L36h".equals(Util.DEVICE) || "SO-02E".equals(Util.DEVICE))) {
            return false;
        }
        if (Util.SDK_INT == 16 && "OMX.qcom.audio.decoder.aac".equals(str) && ("C1504".equals(Util.DEVICE) || "C1505".equals(Util.DEVICE) || "C1604".equals(Util.DEVICE) || "C1605".equals(Util.DEVICE))) {
            return false;
        }
        if (Util.SDK_INT > 19 || Util.DEVICE == null || !((Util.DEVICE.startsWith("d2") || Util.DEVICE.startsWith("serrano") || Util.DEVICE.startsWith("jflte") || Util.DEVICE.startsWith("santos")) && "samsung".equals(Util.MANUFACTURER) && str.equals("OMX.SEC.vp8.dec"))) {
            return Util.SDK_INT > 19 || Util.DEVICE == null || !Util.DEVICE.startsWith("jflte") || !"OMX.qcom.video.decoder.vp8".equals(str);
        }
        return false;
    }

    @TargetApi(21)
    public static boolean isSizeSupportedV21(String str, boolean z, int i, int i2) {
        Assertions.checkState(Util.SDK_INT >= 21);
        MediaCodecInfo.VideoCapabilities videoCapabilitiesV21 = getVideoCapabilitiesV21(str, z);
        return videoCapabilitiesV21 != null && videoCapabilitiesV21.isSizeSupported(i, i2);
    }

    @TargetApi(21)
    public static boolean isSizeAndRateSupportedV21(String str, boolean z, int i, int i2, double d) {
        Assertions.checkState(Util.SDK_INT >= 21);
        MediaCodecInfo.VideoCapabilities videoCapabilitiesV21 = getVideoCapabilitiesV21(str, z);
        return videoCapabilitiesV21 != null && videoCapabilitiesV21.areSizeAndRateSupported(i, i2, d);
    }

    @Deprecated
    public static boolean isH264ProfileSupported(int i, int i2) {
        DecoderInfo decoderInfo = getDecoderInfo(MimeTypes.VIDEO_H264, false);
        if (decoderInfo == null) {
            return false;
        }
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = decoderInfo.capabilities.profileLevels;
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
            if (codecProfileLevel.profile == i && codecProfileLevel.level >= i2) {
                return true;
            }
        }
        return false;
    }

    public static int maxH264DecodableFrameSize() {
        int i = 0;
        if (maxH264DecodableFrameSize == -1) {
            DecoderInfo decoderInfo = getDecoderInfo(MimeTypes.VIDEO_H264, false);
            if (decoderInfo != null) {
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = decoderInfo.capabilities.profileLevels;
                int i2 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
                    i2 = Math.max(avcLevelToMaxFrameSize(codecProfileLevel.level), i2);
                }
                i = Math.max(i2, 172800);
            }
            maxH264DecodableFrameSize = i;
        }
        return maxH264DecodableFrameSize;
    }

    @TargetApi(21)
    private static MediaCodecInfo.VideoCapabilities getVideoCapabilitiesV21(String str, boolean z) {
        DecoderInfo decoderInfo = getDecoderInfo(str, z);
        if (decoderInfo == null) {
            return null;
        }
        return decoderInfo.capabilities.getVideoCapabilities();
    }

    private static int avcLevelToMaxFrameSize(int i) {
        switch (i) {
            case 1:
            case 2:
                return 25344;
            case 8:
                return 101376;
            case 16:
                return 101376;
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
                return 414720;
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
                return 2097152;
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
                return 9437184;
            default:
                return -1;
        }
    }

    @TargetApi(21)
    private static final class MediaCodecListCompatV21 implements MediaCodecListCompat {
        private final int codecKind;
        private MediaCodecInfo[] mediaCodecInfos;

        public MediaCodecListCompatV21(boolean z) {
            this.codecKind = z ? 1 : 0;
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public int getCodecCount() {
            ensureMediaCodecInfosInitialized();
            return this.mediaCodecInfos.length;
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public MediaCodecInfo getCodecInfoAt(int i) {
            ensureMediaCodecInfosInitialized();
            return this.mediaCodecInfos[i];
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public boolean secureDecodersExplicit() {
            return true;
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public boolean isSecurePlaybackSupported(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported("secure-playback");
        }

        private void ensureMediaCodecInfosInitialized() {
            if (this.mediaCodecInfos == null) {
                this.mediaCodecInfos = new MediaCodecList(this.codecKind).getCodecInfos();
            }
        }
    }

    private static final class MediaCodecListCompatV16 implements MediaCodecListCompat {
        private MediaCodecListCompatV16() {
        }

        /* synthetic */ MediaCodecListCompatV16(C11771 c11771) {
            this();
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public int getCodecCount() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public MediaCodecInfo getCodecInfoAt(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public boolean secureDecodersExplicit() {
            return false;
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public boolean isSecurePlaybackSupported(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return MimeTypes.VIDEO_H264.equals(str);
        }
    }

    private static final class CodecKey {
        public final String mimeType;
        public final boolean secure;

        public CodecKey(String str, boolean z) {
            this.mimeType = str;
            this.secure = z;
        }

        public int hashCode() {
            return (this.secure ? 1231 : 1237) + (((this.mimeType == null ? 0 : this.mimeType.hashCode()) + 31) * 31);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != CodecKey.class) {
                return false;
            }
            CodecKey codecKey = (CodecKey) obj;
            return TextUtils.equals(this.mimeType, codecKey.mimeType) && this.secure == codecKey.secure;
        }
    }
}
