package com.google.android.exoplayer.dash;

import android.content.Context;
import com.google.android.exoplayer.chunk.VideoFormatSelectorUtil;
import com.google.android.exoplayer.dash.DashTrackSelector;
import com.google.android.exoplayer.dash.mpd.AdaptationSet;
import com.google.android.exoplayer.dash.mpd.MediaPresentationDescription;
import com.google.android.exoplayer.dash.mpd.Period;
import com.google.android.exoplayer.util.Util;

/* loaded from: classes.dex */
public final class DefaultDashTrackSelector implements DashTrackSelector {
    private final int adaptationSetType;
    private final Context context;
    private final boolean filterProtectedHdContent;
    private final boolean filterVideoRepresentations;

    public static DefaultDashTrackSelector newVideoInstance(Context context, boolean z, boolean z2) {
        return new DefaultDashTrackSelector(0, context, z, z2);
    }

    public static DefaultDashTrackSelector newAudioInstance() {
        return new DefaultDashTrackSelector(1, null, false, false);
    }

    public static DefaultDashTrackSelector newTextInstance() {
        return new DefaultDashTrackSelector(2, null, false, false);
    }

    private DefaultDashTrackSelector(int i, Context context, boolean z, boolean z2) {
        this.adaptationSetType = i;
        this.context = context;
        this.filterVideoRepresentations = z;
        this.filterProtectedHdContent = z2;
    }

    @Override // com.google.android.exoplayer.dash.DashTrackSelector
    public void selectTracks(MediaPresentationDescription mediaPresentationDescription, int i, DashTrackSelector.Output output) {
        int[] firstIntegersArray;
        Period period = mediaPresentationDescription.getPeriod(i);
        for (int i2 = 0; i2 < period.adaptationSets.size(); i2++) {
            AdaptationSet adaptationSet = period.adaptationSets.get(i2);
            if (adaptationSet.type == this.adaptationSetType) {
                if (this.adaptationSetType == 0) {
                    if (this.filterVideoRepresentations) {
                        firstIntegersArray = VideoFormatSelectorUtil.selectVideoFormatsForDefaultDisplay(this.context, adaptationSet.representations, null, this.filterProtectedHdContent && adaptationSet.hasContentProtection());
                    } else {
                        firstIntegersArray = Util.firstIntegersArray(adaptationSet.representations.size());
                    }
                    if (firstIntegersArray.length > 1) {
                        output.adaptiveTrack(mediaPresentationDescription, i, i2, firstIntegersArray);
                    }
                    for (int i3 : firstIntegersArray) {
                        output.fixedTrack(mediaPresentationDescription, i, i2, i3);
                    }
                } else {
                    for (int i4 = 0; i4 < adaptationSet.representations.size(); i4++) {
                        output.fixedTrack(mediaPresentationDescription, i, i2, i4);
                    }
                }
            }
        }
    }
}
