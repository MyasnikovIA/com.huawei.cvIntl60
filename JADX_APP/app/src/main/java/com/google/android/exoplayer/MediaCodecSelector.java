package com.google.android.exoplayer;

/* loaded from: classes.dex */
public interface MediaCodecSelector {
    public static final MediaCodecSelector DEFAULT = new MediaCodecSelector() { // from class: com.google.android.exoplayer.MediaCodecSelector.1
        C11731() {
        }

        @Override // com.google.android.exoplayer.MediaCodecSelector
        public DecoderInfo getDecoderInfo(String str, boolean z) {
            return MediaCodecUtil.getDecoderInfo(str, z);
        }

        @Override // com.google.android.exoplayer.MediaCodecSelector
        public DecoderInfo getPassthroughDecoderInfo() {
            return MediaCodecUtil.getPassthroughDecoderInfo();
        }
    };

    DecoderInfo getDecoderInfo(String str, boolean z);

    DecoderInfo getPassthroughDecoderInfo();

    /* renamed from: com.google.android.exoplayer.MediaCodecSelector$1 */
    static class C11731 implements MediaCodecSelector {
        C11731() {
        }

        @Override // com.google.android.exoplayer.MediaCodecSelector
        public DecoderInfo getDecoderInfo(String str, boolean z) {
            return MediaCodecUtil.getDecoderInfo(str, z);
        }

        @Override // com.google.android.exoplayer.MediaCodecSelector
        public DecoderInfo getPassthroughDecoderInfo() {
            return MediaCodecUtil.getPassthroughDecoderInfo();
        }
    }
}
