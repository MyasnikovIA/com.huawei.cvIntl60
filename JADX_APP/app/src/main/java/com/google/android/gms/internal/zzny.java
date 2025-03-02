package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzoa;

/* loaded from: classes.dex */
public final class zzny extends com.google.android.gms.common.internal.zzj<zzoa> {

    /* renamed from: ik */
    private final Bundle f6532ik;

    public zzny(Context context, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, com.google.android.gms.auth.api.zzb zzbVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 16, zzfVar, connectionCallbacks, onConnectionFailedListener);
        this.f6532ik = zzbVar == null ? new Bundle() : zzbVar.zzaie();
    }

    @Override // com.google.android.gms.common.internal.zze
    protected Bundle zzahv() {
        return this.f6532ik;
    }

    @Override // com.google.android.gms.common.internal.zze, com.google.android.gms.common.api.Api.zze
    public boolean zzain() {
        com.google.android.gms.common.internal.zzf zzawb = zzawb();
        return (TextUtils.isEmpty(zzawb.getAccountName()) || zzawb.zzc(com.google.android.gms.auth.api.zza.API).isEmpty()) ? false : true;
    }

    @Override // com.google.android.gms.common.internal.zze
    /* renamed from: zzch */
    public zzoa zzh(IBinder iBinder) {
        return zzoa.zza.zzcj(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zze
    protected String zzjx() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override // com.google.android.gms.common.internal.zze
    protected String zzjy() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }
}
