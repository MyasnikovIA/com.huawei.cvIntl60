package com.google.android.exoplayer;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.Util;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* loaded from: classes.dex */
public final class MediaFormat implements Parcelable {
    public static final Parcelable.Creator<MediaFormat> CREATOR = new Parcelable.Creator<MediaFormat>() { // from class: com.google.android.exoplayer.MediaFormat.1
        C11811() {
        }

        @Override // android.os.Parcelable.Creator
        public MediaFormat createFromParcel(Parcel parcel) {
            return new MediaFormat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public MediaFormat[] newArray(int i) {
            return new MediaFormat[i];
        }
    };
    public static final int NO_VALUE = -1;
    public static final long OFFSET_SAMPLE_RELATIVE = Long.MAX_VALUE;
    public final boolean adaptive;
    public final int bitrate;
    public final int channelCount;
    public final long durationUs;
    public final int encoderDelay;
    public final int encoderPadding;
    private android.media.MediaFormat frameworkMediaFormat;
    private int hashCode;
    public final int height;
    public final List<byte[]> initializationData;
    public final String language;
    public final int maxHeight;
    public final int maxInputSize;
    public final int maxWidth;
    public final String mimeType;
    public final int pcmEncoding;
    public final float pixelWidthHeightRatio;
    public final byte[] projectionData;
    public final int rotationDegrees;
    public final int sampleRate;
    public final int stereoMode;
    public final long subsampleOffsetUs;
    public final String trackId;
    public final int width;

    public static MediaFormat createVideoFormat(String str, String str2, int i, int i2, long j, int i3, int i4, List<byte[]> list) {
        return createVideoFormat(str, str2, i, i2, j, i3, i4, list, -1, -1.0f, null, -1);
    }

    public static MediaFormat createVideoFormat(String str, String str2, int i, int i2, long j, int i3, int i4, List<byte[]> list, int i5, float f) {
        return new MediaFormat(str, str2, i, i2, j, i3, i4, i5, f, -1, -1, null, Long.MAX_VALUE, list, false, -1, -1, -1, -1, -1, null, -1);
    }

    public static MediaFormat createVideoFormat(String str, String str2, int i, int i2, long j, int i3, int i4, List<byte[]> list, int i5, float f, byte[] bArr, int i6) {
        return new MediaFormat(str, str2, i, i2, j, i3, i4, i5, f, -1, -1, null, Long.MAX_VALUE, list, false, -1, -1, -1, -1, -1, bArr, i6);
    }

    public static MediaFormat createAudioFormat(String str, String str2, int i, int i2, long j, int i3, int i4, List<byte[]> list, String str3) {
        return createAudioFormat(str, str2, i, i2, j, i3, i4, list, str3, -1);
    }

    public static MediaFormat createAudioFormat(String str, String str2, int i, int i2, long j, int i3, int i4, List<byte[]> list, String str3, int i5) {
        return new MediaFormat(str, str2, i, i2, j, -1, -1, -1, -1.0f, i3, i4, str3, Long.MAX_VALUE, list, false, -1, -1, i5, -1, -1, null, -1);
    }

    public static MediaFormat createTextFormat(String str, String str2, int i, long j, String str3) {
        return createTextFormat(str, str2, i, j, str3, Long.MAX_VALUE);
    }

    public static MediaFormat createTextFormat(String str, String str2, int i, long j, String str3, long j2) {
        return new MediaFormat(str, str2, i, -1, j, -1, -1, -1, -1.0f, -1, -1, str3, j2, null, false, -1, -1, -1, -1, -1, null, -1);
    }

    public static MediaFormat createImageFormat(String str, String str2, int i, long j, List<byte[]> list, String str3) {
        return new MediaFormat(str, str2, i, -1, j, -1, -1, -1, -1.0f, -1, -1, str3, Long.MAX_VALUE, list, false, -1, -1, -1, -1, -1, null, -1);
    }

    public static MediaFormat createFormatForMimeType(String str, String str2, int i, long j) {
        return new MediaFormat(str, str2, i, -1, j, -1, -1, -1, -1.0f, -1, -1, null, Long.MAX_VALUE, null, false, -1, -1, -1, -1, -1, null, -1);
    }

    public static MediaFormat createId3Format() {
        return createFormatForMimeType(null, MimeTypes.APPLICATION_ID3, -1, -1L);
    }

    MediaFormat(Parcel parcel) {
        this.trackId = parcel.readString();
        this.mimeType = parcel.readString();
        this.bitrate = parcel.readInt();
        this.maxInputSize = parcel.readInt();
        this.durationUs = parcel.readLong();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.rotationDegrees = parcel.readInt();
        this.pixelWidthHeightRatio = parcel.readFloat();
        this.channelCount = parcel.readInt();
        this.sampleRate = parcel.readInt();
        this.language = parcel.readString();
        this.subsampleOffsetUs = parcel.readLong();
        this.initializationData = new ArrayList();
        parcel.readList(this.initializationData, null);
        this.adaptive = parcel.readInt() == 1;
        this.maxWidth = parcel.readInt();
        this.maxHeight = parcel.readInt();
        this.pcmEncoding = parcel.readInt();
        this.encoderDelay = parcel.readInt();
        this.encoderPadding = parcel.readInt();
        this.projectionData = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.stereoMode = parcel.readInt();
    }

    MediaFormat(String str, String str2, int i, int i2, long j, int i3, int i4, int i5, float f, int i6, int i7, String str3, long j2, List<byte[]> list, boolean z, int i8, int i9, int i10, int i11, int i12, byte[] bArr, int i13) {
        this.trackId = str;
        this.mimeType = Assertions.checkNotEmpty(str2);
        this.bitrate = i;
        this.maxInputSize = i2;
        this.durationUs = j;
        this.width = i3;
        this.height = i4;
        this.rotationDegrees = i5;
        this.pixelWidthHeightRatio = f;
        this.channelCount = i6;
        this.sampleRate = i7;
        this.language = str3;
        this.subsampleOffsetUs = j2;
        this.initializationData = list == null ? Collections.emptyList() : list;
        this.adaptive = z;
        this.maxWidth = i8;
        this.maxHeight = i9;
        this.pcmEncoding = i10;
        this.encoderDelay = i11;
        this.encoderPadding = i12;
        this.projectionData = bArr;
        this.stereoMode = i13;
    }

    public MediaFormat copyWithMaxInputSize(int i) {
        return new MediaFormat(this.trackId, this.mimeType, this.bitrate, i, this.durationUs, this.width, this.height, this.rotationDegrees, this.pixelWidthHeightRatio, this.channelCount, this.sampleRate, this.language, this.subsampleOffsetUs, this.initializationData, this.adaptive, this.maxWidth, this.maxHeight, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.projectionData, this.stereoMode);
    }

    public MediaFormat copyWithMaxVideoDimensions(int i, int i2) {
        return new MediaFormat(this.trackId, this.mimeType, this.bitrate, this.maxInputSize, this.durationUs, this.width, this.height, this.rotationDegrees, this.pixelWidthHeightRatio, this.channelCount, this.sampleRate, this.language, this.subsampleOffsetUs, this.initializationData, this.adaptive, i, i2, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.projectionData, this.stereoMode);
    }

    public MediaFormat copyWithSubsampleOffsetUs(long j) {
        return new MediaFormat(this.trackId, this.mimeType, this.bitrate, this.maxInputSize, this.durationUs, this.width, this.height, this.rotationDegrees, this.pixelWidthHeightRatio, this.channelCount, this.sampleRate, this.language, j, this.initializationData, this.adaptive, this.maxWidth, this.maxHeight, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.projectionData, this.stereoMode);
    }

    public MediaFormat copyWithDurationUs(long j) {
        return new MediaFormat(this.trackId, this.mimeType, this.bitrate, this.maxInputSize, j, this.width, this.height, this.rotationDegrees, this.pixelWidthHeightRatio, this.channelCount, this.sampleRate, this.language, this.subsampleOffsetUs, this.initializationData, this.adaptive, this.maxWidth, this.maxHeight, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.projectionData, this.stereoMode);
    }

    public MediaFormat copyWithLanguage(String str) {
        return new MediaFormat(this.trackId, this.mimeType, this.bitrate, this.maxInputSize, this.durationUs, this.width, this.height, this.rotationDegrees, this.pixelWidthHeightRatio, this.channelCount, this.sampleRate, str, this.subsampleOffsetUs, this.initializationData, this.adaptive, this.maxWidth, this.maxHeight, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.projectionData, this.stereoMode);
    }

    public MediaFormat copyWithFixedTrackInfo(String str, int i, int i2, int i3, String str2) {
        return new MediaFormat(str, this.mimeType, i, this.maxInputSize, this.durationUs, i2, i3, this.rotationDegrees, this.pixelWidthHeightRatio, this.channelCount, this.sampleRate, str2, this.subsampleOffsetUs, this.initializationData, this.adaptive, -1, -1, this.pcmEncoding, this.encoderDelay, this.encoderPadding, this.projectionData, this.stereoMode);
    }

    public MediaFormat copyAsAdaptive(String str) {
        return new MediaFormat(str, this.mimeType, -1, -1, this.durationUs, -1, -1, -1, -1.0f, -1, -1, null, Long.MAX_VALUE, null, true, this.maxWidth, this.maxHeight, -1, -1, -1, null, this.stereoMode);
    }

    public MediaFormat copyWithGaplessInfo(int i, int i2) {
        return new MediaFormat(this.trackId, this.mimeType, this.bitrate, this.maxInputSize, this.durationUs, this.width, this.height, this.rotationDegrees, this.pixelWidthHeightRatio, this.channelCount, this.sampleRate, this.language, this.subsampleOffsetUs, this.initializationData, this.adaptive, this.maxWidth, this.maxHeight, this.pcmEncoding, i, i2, this.projectionData, this.stereoMode);
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(16)
    public final android.media.MediaFormat getFrameworkMediaFormatV16() {
        if (this.frameworkMediaFormat == null) {
            android.media.MediaFormat mediaFormat = new android.media.MediaFormat();
            mediaFormat.setString(IMediaFormat.KEY_MIME, this.mimeType);
            maybeSetStringV16(mediaFormat, IjkMediaMeta.IJKM_KEY_LANGUAGE, this.language);
            maybeSetIntegerV16(mediaFormat, "max-input-size", this.maxInputSize);
            maybeSetIntegerV16(mediaFormat, "width", this.width);
            maybeSetIntegerV16(mediaFormat, "height", this.height);
            maybeSetIntegerV16(mediaFormat, "rotation-degrees", this.rotationDegrees);
            maybeSetIntegerV16(mediaFormat, "max-width", this.maxWidth);
            maybeSetIntegerV16(mediaFormat, "max-height", this.maxHeight);
            maybeSetIntegerV16(mediaFormat, "channel-count", this.channelCount);
            maybeSetIntegerV16(mediaFormat, "sample-rate", this.sampleRate);
            maybeSetIntegerV16(mediaFormat, "encoder-delay", this.encoderDelay);
            maybeSetIntegerV16(mediaFormat, "encoder-padding", this.encoderPadding);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.initializationData.size()) {
                    break;
                }
                mediaFormat.setByteBuffer("csd-" + i2, ByteBuffer.wrap(this.initializationData.get(i2)));
                i = i2 + 1;
            }
            if (this.durationUs != -1) {
                mediaFormat.setLong("durationUs", this.durationUs);
            }
            this.frameworkMediaFormat = mediaFormat;
        }
        return this.frameworkMediaFormat;
    }

