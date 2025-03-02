package androidx.media;

import android.media.AudioAttributes;
import android.support.annotation.RestrictTo;
import android.support.v4.media.AudioAttributesImplApi21;
import androidx.versionedparcelable.AbstractC0722a;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(AbstractC0722a abstractC0722a) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.mAudioAttributes = (AudioAttributes) abstractC0722a.m4436b((AbstractC0722a) audioAttributesImplApi21.mAudioAttributes, 1);
        audioAttributesImplApi21.mLegacyStreamType = abstractC0722a.m4435b(audioAttributesImplApi21.mLegacyStreamType, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, AbstractC0722a abstractC0722a) {
        abstractC0722a.m4431a(false, false);
        abstractC0722a.m4426a(audioAttributesImplApi21.mAudioAttributes, 1);
        abstractC0722a.m4424a(audioAttributesImplApi21.mLegacyStreamType, 2);
    }
}
