package com.google.android.exoplayer.hls;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer.BehindLiveWindowException;
import com.google.android.exoplayer.chunk.Chunk;
import com.google.android.exoplayer.chunk.ChunkOperationHolder;
import com.google.android.exoplayer.chunk.DataChunk;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer.extractor.p095ts.AdtsExtractor;
import com.google.android.exoplayer.extractor.p095ts.PtsTimestampAdjuster;
import com.google.android.exoplayer.extractor.p095ts.TsExtractor;
import com.google.android.exoplayer.hls.HlsMediaPlaylist;
import com.google.android.exoplayer.hls.HlsTrackSelector;
import com.google.android.exoplayer.upstream.BandwidthMeter;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.HttpDataSource;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.UriUtil;
import com.google.android.exoplayer.util.Util;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class HlsChunkSource implements HlsTrackSelector.Output {
    private static final String AAC_FILE_EXTENSION = ".aac";
    private static final float BANDWIDTH_FRACTION = 0.8f;
    public static final long DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS = 20000;
    public static final long DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS = 5000;
    public static final long DEFAULT_PLAYLIST_BLACKLIST_MS = 60000;
    private static final double LIVE_VARIANT_SWITCH_SAFETY_EXTRA_SECS = 2.0d;
    private static final String MP3_FILE_EXTENSION = ".mp3";
    private static final String TAG = "HlsChunkSource";
    private static final String VTT_FILE_EXTENSION = ".vtt";
    private static final String WEBVTT_FILE_EXTENSION = ".webvtt";
    private final BandwidthMeter bandwidthMeter;
    private final String baseUri;
    private final DataSource dataSource;
    private long durationUs;
    private byte[] encryptionIv;
    private String encryptionIvString;
    private byte[] encryptionKey;
    private Uri encryptionKeyUri;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private IOException fatalError;
    private final boolean isMaster;
    private boolean live;
    private final HlsMasterPlaylist masterPlaylist;
    private final long maxBufferDurationToSwitchDownUs;
    private final long minBufferDurationToSwitchUpUs;
    private final HlsPlaylistParser playlistParser;
    private boolean prepareCalled;
    private byte[] scratchSpace;
    private int selectedTrackIndex;
    private int selectedVariantIndex;
    private final PtsTimestampAdjusterProvider timestampAdjusterProvider;
    private final HlsTrackSelector trackSelector;
    private final ArrayList<ExposedTrack> tracks;
    private long[] variantBlacklistTimes;
    private long[] variantLastPlaylistLoadTimesMs;
    private HlsMediaPlaylist[] variantPlaylists;
    private Variant[] variants;

    public interface EventListener {
        void onMediaPlaylistLoadCompleted(byte[] bArr);
    }

    public HlsChunkSource(boolean z, DataSource dataSource, HlsPlaylist hlsPlaylist, HlsTrackSelector hlsTrackSelector, BandwidthMeter bandwidthMeter, PtsTimestampAdjusterProvider ptsTimestampAdjusterProvider) {
        this(z, dataSource, hlsPlaylist, hlsTrackSelector, bandwidthMeter, ptsTimestampAdjusterProvider, DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS, DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS, null, null);
    }

    public HlsChunkSource(boolean z, DataSource dataSource, HlsPlaylist hlsPlaylist, HlsTrackSelector hlsTrackSelector, BandwidthMeter bandwidthMeter, PtsTimestampAdjusterProvider ptsTimestampAdjusterProvider, long j, long j2) {
        this(z, dataSource, hlsPlaylist, hlsTrackSelector, bandwidthMeter, ptsTimestampAdjusterProvider, j, j2, null, null);
    }

    public HlsChunkSource(boolean z, DataSource dataSource, HlsPlaylist hlsPlaylist, HlsTrackSelector hlsTrackSelector, BandwidthMeter bandwidthMeter, PtsTimestampAdjusterProvider ptsTimestampAdjusterProvider, long j, long j2, Handler handler, EventListener eventListener) {
        this.isMaster = z;
        this.dataSource = dataSource;
        this.trackSelector = hlsTrackSelector;
        this.bandwidthMeter = bandwidthMeter;
        this.timestampAdjusterProvider = ptsTimestampAdjusterProvider;
        this.eventListener = eventListener;
        this.eventHandler = handler;
        this.minBufferDurationToSwitchUpUs = 1000 * j;
        this.maxBufferDurationToSwitchDownUs = 1000 * j2;
        this.baseUri = hlsPlaylist.baseUri;
        this.playlistParser = new HlsPlaylistParser();
        this.tracks = new ArrayList<>();
        if (hlsPlaylist.type == 0) {
            this.masterPlaylist = (HlsMasterPlaylist) hlsPlaylist;
            return;
        }
        Format format = new Format("0", MimeTypes.APPLICATION_M3U8, -1, -1, -1.0f, -1, -1, -1, null, null);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Variant(this.baseUri, format));
        this.masterPlaylist = new HlsMasterPlaylist(this.baseUri, arrayList, Collections.emptyList(), Collections.emptyList(), null, null);
    }

    public void maybeThrowError() {
        if (this.fatalError != null) {
            throw this.fatalError;
        }
    }

    public boolean prepare() {
        if (!this.prepareCalled) {
            this.prepareCalled = true;
            try {
                this.trackSelector.selectTracks(this.masterPlaylist, this);
                selectTrack(0);
            } catch (IOException e) {
                this.fatalError = e;
            }
        }
        return this.fatalError == null;
    }

    public boolean isLive() {
        return this.live;
    }

    public long getDurationUs() {
        return this.durationUs;
    }

    public int getTrackCount() {
        return this.tracks.size();
    }

    public Variant getFixedTrackVariant(int i) {
        Variant[] variantArr = this.tracks.get(i).variants;
        if (variantArr.length == 1) {
            return variantArr[0];
        }
        return null;
    }

    public String getMuxedAudioLanguage() {
        return this.masterPlaylist.muxedAudioLanguage;
    }

    public String getMuxedCaptionLanguage() {
        return this.masterPlaylist.muxedCaptionLanguage;
    }

    public int getSelectedTrackIndex() {
        return this.selectedTrackIndex;
    }

    public void selectTrack(int i) {
        this.selectedTrackIndex = i;
        ExposedTrack exposedTrack = this.tracks.get(this.selectedTrackIndex);
        this.selectedVariantIndex = exposedTrack.defaultVariantIndex;
        this.variants = exposedTrack.variants;
        this.variantPlaylists = new HlsMediaPlaylist[this.variants.length];
        this.variantLastPlaylistLoadTimesMs = new long[this.variants.length];
        this.variantBlacklistTimes = new long[this.variants.length];
    }

    public void seek() {
        if (this.isMaster) {
            this.timestampAdjusterProvider.reset();
        }
    }

    public void reset() {
        this.fatalError = null;
    }

    public void getChunkOperation(TsChunk tsChunk, long j, ChunkOperationHolder chunkOperationHolder) {
        int nextChunkIndex;
        long j2;
        HlsExtractorWrapper hlsExtractorWrapper;
        int variantIndex = tsChunk == null ? -1 : getVariantIndex(tsChunk.format);
        int nextVariantIndex = getNextVariantIndex(tsChunk, j);
        boolean z = (tsChunk == null || variantIndex == nextVariantIndex) ? false : true;
        HlsMediaPlaylist hlsMediaPlaylist = this.variantPlaylists[nextVariantIndex];
        if (hlsMediaPlaylist == null) {
            chunkOperationHolder.chunk = newMediaPlaylistChunk(nextVariantIndex);
            return;
        }
        this.selectedVariantIndex = nextVariantIndex;
        if (this.live) {
            if (tsChunk == null) {
                nextChunkIndex = getLiveStartChunkSequenceNumber(this.selectedVariantIndex);
            } else {
                nextChunkIndex = getLiveNextChunkSequenceNumber(tsChunk.chunkIndex, variantIndex, this.selectedVariantIndex);
                if (nextChunkIndex < hlsMediaPlaylist.mediaSequence) {
                    this.fatalError = new BehindLiveWindowException();
                    return;
                }
            }
        } else if (tsChunk == null) {
            nextChunkIndex = Util.binarySearchFloor((List<? extends Comparable<? super Long>>) hlsMediaPlaylist.segments, Long.valueOf(j), true, true) + hlsMediaPlaylist.mediaSequence;
        } else if (z) {
            nextChunkIndex = Util.binarySearchFloor((List<? extends Comparable<? super Long>>) hlsMediaPlaylist.segments, Long.valueOf(tsChunk.startTimeUs), true, true) + hlsMediaPlaylist.mediaSequence;
        } else {
            nextChunkIndex = tsChunk.getNextChunkIndex();
        }
        int i = nextChunkIndex - hlsMediaPlaylist.mediaSequence;
        if (i >= hlsMediaPlaylist.segments.size()) {
            if (!hlsMediaPlaylist.live) {
                chunkOperationHolder.endOfStream = true;
                return;
            } else {
                if (shouldRerequestLiveMediaPlaylist(this.selectedVariantIndex)) {
                    chunkOperationHolder.chunk = newMediaPlaylistChunk(this.selectedVariantIndex);
                    return;
                }
                return;
            }
        }
        HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i);
        Uri resolveToUri = UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, segment.url);
        if (segment.isEncrypted) {
            Uri resolveToUri2 = UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, segment.encryptionKeyUri);
            if (!resolveToUri2.equals(this.encryptionKeyUri)) {
                chunkOperationHolder.chunk = newEncryptionKeyChunk(resolveToUri2, segment.encryptionIV, this.selectedVariantIndex);
                return;
            } else if (!Util.areEqual(segment.encryptionIV, this.encryptionIvString)) {
                setEncryptionData(resolveToUri2, segment.encryptionIV, this.encryptionKey);
            }
        } else {
            clearEncryptionData();
        }
        DataSpec dataSpec = new DataSpec(resolveToUri, segment.byterangeOffset, segment.byterangeLength, null);
        if (this.live) {
            if (tsChunk == null) {
                j2 = 0;
            } else {
                j2 = tsChunk.getAdjustedEndTimeUs() - (z ? tsChunk.getDurationUs() : 0L);
            }
        } else {
            j2 = segment.startTimeUs;
        }
        long j3 = j2 + ((long) (segment.durationSecs * 1000000.0d));
        Format format = this.variants[this.selectedVariantIndex].format;
        String lastPathSegment = resolveToUri.getLastPathSegment();
        if (lastPathSegment.endsWith(AAC_FILE_EXTENSION)) {
            hlsExtractorWrapper = new HlsExtractorWrapper(0, format, j2, new AdtsExtractor(j2), z, -1, -1);
        } else if (lastPathSegment.endsWith(MP3_FILE_EXTENSION)) {
            hlsExtractorWrapper = new HlsExtractorWrapper(0, format, j2, new Mp3Extractor(j2), z, -1, -1);
        } else if (lastPathSegment.endsWith(WEBVTT_FILE_EXTENSION) || lastPathSegment.endsWith(VTT_FILE_EXTENSION)) {
            PtsTimestampAdjuster adjuster = this.timestampAdjusterProvider.getAdjuster(this.isMaster, segment.discontinuitySequenceNumber, j2);
            if (adjuster != null) {
                hlsExtractorWrapper = new HlsExtractorWrapper(0, format, j2, new WebvttExtractor(adjuster), z, -1, -1);
            } else {
                return;
            }
        } else if (tsChunk == null || tsChunk.discontinuitySequenceNumber != segment.discontinuitySequenceNumber || !format.equals(tsChunk.format)) {
            PtsTimestampAdjuster adjuster2 = this.timestampAdjusterProvider.getAdjuster(this.isMaster, segment.discontinuitySequenceNumber, j2);
            if (adjuster2 != null) {
                int i2 = 16;
                String str = format.codecs;
                if (!TextUtils.isEmpty(str)) {
                    if (MimeTypes.getAudioMediaMimeType(str) != MimeTypes.AUDIO_AAC) {
                        i2 = 18;
                    }
                    if (MimeTypes.getVideoMediaMimeType(str) != MimeTypes.VIDEO_H264) {
                        i2 |= 4;
                    }
                }
                TsExtractor tsExtractor = new TsExtractor(adjuster2, i2);
                ExposedTrack exposedTrack = this.tracks.get(this.selectedTrackIndex);
                hlsExtractorWrapper = new HlsExtractorWrapper(0, format, j2, tsExtractor, z, exposedTrack.adaptiveMaxWidth, exposedTrack.adaptiveMaxHeight);
            } else {
                return;
            }
        } else {
            hlsExtractorWrapper = tsChunk.extractorWrapper;
        }
        chunkOperationHolder.chunk = new TsChunk(this.dataSource, dataSpec, 0, format, j2, j3, nextChunkIndex, segment.discontinuitySequenceNumber, hlsExtractorWrapper, this.encryptionKey, this.encryptionIv);
    }

    public void onChunkLoadCompleted(Chunk chunk) {
        if (chunk instanceof MediaPlaylistChunk) {
            MediaPlaylistChunk mediaPlaylistChunk = (MediaPlaylistChunk) chunk;
            this.scratchSpace = mediaPlaylistChunk.getDataHolder();
            setMediaPlaylist(mediaPlaylistChunk.variantIndex, mediaPlaylistChunk.getResult());
            if (this.eventHandler != null && this.eventListener != null) {
                this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.hls.HlsChunkSource.1
                    final /* synthetic */ byte[] val$rawResponse;

                    RunnableC12091(byte[] bArr) {
                        rawResponse = bArr;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        HlsChunkSource.this.eventListener.onMediaPlaylistLoadCompleted(rawResponse);
                    }
                });
                return;
            }
            return;
        }
        if (chunk instanceof EncryptionKeyChunk) {
            EncryptionKeyChunk encryptionKeyChunk = (EncryptionKeyChunk) chunk;
            this.scratchSpace = encryptionKeyChunk.getDataHolder();
            setEncryptionData(encryptionKeyChunk.dataSpec.uri, encryptionKeyChunk.f5940iv, encryptionKeyChunk.getResult());
        }
    }

    /* renamed from: com.google.android.exoplayer.hls.HlsChunkSource$1 */
    class RunnableC12091 implements Runnable {
        final /* synthetic */ byte[] val$rawResponse;

        RunnableC12091(byte[] bArr) {
            rawResponse = bArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            HlsChunkSource.this.eventListener.onMediaPlaylistLoadCompleted(rawResponse);
        }
    }

    public boolean onChunkLoadError(Chunk chunk, IOException iOException) {
        int i;
        if (chunk.bytesLoaded() != 0) {
            return false;
        }
        if ((!(chunk instanceof TsChunk) && !(chunk instanceof MediaPlaylistChunk) && !(chunk instanceof EncryptionKeyChunk)) || !(iOException instanceof HttpDataSource.InvalidResponseCodeException)) {
            return false;
        }
        int i2 = ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode;
        if (i2 != 404 && i2 != 410) {
            return false;
        }
        if (chunk instanceof TsChunk) {
            i = getVariantIndex(((TsChunk) chunk).format);
        } else if (chunk instanceof MediaPlaylistChunk) {
            i = ((MediaPlaylistChunk) chunk).variantIndex;
        } else {
            i = ((EncryptionKeyChunk) chunk).variantIndex;
        }
        boolean z = this.variantBlacklistTimes[i] != 0;
        this.variantBlacklistTimes[i] = SystemClock.elapsedRealtime();
        if (z) {
            Log.w(TAG, "Already blacklisted variant (" + i2 + "): " + chunk.dataSpec.uri);
            return false;
        }
        if (!allVariantsBlacklisted()) {
            Log.w(TAG, "Blacklisted variant (" + i2 + "): " + chunk.dataSpec.uri);
            return true;
        }
        Log.w(TAG, "Final variant not blacklisted (" + i2 + "): " + chunk.dataSpec.uri);
        this.variantBlacklistTimes[i] = 0;
        return false;
    }

    /* renamed from: com.google.android.exoplayer.hls.HlsChunkSource$2 */
    class C12102 implements Comparator<Variant> {
        private final Comparator<Format> formatComparator = new Format.DecreasingBandwidthComparator();

        C12102() {
        }

        @Override // java.util.Comparator
        public int compare(Variant variant, Variant variant2) {
            return this.formatComparator.compare(variant.format, variant2.format);
        }
    }

    @Override // com.google.android.exoplayer.hls.HlsTrackSelector.Output
    public void adaptiveTrack(HlsMasterPlaylist hlsMasterPlaylist, Variant[] variantArr) {
        int i;
        int i2 = -1;
        Arrays.sort(variantArr, new Comparator<Variant>() { // from class: com.google.android.exoplayer.hls.HlsChunkSource.2
            private final Comparator<Format> formatComparator = new Format.DecreasingBandwidthComparator();

            C12102() {
            }

            @Override // java.util.Comparator
            public int compare(Variant variant, Variant variant2) {
                return this.formatComparator.compare(variant.format, variant2.format);
            }
        });
        int computeDefaultVariantIndex = computeDefaultVariantIndex(hlsMasterPlaylist, variantArr, this.bandwidthMeter);
        int i3 = 0;
        int i4 = -1;
        while (true) {
            i = i2;
            if (i3 >= variantArr.length) {
                break;
            }
            Format format = variantArr[i3].format;
            i2 = Math.max(format.width, i);
            i4 = Math.max(format.height, i4);
            i3++;
        }
        if (i <= 0) {
            i = 1920;
        }
        if (i4 <= 0) {
            i4 = 1080;
        }
        this.tracks.add(new ExposedTrack(variantArr, computeDefaultVariantIndex, i, i4));
    }

    @Override // com.google.android.exoplayer.hls.HlsTrackSelector.Output
    public void fixedTrack(HlsMasterPlaylist hlsMasterPlaylist, Variant variant) {
        this.tracks.add(new ExposedTrack(variant));
    }

    protected int computeDefaultVariantIndex(HlsMasterPlaylist hlsMasterPlaylist, Variant[] variantArr, BandwidthMeter bandwidthMeter) {
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        int i3 = 0;
        while (i2 < variantArr.length) {
            int indexOf = hlsMasterPlaylist.variants.indexOf(variantArr[i2]);
            if (indexOf < i) {
                i3 = i2;
            } else {
                indexOf = i;
            }
            i2++;
            i = indexOf;
        }
        return i3;
    }

    private int getLiveStartChunkSequenceNumber(int i) {
        HlsMediaPlaylist hlsMediaPlaylist = this.variantPlaylists[i];
        return (hlsMediaPlaylist.segments.size() > 3 ? hlsMediaPlaylist.segments.size() - 3 : 0) + hlsMediaPlaylist.mediaSequence;
    }

    private int getLiveNextChunkSequenceNumber(int i, int i2, int i3) {
        if (i2 == i3) {
            return i + 1;
        }
        HlsMediaPlaylist hlsMediaPlaylist = this.variantPlaylists[i2];
        HlsMediaPlaylist hlsMediaPlaylist2 = this.variantPlaylists[i3];
        double d = 0.0d;
        for (int i4 = i - hlsMediaPlaylist.mediaSequence; i4 < hlsMediaPlaylist.segments.size(); i4++) {
            d += hlsMediaPlaylist.segments.get(i4).durationSecs;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        double d2 = ((d + ((elapsedRealtime - this.variantLastPlaylistLoadTimesMs[i2]) / 1000.0d)) + LIVE_VARIANT_SWITCH_SAFETY_EXTRA_SECS) - ((elapsedRealtime - this.variantLastPlaylistLoadTimesMs[i3]) / 1000.0d);
        if (d2 < 0.0d) {
            return hlsMediaPlaylist2.mediaSequence + hlsMediaPlaylist2.segments.size() + 1;
        }
        for (int size = hlsMediaPlaylist2.segments.size() - 1; size >= 0; size--) {
            d2 -= hlsMediaPlaylist2.segments.get(size).durationSecs;
            if (d2 < 0.0d) {
                return hlsMediaPlaylist2.mediaSequence + size;
            }
        }
        return hlsMediaPlaylist2.mediaSequence - 1;
    }

    private int getNextVariantIndex(TsChunk tsChunk, long j) {
        clearStaleBlacklistedVariants();
        long bitrateEstimate = this.bandwidthMeter.getBitrateEstimate();
        if (this.variantBlacklistTimes[this.selectedVariantIndex] != 0) {
            return getVariantIndexForBandwidth(bitrateEstimate);
        }
        if (tsChunk == null) {
            return this.selectedVariantIndex;
        }
        if (bitrateEstimate == -1) {
            return this.selectedVariantIndex;
        }
        int variantIndexForBandwidth = getVariantIndexForBandwidth(bitrateEstimate);
        if (variantIndexForBandwidth == this.selectedVariantIndex) {
            return this.selectedVariantIndex;
        }
        long adjustedEndTimeUs = (tsChunk.getAdjustedEndTimeUs() - tsChunk.getDurationUs()) - j;
        if (this.variantBlacklistTimes[this.selectedVariantIndex] != 0) {
            return variantIndexForBandwidth;
        }
        if (variantIndexForBandwidth <= this.selectedVariantIndex || adjustedEndTimeUs >= this.maxBufferDurationToSwitchDownUs) {
            return (variantIndexForBandwidth >= this.selectedVariantIndex || adjustedEndTimeUs <= this.minBufferDurationToSwitchUpUs) ? this.selectedVariantIndex : variantIndexForBandwidth;
        }
        return variantIndexForBandwidth;
    }

    private int getVariantIndexForBandwidth(long j) {
        if (j == -1) {
            j = 0;
        }
        int i = (int) (j * 0.8f);
        int i2 = -1;
        for (int i3 = 0; i3 < this.variants.length; i3++) {
            if (this.variantBlacklistTimes[i3] == 0) {
                if (this.variants[i3].format.bitrate <= i) {
                    return i3;
                }
                i2 = i3;
            }
        }
        Assertions.checkState(i2 != -1);
        return i2;
    }

    private boolean shouldRerequestLiveMediaPlaylist(int i) {
        return SystemClock.elapsedRealtime() - this.variantLastPlaylistLoadTimesMs[i] >= ((long) ((this.variantPlaylists[i].targetDurationSecs * 1000) / 2));
    }

    private MediaPlaylistChunk newMediaPlaylistChunk(int i) {
        Uri resolveToUri = UriUtil.resolveToUri(this.baseUri, this.variants[i].url);
        return new MediaPlaylistChunk(this.dataSource, new DataSpec(resolveToUri, 0L, -1L, null, 1), this.scratchSpace, this.playlistParser, i, resolveToUri.toString());
    }

    private EncryptionKeyChunk newEncryptionKeyChunk(Uri uri, String str, int i) {
        return new EncryptionKeyChunk(this.dataSource, new DataSpec(uri, 0L, -1L, null, 1), this.scratchSpace, str, i);
    }

    private void setEncryptionData(Uri uri, String str, byte[] bArr) {
        byte[] byteArray = new BigInteger(str.toLowerCase(Locale.getDefault()).startsWith("0x") ? str.substring(2) : str, 16).toByteArray();
        byte[] bArr2 = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr2, (bArr2.length - byteArray.length) + length, byteArray.length - length);
        this.encryptionKeyUri = uri;
        this.encryptionKey = bArr;
        this.encryptionIvString = str;
        this.encryptionIv = bArr2;
    }

    private void clearEncryptionData() {
        this.encryptionKeyUri = null;
        this.encryptionKey = null;
        this.encryptionIvString = null;
        this.encryptionIv = null;
    }

    private void setMediaPlaylist(int i, HlsMediaPlaylist hlsMediaPlaylist) {
        this.variantLastPlaylistLoadTimesMs[i] = SystemClock.elapsedRealtime();
        this.variantPlaylists[i] = hlsMediaPlaylist;
        this.live |= hlsMediaPlaylist.live;
        this.durationUs = this.live ? -1L : hlsMediaPlaylist.durationUs;
    }

    private boolean allVariantsBlacklisted() {
        for (long j : this.variantBlacklistTimes) {
            if (j == 0) {
                return false;
            }
        }
        return true;
    }

    private void clearStaleBlacklistedVariants() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < this.variantBlacklistTimes.length; i++) {
            if (this.variantBlacklistTimes[i] != 0 && elapsedRealtime - this.variantBlacklistTimes[i] > DEFAULT_PLAYLIST_BLACKLIST_MS) {
                this.variantBlacklistTimes[i] = 0;
            }
        }
    }

    private int getVariantIndex(Format format) {
        for (int i = 0; i < this.variants.length; i++) {
            if (this.variants[i].format.equals(format)) {
                return i;
            }
        }
        throw new IllegalStateException("Invalid format: " + format);
    }

    private static final class ExposedTrack {
        private final int adaptiveMaxHeight;
        private final int adaptiveMaxWidth;
        private final int defaultVariantIndex;
        private final Variant[] variants;

        public ExposedTrack(Variant variant) {
            this.variants = new Variant[]{variant};
            this.defaultVariantIndex = 0;
            this.adaptiveMaxWidth = -1;
            this.adaptiveMaxHeight = -1;
        }

        public ExposedTrack(Variant[] variantArr, int i, int i2, int i3) {
            this.variants = variantArr;
            this.defaultVariantIndex = i;
            this.adaptiveMaxWidth = i2;
            this.adaptiveMaxHeight = i3;
        }
    }

    private static final class MediaPlaylistChunk extends DataChunk {
        private final HlsPlaylistParser playlistParser;
        private final String playlistUrl;
        private byte[] rawResponse;
        private HlsMediaPlaylist result;
        public final int variantIndex;

        public MediaPlaylistChunk(DataSource dataSource, DataSpec dataSpec, byte[] bArr, HlsPlaylistParser hlsPlaylistParser, int i, String str) {
            super(dataSource, dataSpec, 4, 0, null, -1, bArr);
            this.variantIndex = i;
            this.playlistParser = hlsPlaylistParser;
            this.playlistUrl = str;
        }

        @Override // com.google.android.exoplayer.chunk.DataChunk
        protected void consume(byte[] bArr, int i) {
            this.rawResponse = Arrays.copyOf(bArr, i);
            this.result = (HlsMediaPlaylist) this.playlistParser.parse(this.playlistUrl, (InputStream) new ByteArrayInputStream(this.rawResponse));
        }

        public byte[] getRawResponse() {
            return this.rawResponse;
        }

        public HlsMediaPlaylist getResult() {
            return this.result;
        }
    }

    private static final class EncryptionKeyChunk extends DataChunk {

        /* renamed from: iv */
        public final String f5940iv;
        private byte[] result;
        public final int variantIndex;

        public EncryptionKeyChunk(DataSource dataSource, DataSpec dataSpec, byte[] bArr, String str, int i) {
            super(dataSource, dataSpec, 3, 0, null, -1, bArr);
            this.f5940iv = str;
            this.variantIndex = i;
        }

        @Override // com.google.android.exoplayer.chunk.DataChunk
        protected void consume(byte[] bArr, int i) {
            this.result = Arrays.copyOf(bArr, i);
        }

        public byte[] getResult() {
            return this.result;
        }
    }
}
