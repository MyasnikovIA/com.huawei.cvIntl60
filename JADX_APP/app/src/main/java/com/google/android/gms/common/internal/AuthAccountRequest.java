package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: classes.dex */
public class AuthAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthAccountRequest> CREATOR = new zzd();

    /* renamed from: Df */
    final IBinder f6251Df;

    /* renamed from: Dg */
    final Scope[] f6252Dg;

    /* renamed from: Dh */
    Integer f6253Dh;

    /* renamed from: Di */
    Integer f6254Di;
    final int mVersionCode;

    AuthAccountRequest(int i, IBinder iBinder, Scope[] scopeArr, Integer num, Integer num2) {
        this.mVersionCode = i;
        this.f6251Df = iBinder;
        this.f6252Dg = scopeArr;
        this.f6253Dh = num;
        this.f6254Di = num2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }
}
