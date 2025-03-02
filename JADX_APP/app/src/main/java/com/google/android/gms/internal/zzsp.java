package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzsq;

/* loaded from: classes.dex */
public final class zzsp implements zzso {

    /* renamed from: com.google.android.gms.internal.zzsp$1 */
    class C13961 extends zzsq.zza {
        C13961(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzqo.zza
        public void zza(zzsr zzsrVar) {
            ((zzst) zzsrVar.zzavg()).zza(new zza(this));
        }
    }

    private static class zza extends zzsm {

        /* renamed from: EW */
        private final zzqo.zzb<Status> f6887EW;

        public zza(zzqo.zzb<Status> zzbVar) {
            this.f6887EW = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzsm, com.google.android.gms.internal.zzss
        public void zzgv(int i) {
            this.f6887EW.setResult(new Status(i));
        }
    }

    @Override // com.google.android.gms.internal.zzso
    public PendingResult<Status> zzg(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new zzsq.zza(googleApiClient) { // from class: com.google.android.gms.internal.zzsp.1
            C13961(GoogleApiClient googleApiClient2) {
                super(googleApiClient2);
            }

            @Override // com.google.android.gms.internal.zzqo.zza
            public void zza(zzsr zzsrVar) {
                ((zzst) zzsrVar.zzavg()).zza(new zza(this));
            }
        });
    }
}
