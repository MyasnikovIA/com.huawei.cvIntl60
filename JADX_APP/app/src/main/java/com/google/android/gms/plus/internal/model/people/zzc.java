package com.google.android.gms.plus.internal.model.people;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class zzc implements Parcelable.Creator<PersonEntity.CoverEntity> {
    static void zza(PersonEntity.CoverEntity coverEntity, Parcel parcel, int i) {
        int zzcs = com.google.android.gms.common.internal.safeparcel.zzb.zzcs(parcel);
        Set<Integer> set = coverEntity.aBr;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, coverEntity.mVersionCode);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) coverEntity.aBN, i, true);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) coverEntity.aBO, i, true);
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, coverEntity.aBP);
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcs);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzrm */
    public PersonEntity.CoverEntity createFromParcel(Parcel parcel) {
        int zzcr = com.google.android.gms.common.internal.safeparcel.zza.zzcr(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        PersonEntity.CoverEntity.CoverPhotoEntity coverPhotoEntity = null;
        PersonEntity.CoverEntity.CoverInfoEntity coverInfoEntity = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzcr) {
            int zzcq = com.google.android.gms.common.internal.safeparcel.zza.zzcq(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgu(zzcq)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    hashSet.add(1);
                    break;
                case 2:
                    PersonEntity.CoverEntity.CoverInfoEntity coverInfoEntity2 = (PersonEntity.CoverEntity.CoverInfoEntity) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcq, PersonEntity.CoverEntity.CoverInfoEntity.CREATOR);
                    hashSet.add(2);
                    coverInfoEntity = coverInfoEntity2;
                    break;
                case 3:
                    PersonEntity.CoverEntity.CoverPhotoEntity coverPhotoEntity2 = (PersonEntity.CoverEntity.CoverPhotoEntity) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcq, PersonEntity.CoverEntity.CoverPhotoEntity.CREATOR);
                    hashSet.add(3);
                    coverPhotoEntity = coverPhotoEntity2;
                    break;
                case 4:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    hashSet.add(4);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcq);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcr) {
            throw new zza.C1879zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcr).toString(), parcel);
        }
        return new PersonEntity.CoverEntity(hashSet, i2, coverInfoEntity, coverPhotoEntity, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzzf */
    public PersonEntity.CoverEntity[] newArray(int i) {
        return new PersonEntity.CoverEntity[i];
    }
}
