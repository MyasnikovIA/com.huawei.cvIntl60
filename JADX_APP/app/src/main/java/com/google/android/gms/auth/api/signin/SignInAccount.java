package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* loaded from: classes.dex */
public class SignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new zzc();

    /* renamed from: ck */
    @Deprecated
    String f6080ck;

    /* renamed from: jg */
    @Deprecated
    String f6081jg;

    /* renamed from: jy */
    private GoogleSignInAccount f6082jy;
    final int versionCode;

    SignInAccount(int i, String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.versionCode = i;
        this.f6082jy = googleSignInAccount;
        this.f6081jg = zzaa.zzh(str, "8.3 and 8.4 SDKs require non-null email");
        this.f6080ck = zzaa.zzh(str2, "8.3 and 8.4 SDKs require non-null userId");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }

    public GoogleSignInAccount zzaiz() {
        return this.f6082jy;
    }
}