    @TargetApi(16)
    @Deprecated
    final void setFrameworkFormatV16(android.media.MediaFormat mediaFormat) {
        this.frameworkMediaFormat = mediaFormat;
    }

    public String toString() {
        return "MediaFormat(" + this.trackId + ", " + this.mimeType + ", " + this.bitrate + ", " + this.maxInputSize + ", " + this.width + ", " + this.height + ", " + this.rotationDegrees + ", " + this.pixelWidthHeightRatio + ", " + this.channelCount + ", " + this.sampleRate + ", " + this.language + ", " + this.durationUs + ", " + this.adaptive + ", " + this.maxWidth + ", " + this.maxHeight + ", " + this.pcmEncoding + ", " + this.encoderDelay + ", " + this.encoderPadding + ")";
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            int hashCode = (((this.language == null ? 0 : this.language.hashCode()) + (((((((((((((((((this.adaptive ? 1231 : 1237) + (((((((((((((((((this.mimeType == null ? 0 : this.mimeType.hashCode()) + (((this.trackId == null ? 0 : this.trackId.hashCode()) + 527) * 31)) * 31) + this.bitrate) * 31) + this.maxInputSize) * 31) + this.width) * 31) + this.height) * 31) + this.rotationDegrees) * 31) + Float.floatToRawIntBits(this.pixelWidthHeightRatio)) * 31) + ((int) this.durationUs)) * 31)) * 31) + this.maxWidth) * 31) + this.maxHeight) * 31) + this.channelCount) * 31) + this.sampleRate) * 31) + this.pcmEncoding) * 31) + this.encoderDelay) * 31) + this.encoderPadding) * 31)) * 31) + ((int) this.subsampleOffsetUs);
            for (int i = 0; i < this.initializationData.size(); i++) {
                hashCode = Arrays.hashCode(this.initializationData.get(i)) + (hashCode * 31);
            }
            this.hashCode = (((hashCode * 31) + Arrays.hashCode(this.projectionData)) * 31) + this.stereoMode;
        }
        return this.hashCode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MediaFormat mediaFormat = (MediaFormat) obj;
        if (this.adaptive != mediaFormat.adaptive || this.bitrate != mediaFormat.bitrate || this.maxInputSize != mediaFormat.maxInputSize || this.durationUs != mediaFormat.durationUs || this.width != mediaFormat.width || this.height != mediaFormat.height || this.rotationDegrees != mediaFormat.rotationDegrees || this.pixelWidthHeightRatio != mediaFormat.pixelWidthHeightRatio || this.maxWidth != mediaFormat.maxWidth || this.maxHeight != mediaFormat.maxHeight || this.channelCount != mediaFormat.channelCount || this.sampleRate != mediaFormat.sampleRate || this.pcmEncoding != mediaFormat.pcmEncoding || this.encoderDelay != mediaFormat.encoderDelay || this.encoderPadding != mediaFormat.encoderPadding || this.subsampleOffsetUs != mediaFormat.subsampleOffsetUs || !Util.areEqual(this.trackId, mediaFormat.trackId) || !Util.areEqual(this.language, mediaFormat.language) || !Util.areEqual(this.mimeType, mediaFormat.mimeType) || this.initializationData.size() != mediaFormat.initializationData.size() || !Arrays.equals(this.projectionData, mediaFormat.projectionData) || this.stereoMode != mediaFormat.stereoMode) {
            return false;
        }
        for (int i = 0; i < this.initializationData.size(); i++) {
            if (!Arrays.equals(this.initializationData.get(i), mediaFormat.initializationData.get(i))) {
                return false;
            }
        }
        return true;
    }

    @TargetApi(16)
    private static final void maybeSetStringV16(android.media.MediaFormat mediaFormat, String str, String str2) {
        if (str2 != null) {
            mediaFormat.setString(str, str2);
        }
    }

    @TargetApi(16)
    private static final void maybeSetIntegerV16(android.media.MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.trackId);
        parcel.writeString(this.mimeType);
        parcel.writeInt(this.bitrate);
        parcel.writeInt(this.maxInputSize);
        parcel.writeLong(this.durationUs);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeInt(this.rotationDegrees);
        parcel.writeFloat(this.pixelWidthHeightRatio);
        parcel.writeInt(this.channelCount);
        parcel.writeInt(this.sampleRate);
        parcel.writeString(this.language);
        parcel.writeLong(this.subsampleOffsetUs);
        parcel.writeList(this.initializationData);
        parcel.writeInt(this.adaptive ? 1 : 0);
        parcel.writeInt(this.maxWidth);
        parcel.writeInt(this.maxHeight);
        parcel.writeInt(this.pcmEncoding);
        parcel.writeInt(this.encoderDelay);
        parcel.writeInt(this.encoderPadding);
        parcel.writeInt(this.projectionData == null ? 0 : 1);
        if (this.projectionData != null) {
            parcel.writeByteArray(this.projectionData);
        }
        parcel.writeInt(this.stereoMode);
    }

    /* renamed from: com.google.android.exoplayer.MediaFormat$1 */
    static class C11811 implements Parcelable.Creator<MediaFormat> {
        C11811() {
        }

        @Override // android.os.Parcelable.Creator
        public MediaFormat createFromParcel(Parcel parcel) {
            return new MediaFormat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public MediaFormat[] newArray(int i) {
            return new MediaFormat[i];
        }
    }
}
