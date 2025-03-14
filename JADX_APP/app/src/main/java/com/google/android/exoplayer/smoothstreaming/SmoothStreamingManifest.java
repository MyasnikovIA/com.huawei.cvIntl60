package com.google.android.exoplayer.smoothstreaming;

import android.net.Uri;
import com.google.android.exoplayer.C1167C;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.FormatWrapper;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.UriUtil;
import com.google.android.exoplayer.util.Util;
import java.util.List;
import java.util.UUID;

/* loaded from: classes.dex */
public class SmoothStreamingManifest {
    public final long durationUs;
    public final long dvrWindowLengthUs;
    public final boolean isLive;
    public final int lookAheadCount;
    public final int majorVersion;
    public final int minorVersion;
    public final ProtectionElement protectionElement;
    public final StreamElement[] streamElements;

    public SmoothStreamingManifest(int i, int i2, long j, long j2, long j3, int i3, boolean z, ProtectionElement protectionElement, StreamElement[] streamElementArr) {
        this.majorVersion = i;
        this.minorVersion = i2;
        this.lookAheadCount = i3;
        this.isLive = z;
        this.protectionElement = protectionElement;
        this.streamElements = streamElementArr;
        this.dvrWindowLengthUs = j3 == 0 ? -1L : Util.scaleLargeTimestamp(j3, C1167C.MICROS_PER_SECOND, j);
        this.durationUs = j2 == 0 ? -1L : Util.scaleLargeTimestamp(j2, C1167C.MICROS_PER_SECOND, j);
    }

    public static class ProtectionElement {
        public final byte[] data;
        public final UUID uuid;

        public ProtectionElement(UUID uuid, byte[] bArr) {
            this.uuid = uuid;
            this.data = bArr;
        }
    }

    public static class TrackElement implements FormatWrapper {
        public final byte[][] csd;
        public final Format format;

        public TrackElement(int i, int i2, String str, byte[][] bArr, int i3, int i4, int i5, int i6, String str2) {
            this.csd = bArr;
            this.format = new Format(String.valueOf(i), str, i3, i4, -1.0f, i6, i5, i2, str2);
        }

        @Override // com.google.android.exoplayer.chunk.FormatWrapper
        public Format getFormat() {
            return this.format;
        }
    }

    public static class StreamElement {
        public static final int TYPE_AUDIO = 0;
        public static final int TYPE_TEXT = 2;
        public static final int TYPE_UNKNOWN = -1;
        public static final int TYPE_VIDEO = 1;
        private static final String URL_PLACEHOLDER_BITRATE = "{bitrate}";
        private static final String URL_PLACEHOLDER_START_TIME = "{start time}";
        private final String baseUri;
        public final int chunkCount;
        private final List<Long> chunkStartTimes;
        private final long[] chunkStartTimesUs;
        private final String chunkTemplate;
        public final int displayHeight;
        public final int displayWidth;
        public final String language;
        private final long lastChunkDurationUs;
        public final int maxHeight;
        public final int maxWidth;
        public final String name;
        public final int qualityLevels;
        public final String subType;
        public final long timescale;
        public final TrackElement[] tracks;
        public final int type;

        public StreamElement(String str, String str2, int i, String str3, long j, String str4, int i2, int i3, int i4, int i5, int i6, String str5, TrackElement[] trackElementArr, List<Long> list, long j2) {
            this.baseUri = str;
            this.chunkTemplate = str2;
            this.type = i;
            this.subType = str3;
            this.timescale = j;
            this.name = str4;
            this.qualityLevels = i2;
            this.maxWidth = i3;
            this.maxHeight = i4;
            this.displayWidth = i5;
            this.displayHeight = i6;
            this.language = str5;
            this.tracks = trackElementArr;
            this.chunkCount = list.size();
            this.chunkStartTimes = list;
            this.lastChunkDurationUs = Util.scaleLargeTimestamp(j2, C1167C.MICROS_PER_SECOND, j);
            this.chunkStartTimesUs = Util.scaleLargeTimestamps(list, C1167C.MICROS_PER_SECOND, j);
        }

        public int getChunkIndex(long j) {
            return Util.binarySearchFloor(this.chunkStartTimesUs, j, true, true);
        }

        public long getStartTimeUs(int i) {
            return this.chunkStartTimesUs[i];
        }

        public long getChunkDurationUs(int i) {
            return i == this.chunkCount + (-1) ? this.lastChunkDurationUs : this.chunkStartTimesUs[i + 1] - this.chunkStartTimesUs[i];
        }

        public Uri buildRequestUri(int i, int i2) {
            Assertions.checkState(this.tracks != null);
            Assertions.checkState(this.chunkStartTimes != null);
            Assertions.checkState(i2 < this.chunkStartTimes.size());
            return UriUtil.resolveToUri(this.baseUri, this.chunkTemplate.replace(URL_PLACEHOLDER_BITRATE, Integer.toString(this.tracks[i].format.bitrate)).replace(URL_PLACEHOLDER_START_TIME, this.chunkStartTimes.get(i2).toString()));
        }
    }
}
