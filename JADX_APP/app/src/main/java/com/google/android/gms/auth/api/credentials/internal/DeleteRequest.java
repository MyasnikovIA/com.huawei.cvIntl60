package com.google.android.gms.auth.api.credentials.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: classes.dex */
public final class DeleteRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeleteRequest> CREATOR = new zzh();

    /* renamed from: iP */
    private final Credential f6027iP;
    final int mVersionCode;

    DeleteRequest(int i, Credential credential) {
        this.mVersionCode = i;
        this.f6027iP = credential;
    }

    public DeleteRequest(Credential credential) {
        this(1, credential);
    }

    public Credential getCredential() {
        return this.f6027iP;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }
}
