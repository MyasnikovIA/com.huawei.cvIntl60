package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzz;

/* loaded from: classes.dex */
public class AccountChangeEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEvent> CREATOR = new zza();

    /* renamed from: hA */
    final int f5948hA;

    /* renamed from: hB */
    final String f5949hB;

    /* renamed from: hx */
    final long f5950hx;

    /* renamed from: hy */
    final String f5951hy;

    /* renamed from: hz */
    final int f5952hz;
    final int mVersion;

    AccountChangeEvent(int i, long j, String str, int i2, int i3, String str2) {
        this.mVersion = i;
        this.f5950hx = j;
        this.f5951hy = (String) zzaa.zzy(str);
        this.f5952hz = i2;
        this.f5948hA = i3;
        this.f5949hB = str2;
    }

    public AccountChangeEvent(long j, String str, int i, int i2, String str2) {
        this.mVersion = 1;
        this.f5950hx = j;
        this.f5951hy = (String) zzaa.zzy(str);
        this.f5952hz = i;
        this.f5948hA = i2;
        this.f5949hB = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AccountChangeEvent)) {
            return false;
        }
        AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
        return this.mVersion == accountChangeEvent.mVersion && this.f5950hx == accountChangeEvent.f5950hx && zzz.equal(this.f5951hy, accountChangeEvent.f5951hy) && this.f5952hz == accountChangeEvent.f5952hz && this.f5948hA == accountChangeEvent.f5948hA && zzz.equal(this.f5949hB, accountChangeEvent.f5949hB);
    }

    public String getAccountName() {
        return this.f5951hy;
    }

    public String getChangeData() {
        return this.f5949hB;
    }

    public int getChangeType() {
        return this.f5952hz;
    }

    public int getEventIndex() {
        return this.f5948hA;
    }

    public int hashCode() {
        return zzz.hashCode(Integer.valueOf(this.mVersion), Long.valueOf(this.f5950hx), this.f5951hy, Integer.valueOf(this.f5952hz), Integer.valueOf(this.f5948hA), this.f5949hB);
    }

    public String toString() {
        String str = "UNKNOWN";
        switch (this.f5952hz) {
            case 1:
                str = "ADDED";
                break;
            case 2:
                str = "REMOVED";
                break;
            case 3:
                str = "RENAMED_FROM";
                break;
            case 4:
                str = "RENAMED_TO";
                break;
        }
        String str2 = this.f5951hy;
        String str3 = this.f5949hB;
        return new StringBuilder(String.valueOf(str2).length() + 91 + String.valueOf(str).length() + String.valueOf(str3).length()).append("AccountChangeEvent {accountName = ").append(str2).append(", changeType = ").append(str).append(", changeData = ").append(str3).append(", eventIndex = ").append(this.f5948hA).append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
