package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzqo;
import java.util.Collections;

/* loaded from: classes.dex */
public class zzrc implements zzre {

    /* renamed from: zA */
    private final zzrf f6724zA;

    public zzrc(zzrf zzrfVar) {
        this.f6724zA = zzrfVar;
    }

    @Override // com.google.android.gms.internal.zzre
    public void begin() {
        this.f6724zA.zzate();
        this.f6724zA.f6769yW.f6734Ak = Collections.emptySet();
    }

    @Override // com.google.android.gms.internal.zzre
    public void connect() {
        this.f6724zA.zzatc();
    }

    @Override // com.google.android.gms.internal.zzre
    public boolean disconnect() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzre
    public void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.zzre
    public void onConnectionSuspended(int i) {
    }

    @Override // com.google.android.gms.internal.zzre
    public <A extends Api.zzb, R extends Result, T extends zzqo.zza<R, A>> T zza(T t) {
        this.f6724zA.f6769yW.f6727Ad.add(t);
        return t;
    }

    @Override // com.google.android.gms.internal.zzre
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
    }

    @Override // com.google.android.gms.internal.zzre
    public <A extends Api.zzb, T extends zzqo.zza<? extends Result, A>> T zzb(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
