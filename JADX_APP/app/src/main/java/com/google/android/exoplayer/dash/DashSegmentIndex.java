package com.google.android.exoplayer.dash;

import com.google.android.exoplayer.dash.mpd.RangedUri;

/* loaded from: classes.dex */
public interface DashSegmentIndex {
    public static final int INDEX_UNBOUNDED = -1;

    long getDurationUs(int i, long j);

    int getFirstSegmentNum();

    int getLastSegmentNum(long j);

    int getSegmentNum(long j, long j2);

    RangedUri getSegmentUrl(int i);

    long getTimeUs(int i);

    boolean isExplicit();
}
