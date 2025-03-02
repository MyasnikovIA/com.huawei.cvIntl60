package androidx.media;

import android.support.annotation.RestrictTo;
import android.support.v4.media.AudioAttributesCompat;
import android.support.v4.media.AudioAttributesImpl;
import androidx.versionedparcelable.AbstractC0722a;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(AbstractC0722a abstractC0722a) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.mImpl = (AudioAttributesImpl) abstractC0722a.m4437b((AbstractC0722a) audioAttributesCompat.mImpl, 1);
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, AbstractC0722a abstractC0722a) {
        abstractC0722a.m4431a(false, false);
        abstractC0722a.m4428a(audioAttributesCompat.mImpl, 1);
    }
}
