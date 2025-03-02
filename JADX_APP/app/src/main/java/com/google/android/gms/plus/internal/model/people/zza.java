package com.google.android.gms.plus.internal.model.people;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class zza implements Parcelable.Creator<PersonEntity> {
    static void zza(PersonEntity personEntity, Parcel parcel, int i) {
        int zzcs = com.google.android.gms.common.internal.safeparcel.zzb.zzcs(parcel);
        Set<Integer> set = personEntity.aBr;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, personEntity.mVersionCode);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, personEntity.aBs, true);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) personEntity.aBt, i, true);
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, personEntity.aBu, true);
        }
        if (set.contains(5)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, personEntity.aBv, true);
        }
        if (set.contains(6)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 6, personEntity.aBw);
        }
        if (set.contains(7)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, (Parcelable) personEntity.aBx, i, true);
        }
        if (set.contains(8)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, personEntity.aBy, true);
        }
        if (set.contains(9)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, personEntity.f6936jh, true);
        }
        if (set.contains(12)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 12, personEntity.zzazc);
        }
        if (set.contains(14)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 14, personEntity.zzboa, true);
        }
        if (set.contains(15)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 15, (Parcelable) personEntity.aBz, i, true);
        }
        if (set.contains(16)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 16, personEntity.aBA);
        }
        if (set.contains(18)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 18, personEntity.f6935bZ, true);
        }
        if (set.contains(19)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 19, (Parcelable) personEntity.aBB, i, true);
        }
        if (set.contains(20)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 20, personEntity.aBC, true);
        }
        if (set.contains(21)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 21, personEntity.aBD);
        }
        if (set.contains(22)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 22, personEntity.aBE, true);
        }
        if (set.contains(23)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 23, personEntity.aBF, true);
        }
        if (set.contains(24)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 24, personEntity.aBG);
        }
        if (set.contains(25)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 25, personEntity.aBH);
        }
        if (set.contains(26)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 26, personEntity.aBI, true);
        }
        if (set.contains(27)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 27, personEntity.zzae, true);
        }
        if (set.contains(28)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 28, personEntity.aBJ, true);
        }
        if (set.contains(29)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 29, personEntity.aBK);
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcs);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzrk */
    public PersonEntity createFromParcel(Parcel parcel) {
        int zzcr = com.google.android.gms.common.internal.safeparcel.zza.zzcr(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        String str = null;
        PersonEntity.AgeRangeEntity ageRangeEntity = null;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        PersonEntity.CoverEntity coverEntity = null;
        String str4 = null;
        String str5 = null;
        int i3 = 0;
        String str6 = null;
        PersonEntity.ImageEntity imageEntity = null;
        boolean z = false;
        String str7 = null;
        PersonEntity.NameEntity nameEntity = null;
        String str8 = null;
        int i4 = 0;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        int i5 = 0;
        int i6 = 0;
        String str9 = null;
        String str10 = null;
        ArrayList arrayList3 = null;
        boolean z2 = false;
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
                case 3:
                    PersonEntity.AgeRangeEntity ageRangeEntity2 = (PersonEntity.AgeRangeEntity) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcq, PersonEntity.AgeRangeEntity.CREATOR);
                    hashSet.add(3);
                    ageRangeEntity = ageRangeEntity2;
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(4);
                    break;
                case 5:
                    str3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(5);
                    break;
                case 6:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    hashSet.add(6);
                    break;
                case 7:
                    PersonEntity.CoverEntity coverEntity2 = (PersonEntity.CoverEntity) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcq, PersonEntity.CoverEntity.CREATOR);
                    hashSet.add(7);
                    coverEntity = coverEntity2;
                    break;
                case 8:
                    str4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(8);
                    break;
                case 9:
                    str5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(9);
                    break;
                case 10:
                case 11:
                case 13:
                case 17:
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcq);
                    break;
                case 12:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    hashSet.add(12);
                    break;
                case 14:
                    str6 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(14);
                    break;
                case 15:
                    PersonEntity.ImageEntity imageEntity2 = (PersonEntity.ImageEntity) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcq, PersonEntity.ImageEntity.CREATOR);
                    hashSet.add(15);
                    imageEntity = imageEntity2;
                    break;
                case 16:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcq);
                    hashSet.add(16);
                    break;
                case 18:
                    str7 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(18);
                    break;
                case 19:
                    PersonEntity.NameEntity nameEntity2 = (PersonEntity.NameEntity) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcq, PersonEntity.NameEntity.CREATOR);
                    hashSet.add(19);
                    nameEntity = nameEntity2;
                    break;
                case 20:
                    str8 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(20);
                    break;
                case 21:
                    i4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    hashSet.add(21);
                    break;
                case 22:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcq, PersonEntity.OrganizationsEntity.CREATOR);
                    hashSet.add(22);
                    break;
                case 23:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcq, PersonEntity.PlacesLivedEntity.CREATOR);
                    hashSet.add(23);
                    break;
                case 24:
                    i5 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    hashSet.add(24);
                    break;
                case 25:
                    i6 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    hashSet.add(25);
                    break;
                case 26:
                    str9 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(26);
                    break;
                case 27:
                    str10 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(27);
                    break;
                case 28:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcq, PersonEntity.UrlsEntity.CREATOR);
                    hashSet.add(28);
                    break;
                case 29:
                    z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcq);
                    hashSet.add(29);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcr) {
            throw new zza.C1879zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcr).toString(), parcel);
        }
        return new PersonEntity(hashSet, i, str, ageRangeEntity, str2, str3, i2, coverEntity, str4, str5, i3, str6, imageEntity, z, str7, nameEntity, str8, i4, arrayList, arrayList2, i5, i6, str9, str10, arrayList3, z2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzzd */
    public PersonEntity[] newArray(int i) {
        return new PersonEntity[i];
    }
}
