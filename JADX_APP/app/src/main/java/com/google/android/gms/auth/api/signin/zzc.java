package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzc implements Parcelable.Creator<SignInAccount> {
    static void zza(SignInAccount signInAccount, Parcel parcel, int i) {
        int zzcs = com.google.android.gms.common.internal.safeparcel.zzb.zzcs(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, signInAccount.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, signInAccount.f6081jg, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, (Parcelable) signInAccount.zzaiz(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, signInAccount.f6080ck, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcs);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzax */
    public SignInAccount createFromParcel(Parcel parcel) {
        int zzcr = com.google.android.gms.common.internal.safeparcel.zza.zzcr(parcel);
        int i = 0;
        String str = "";
        GoogleSignInAccount googleSignInAccount = null;
        String str2 = "";
        while (parcel.dataPosition() < zzcr) {
            int zzcq = com.google.android.gms.common.internal.safeparcel.zza.zzcq(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgu(zzcq)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcq);
                    break;
                case 2:
                case 3:
                case 5:
                case 6:
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcq);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    break;
                case 7:
                    googleSignInAccount = (GoogleSignInAccount) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcq, GoogleSignInAccount.CREATOR);
                    break;
                case 8:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcq);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcr) {
            throw new zza.C1879zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcr).toString(), parcel);
        }
        return new SignInAccount(i, str, googleSignInAccount, str2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdl */
    public SignInAccount[] newArray(int i) {
        return new SignInAccount[i];
    }
}
