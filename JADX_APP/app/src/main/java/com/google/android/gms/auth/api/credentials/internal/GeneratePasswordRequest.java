package com.google.android.gms.auth.api.credentials.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: classes.dex */
public final class GeneratePasswordRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GeneratePasswordRequest> CREATOR = new zzi();

    /* renamed from: ih */
    private final PasswordSpecification f6028ih;
    final int mVersionCode;

    GeneratePasswordRequest(int i, PasswordSpecification passwordSpecification) {
        this.mVersionCode = i;
        this.f6028ih = passwordSpecification;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }

    public PasswordSpecification zzaid() {
        return this.f6028ih;
    }
}
