package com.google.android.exoplayer.drm;

import android.annotation.TargetApi;
import com.google.android.exoplayer.drm.ExoMediaDrm;
import java.util.UUID;

@TargetApi(18)
/* loaded from: classes.dex */
public interface MediaDrmCallback {
    byte[] executeKeyRequest(UUID uuid, ExoMediaDrm.KeyRequest keyRequest);

    byte[] executeProvisionRequest(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest);
}
