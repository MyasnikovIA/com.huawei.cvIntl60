package com.google.android.exoplayer.hls;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.exoplayer.chunk.VideoFormatSelectorUtil;
import com.google.android.exoplayer.hls.HlsTrackSelector;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class DefaultHlsTrackSelector implements HlsTrackSelector {
    private static final int TYPE_AUDIO = 1;
    private static final int TYPE_DEFAULT = 0;
    private static final int TYPE_SUBTITLE = 2;
    private final Context context;
    private final int type;

    public static DefaultHlsTrackSelector newDefaultInstance(Context context) {
        return new DefaultHlsTrackSelector(context, 0);
    }

    public static DefaultHlsTrackSelector newAudioInstance() {
        return new DefaultHlsTrackSelector(null, 1);
    }

    public static DefaultHlsTrackSelector newSubtitleInstance() {
        return new DefaultHlsTrackSelector(null, 2);
    }

    private DefaultHlsTrackSelector(Context context, int i) {
        this.context = context;
        this.type = i;
    }

    @Override // com.google.android.exoplayer.hls.HlsTrackSelector
    public void selectTracks(HlsMasterPlaylist hlsMasterPlaylist, HlsTrackSelector.Output output) {
        ArrayList arrayList;
        int i = 0;
        if (this.type == 1 || this.type == 2) {
            List<Variant> list = this.type == 1 ? hlsMasterPlaylist.audios : hlsMasterPlaylist.subtitles;
            if (list != null && !list.isEmpty()) {
                while (i < list.size()) {
                    output.fixedTrack(hlsMasterPlaylist, list.get(i));
                    i++;
                }
                return;
            }
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i2 : VideoFormatSelectorUtil.selectVideoFormatsForDefaultDisplay(this.context, hlsMasterPlaylist.variants, null, false)) {
            arrayList2.add(hlsMasterPlaylist.variants.get(i2));
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            Variant variant = (Variant) arrayList2.get(i3);
            if (variant.format.height > 0 || variantHasExplicitCodecWithPrefix(variant, "avc")) {
                arrayList3.add(variant);
            } else if (variantHasExplicitCodecWithPrefix(variant, "mp4a")) {
                arrayList4.add(variant);
            }
        }
        if (arrayList3.isEmpty()) {
            if (arrayList4.size() < arrayList2.size()) {
                arrayList2.removeAll(arrayList4);
            }
            arrayList = arrayList2;
        } else {
            arrayList = arrayList3;
        }
        if (arrayList.size() > 1) {
            Variant[] variantArr = new Variant[arrayList.size()];
            arrayList.toArray(variantArr);
            output.adaptiveTrack(hlsMasterPlaylist, variantArr);
        }
        while (i < arrayList.size()) {
            output.fixedTrack(hlsMasterPlaylist, (Variant) arrayList.get(i));
            i++;
        }
    }

    private static boolean variantHasExplicitCodecWithPrefix(Variant variant, String str) {
        String str2 = variant.format.codecs;
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        String[] split = str2.split("(\\s*,\\s*)|(\\s*$)");
        for (String str3 : split) {
            if (str3.startsWith(str)) {
                return true;
            }
        }
        return false;
    }
}
