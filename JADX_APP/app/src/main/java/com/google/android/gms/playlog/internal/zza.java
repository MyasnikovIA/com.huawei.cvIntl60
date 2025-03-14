package com.google.android.gms.playlog.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class zza implements Parcelable.Creator<PlayLoggerContext> {
    static void zza(PlayLoggerContext playLoggerContext, Parcel parcel, int i) {
        int zzcs = zzb.zzcs(parcel);
        zzb.zzc(parcel, 1, playLoggerContext.versionCode);
        zzb.zza(parcel, 2, playLoggerContext.packageName, false);
        zzb.zzc(parcel, 3, playLoggerContext.aAB);
        zzb.zzc(parcel, 4, playLoggerContext.aAC);
        zzb.zza(parcel, 5, playLoggerContext.aAD, false);
        zzb.zza(parcel, 6, playLoggerContext.aAE, false);
        zzb.zza(parcel, 7, playLoggerContext.aAF);
        zzb.zza(parcel, 8, playLoggerContext.aAG, false);
        zzb.zza(parcel, 9, playLoggerContext.aAH);
        zzb.zzc(parcel, 10, playLoggerContext.aAI);
        zzb.zzaj(parcel, zzcs);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzrh */
    public PlayLoggerContext createFromParcel(Parcel parcel) {
        int zzcr = com.google.android.gms.common.internal.safeparcel.zza.zzcr(parcel);
        boolean z = true;
        int i = 0;
        boolean z2 = false;
        String str = null;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        int i3 = 0;
        String str4 = null;
        int i4 = 0;
        while (parcel.dataPosition() < zzcr) {
            int zzcq = com.google.android.gms.common.internal.safeparcel.zza.zzcq(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgu(zzcq)) {
                case 1:
                    i4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    break;
                case 2:
                    str4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    break;
                case 3:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    break;
                case 5:
                    str3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    break;
                case 6:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    break;
                case 7:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcq);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    break;
                case 9:
                    z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcq);
                    break;
                case 10:
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
        return new PlayLoggerContext(i4, str4, i3, i2, str3, str2, z, str, z2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzyz */
    public PlayLoggerContext[] newArray(int i) {
        return new PlayLoggerContext[i];
    }
}
