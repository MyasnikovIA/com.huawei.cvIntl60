package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zza implements Parcelable.Creator<BitmapTeleporter> {
    static void zza(BitmapTeleporter bitmapTeleporter, Parcel parcel, int i) {
        int zzcs = com.google.android.gms.common.internal.safeparcel.zzb.zzcs(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, bitmapTeleporter.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) bitmapTeleporter.zzcme, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, bitmapTeleporter.f6195nV);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcs);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcg */
    public BitmapTeleporter createFromParcel(Parcel parcel) {
        int zzcr = com.google.android.gms.common.internal.safeparcel.zza.zzcr(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzcr) {
            int zzcq = com.google.android.gms.common.internal.safeparcel.zza.zzcq(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgu(zzcq)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    break;
                case 2:
                    parcelFileDescriptor = (ParcelFileDescriptor) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcq, ParcelFileDescriptor.CREATOR);
                    break;
                case 3:
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
        return new BitmapTeleporter(i2, parcelFileDescriptor, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfx */
    public BitmapTeleporter[] newArray(int i) {
        return new BitmapTeleporter[i];
    }
}
