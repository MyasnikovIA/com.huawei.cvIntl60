package com.google.android.exoplayer;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaExtractor;
import android.net.Uri;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.Util;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Map;
import java.util.UUID;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

@TargetApi(16)
@Deprecated
/* loaded from: classes.dex */
public final class FrameworkSampleSource implements SampleSource, SampleSource.SampleSourceReader {
    private static final int ALLOWED_FLAGS_MASK = 3;
    private static final int TRACK_STATE_DISABLED = 0;
    private static final int TRACK_STATE_ENABLED = 1;
    private static final int TRACK_STATE_FORMAT_SENT = 2;
    private final Context context;
    private MediaExtractor extractor;
    private final FileDescriptor fileDescriptor;
    private final long fileDescriptorLength;
    private final long fileDescriptorOffset;
    private final Map<String, String> headers;
    private long lastSeekPositionUs;
    private boolean[] pendingDiscontinuities;
    private long pendingSeekPositionUs;
    private IOException preparationError;
    private boolean prepared;
    private int remainingReleaseCount;
    private MediaFormat[] trackFormats;
    private int[] trackStates;
    private final Uri uri;

    public FrameworkSampleSource(Context context, Uri uri, Map<String, String> map) {
        Assertions.checkState(Util.SDK_INT >= 16);
        this.context = (Context) Assertions.checkNotNull(context);
        this.uri = (Uri) Assertions.checkNotNull(uri);
        this.headers = map;
        this.fileDescriptor = null;
        this.fileDescriptorOffset = 0L;
        this.fileDescriptorLength = 0L;
    }

