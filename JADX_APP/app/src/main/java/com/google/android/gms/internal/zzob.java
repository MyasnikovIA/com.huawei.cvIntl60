package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzqo;

/* loaded from: classes.dex */
abstract class zzob extends zzqo.zza<ProxyApi.ProxyResult, zzny> {
    public zzob(GoogleApiClient googleApiClient) {
        super(com.google.android.gms.auth.api.zza.API, googleApiClient);
    }

    protected abstract void zza(Context context, zzoa zzoaVar);

    @Override // com.google.android.gms.internal.zzqo.zza
    public final void zza(zzny zznyVar) {
        zza(zznyVar.getContext(), (zzoa) zznyVar.zzavg());
    }

    @Override // com.google.android.gms.internal.zzqq
    /* renamed from: zzk */
    public ProxyApi.ProxyResult zzc(Status status) {
        return new zzod(status);
    }
}
