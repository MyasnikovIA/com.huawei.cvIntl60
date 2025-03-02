package com.google.android.exoplayer.smoothstreaming;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Base64;
import android.util.SparseArray;
import com.google.android.exoplayer.BehindLiveWindowException;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.chunk.Chunk;
import com.google.android.exoplayer.chunk.ChunkExtractorWrapper;
import com.google.android.exoplayer.chunk.ChunkOperationHolder;
import com.google.android.exoplayer.chunk.ChunkSource;
import com.google.android.exoplayer.chunk.ContainerMediaChunk;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.FormatEvaluator;
import com.google.android.exoplayer.chunk.MediaChunk;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer.extractor.mp4.Track;
import com.google.android.exoplayer.extractor.mp4.TrackEncryptionBox;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifest;
import com.google.android.exoplayer.smoothstreaming.SmoothStreamingTrackSelector;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.CodecSpecificDataUtil;
import com.google.android.exoplayer.util.ManifestFetcher;
import com.google.android.exoplayer.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class SmoothStreamingChunkSource implements ChunkSource, SmoothStreamingTrackSelector.Output {
    private static final int INITIALIZATION_VECTOR_SIZE = 8;
    private static final int MINIMUM_MANIFEST_REFRESH_PERIOD_MS = 5000;
    private final FormatEvaluator adaptiveFormatEvaluator;
    private SmoothStreamingManifest currentManifest;
    private int currentManifestChunkOffset;
    private final DataSource dataSource;
    private final DrmInitData.Mapped drmInitData;
    private ExposedTrack enabledTrack;
    private final FormatEvaluator.Evaluation evaluation;
    private final SparseArray<ChunkExtractorWrapper> extractorWrappers;
    private IOException fatalError;
    private final boolean live;
    private final long liveEdgeLatencyUs;
    private final ManifestFetcher<SmoothStreamingManifest> manifestFetcher;
    private final SparseArray<MediaFormat> mediaFormats;
    private boolean needManifestRefresh;
    private boolean prepareCalled;
    private final TrackEncryptionBox[] trackEncryptionBoxes;
    private final SmoothStreamingTrackSelector trackSelector;
    private final ArrayList<ExposedTrack> tracks;

    public SmoothStreamingChunkSource(ManifestFetcher<SmoothStreamingManifest> manifestFetcher, SmoothStreamingTrackSelector smoothStreamingTrackSelector, DataSource dataSource, FormatEvaluator formatEvaluator, long j) {
        this(manifestFetcher, manifestFetcher.getManifest(), smoothStreamingTrackSelector, dataSource, formatEvaluator, j);
    }

    public SmoothStreamingChunkSource(SmoothStreamingManifest smoothStreamingManifest, SmoothStreamingTrackSelector smoothStreamingTrackSelector, DataSource dataSource, FormatEvaluator formatEvaluator) {
        this(null, smoothStreamingManifest, smoothStreamingTrackSelector, dataSource, formatEvaluator, 0L);
    }

    private SmoothStreamingChunkSource(ManifestFetcher<SmoothStreamingManifest> manifestFetcher, SmoothStreamingManifest smoothStreamingManifest, SmoothStreamingTrackSelector smoothStreamingTrackSelector, DataSource dataSource, FormatEvaluator formatEvaluator, long j) {
        this.manifestFetcher = manifestFetcher;
        this.currentManifest = smoothStreamingManifest;
        this.trackSelector = smoothStreamingTrackSelector;
        this.dataSource = dataSource;
        this.adaptiveFormatEvaluator = formatEvaluator;
        this.liveEdgeLatencyUs = 1000 * j;
        this.evaluation = new FormatEvaluator.Evaluation();
        this.tracks = new ArrayList<>();
        this.extractorWrappers = new SparseArray<>();
        this.mediaFormats = new SparseArray<>();
        this.live = smoothStreamingManifest.isLive;
        SmoothStreamingManifest.ProtectionElement protectionElement = smoothStreamingManifest.protectionElement;
        if (protectionElement != null) {
            byte[] protectionElementKeyId = getProtectionElementKeyId(protectionElement.data);
            this.trackEncryptionBoxes = new TrackEncryptionBox[1];
            this.trackEncryptionBoxes[0] = new TrackEncryptionBox(true, 8, protectionElementKeyId);
            this.drmInitData = new DrmInitData.Mapped();
            this.drmInitData.put(protectionElement.uuid, new DrmInitData.SchemeInitData(MimeTypes.VIDEO_MP4, protectionElement.data));
            return;
        }
        this.trackEncryptionBoxes = null;
        this.drmInitData = null;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void maybeThrowError() {
        if (this.fatalError != null) {
            throw this.fatalError;
        }
        this.manifestFetcher.maybeThrowError();
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public boolean prepare() {
        if (!this.prepareCalled) {
            this.prepareCalled = true;
            try {
                this.trackSelector.selectTracks(this.currentManifest, this);
            } catch (IOException e) {
                this.fatalError = e;
            }
        }
        return this.fatalError == null;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public int getTrackCount() {
        return this.tracks.size();
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public final MediaFormat getFormat(int i) {
        return this.tracks.get(i).trackFormat;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void enable(int i) {
        this.enabledTrack = this.tracks.get(i);
        if (this.enabledTrack.isAdaptive()) {
            this.adaptiveFormatEvaluator.enable();
        }
        if (this.manifestFetcher != null) {
            this.manifestFetcher.enable();
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void continueBuffering(long j) {
        if (this.manifestFetcher != null && this.currentManifest.isLive && this.fatalError == null) {
            SmoothStreamingManifest manifest = this.manifestFetcher.getManifest();
            if (this.currentManifest != manifest && manifest != null) {
                SmoothStreamingManifest.StreamElement streamElement = this.currentManifest.streamElements[this.enabledTrack.elementIndex];
                int i = streamElement.chunkCount;
                SmoothStreamingManifest.StreamElement streamElement2 = manifest.streamElements[this.enabledTrack.elementIndex];
                if (i == 0 || streamElement2.chunkCount == 0) {
                    this.currentManifestChunkOffset += i;
                } else {
                    long startTimeUs = streamElement.getStartTimeUs(i - 1) + streamElement.getChunkDurationUs(i - 1);
                    long startTimeUs2 = streamElement2.getStartTimeUs(0);
                    if (startTimeUs <= startTimeUs2) {
                        this.currentManifestChunkOffset += i;
                    } else {
                        this.currentManifestChunkOffset = streamElement.getChunkIndex(startTimeUs2) + this.currentManifestChunkOffset;
                    }
                }
                this.currentManifest = manifest;
                this.needManifestRefresh = false;
            }
            if (this.needManifestRefresh && SystemClock.elapsedRealtime() > this.manifestFetcher.getManifestLoadStartTimestamp() + HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS) {
                this.manifestFetcher.requestRefresh();
            }
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public final void getChunkOperation(List<? extends MediaChunk> list, long j, ChunkOperationHolder chunkOperationHolder) {
        int i;
        if (this.fatalError != null) {
            chunkOperationHolder.chunk = null;
            return;
        }
        this.evaluation.queueSize = list.size();
        if (this.enabledTrack.isAdaptive()) {
            this.adaptiveFormatEvaluator.evaluate(list, j, this.enabledTrack.adaptiveFormats, this.evaluation);
        } else {
            this.evaluation.format = this.enabledTrack.fixedFormat;
            this.evaluation.trigger = 2;
        }
        Format format = this.evaluation.format;
        chunkOperationHolder.queueSize = this.evaluation.queueSize;
        if (format == null) {
            chunkOperationHolder.chunk = null;
            return;
        }
        if (chunkOperationHolder.queueSize != list.size() || chunkOperationHolder.chunk == null || !chunkOperationHolder.chunk.format.equals(format)) {
            chunkOperationHolder.chunk = null;
            SmoothStreamingManifest.StreamElement streamElement = this.currentManifest.streamElements[this.enabledTrack.elementIndex];
            if (streamElement.chunkCount == 0) {
                if (this.currentManifest.isLive) {
                    this.needManifestRefresh = true;
                    return;
                } else {
                    chunkOperationHolder.endOfStream = true;
                    return;
                }
            }
            if (list.isEmpty()) {
                if (this.live) {
                    j = getLiveSeekPosition(this.currentManifest, this.liveEdgeLatencyUs);
                }
                i = streamElement.getChunkIndex(j);
            } else {
                i = (list.get(chunkOperationHolder.queueSize - 1).chunkIndex + 1) - this.currentManifestChunkOffset;
            }
            if (this.live && i < 0) {
                this.fatalError = new BehindLiveWindowException();
                return;
            }
            if (this.currentManifest.isLive) {
                if (i >= streamElement.chunkCount) {
                    this.needManifestRefresh = true;
                    return;
                } else if (i == streamElement.chunkCount - 1) {
                    this.needManifestRefresh = true;
                }
            } else if (i >= streamElement.chunkCount) {
                chunkOperationHolder.endOfStream = true;
                return;
            }
            boolean z = !this.currentManifest.isLive && i == streamElement.chunkCount + (-1);
            long startTimeUs = streamElement.getStartTimeUs(i);
            long chunkDurationUs = z ? -1L : startTimeUs + streamElement.getChunkDurationUs(i);
            int i2 = i + this.currentManifestChunkOffset;
            int manifestTrackIndex = getManifestTrackIndex(streamElement, format);
            int manifestTrackKey = getManifestTrackKey(this.enabledTrack.elementIndex, manifestTrackIndex);
            chunkOperationHolder.chunk = newMediaChunk(format, streamElement.buildRequestUri(manifestTrackIndex, i), null, this.extractorWrappers.get(manifestTrackKey), this.drmInitData, this.dataSource, i2, startTimeUs, chunkDurationUs, this.evaluation.trigger, this.mediaFormats.get(manifestTrackKey), this.enabledTrack.adaptiveMaxWidth, this.enabledTrack.adaptiveMaxHeight);
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void onChunkLoadCompleted(Chunk chunk) {
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void onChunkLoadError(Chunk chunk, Exception exc) {
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void disable(List<? extends MediaChunk> list) {
        if (this.enabledTrack.isAdaptive()) {
            this.adaptiveFormatEvaluator.disable();
        }
        if (this.manifestFetcher != null) {
            this.manifestFetcher.disable();
        }
        this.evaluation.format = null;
        this.fatalError = null;
    }

    @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingTrackSelector.Output
    public void adaptiveTrack(SmoothStreamingManifest smoothStreamingManifest, int i, int[] iArr) {
        if (this.adaptiveFormatEvaluator != null) {
            SmoothStreamingManifest.StreamElement streamElement = smoothStreamingManifest.streamElements[i];
            Format[] formatArr = new Format[iArr.length];
            int i2 = -1;
            int i3 = -1;
            MediaFormat mediaFormat = null;
            for (int i4 = 0; i4 < formatArr.length; i4++) {
                int i5 = iArr[i4];
                formatArr[i4] = streamElement.tracks[i5].format;
                MediaFormat initManifestTrack = initManifestTrack(smoothStreamingManifest, i, i5);
                if (mediaFormat == null || initManifestTrack.height > i2) {
                    mediaFormat = initManifestTrack;
                }
                i3 = Math.max(i3, initManifestTrack.width);
                i2 = Math.max(i2, initManifestTrack.height);
            }
            Arrays.sort(formatArr, new Format.DecreasingBandwidthComparator());
            this.tracks.add(new ExposedTrack(mediaFormat.copyAsAdaptive(null), i, formatArr, i3, i2));
        }
    }

    @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingTrackSelector.Output
    public void fixedTrack(SmoothStreamingManifest smoothStreamingManifest, int i, int i2) {
        this.tracks.add(new ExposedTrack(initManifestTrack(smoothStreamingManifest, i, i2), i, smoothStreamingManifest.streamElements[i].tracks[i2].format));
    }

    private MediaFormat initManifestTrack(SmoothStreamingManifest smoothStreamingManifest, int i, int i2) {
        MediaFormat createTextFormat;
        int i3;
        List singletonList;
        int manifestTrackKey = getManifestTrackKey(i, i2);
        MediaFormat mediaFormat = this.mediaFormats.get(manifestTrackKey);
        if (mediaFormat == null) {
            long j = this.live ? -1L : smoothStreamingManifest.durationUs;
            SmoothStreamingManifest.StreamElement streamElement = smoothStreamingManifest.streamElements[i];
            Format format = streamElement.tracks[i2].format;
            byte[][] bArr = streamElement.tracks[i2].csd;
            switch (streamElement.type) {
                case 0:
                    if (bArr != null) {
                        singletonList = Arrays.asList(bArr);
                    } else {
                        singletonList = Collections.singletonList(CodecSpecificDataUtil.buildAacAudioSpecificConfig(format.audioSamplingRate, format.audioChannels));
                    }
                    createTextFormat = MediaFormat.createAudioFormat(format.f5934id, format.mimeType, format.bitrate, -1, j, format.audioChannels, format.audioSamplingRate, singletonList, format.language);
                    i3 = Track.TYPE_soun;
                    break;
                case 1:
                    createTextFormat = MediaFormat.createVideoFormat(format.f5934id, format.mimeType, format.bitrate, -1, j, format.width, format.height, Arrays.asList(bArr));
                    i3 = Track.TYPE_vide;
                    break;
                case 2:
                    createTextFormat = MediaFormat.createTextFormat(format.f5934id, format.mimeType, format.bitrate, j, format.language);
                    i3 = Track.TYPE_text;
                    break;
                default:
                    throw new IllegalStateException("Invalid type: " + streamElement.type);
            }
            FragmentedMp4Extractor fragmentedMp4Extractor = new FragmentedMp4Extractor(3, new Track(i2, i3, streamElement.timescale, -1L, j, createTextFormat, this.trackEncryptionBoxes, i3 == Track.TYPE_vide ? 4 : -1, null, null));
            this.mediaFormats.put(manifestTrackKey, createTextFormat);
            this.extractorWrappers.put(manifestTrackKey, new ChunkExtractorWrapper(fragmentedMp4Extractor));
            return createTextFormat;
        }
        return mediaFormat;
    }

    private static long getLiveSeekPosition(SmoothStreamingManifest smoothStreamingManifest, long j) {
        long j2 = Long.MIN_VALUE;
        for (int i = 0; i < smoothStreamingManifest.streamElements.length; i++) {
            SmoothStreamingManifest.StreamElement streamElement = smoothStreamingManifest.streamElements[i];
            if (streamElement.chunkCount > 0) {
                j2 = Math.max(j2, streamElement.getStartTimeUs(streamElement.chunkCount - 1) + streamElement.getChunkDurationUs(streamElement.chunkCount - 1));
            }
        }
        return j2 - j;
    }

    private static int getManifestTrackIndex(SmoothStreamingManifest.StreamElement streamElement, Format format) {
        SmoothStreamingManifest.TrackElement[] trackElementArr = streamElement.tracks;
        for (int i = 0; i < trackElementArr.length; i++) {
            if (trackElementArr[i].format.equals(format)) {
                return i;
            }
        }
        throw new IllegalStateException("Invalid format: " + format);
    }

    private static MediaChunk newMediaChunk(Format format, Uri uri, String str, ChunkExtractorWrapper chunkExtractorWrapper, DrmInitData drmInitData, DataSource dataSource, int i, long j, long j2, int i2, MediaFormat mediaFormat, int i3, int i4) {
        return new ContainerMediaChunk(dataSource, new DataSpec(uri, 0L, -1L, str), i2, format, j, j2, i, j, chunkExtractorWrapper, mediaFormat, i3, i4, drmInitData, true, -1);
    }

    private static int getManifestTrackKey(int i, int i2) {
        Assertions.checkState(i <= 65536 && i2 <= 65536);
        return (i << 16) | i2;
    }

    private static byte[] getProtectionElementKeyId(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i += 2) {
            sb.append((char) bArr[i]);
        }
        String sb2 = sb.toString();
        byte[] decode = Base64.decode(sb2.substring(sb2.indexOf("<KID>") + 5, sb2.indexOf("</KID>")), 0);
        swap(decode, 0, 3);
        swap(decode, 1, 2);
        swap(decode, 4, 5);
        swap(decode, 6, 7);
        return decode;
    }

    private static void swap(byte[] bArr, int i, int i2) {
        byte b = bArr[i];
        bArr[i] = bArr[i2];
        bArr[i2] = b;
    }

    private static final class ExposedTrack {
        private final Format[] adaptiveFormats;
        private final int adaptiveMaxHeight;
        private final int adaptiveMaxWidth;
        private final int elementIndex;
        private final Format fixedFormat;
        public final MediaFormat trackFormat;

        public ExposedTrack(MediaFormat mediaFormat, int i, Format format) {
            this.trackFormat = mediaFormat;
            this.elementIndex = i;
            this.fixedFormat = format;
            this.adaptiveFormats = null;
            this.adaptiveMaxWidth = -1;
            this.adaptiveMaxHeight = -1;
        }

        public ExposedTrack(MediaFormat mediaFormat, int i, Format[] formatArr, int i2, int i3) {
            this.trackFormat = mediaFormat;
            this.elementIndex = i;
            this.adaptiveFormats = formatArr;
            this.adaptiveMaxWidth = i2;
            this.adaptiveMaxHeight = i3;
            this.fixedFormat = null;
        }

        public boolean isAdaptive() {
            return this.adaptiveFormats != null;
        }
    }
}
