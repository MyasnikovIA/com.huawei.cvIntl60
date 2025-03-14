package com.google.android.exoplayer.drm;

import android.annotation.TargetApi;
import com.google.android.exoplayer.drm.ExoMediaCrypto;

@TargetApi(16)
/* loaded from: classes.dex */
public interface DrmSessionManager<T extends ExoMediaCrypto> {
    public static final int STATE_CLOSED = 1;
    public static final int STATE_ERROR = 0;
    public static final int STATE_OPENED = 3;
    public static final int STATE_OPENED_WITH_KEYS = 4;
    public static final int STATE_OPENING = 2;

    void close();

    Exception getError();

    T getMediaCrypto();

    int getState();

    void open(DrmInitData drmInitData);

    boolean requiresSecureDecoderComponent(String str);
}
