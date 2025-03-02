package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes.dex */
public final class zzsn {

    /* renamed from: hg */
    public static final Api.zzf<zzsr> f6884hg = new Api.zzf<>();

    /* renamed from: hh */
    private static final Api.zza<zzsr, Api.ApiOptions.NoOptions> f6885hh = new Api.zza<zzsr, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.internal.zzsn.1
        C13951() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzf */
        public zzsr zza(Context context, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzsr(context, looper, zzfVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Common.API", f6885hh, f6884hg);

    /* renamed from: EU */
    public static final zzso f6883EU = new zzsp();

    /* renamed from: com.google.android.gms.internal.zzsn$1 */
    final class C13951 extends Api.zza<zzsr, Api.ApiOptions.NoOptions> {
        C13951() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzf */
        public zzsr zza(Context context, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzsr(context, looper, zzfVar, connectionCallbacks, onConnectionFailedListener);
        }
    }
}
