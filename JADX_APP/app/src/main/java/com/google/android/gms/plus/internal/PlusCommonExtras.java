package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzz;

@KeepName
/* loaded from: classes.dex */
public class PlusCommonExtras extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PlusCommonExtras> CREATOR = new zzf();
    private String aAZ;
    private String aBa;
    private final int mVersionCode;

    public PlusCommonExtras() {
        this.mVersionCode = 1;
        this.aAZ = "";
        this.aBa = "";
    }

    PlusCommonExtras(int i, String str, String str2) {
        this.mVersionCode = i;
        this.aAZ = str;
        this.aBa = str2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlusCommonExtras)) {
            return false;
        }
        PlusCommonExtras plusCommonExtras = (PlusCommonExtras) obj;
        return this.mVersionCode == plusCommonExtras.mVersionCode && zzz.equal(this.aAZ, plusCommonExtras.aAZ) && zzz.equal(this.aBa, plusCommonExtras.aBa);
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzz.hashCode(Integer.valueOf(this.mVersionCode), this.aAZ, this.aBa);
    }

    public String toString() {
        return zzz.zzx(this).zzg("versionCode", Integer.valueOf(this.mVersionCode)).zzg("Gpsrc", this.aAZ).zzg("ClientCallingPackage", this.aBa).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }

    public void zzan(Bundle bundle) {
        bundle.putByteArray("android.gms.plus.internal.PlusCommonExtras.extraPlusCommon", com.google.android.gms.common.internal.safeparcel.zzc.zza(this));
    }

    public String zzcbt() {
        return this.aAZ;
    }

    public String zzcbu() {
        return this.aBa;
    }
}
