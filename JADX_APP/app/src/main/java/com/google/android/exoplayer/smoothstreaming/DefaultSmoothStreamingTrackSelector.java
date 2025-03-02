package com.google.android.exoplayer.smoothstreaming;

import android.content.Context;
import com.google.android.exoplayer.chunk.VideoFormatSelectorUtil;
import com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifest;
import com.google.android.exoplayer.smoothstreaming.SmoothStreamingTrackSelector;
import com.google.android.exoplayer.util.Util;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class DefaultSmoothStreamingTrackSelector implements SmoothStreamingTrackSelector {
    private final Context context;
    private final boolean filterProtectedHdContent;
    private final boolean filterVideoRepresentations;
    private final int streamElementType;

    public static DefaultSmoothStreamingTrackSelector newVideoInstance(Context context, boolean z, boolean z2) {
        return new DefaultSmoothStreamingTrackSelector(1, context, z, z2);
    }

    public static DefaultSmoothStreamingTrackSelector newAudioInstance() {
        return new DefaultSmoothStreamingTrackSelector(0, null, false, false);
    }

    public static DefaultSmoothStreamingTrackSelector newTextInstance() {
        return new DefaultSmoothStreamingTrackSelector(2, null, false, false);
    }

    private DefaultSmoothStreamingTrackSelector(int i, Context context, boolean z, boolean z2) {
        this.context = context;
        this.streamElementType = i;
        this.filterVideoRepresentations = z;
        this.filterProtectedHdContent = z2;
    }

    @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingTrackSelector
    public void selectTracks(SmoothStreamingManifest smoothStreamingManifest, SmoothStreamingTrackSelector.Output output) {
        int[] firstIntegersArray;
        for (int i = 0; i < smoothStreamingManifest.streamElements.length; i++) {
            SmoothStreamingManifest.TrackElement[] trackElementArr = smoothStreamingManifest.streamElements[i].tracks;
            if (smoothStreamingManifest.streamElements[i].type == this.streamElementType) {
                if (this.streamElementType == 1) {
                    if (this.filterVideoRepresentations) {
                        firstIntegersArray = VideoFormatSelectorUtil.selectVideoFormatsForDefaultDisplay(this.context, Arrays.asList(trackElementArr), null, this.filterProtectedHdContent && smoothStreamingManifest.protectionElement != null);
                    } else {
                        firstIntegersArray = Util.firstIntegersArray(trackElementArr.length);
                    }
                    if (firstIntegersArray.length > 1) {
                        output.adaptiveTrack(smoothStreamingManifest, i, firstIntegersArray);
                    }
                    for (int i2 : firstIntegersArray) {
                        output.fixedTrack(smoothStreamingManifest, i, i2);
                    }
                } else {
                    for (int i3 = 0; i3 < trackElementArr.length; i3++) {
                        output.fixedTrack(smoothStreamingManifest, i, i3);
                    }
                }
            }
        }
    }
}
