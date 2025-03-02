package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zze;
import com.google.android.gms.common.internal.zzk;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class zzj<T extends IInterface> extends zze<T> implements Api.zze, zzk.zza {

    /* renamed from: gj */
    private final Account f6335gj;

    /* renamed from: jw */
    private final Set<Scope> f6336jw;

    /* renamed from: zP */
    private final zzf f6337zP;

    /* renamed from: com.google.android.gms.common.internal.zzj$1 */
    final class C12611 implements zze.zzb {
        C12611() {
        }

        @Override // com.google.android.gms.common.internal.zze.zzb
        public void onConnected(@Nullable Bundle bundle) {
            GoogleApiClient.ConnectionCallbacks.this.onConnected(bundle);
        }

        @Override // com.google.android.gms.common.internal.zze.zzb
        public void onConnectionSuspended(int i) {
            GoogleApiClient.ConnectionCallbacks.this.onConnectionSuspended(i);
        }
    }

    /* renamed from: com.google.android.gms.common.internal.zzj$2 */
    final class C12622 implements zze.zzc {
        C12622() {
        }

        @Override // com.google.android.gms.common.internal.zze.zzc
        public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            GoogleApiClient.OnConnectionFailedListener.this.onConnectionFailed(connectionResult);
        }
    }

    protected zzj(Context context, Looper looper, int i, zzf zzfVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, zzl.zzcc(context), GoogleApiAvailability.getInstance(), i, zzfVar, (GoogleApiClient.ConnectionCallbacks) zzaa.zzy(connectionCallbacks), (GoogleApiClient.OnConnectionFailedListener) zzaa.zzy(onConnectionFailedListener));
    }

    protected zzj(Context context, Looper looper, zzl zzlVar, GoogleApiAvailability googleApiAvailability, int i, zzf zzfVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, zzlVar, googleApiAvailability, i, zza(connectionCallbacks), zza(onConnectionFailedListener), zzfVar.zzavt());
        this.f6337zP = zzfVar;
        this.f6335gj = zzfVar.getAccount();
        this.f6336jw = zzb(zzfVar.zzavq());
    }

    @Nullable
    private static zze.zzb zza(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        if (connectionCallbacks == null) {
            return null;
        }
        return new zze.zzb() { // from class: com.google.android.gms.common.internal.zzj.1
            C12611() {
            }

            @Override // com.google.android.gms.common.internal.zze.zzb
            public void onConnected(@Nullable Bundle bundle) {
                GoogleApiClient.ConnectionCallbacks.this.onConnected(bundle);
            }

            @Override // com.google.android.gms.common.internal.zze.zzb
            public void onConnectionSuspended(int i) {
                GoogleApiClient.ConnectionCallbacks.this.onConnectionSuspended(i);
            }
        };
    }

    @Nullable
    private static zze.zzc zza(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        if (onConnectionFailedListener == null) {
            return null;
        }
        return new zze.zzc() { // from class: com.google.android.gms.common.internal.zzj.2
            C12622() {
            }

            @Override // com.google.android.gms.common.internal.zze.zzc
            public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
                GoogleApiClient.OnConnectionFailedListener.this.onConnectionFailed(connectionResult);
            }
        };
    }

    private Set<Scope> zzb(@NonNull Set<Scope> set) {
        Set<Scope> zzc = zzc(set);
        Iterator<Scope> it = zzc.iterator();
        while (it.hasNext()) {
            if (!set.contains(it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return zzc;
    }

    @Override // com.google.android.gms.common.internal.zze
    public final Account getAccount() {
        return this.f6335gj;
    }

    @Override // com.google.android.gms.common.internal.zze
    protected final Set<Scope> zzavi() {
        return this.f6336jw;
    }

    protected final zzf zzawb() {
        return this.f6337zP;
    }

    @NonNull
    protected Set<Scope> zzc(@NonNull Set<Scope> set) {
        return set;
    }
}
