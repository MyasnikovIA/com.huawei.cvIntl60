package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Account;
import com.google.android.gms.plus.Plus;

/* loaded from: classes.dex */
public final class zzwu implements Account {

    /* renamed from: com.google.android.gms.internal.zzwu$1 */
    class C14091 extends zza {
        C14091(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzqo.zza
        public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
            zzeVar.zzw(this);
        }
    }

    private static abstract class zza extends Plus.zza<Status> {
        private zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* synthetic */ zza(GoogleApiClient googleApiClient, C14091 c14091) {
            this(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzqq
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    @Override // com.google.android.gms.plus.Account
    public void clearDefaultAccount(GoogleApiClient googleApiClient) {
        com.google.android.gms.plus.internal.zze zzf = Plus.zzf(googleApiClient, false);
        if (zzf != null) {
            zzf.zzcbq();
        }
    }

    @Override // com.google.android.gms.plus.Account
    public String getAccountName(GoogleApiClient googleApiClient) {
        return Plus.zzf(googleApiClient, true).getAccountName();
    }

    @Override // com.google.android.gms.plus.Account
    @SuppressLint({"MissingRemoteException"})
    public PendingResult<Status> revokeAccessAndDisconnect(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new zza(googleApiClient) { // from class: com.google.android.gms.internal.zzwu.1
            C14091(GoogleApiClient googleApiClient2) {
                super(googleApiClient2);
            }

            @Override // com.google.android.gms.internal.zzqo.zza
            public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
                zzeVar.zzw(this);
            }
        });
    }
}
