package com.google.android.exoplayer.text.ttml;

import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.Subtitle;
import com.google.android.exoplayer.util.Util;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class TtmlSubtitle implements Subtitle {
    private final long[] eventTimesUs;
    private final Map<String, TtmlStyle> globalStyles;
    private final Map<String, TtmlRegion> regionMap;
    private final TtmlNode root;

    public TtmlSubtitle(TtmlNode ttmlNode, Map<String, TtmlStyle> map, Map<String, TtmlRegion> map2) {
        this.root = ttmlNode;
        this.regionMap = map2;
        this.globalStyles = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.eventTimesUs = ttmlNode.getEventTimesUs();
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int binarySearchCeil = Util.binarySearchCeil(this.eventTimesUs, j, false, false);
        if (binarySearchCeil < this.eventTimesUs.length) {
            return binarySearchCeil;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public int getEventTimeCount() {
        return this.eventTimesUs.length;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getEventTime(int i) {
        return this.eventTimesUs[i];
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getLastEventTime() {
        if (this.eventTimesUs.length == 0) {
            return -1L;
        }
        return this.eventTimesUs[this.eventTimesUs.length - 1];
    }

    TtmlNode getRoot() {
        return this.root;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public List<Cue> getCues(long j) {
        return this.root.getCues(j, this.globalStyles, this.regionMap);
    }

    Map<String, TtmlStyle> getGlobalStyles() {
        return this.globalStyles;
    }
}
