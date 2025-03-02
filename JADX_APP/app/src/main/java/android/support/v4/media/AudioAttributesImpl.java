package android.support.v4.media;

import android.os.Bundle;
import android.support.annotation.NonNull;
import androidx.versionedparcelable.InterfaceC0724c;

/* loaded from: classes.dex */
public interface AudioAttributesImpl extends InterfaceC0724c {
    Object getAudioAttributes();

    int getContentType();

    int getFlags();

    int getLegacyStreamType();

    int getRawLegacyStreamType();

    int getUsage();

    int getVolumeControlStream();

    @NonNull
    Bundle toBundle();
}
