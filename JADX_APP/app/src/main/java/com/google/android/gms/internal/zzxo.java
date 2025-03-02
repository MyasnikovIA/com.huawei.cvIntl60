package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;

/* loaded from: classes.dex */
public final class zzxo {

    /* renamed from: hg */
    public static final Api.zzf<com.google.android.gms.signin.internal.zzg> f6919hg = new Api.zzf<>();
    public static final Api.zzf<com.google.android.gms.signin.internal.zzg> aDi = new Api.zzf<>();

    /* renamed from: hh */
    public static final Api.zza<com.google.android.gms.signin.internal.zzg, zzxq> f6920hh = new Api.zza<com.google.android.gms.signin.internal.zzg, zzxq>() { // from class: com.google.android.gms.internal.zzxo.1
        C14161() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public com.google.android.gms.signin.internal.zzg zza(Context context, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, zzxq zzxqVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new com.google.android.gms.signin.internal.zzg(context, looper, true, zzfVar, zzxqVar == null ? zzxq.aDl : zzxqVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    static final Api.zza<com.google.android.gms.signin.internal.zzg, zza> aDj = new Api.zza<com.google.android.gms.signin.internal.zzg, zza>() { // from class: com.google.android.gms.internal.zzxo.2
        C14172() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public com.google.android.gms.signin.internal.zzg zza(Context context, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, zza zzaVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new com.google.android.gms.signin.internal.zzg(context, looper, false, zzfVar, zzaVar.zzcdb(), connectionCallbacks, onConnectionFailedListener);
        }
    };

    /* renamed from: jn */
    public static final Scope f6921jn = new Scope(Scopes.PROFILE);

    /* renamed from: jo */
    public static final Scope f6922jo = new Scope("email");
    public static final Api<zzxq> API = new Api<>("SignIn.API", f6920hh, f6919hg);

    /* renamed from: Jb */
    public static final Api<zza> f6918Jb = new Api<>("SignIn.INTERNAL_API", aDj, aDi);

    /* renamed from: com.google.android.gms.internal.zzxo$1 */
    final class C14161 extends Api.zza<com.google.android.gms.signin.internal.zzg, zzxq> {
        C14161() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public com.google.android.gms.signin.internal.zzg zza(Context context, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, zzxq zzxqVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new com.google.android.gms.signin.internal.zzg(context, looper, true, zzfVar, zzxqVar == null ? zzxq.aDl : zzxqVar, connectionCallbacks, onConnectionFailedListener);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzxo$2 */
    final class C14172 extends Api.zza<com.google.android.gms.signin.internal.zzg, zza> {
        C14172() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public com.google.android.gms.signin.internal.zzg zza(Context context, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, zza zzaVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new com.google.android.gms.signin.internal.zzg(context, looper, false, zzfVar, zzaVar.zzcdb(), connectionCallbacks, onConnectionFailedListener);
        }
    }

    public static class zza implements Api.ApiOptions.HasOptions {
        private final Bundle aDk;

        public Bundle zzcdb() {
            return this.aDk;
        }
    }
}
