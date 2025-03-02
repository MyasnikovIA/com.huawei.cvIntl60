package GeneralFunction.p019p;

import android.media.MediaExtractor;
import android.media.MediaFormat;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* renamed from: GeneralFunction.p.a */
/* loaded from: classes.dex */
public class C0094a {
    /* renamed from: a */
    public static MediaFormat m905a(MediaExtractor mediaExtractor, String str) {
        for (int i = 0; i < mediaExtractor.getTrackCount(); i++) {
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(i);
            if (trackFormat.getString(IMediaFormat.KEY_MIME).startsWith(str)) {
                mediaExtractor.selectTrack(i);
                return trackFormat;
            }
        }
        return null;
    }
}
