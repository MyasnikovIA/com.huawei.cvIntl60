package androidx.media;

import android.support.annotation.RestrictTo;
import android.support.v4.media.AudioAttributesImplBase;
import androidx.versionedparcelable.AbstractC0722a;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(AbstractC0722a abstractC0722a) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.mUsage = abstractC0722a.m4435b(audioAttributesImplBase.mUsage, 1);
        audioAttributesImplBase.mContentType = abstractC0722a.m4435b(audioAttributesImplBase.mContentType, 2);
        audioAttributesImplBase.mFlags = abstractC0722a.m4435b(audioAttributesImplBase.mFlags, 3);
        audioAttributesImplBase.mLegacyStream = abstractC0722a.m4435b(audioAttributesImplBase.mLegacyStream, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, AbstractC0722a abstractC0722a) {
        abstractC0722a.m4431a(false, false);
        abstractC0722a.m4424a(audioAttributesImplBase.mUsage, 1);
        abstractC0722a.m4424a(audioAttributesImplBase.mContentType, 2);
        abstractC0722a.m4424a(audioAttributesImplBase.mFlags, 3);
        abstractC0722a.m4424a(audioAttributesImplBase.mLegacyStream, 4);
    }
}
