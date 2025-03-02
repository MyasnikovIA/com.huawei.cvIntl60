package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* loaded from: classes.dex */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new zzf();
    final int mVersionCode;

    /* renamed from: xY */
    private final String f6170xY;

    Scope(int i, String str) {
        zzaa.zzh(str, "scopeUri must not be null or empty");
        this.mVersionCode = i;
        this.f6170xY = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.f6170xY.equals(((Scope) obj).f6170xY);
        }
        return false;
    }

    public int hashCode() {
        return this.f6170xY.hashCode();
    }

    public String toString() {
        return this.f6170xY;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }

    public String zzari() {
        return this.f6170xY;
    }
}