    public FrameworkSampleSource(FileDescriptor fileDescriptor, long j, long j2) {
        Assertions.checkState(Util.SDK_INT >= 16);
        this.fileDescriptor = (FileDescriptor) Assertions.checkNotNull(fileDescriptor);
        this.fileDescriptorOffset = j;
        this.fileDescriptorLength = j2;
        this.context = null;
        this.uri = null;
        this.headers = null;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public SampleSource.SampleSourceReader register() {
        this.remainingReleaseCount++;
        return this;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean prepare(long j) {
        if (!this.prepared) {
            if (this.preparationError != null) {
                return false;
            }
            this.extractor = new MediaExtractor();
            try {
                if (this.context != null) {
                    this.extractor.setDataSource(this.context, this.uri, this.headers);
                } else {
                    this.extractor.setDataSource(this.fileDescriptor, this.fileDescriptorOffset, this.fileDescriptorLength);
                }
                this.trackStates = new int[this.extractor.getTrackCount()];
                this.pendingDiscontinuities = new boolean[this.trackStates.length];
                this.trackFormats = new MediaFormat[this.trackStates.length];
                for (int i = 0; i < this.trackStates.length; i++) {
                    this.trackFormats[i] = createMediaFormat(this.extractor.getTrackFormat(i));
                }
                this.prepared = true;
            } catch (IOException e) {
                this.preparationError = e;
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int getTrackCount() {
        Assertions.checkState(this.prepared);
        return this.trackStates.length;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public MediaFormat getFormat(int i) {
        Assertions.checkState(this.prepared);
        return this.trackFormats[i];
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void enable(int i, long j) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackStates[i] == 0);
        this.trackStates[i] = 1;
        this.extractor.selectTrack(i);
        seekToUsInternal(j, j != 0);
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean continueBuffering(int i, long j) {
        return true;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public long readDiscontinuity(int i) {
        if (!this.pendingDiscontinuities[i]) {
            return Long.MIN_VALUE;
        }
        this.pendingDiscontinuities[i] = false;
        return this.lastSeekPositionUs;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int readData(int i, long j, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackStates[i] != 0);
        if (this.pendingDiscontinuities[i]) {
            return -2;
        }
        if (this.trackStates[i] != 2) {
            mediaFormatHolder.format = this.trackFormats[i];
            mediaFormatHolder.drmInitData = Util.SDK_INT >= 18 ? getDrmInitDataV18() : null;
            this.trackStates[i] = 2;
            return -4;
        }
        int sampleTrackIndex = this.extractor.getSampleTrackIndex();
        if (sampleTrackIndex == i) {
            if (sampleHolder.data != null) {
                int position = sampleHolder.data.position();
                sampleHolder.size = this.extractor.readSampleData(sampleHolder.data, position);
                sampleHolder.data.position(position + sampleHolder.size);
            } else {
                sampleHolder.size = 0;
            }
            sampleHolder.timeUs = this.extractor.getSampleTime();
            sampleHolder.flags = this.extractor.getSampleFlags() & 3;
            if (sampleHolder.isEncrypted()) {
                sampleHolder.cryptoInfo.setFromExtractorV16(this.extractor);
            }
            this.pendingSeekPositionUs = -1L;
            this.extractor.advance();
            return -3;
        }
        return sampleTrackIndex < 0 ? -1 : -2;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void disable(int i) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackStates[i] != 0);
        this.extractor.unselectTrack(i);
        this.pendingDiscontinuities[i] = false;
        this.trackStates[i] = 0;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void maybeThrowError() {
        if (this.preparationError != null) {
            throw this.preparationError;
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void seekToUs(long j) {
        Assertions.checkState(this.prepared);
        seekToUsInternal(j, false);
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public long getBufferedPositionUs() {
        Assertions.checkState(this.prepared);
        long cachedDuration = this.extractor.getCachedDuration();
        if (cachedDuration == -1) {
            return -1L;
        }
        long sampleTime = this.extractor.getSampleTime();
        if (sampleTime == -1) {
            return -3L;
        }
        return sampleTime + cachedDuration;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void release() {
        Assertions.checkState(this.remainingReleaseCount > 0);
        int i = this.remainingReleaseCount - 1;
        this.remainingReleaseCount = i;
        if (i == 0 && this.extractor != null) {
            this.extractor.release();
            this.extractor = null;
        }
    }

    @TargetApi(18)
    private DrmInitData getDrmInitDataV18() {
        Map<UUID, byte[]> psshInfo = this.extractor.getPsshInfo();
        if (psshInfo == null || psshInfo.isEmpty()) {
            return null;
        }
        DrmInitData.Mapped mapped = new DrmInitData.Mapped();
        for (UUID uuid : psshInfo.keySet()) {
            mapped.put(uuid, new DrmInitData.SchemeInitData(MimeTypes.VIDEO_MP4, PsshAtomUtil.buildPsshAtom(uuid, psshInfo.get(uuid))));
        }
        return mapped;
    }

    private void seekToUsInternal(long j, boolean z) {
        if (z || this.pendingSeekPositionUs != j) {
            this.lastSeekPositionUs = j;
            this.pendingSeekPositionUs = j;
            this.extractor.seekTo(j, 0);
            for (int i = 0; i < this.trackStates.length; i++) {
                if (this.trackStates[i] != 0) {
                    this.pendingDiscontinuities[i] = true;
                }
            }
        }
    }

    @SuppressLint({"InlinedApi"})
    private static MediaFormat createMediaFormat(android.media.MediaFormat mediaFormat) {
        String string = mediaFormat.getString(IMediaFormat.KEY_MIME);
        String optionalStringV16 = getOptionalStringV16(mediaFormat, IjkMediaMeta.IJKM_KEY_LANGUAGE);
        int optionalIntegerV16 = getOptionalIntegerV16(mediaFormat, "max-input-size");
        int optionalIntegerV162 = getOptionalIntegerV16(mediaFormat, "width");
        int optionalIntegerV163 = getOptionalIntegerV16(mediaFormat, "height");
        int optionalIntegerV164 = getOptionalIntegerV16(mediaFormat, "rotation-degrees");
        int optionalIntegerV165 = getOptionalIntegerV16(mediaFormat, "channel-count");
        int optionalIntegerV166 = getOptionalIntegerV16(mediaFormat, "sample-rate");
        int optionalIntegerV167 = getOptionalIntegerV16(mediaFormat, "encoder-delay");
        int optionalIntegerV168 = getOptionalIntegerV16(mediaFormat, "encoder-padding");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; mediaFormat.containsKey("csd-" + i); i++) {
            ByteBuffer byteBuffer = mediaFormat.getByteBuffer("csd-" + i);
            byte[] bArr = new byte[byteBuffer.limit()];
            byteBuffer.get(bArr);
            arrayList.add(bArr);
            byteBuffer.flip();
        }
        MediaFormat mediaFormat2 = new MediaFormat(null, string, -1, optionalIntegerV16, mediaFormat.containsKey("durationUs") ? mediaFormat.getLong("durationUs") : -1L, optionalIntegerV162, optionalIntegerV163, optionalIntegerV164, -1.0f, optionalIntegerV165, optionalIntegerV166, optionalStringV16, Long.MAX_VALUE, arrayList, false, -1, -1, MimeTypes.AUDIO_RAW.equals(string) ? 2 : -1, optionalIntegerV167, optionalIntegerV168, null, -1);
        mediaFormat2.setFrameworkFormatV16(mediaFormat);
        return mediaFormat2;
    }

    @TargetApi(16)
    private static final String getOptionalStringV16(android.media.MediaFormat mediaFormat, String str) {
        if (mediaFormat.containsKey(str)) {
            return mediaFormat.getString(str);
        }
        return null;
    }

    @TargetApi(16)
    private static final int getOptionalIntegerV16(android.media.MediaFormat mediaFormat, String str) {
        if (mediaFormat.containsKey(str)) {
            return mediaFormat.getInteger(str);
        }
        return -1;
    }
}
