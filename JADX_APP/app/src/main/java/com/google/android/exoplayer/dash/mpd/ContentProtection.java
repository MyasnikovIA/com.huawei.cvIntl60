package com.google.android.exoplayer.dash.mpd;

import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.util.UUID;

/* loaded from: classes.dex */
public class ContentProtection {
    public final DrmInitData.SchemeInitData data;
    public final String schemeUriId;
    public final UUID uuid;

    public ContentProtection(String str, UUID uuid, DrmInitData.SchemeInitData schemeInitData) {
        this.schemeUriId = (String) Assertions.checkNotNull(str);
        this.uuid = uuid;
        this.data = schemeInitData;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ContentProtection)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        ContentProtection contentProtection = (ContentProtection) obj;
        return this.schemeUriId.equals(contentProtection.schemeUriId) && Util.areEqual(this.uuid, contentProtection.uuid) && Util.areEqual(this.data, contentProtection.data);
    }

    public int hashCode() {
        return (((this.uuid != null ? this.uuid.hashCode() : 0) + (this.schemeUriId.hashCode() * 37)) * 37) + (this.data != null ? this.data.hashCode() : 0);
    }
}
