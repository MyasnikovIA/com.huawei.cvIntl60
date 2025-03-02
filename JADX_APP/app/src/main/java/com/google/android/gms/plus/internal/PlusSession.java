package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzz;
import java.util.Arrays;

/* loaded from: classes.dex */
public class PlusSession extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PlusSession> CREATOR = new zzh();
    private final String[] aBc;
    private final String[] aBd;
    private final String[] aBe;
    private final String aBf;
    private final String aBg;
    private final String aBh;
    private final PlusCommonExtras aBi;

    /* renamed from: hy */
    private final String f6933hy;
    private final int mVersionCode;

    /* renamed from: uk */
    private final String f6934uk;

    PlusSession(int i, String str, String[] strArr, String[] strArr2, String[] strArr3, String str2, String str3, String str4, String str5, PlusCommonExtras plusCommonExtras) {
        this.mVersionCode = i;
        this.f6933hy = str;
        this.aBc = strArr;
        this.aBd = strArr2;
        this.aBe = strArr3;
        this.aBf = str2;
        this.aBg = str3;
        this.f6934uk = str4;
        this.aBh = str5;
        this.aBi = plusCommonExtras;
    }

    public PlusSession(String str, String[] strArr, String[] strArr2, String[] strArr3, String str2, String str3, String str4, PlusCommonExtras plusCommonExtras) {
        this.mVersionCode = 1;
        this.f6933hy = str;
        this.aBc = strArr;
        this.aBd = strArr2;
        this.aBe = strArr3;
        this.aBf = str2;
        this.aBg = str3;
        this.f6934uk = str4;
        this.aBh = null;
        this.aBi = plusCommonExtras;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlusSession)) {
            return false;
        }
        PlusSession plusSession = (PlusSession) obj;
        return this.mVersionCode == plusSession.mVersionCode && zzz.equal(this.f6933hy, plusSession.f6933hy) && Arrays.equals(this.aBc, plusSession.aBc) && Arrays.equals(this.aBd, plusSession.aBd) && Arrays.equals(this.aBe, plusSession.aBe) && zzz.equal(this.aBf, plusSession.aBf) && zzz.equal(this.aBg, plusSession.aBg) && zzz.equal(this.f6934uk, plusSession.f6934uk) && zzz.equal(this.aBh, plusSession.aBh) && zzz.equal(this.aBi, plusSession.aBi);
    }

    public String getAccountName() {
        return this.f6933hy;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzz.hashCode(Integer.valueOf(this.mVersionCode), this.f6933hy, this.aBc, this.aBd, this.aBe, this.aBf, this.aBg, this.f6934uk, this.aBh, this.aBi);
    }

    public String toString() {
        return zzz.zzx(this).zzg("versionCode", Integer.valueOf(this.mVersionCode)).zzg("accountName", this.f6933hy).zzg("requestedScopes", this.aBc).zzg("visibleActivities", this.aBd).zzg("requiredFeatures", this.aBe).zzg("packageNameForAuth", this.aBf).zzg("callingPackageName", this.aBg).zzg("applicationName", this.f6934uk).zzg("extra", this.aBi.toString()).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public String zzapc() {
        return this.f6934uk;
    }

    public String[] zzcbv() {
        return this.aBc;
    }

    public String[] zzcbw() {
        return this.aBd;
    }

    public String[] zzcbx() {
        return this.aBe;
    }

    public String zzcby() {
        return this.aBf;
    }

    public String zzcbz() {
        return this.aBg;
    }

    public String zzcca() {
        return this.aBh;
    }

    public PlusCommonExtras zzccb() {
        return this.aBi;
    }

    public Bundle zzccc() {
        Bundle bundle = new Bundle();
        bundle.setClassLoader(PlusCommonExtras.class.getClassLoader());
        this.aBi.zzan(bundle);
        return bundle;
    }
}
