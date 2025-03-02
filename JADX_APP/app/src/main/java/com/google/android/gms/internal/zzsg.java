package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzqo;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class zzsg {

    /* renamed from: Aj */
    private final Map<Api.zzc<?>, Api.zze> f6852Aj;

    /* renamed from: BF */
    final Set<zzqq<?>> f6853BF = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    /* renamed from: BG */
    private final zzb f6854BG = new zzb() { // from class: com.google.android.gms.internal.zzsg.1
        C13881() {
        }

        @Override // com.google.android.gms.internal.zzsg.zzb
        public void zzc(zzqq<?> zzqqVar) {
            zzsg.this.f6853BF.remove(zzqqVar);
            if (zzqqVar.zzarh() == null || zzsg.zza(zzsg.this) == null) {
                return;
            }
            zzsg.zza(zzsg.this).remove(zzqqVar.zzarh().intValue());
        }
    };

    /* renamed from: ym */
    public static final Status f6851ym = new Status(8, "The connection to Google Play services was lost");

    /* renamed from: BE */
    private static final zzqq<?>[] f6850BE = new zzqq[0];

    /* renamed from: com.google.android.gms.internal.zzsg$1 */
    class C13881 implements zzb {
        C13881() {
        }

        @Override // com.google.android.gms.internal.zzsg.zzb
        public void zzc(zzqq<?> zzqqVar) {
            zzsg.this.f6853BF.remove(zzqqVar);
            if (zzqqVar.zzarh() == null || zzsg.zza(zzsg.this) == null) {
                return;
            }
            zzsg.zza(zzsg.this).remove(zzqqVar.zzarh().intValue());
        }
    }

    private static class zza implements IBinder.DeathRecipient, zzb {

        /* renamed from: BI */
        private final WeakReference<zzqq<?>> f6856BI;

        /* renamed from: BJ */
        private final WeakReference<com.google.android.gms.common.api.zze> f6857BJ;

        /* renamed from: BK */
        private final WeakReference<IBinder> f6858BK;

        private zza(zzqq<?> zzqqVar, com.google.android.gms.common.api.zze zzeVar, IBinder iBinder) {
            this.f6857BJ = new WeakReference<>(zzeVar);
            this.f6856BI = new WeakReference<>(zzqqVar);
            this.f6858BK = new WeakReference<>(iBinder);
        }

        /* synthetic */ zza(zzqq zzqqVar, com.google.android.gms.common.api.zze zzeVar, IBinder iBinder, C13881 c13881) {
            this(zzqqVar, zzeVar, iBinder);
        }

        private void zzaug() {
            zzqq<?> zzqqVar = this.f6856BI.get();
            com.google.android.gms.common.api.zze zzeVar = this.f6857BJ.get();
            if (zzeVar != null && zzqqVar != null) {
                zzeVar.remove(zzqqVar.zzarh().intValue());
            }
            IBinder iBinder = this.f6858BK.get();
            if (iBinder != null) {
                iBinder.unlinkToDeath(this, 0);
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            zzaug();
        }

        @Override // com.google.android.gms.internal.zzsg.zzb
        public void zzc(zzqq<?> zzqqVar) {
            zzaug();
        }
    }

    interface zzb {
        void zzc(zzqq<?> zzqqVar);
    }

    public zzsg(Map<Api.zzc<?>, Api.zze> map) {
        this.f6852Aj = map;
    }

    static /* synthetic */ com.google.android.gms.common.api.zze zza(zzsg zzsgVar) {
        return null;
    }

    private static void zza(zzqq<?> zzqqVar, com.google.android.gms.common.api.zze zzeVar, IBinder iBinder) {
        if (zzqqVar.isReady()) {
            zzqqVar.zza(new zza(zzqqVar, zzeVar, iBinder));
            return;
        }
        if (iBinder == null || !iBinder.isBinderAlive()) {
            zzqqVar.zza((zzb) null);
            zzqqVar.cancel();
            zzeVar.remove(zzqqVar.zzarh().intValue());
        } else {
            zza zzaVar = new zza(zzqqVar, zzeVar, iBinder);
            zzqqVar.zza(zzaVar);
            try {
                iBinder.linkToDeath(zzaVar, 0);
            } catch (RemoteException e) {
                zzqqVar.cancel();
                zzeVar.remove(zzqqVar.zzarh().intValue());
            }
        }
    }

    public void dump(PrintWriter printWriter) {
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.f6853BF.size());
    }

    public void release() {
        for (zzqq zzqqVar : (zzqq[]) this.f6853BF.toArray(f6850BE)) {
            zzqqVar.zza((zzb) null);
            if (zzqqVar.zzarh() != null) {
                zzqqVar.zzaru();
                zza(zzqqVar, null, this.f6852Aj.get(((zzqo.zza) zzqqVar).zzaqv()).zzaqy());
                this.f6853BF.remove(zzqqVar);
            } else if (zzqqVar.zzars()) {
                this.f6853BF.remove(zzqqVar);
            }
        }
    }

    public void zzauf() {
        for (zzqq zzqqVar : (zzqq[]) this.f6853BF.toArray(f6850BE)) {
            zzqqVar.zzab(f6851ym);
        }
    }

    void zzb(zzqq<? extends Result> zzqqVar) {
        this.f6853BF.add(zzqqVar);
        zzqqVar.zza(this.f6854BG);
    }
}
