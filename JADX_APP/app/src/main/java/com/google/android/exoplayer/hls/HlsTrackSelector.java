package com.google.android.exoplayer.hls;

/* loaded from: classes.dex */
public interface HlsTrackSelector {

    public interface Output {
        void adaptiveTrack(HlsMasterPlaylist hlsMasterPlaylist, Variant[] variantArr);

        void fixedTrack(HlsMasterPlaylist hlsMasterPlaylist, Variant variant);
    }

    void selectTracks(HlsMasterPlaylist hlsMasterPlaylist, Output output);
}
