package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.support.annotation.NonNull;

/* loaded from: classes.dex */
public interface zzrp {
    void startActivityForResult(Intent intent, int i);

    <T extends zzro> T zza(String str, Class<T> cls);

    void zza(String str, @NonNull zzro zzroVar);

    Activity zzaty();
}
