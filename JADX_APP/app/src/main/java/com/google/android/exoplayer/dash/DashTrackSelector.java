package com.google.android.exoplayer.dash;

import com.google.android.exoplayer.dash.mpd.MediaPresentationDescription;

/* loaded from: classes.dex */
public interface DashTrackSelector {

    public interface Output {
        void adaptiveTrack(MediaPresentationDescription mediaPresentationDescription, int i, int i2, int[] iArr);

        void fixedTrack(MediaPresentationDescription mediaPresentationDescription, int i, int i2, int i3);
    }

    void selectTracks(MediaPresentationDescription mediaPresentationDescription, int i, Output output);
}
