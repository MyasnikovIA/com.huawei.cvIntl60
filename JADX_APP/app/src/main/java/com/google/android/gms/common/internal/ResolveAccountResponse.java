package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzp;

/* loaded from: classes.dex */
public class ResolveAccountResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new zzac();

    /* renamed from: Df */
    IBinder f6271Df;

    /* renamed from: EJ */
    private ConnectionResult f6272EJ;

    /* renamed from: EK */
    private boolean f6273EK;
    final int mVersionCode;

    /* renamed from: zN */
    private boolean f6274zN;

    ResolveAccountResponse(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.mVersionCode = i;
        this.f6271Df = iBinder;
        this.f6272EJ = connectionResult;
        this.f6274zN = z;
        this.f6273EK = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResolveAccountResponse)) {
            return false;
        }
        ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse) obj;
        return this.f6272EJ.equals(resolveAccountResponse.f6272EJ) && zzawm().equals(resolveAccountResponse.zzawm());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzac.zza(this, parcel, i);
    }

    public zzp zzawm() {
        return zzp.zza.zzdr(this.f6271Df);
    }

    public ConnectionResult zzawn() {
        return this.f6272EJ;
    }

    public boolean zzawo() {
        return this.f6274zN;
    }

    public boolean zzawp() {
        return this.f6273EK;
    }
}
