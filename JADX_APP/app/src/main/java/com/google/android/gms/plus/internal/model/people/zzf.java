package com.google.android.gms.plus.internal.model.people;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class zzf implements Parcelable.Creator<PersonEntity.ImageEntity> {
    static void zza(PersonEntity.ImageEntity imageEntity, Parcel parcel, int i) {
        int zzcs = com.google.android.gms.common.internal.safeparcel.zzb.zzcs(parcel);
        Set<Integer> set = imageEntity.aBr;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, imageEntity.mVersionCode);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, imageEntity.zzae, true);
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcs);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzrp */
    public PersonEntity.ImageEntity createFromParcel(Parcel parcel) {
        int zzcr = com.google.android.gms.common.internal.safeparcel.zza.zzcr(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < zzcr) {
            int zzcq = com.google.android.gms.common.internal.safeparcel.zza.zzcq(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgu(zzcq)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    hashSet.add(1);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcq);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcr) {
            throw new zza.C1879zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcr).toString(), parcel);
        }
        return new PersonEntity.ImageEntity(hashSet, i, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzzi */
    public PersonEntity.ImageEntity[] newArray(int i) {
        return new PersonEntity.ImageEntity[i];
    }
}
