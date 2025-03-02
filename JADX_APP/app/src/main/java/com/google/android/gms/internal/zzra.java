package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzrf;
import java.util.Iterator;

/* loaded from: classes.dex */
public class zzra implements zzre {

    /* renamed from: zA */
    private final zzrf f6682zA;

    /* renamed from: zB */
    private boolean f6683zB = false;

    /* renamed from: com.google.android.gms.internal.zzra$1 */
    class C13741 extends zzrf.zza {
        C13741(zzre zzreVar) {
            super(zzreVar);
        }

        @Override // com.google.android.gms.internal.zzrf.zza
        public void zzaso() {
            zzra.this.onConnectionSuspended(1);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzra$2 */
    class C13752 extends zzrf.zza {
        C13752(zzre zzreVar) {
            super(zzreVar);
        }

        @Override // com.google.android.gms.internal.zzrf.zza
        public void zzaso() {
            zzra.this.f6682zA.f6762AC.zzn(null);
        }
    }

    public zzra(zzrf zzrfVar) {
        this.f6682zA = zzrfVar;
    }

    private <A extends Api.zzb> void zzd(zzqo.zza<? extends Result, A> zzaVar) {
        this.f6682zA.f6769yW.f6739Ap.zzb(zzaVar);
        Api.zze zzb = this.f6682zA.f6769yW.zzb((Api.zzc<?>) zzaVar.zzaqv());
        if (!zzb.isConnected() && this.f6682zA.f6766Ay.containsKey(zzaVar.zzaqv())) {
            zzaVar.zzaa(new Status(17));
            return;
        }
        boolean z = zzb instanceof com.google.android.gms.common.internal.zzag;
        A a2 = zzb;
        if (z) {
            a2 = ((com.google.android.gms.common.internal.zzag) zzb).zzawt();
        }
        zzaVar.zzb((zzqo.zza<? extends Result, A>) a2);
    }

    @Override // com.google.android.gms.internal.zzre
    public void begin() {
    }

    @Override // com.google.android.gms.internal.zzre
    public void connect() {
        if (this.f6683zB) {
            this.f6683zB = false;
            this.f6682zA.zza(new zzrf.zza(this) { // from class: com.google.android.gms.internal.zzra.2
                C13752(zzre this) {
                    super(this);
                }

                @Override // com.google.android.gms.internal.zzrf.zza
                public void zzaso() {
                    zzra.this.f6682zA.f6762AC.zzn(null);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.zzre
    public boolean disconnect() {
        if (this.f6683zB) {
            return false;
        }
        if (!this.f6682zA.f6769yW.zzata()) {
            this.f6682zA.zzh(null);
            return true;
        }
        this.f6683zB = true;
        Iterator<zzsf> it = this.f6682zA.f6769yW.f6738Ao.iterator();
        while (it.hasNext()) {
            it.next().zzaud();
        }
        return false;
    }

    @Override // com.google.android.gms.internal.zzre
    public void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.zzre
    public void onConnectionSuspended(int i) {
        this.f6682zA.zzh(null);
        this.f6682zA.f6762AC.zzc(i, this.f6683zB);
    }

    @Override // com.google.android.gms.internal.zzre
    public <A extends Api.zzb, R extends Result, T extends zzqo.zza<R, A>> T zza(T t) {
        return (T) zzb(t);
    }

    @Override // com.google.android.gms.internal.zzre
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
    }

    void zzasn() {
        if (this.f6683zB) {
            this.f6683zB = false;
            this.f6682zA.f6769yW.f6739Ap.release();
            disconnect();
        }
    }

    @Override // com.google.android.gms.internal.zzre
    public <A extends Api.zzb, T extends zzqo.zza<? extends Result, A>> T zzb(T t) {
        try {
            zzd(t);
        } catch (DeadObjectException e) {
            this.f6682zA.zza(new zzrf.zza(this) { // from class: com.google.android.gms.internal.zzra.1
                C13741(zzre this) {
                    super(this);
                }

                @Override // com.google.android.gms.internal.zzrf.zza
                public void zzaso() {
                    zzra.this.onConnectionSuspended(1);
                }
            });
        }
        return t;
    }
}
