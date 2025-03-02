package com.google.android.gms.auth.api.credentials.internal;

import android.content.Context;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzqo;

/* loaded from: classes.dex */
abstract class zzf<R extends Result> extends zzqo.zza<R, zzg> {
    zzf(GoogleApiClient googleApiClient) {
        super(Auth.CREDENTIALS_API, googleApiClient);
    }

    protected abstract void zza(Context context, zzk zzkVar);

    @Override // com.google.android.gms.internal.zzqo.zza
    public final void zza(zzg zzgVar) {
        zza(zzgVar.getContext(), (zzk) zzgVar.zzavg());
    }
}
