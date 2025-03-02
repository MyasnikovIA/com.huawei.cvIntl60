package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzc implements Parcelable.Creator<ProxyResponse> {
    static void zza(ProxyResponse proxyResponse, Parcel parcel, int i) {
        int zzcs = com.google.android.gms.common.internal.safeparcel.zzb.zzcs(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, proxyResponse.googlePlayServicesStatusCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) proxyResponse.recoveryAction, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, proxyResponse.statusCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, proxyResponse.f6047iW, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, proxyResponse.body, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, proxyResponse.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcs);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzau */
    public ProxyResponse createFromParcel(Parcel parcel) {
        int zzcr = com.google.android.gms.common.internal.safeparcel.zza.zzcr(parcel);
        byte[] bArr = null;
        Bundle bundle = null;
        int i = 0;
        PendingIntent pendingIntent = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzcr) {
            int zzcq = com.google.android.gms.common.internal.safeparcel.zza.zzcq(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgu(zzcq)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    break;
                case 2:
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcq, PendingIntent.CREATOR);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    break;
                case 4:
                    bundle = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, zzcq);
                    break;
                case 5:
                    bArr = com.google.android.gms.common.internal.safeparcel.zza.zzt(parcel, zzcq);
                    break;
                case 1000:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcq);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcr) {
            throw new zza.C1879zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcr).toString(), parcel);
        }
        return new ProxyResponse(i3, i2, pendingIntent, i, bundle, bArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdi */
    public ProxyResponse[] newArray(int i) {
        return new ProxyResponse[i];
    }
}
