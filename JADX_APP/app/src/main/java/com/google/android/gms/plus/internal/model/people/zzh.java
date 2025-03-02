package com.google.android.gms.plus.internal.model.people;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class zzh implements Parcelable.Creator<PersonEntity.OrganizationsEntity> {
    static void zza(PersonEntity.OrganizationsEntity organizationsEntity, Parcel parcel, int i) {
        int zzcs = com.google.android.gms.common.internal.safeparcel.zzb.zzcs(parcel);
        Set<Integer> set = organizationsEntity.aBr;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, organizationsEntity.mVersionCode);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, organizationsEntity.aBW, true);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, organizationsEntity.f6940cg, true);
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, organizationsEntity.aBX, true);
        }
        if (set.contains(5)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, organizationsEntity.aBY, true);
        }
        if (set.contains(6)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, organizationsEntity.mName, true);
        }
        if (set.contains(7)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, organizationsEntity.aBZ);
        }
        if (set.contains(8)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, organizationsEntity.aCa, true);
        }
        if (set.contains(9)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, organizationsEntity.f6939JB, true);
        }
        if (set.contains(10)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 10, organizationsEntity.f6941nV);
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcs);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzrr */
    public PersonEntity.OrganizationsEntity createFromParcel(Parcel parcel) {
        int zzcr = com.google.android.gms.common.internal.safeparcel.zza.zzcr(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        String str = null;
        String str2 = null;
        boolean z = false;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzcr) {
            int zzcq = com.google.android.gms.common.internal.safeparcel.zza.zzcq(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgu(zzcq)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    hashSet.add(1);
                    break;
                case 2:
                    str7 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(2);
                    break;
                case 3:
                    str6 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(3);
                    break;
                case 4:
                    str5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(4);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(5);
                    break;
                case 6:
                    str3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(6);
                    break;
                case 7:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcq);
                    hashSet.add(7);
                    break;
                case 8:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(8);
                    break;
                case 9:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    hashSet.add(9);
                    break;
                case 10:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    hashSet.add(10);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcq);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcr) {
            throw new zza.C1879zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcr).toString(), parcel);
        }
        return new PersonEntity.OrganizationsEntity(hashSet, i2, str7, str6, str5, str4, str3, z, str2, str, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzzk */
    public PersonEntity.OrganizationsEntity[] newArray(int i) {
        return new PersonEntity.OrganizationsEntity[i];
    }
}
