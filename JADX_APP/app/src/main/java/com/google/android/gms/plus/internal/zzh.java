package com.google.android.gms.plus.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzh implements Parcelable.Creator<PlusSession> {
    static void zza(PlusSession plusSession, Parcel parcel, int i) {
        int zzcs = com.google.android.gms.common.internal.safeparcel.zzb.zzcs(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, plusSession.getAccountName(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, plusSession.zzcbv(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, plusSession.zzcbw(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, plusSession.zzcbx(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, plusSession.zzcby(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, plusSession.zzcbz(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, plusSession.zzapc(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, plusSession.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, plusSession.zzcca(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, (Parcelable) plusSession.zzccb(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcs);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzrj */
    public PlusSession createFromParcel(Parcel parcel) {
        int zzcr = com.google.android.gms.common.internal.safeparcel.zza.zzcr(parcel);
        int i = 0;
        PlusCommonExtras plusCommonExtras = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String[] strArr = null;
        String[] strArr2 = null;
        String[] strArr3 = null;
        String str5 = null;
        while (parcel.dataPosition() < zzcr) {
            int zzcq = com.google.android.gms.common.internal.safeparcel.zza.zzcq(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgu(zzcq)) {
                case 1:
                    str5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    break;
                case 2:
                    strArr3 = com.google.android.gms.common.internal.safeparcel.zza.zzac(parcel, zzcq);
                    break;
                case 3:
                    strArr2 = com.google.android.gms.common.internal.safeparcel.zza.zzac(parcel, zzcq);
                    break;
                case 4:
                    strArr = com.google.android.gms.common.internal.safeparcel.zza.zzac(parcel, zzcq);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    break;
                case 6:
                    str3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    break;
                case 7:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    break;
                case 9:
                    plusCommonExtras = (PlusCommonExtras) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcq, PlusCommonExtras.CREATOR);
                    break;
                case 1000:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcq);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcr) {
            throw new zza.C1879zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcr).toString(), parcel);
        }
        return new PlusSession(i, str5, strArr3, strArr2, strArr, str4, str3, str2, str, plusCommonExtras);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzzc */
    public PlusSession[] newArray(int i) {
        return new PlusSession[i];
    }
}
