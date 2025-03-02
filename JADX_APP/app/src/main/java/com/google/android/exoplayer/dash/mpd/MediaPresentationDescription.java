package com.google.android.exoplayer.dash.mpd;

import com.google.android.exoplayer.util.ManifestFetcher;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class MediaPresentationDescription implements ManifestFetcher.RedirectingManifest {
    public final long availabilityStartTime;
    public final long duration;
    public final boolean dynamic;
    public final String location;
    public final long minBufferTime;
    public final long minUpdatePeriod;
    private final List<Period> periods;
    public final long timeShiftBufferDepth;
    public final UtcTimingElement utcTiming;

    public MediaPresentationDescription(long j, long j2, long j3, boolean z, long j4, long j5, UtcTimingElement utcTimingElement, String str, List<Period> list) {
        this.availabilityStartTime = j;
        this.duration = j2;
        this.minBufferTime = j3;
        this.dynamic = z;
        this.minUpdatePeriod = j4;
        this.timeShiftBufferDepth = j5;
        this.utcTiming = utcTimingElement;
        this.location = str;
        this.periods = list == null ? Collections.emptyList() : list;
    }

    @Override // com.google.android.exoplayer.util.ManifestFetcher.RedirectingManifest
    public final String getNextManifestUri() {
        return this.location;
    }

    public final int getPeriodCount() {
        return this.periods.size();
    }

    public final Period getPeriod(int i) {
        return this.periods.get(i);
    }

    public final long getPeriodDuration(int i) {
        if (i != this.periods.size() - 1) {
            return this.periods.get(i + 1).startMs - this.periods.get(i).startMs;
        }
        if (this.duration == -1) {
            return -1L;
        }
        return this.duration - this.periods.get(i).startMs;
    }
}
