package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzb implements Parcelable.Creator<ConnectionResult> {
    static void zza(ConnectionResult connectionResult, Parcel parcel, int i) {
        int zzcs = com.google.android.gms.common.internal.safeparcel.zzb.zzcs(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, connectionResult.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, connectionResult.getErrorCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) connectionResult.getResolution(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, connectionResult.getErrorMessage(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcs);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcd */
    public ConnectionResult createFromParcel(Parcel parcel) {
        int zzcr = com.google.android.gms.common.internal.safeparcel.zza.zzcr(parcel);
        String str = null;
        PendingIntent pendingIntent = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzcr) {
            int zzcq = com.google.android.gms.common.internal.safeparcel.zza.zzcq(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgu(zzcq)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    break;
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    break;
                case 3:
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcq, PendingIntent.CREATOR);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcq);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcr) {
            throw new zza.C1879zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcr).toString(), parcel);
        }
        return new ConnectionResult(i2, i, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfo */
    public ConnectionResult[] newArray(int i) {
        return new ConnectionResult[i];
    }
}
