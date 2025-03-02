package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzny;

/* loaded from: classes.dex */
public final class zza {

    /* renamed from: ii */
    public static final Api.zzf<zzny> f6109ii = new Api.zzf<>();

    /* renamed from: ij */
    private static final Api.zza<zzny, zzb> f6110ij = new Api.zza<zzny, zzb>() { // from class: com.google.android.gms.auth.api.zza.1
        C12491() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public zzny zza(Context context, Looper looper, zzf zzfVar, zzb zzbVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzny(context, looper, zzfVar, zzbVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<zzb> API = new Api<>("Auth.PROXY_API", f6110ij, f6109ii);

    /* renamed from: com.google.android.gms.auth.api.zza$1 */
    final class C12491 extends Api.zza<zzny, zzb> {
        C12491() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public zzny zza(Context context, Looper looper, zzf zzfVar, zzb zzbVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzny(context, looper, zzfVar, zzbVar, connectionCallbacks, onConnectionFailedListener);
        }
    }
}
