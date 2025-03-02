package com.google.android.gms.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes.dex */
public class zzqr implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: vS */
    public final Api<?> f6640vS;

    /* renamed from: yU */
    private final int f6641yU;

    /* renamed from: yV */
    private zzqs f6642yV;

    public zzqr(Api<?> api, int i) {
        this.f6640vS = api;
        this.f6641yU = i;
    }

    private void zzary() {
        com.google.android.gms.common.internal.zzaa.zzb(this.f6642yV, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(@Nullable Bundle bundle) {
        zzary();
        this.f6642yV.onConnected(bundle);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        zzary();
        this.f6642yV.zza(connectionResult, this.f6640vS, this.f6641yU);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        zzary();
        this.f6642yV.onConnectionSuspended(i);
    }

    public void zza(zzqs zzqsVar) {
        this.f6642yV = zzqsVar;
    }
}
