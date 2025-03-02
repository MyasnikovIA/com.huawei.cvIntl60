package com.google.android.gms.plus.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import com.google.android.gms.plus.internal.zzd;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;

/* loaded from: classes.dex */
public class zze extends zzj<zzd> {
    private Person aAV;
    private final PlusSession aAW;

    static final class zza implements People.LoadPeopleResult {
        private final String aAX;
        private final PersonBuffer aAY;

        /* renamed from: hv */
        private final Status f6944hv;

        public zza(Status status, DataHolder dataHolder, String str) {
            this.f6944hv = status;
            this.aAX = str;
            this.aAY = dataHolder != null ? new PersonBuffer(dataHolder) : null;
        }

        @Override // com.google.android.gms.plus.People.LoadPeopleResult
        public String getNextPageToken() {
            return this.aAX;
        }

        @Override // com.google.android.gms.plus.People.LoadPeopleResult
        public PersonBuffer getPersonBuffer() {
            return this.aAY;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.f6944hv;
        }

        @Override // com.google.android.gms.common.api.Releasable
        public void release() {
            if (this.aAY != null) {
                this.aAY.release();
            }
        }
    }

    static final class zzb extends com.google.android.gms.plus.internal.zza {
        private final zzqo.zzb<People.LoadPeopleResult> alb;

        public zzb(zzqo.zzb<People.LoadPeopleResult> zzbVar) {
            this.alb = zzbVar;
        }

        @Override // com.google.android.gms.plus.internal.zza, com.google.android.gms.plus.internal.zzb
        public void zza(DataHolder dataHolder, String str) {
            Status status = new Status(dataHolder.getStatusCode(), null, dataHolder.zzaui() != null ? (PendingIntent) dataHolder.zzaui().getParcelable("pendingIntent") : null);
            if (!status.isSuccess() && dataHolder != null) {
                if (!dataHolder.isClosed()) {
                    dataHolder.close();
                }
                dataHolder = null;
            }
            this.alb.setResult(new zza(status, dataHolder, str));
        }
    }

    static final class zzc extends com.google.android.gms.plus.internal.zza {
        private final zzqo.zzb<Status> alb;

        public zzc(zzqo.zzb<Status> zzbVar) {
            this.alb = zzbVar;
        }

        @Override // com.google.android.gms.plus.internal.zza, com.google.android.gms.plus.internal.zzb
        public void zzk(int i, Bundle bundle) {
            this.alb.setResult(new Status(i, null, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
        }
    }

    public zze(Context context, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, PlusSession plusSession, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 2, zzfVar, connectionCallbacks, onConnectionFailedListener);
        this.aAW = plusSession;
    }

    public static boolean zze(Set<Scope> set) {
        if (set == null || set.isEmpty()) {
            return false;
        }
        return (set.size() == 1 && set.contains(new Scope("plus_one_placeholder_scope"))) ? false : true;
    }

    public String getAccountName() {
        zzavf();
        try {
            return ((zzd) zzavg()).getAccountName();
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public zzq zza(zzqo.zzb<People.LoadPeopleResult> zzbVar, int i, String str) {
        zzavf();
        zzb zzbVar2 = new zzb(zzbVar);
        try {
            return ((zzd) zzavg()).zza(zzbVar2, 1, i, -1, str);
        } catch (RemoteException e) {
            zzbVar2.zza(DataHolder.zzgb(8), (String) null);
            return null;
        }
    }

    @Override // com.google.android.gms.common.internal.zze
    protected void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (i == 0 && bundle != null && bundle.containsKey("loaded_person")) {
            this.aAV = PersonEntity.zzaf(bundle.getByteArray("loaded_person"));
        }
        super.zza(i, iBinder, bundle, i2);
    }

    public void zza(zzqo.zzb<People.LoadPeopleResult> zzbVar, Collection<String> collection) {
        zzavf();
        zzb zzbVar2 = new zzb(zzbVar);
        try {
            ((zzd) zzavg()).zza(zzbVar2, new ArrayList(collection));
        } catch (RemoteException e) {
            zzbVar2.zza(DataHolder.zzgb(8), (String) null);
        }
    }

    @Override // com.google.android.gms.common.internal.zze
    protected Bundle zzahv() {
        Bundle zzccc = this.aAW.zzccc();
        zzccc.putStringArray("request_visible_actions", this.aAW.zzcbw());
        zzccc.putString("auth_package", this.aAW.zzcby());
        return zzccc;
    }

    @Override // com.google.android.gms.common.internal.zze, com.google.android.gms.common.api.Api.zze
    public boolean zzain() {
        return zze(zzawb().zzc(Plus.API));
    }

    public void zzcbq() {
        zzavf();
        try {
            this.aAV = null;
            ((zzd) zzavg()).zzcbq();
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public Person zzcbs() {
        zzavf();
        return this.aAV;
    }

    public void zzd(zzqo.zzb<People.LoadPeopleResult> zzbVar, String[] strArr) {
        zza(zzbVar, Arrays.asList(strArr));
    }

    @Override // com.google.android.gms.common.internal.zze
    protected String zzjx() {
        return "com.google.android.gms.plus.service.START";
    }

    @Override // com.google.android.gms.common.internal.zze
    protected String zzjy() {
        return "com.google.android.gms.plus.internal.IPlusService";
    }

    @Override // com.google.android.gms.common.internal.zze
    /* renamed from: zzkn */
    public zzd zzh(IBinder iBinder) {
        return zzd.zza.zzkm(iBinder);
    }

    public zzq zzu(zzqo.zzb<People.LoadPeopleResult> zzbVar, String str) {
        return zza(zzbVar, 0, str);
    }

    public void zzv(zzqo.zzb<People.LoadPeopleResult> zzbVar) {
        zzavf();
        zzb zzbVar2 = new zzb(zzbVar);
        try {
            ((zzd) zzavg()).zza(zzbVar2, 2, 1, -1, null);
        } catch (RemoteException e) {
            zzbVar2.zza(DataHolder.zzgb(8), (String) null);
        }
    }

    public void zzw(zzqo.zzb<Status> zzbVar) {
        zzavf();
        zzcbq();
        zzc zzcVar = new zzc(zzbVar);
        try {
            ((zzd) zzavg()).zzb(zzcVar);
        } catch (RemoteException e) {
            zzcVar.zzk(8, null);
        }
    }
}
