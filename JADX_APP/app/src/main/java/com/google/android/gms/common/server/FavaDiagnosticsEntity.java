package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: classes.dex */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new zza();

    /* renamed from: EY */
    public final String f6372EY;

    /* renamed from: EZ */
    public final int f6373EZ;
    final int mVersionCode;

    public FavaDiagnosticsEntity(int i, String str, int i2) {
        this.mVersionCode = i;
        this.f6372EY = str;
        this.f6373EZ = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
