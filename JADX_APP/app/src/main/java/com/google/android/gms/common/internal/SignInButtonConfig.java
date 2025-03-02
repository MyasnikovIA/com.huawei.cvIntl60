package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: classes.dex */
public class SignInButtonConfig extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInButtonConfig> CREATOR = new zzad();

    /* renamed from: Dg */
    @Deprecated
    private final Scope[] f6275Dg;

    /* renamed from: EL */
    private final int f6276EL;

    /* renamed from: EM */
    private final int f6277EM;
    final int mVersionCode;

    SignInButtonConfig(int i, int i2, int i3, Scope[] scopeArr) {
        this.mVersionCode = i;
        this.f6276EL = i2;
        this.f6277EM = i3;
        this.f6275Dg = scopeArr;
    }

    public SignInButtonConfig(int i, int i2, Scope[] scopeArr) {
        this(1, i, i2, null);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzad.zza(this, parcel, i);
    }

    public int zzawq() {
        return this.f6276EL;
    }

    public int zzawr() {
        return this.f6277EM;
    }

    @Deprecated
    public Scope[] zzaws() {
        return this.f6275Dg;
    }
}
