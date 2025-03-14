package com.google.android.exoplayer.text.eia608;

/* loaded from: classes.dex */
final class ClosedCaptionList implements Comparable<ClosedCaptionList> {
    public final ClosedCaption[] captions;
    public final boolean decodeOnly;
    public final long timeUs;

    public ClosedCaptionList(long j, boolean z, ClosedCaption[] closedCaptionArr) {
        this.timeUs = j;
        this.decodeOnly = z;
        this.captions = closedCaptionArr;
    }

    @Override // java.lang.Comparable
    public int compareTo(ClosedCaptionList closedCaptionList) {
        long j = this.timeUs - closedCaptionList.timeUs;
        if (j == 0) {
            return 0;
        }
        return j > 0 ? 1 : -1;
    }
}
