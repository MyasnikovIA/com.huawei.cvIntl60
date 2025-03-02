package com.google.android.exoplayer.dash.mpd;

import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class Period {
    public final List<AdaptationSet> adaptationSets;

    /* renamed from: id */
    public final String f5936id;
    public final long startMs;

    public Period(String str, long j, List<AdaptationSet> list) {
        this.f5936id = str;
        this.startMs = j;
        this.adaptationSets = Collections.unmodifiableList(list);
    }

    public int getAdaptationSetIndex(int i) {
        int size = this.adaptationSets.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.adaptationSets.get(i2).type == i) {
                return i2;
            }
        }
        return -1;
    }
}
