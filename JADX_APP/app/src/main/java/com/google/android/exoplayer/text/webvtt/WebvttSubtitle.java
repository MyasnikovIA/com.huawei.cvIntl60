package com.google.android.exoplayer.text.webvtt;

import android.text.SpannableStringBuilder;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.Subtitle;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class WebvttSubtitle implements Subtitle {
    private final long[] cueTimesUs;
    private final List<WebvttCue> cues;
    private final int numCues;
    private final long[] sortedCueTimesUs;

    public WebvttSubtitle(List<WebvttCue> list) {
        this.cues = list;
        this.numCues = list.size();
        this.cueTimesUs = new long[this.numCues * 2];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.numCues) {
                WebvttCue webvttCue = list.get(i2);
                int i3 = i2 * 2;
                this.cueTimesUs[i3] = webvttCue.startTime;
                this.cueTimesUs[i3 + 1] = webvttCue.endTime;
                i = i2 + 1;
            } else {
                this.sortedCueTimesUs = Arrays.copyOf(this.cueTimesUs, this.cueTimesUs.length);
                Arrays.sort(this.sortedCueTimesUs);
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int binarySearchCeil = Util.binarySearchCeil(this.sortedCueTimesUs, j, false, false);
        if (binarySearchCeil < this.sortedCueTimesUs.length) {
            return binarySearchCeil;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public int getEventTimeCount() {
        return this.sortedCueTimesUs.length;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getEventTime(int i) {
        Assertions.checkArgument(i >= 0);
        Assertions.checkArgument(i < this.sortedCueTimesUs.length);
        return this.sortedCueTimesUs[i];
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getLastEventTime() {
        if (getEventTimeCount() == 0) {
            return -1L;
        }
        return this.sortedCueTimesUs[this.sortedCueTimesUs.length - 1];
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public List<Cue> getCues(long j) {
        WebvttCue webvttCue;
        int i = 0;
        SpannableStringBuilder spannableStringBuilder = null;
        WebvttCue webvttCue2 = null;
        ArrayList arrayList = null;
        while (i < this.numCues) {
            if (this.cueTimesUs[i * 2] <= j && j < this.cueTimesUs[(i * 2) + 1]) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                webvttCue = this.cues.get(i);
                if (webvttCue.isNormalCue()) {
                    if (webvttCue2 != null) {
                        if (spannableStringBuilder == null) {
                            spannableStringBuilder = new SpannableStringBuilder();
                            spannableStringBuilder.append(webvttCue2.text).append((CharSequence) "\n").append(webvttCue.text);
                            webvttCue = webvttCue2;
                        } else {
                            spannableStringBuilder.append((CharSequence) "\n").append(webvttCue.text);
                            webvttCue = webvttCue2;
                        }
                    }
                    i++;
                    webvttCue2 = webvttCue;
                } else {
                    arrayList.add(webvttCue);
                }
            }
            webvttCue = webvttCue2;
            i++;
            webvttCue2 = webvttCue;
        }
        if (spannableStringBuilder != null) {
            arrayList.add(new WebvttCue(spannableStringBuilder));
        } else if (webvttCue2 != null) {
            arrayList.add(webvttCue2);
        }
        return arrayList != null ? arrayList : Collections.emptyList();
    }
}
