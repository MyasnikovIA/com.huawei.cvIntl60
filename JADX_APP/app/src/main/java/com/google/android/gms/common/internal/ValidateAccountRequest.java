package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

@Deprecated
/* loaded from: classes.dex */
public class ValidateAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ValidateAccountRequest> CREATOR = new zzai();

    /* renamed from: Df */
    final IBinder f6278Df;

    /* renamed from: Dg */
    private final Scope[] f6279Dg;

    /* renamed from: ER */
    private final int f6280ER;

    /* renamed from: ES */
    private final Bundle f6281ES;

    /* renamed from: ET */
    private final String f6282ET;
    final int mVersionCode;

    ValidateAccountRequest(int i, int i2, IBinder iBinder, Scope[] scopeArr, Bundle bundle, String str) {
        this.mVersionCode = i;
        this.f6280ER = i2;
        this.f6278Df = iBinder;
        this.f6279Dg = scopeArr;
        this.f6281ES = bundle;
        this.f6282ET = str;
    }

    public String getCallingPackage() {
        return this.f6282ET;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzai.zza(this, parcel, i);
    }

    public Scope[] zzaws() {
        return this.f6279Dg;
    }

    public int zzawu() {
        return this.f6280ER;
    }

    public Bundle zzawv() {
        return this.f6281ES;
    }
}
