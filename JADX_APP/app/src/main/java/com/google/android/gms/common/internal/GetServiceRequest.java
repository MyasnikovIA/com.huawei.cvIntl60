package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzp;
import java.util.Collection;

/* loaded from: classes.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new zzi();

    /* renamed from: DU */
    final int f6260DU;

    /* renamed from: DV */
    int f6261DV;

    /* renamed from: DW */
    String f6262DW;

    /* renamed from: DX */
    IBinder f6263DX;

    /* renamed from: DY */
    Scope[] f6264DY;

    /* renamed from: DZ */
    Bundle f6265DZ;

    /* renamed from: Ea */
    Account f6266Ea;

    /* renamed from: Eb */
    long f6267Eb;
    final int version;

    public GetServiceRequest(int i) {
        this.version = 3;
        this.f6261DV = com.google.android.gms.common.zzc.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        this.f6260DU = i;
    }

    GetServiceRequest(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, long j) {
        this.version = i;
        this.f6260DU = i2;
        this.f6261DV = i3;
        if ("com.google.android.gms".equals(str)) {
            this.f6262DW = "com.google.android.gms";
        } else {
            this.f6262DW = str;
        }
        if (i < 2) {
            this.f6266Ea = zzdq(iBinder);
        } else {
            this.f6263DX = iBinder;
            this.f6266Ea = account;
        }
        this.f6264DY = scopeArr;
        this.f6265DZ = bundle;
        this.f6267Eb = j;
    }

    private Account zzdq(IBinder iBinder) {
        if (iBinder != null) {
            return zza.zza(zzp.zza.zzdr(iBinder));
        }
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }

    public GetServiceRequest zzb(zzp zzpVar) {
        if (zzpVar != null) {
            this.f6263DX = zzpVar.asBinder();
        }
        return this;
    }

    public GetServiceRequest zze(Account account) {
        this.f6266Ea = account;
        return this;
    }

    public GetServiceRequest zzf(Collection<Scope> collection) {
        this.f6264DY = (Scope[]) collection.toArray(new Scope[collection.size()]);
        return this;
    }

    public GetServiceRequest zzhv(String str) {
        this.f6262DW = str;
        return this;
    }

    public GetServiceRequest zzo(Bundle bundle) {
        this.f6265DZ = bundle;
        return this;
    }
}
