package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import com.google.android.exoplayer.util.Util;

/* loaded from: classes.dex */
public final class CryptoInfo {
    private final MediaCodec.CryptoInfo frameworkCryptoInfo;

    /* renamed from: iv */
    public byte[] f5933iv;
    public byte[] key;
    public int mode;
    public int[] numBytesOfClearData;
    public int[] numBytesOfEncryptedData;
    public int numSubSamples;

    public CryptoInfo() {
        this.frameworkCryptoInfo = Util.SDK_INT >= 16 ? newFrameworkCryptoInfoV16() : null;
    }

    public void set(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2) {
        this.numSubSamples = i;
        this.numBytesOfClearData = iArr;
        this.numBytesOfEncryptedData = iArr2;
        this.key = bArr;
        this.f5933iv = bArr2;
        this.mode = i2;
        if (Util.SDK_INT >= 16) {
            updateFrameworkCryptoInfoV16();
        }
    }

    @TargetApi(16)
    public void setFromExtractorV16(MediaExtractor mediaExtractor) {
        mediaExtractor.getSampleCryptoInfo(this.frameworkCryptoInfo);
        this.numSubSamples = this.frameworkCryptoInfo.numSubSamples;
        this.numBytesOfClearData = this.frameworkCryptoInfo.numBytesOfClearData;
        this.numBytesOfEncryptedData = this.frameworkCryptoInfo.numBytesOfEncryptedData;
        this.key = this.frameworkCryptoInfo.key;
        this.f5933iv = this.frameworkCryptoInfo.iv;
        this.mode = this.frameworkCryptoInfo.mode;
    }

    @TargetApi(16)
    public MediaCodec.CryptoInfo getFrameworkCryptoInfoV16() {
        return this.frameworkCryptoInfo;
    }

    @TargetApi(16)
    private MediaCodec.CryptoInfo newFrameworkCryptoInfoV16() {
        return new MediaCodec.CryptoInfo();
    }

    @TargetApi(16)
    private void updateFrameworkCryptoInfoV16() {
        this.frameworkCryptoInfo.set(this.numSubSamples, this.numBytesOfClearData, this.numBytesOfEncryptedData, this.key, this.f5933iv, this.mode);
    }
}
