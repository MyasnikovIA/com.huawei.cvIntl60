package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzi implements Parcelable.Creator<GetServiceRequest> {
    static void zza(GetServiceRequest getServiceRequest, Parcel parcel, int i) {
        int zzcs = com.google.android.gms.common.internal.safeparcel.zzb.zzcs(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, getServiceRequest.version);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, getServiceRequest.f6260DU);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, getServiceRequest.f6261DV);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, getServiceRequest.f6262DW, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, getServiceRequest.f6263DX, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, (Parcelable[]) getServiceRequest.f6264DY, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, getServiceRequest.f6265DZ, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, (Parcelable) getServiceRequest.f6266Ea, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, getServiceRequest.f6267Eb);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcs);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcl */
    public GetServiceRequest createFromParcel(Parcel parcel) {
        int zzcr = com.google.android.gms.common.internal.safeparcel.zza.zzcr(parcel);
        long j = 0;
        Account account = null;
        Bundle bundle = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzcr) {
            int zzcq = com.google.android.gms.common.internal.safeparcel.zza.zzcq(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgu(zzcq)) {
                case 1:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    break;
                case 2:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    break;
                case 5:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzcq);
                    break;
                case 6:
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcq, Scope.CREATOR);
                    break;
                case 7:
                    bundle = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, zzcq);
                    break;
                case 8:
                    account = (Account) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcq, Account.CREATOR);
                    break;
                case 9:
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcq);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcq);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcr) {
            throw new zza.C1879zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcr).toString(), parcel);
        }
        return new GetServiceRequest(i3, i2, i, str, iBinder, scopeArr, bundle, account, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgm */
    public GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
