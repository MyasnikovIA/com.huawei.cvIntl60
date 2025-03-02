package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes.dex */
public class zzag<T extends IInterface> extends zzj<T> {

    /* renamed from: EO */
    private final Api.zzg<T> f6285EO;

    public zzag(Context context, Looper looper, int i, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, zzf zzfVar, Api.zzg<T> zzgVar) {
        super(context, looper, i, zzfVar, connectionCallbacks, onConnectionFailedListener);
        this.f6285EO = zzgVar;
    }

    public Api.zzg<T> zzawt() {
        return this.f6285EO;
    }

    @Override // com.google.android.gms.common.internal.zze
    protected void zzc(int i, T t) {
        this.f6285EO.zza(i, t);
    }

    @Override // com.google.android.gms.common.internal.zze
    protected T zzh(IBinder iBinder) {
        return this.f6285EO.zzh(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zze
    protected String zzjx() {
        return this.f6285EO.zzjx();
    }

    @Override // com.google.android.gms.common.internal.zze
    protected String zzjy() {
        return this.f6285EO.zzjy();
    }
}
