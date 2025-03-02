package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: classes.dex */
public class AuthAccountResult extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<AuthAccountResult> CREATOR = new zza();
    private int aDq;
    private Intent aDr;
    final int mVersionCode;

    public AuthAccountResult() {
        this(0, null);
    }

    AuthAccountResult(int i, int i2, Intent intent) {
        this.mVersionCode = i;
        this.aDq = i2;
        this.aDr = intent;
    }

    public AuthAccountResult(int i, Intent intent) {
        this(2, i, intent);
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.aDq == 0 ? Status.f6171xZ : Status.f6175yd;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public int zzcdi() {
        return this.aDq;
    }

    public Intent zzcdj() {
        return this.aDr;
    }
}
