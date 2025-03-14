package com.google.android.gms.internal;

import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzqo;

/* loaded from: classes.dex */
public class zzri<O extends Api.ApiOptions> extends zzqz {

    /* renamed from: AY */
    private final com.google.android.gms.common.api.zzc<O> f6805AY;

    public zzri(com.google.android.gms.common.api.zzc<O> zzcVar) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f6805AY = zzcVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Looper getLooper() {
        return this.f6805AY.getLooper();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, R extends Result, T extends zzqo.zza<R, A>> T zza(@NonNull T t) {
        return (T) this.f6805AY.doRead((com.google.android.gms.common.api.zzc<O>) t);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zza(zzsf zzsfVar) {
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, T extends zzqo.zza<? extends Result, A>> T zzb(@NonNull T t) {
        return (T) this.f6805AY.doWrite((com.google.android.gms.common.api.zzc<O>) t);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zzb(zzsf zzsfVar) {
    }
}
