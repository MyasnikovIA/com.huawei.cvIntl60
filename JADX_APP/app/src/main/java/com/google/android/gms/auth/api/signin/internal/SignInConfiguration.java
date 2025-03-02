package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* loaded from: classes.dex */
public final class SignInConfiguration extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new zzj();

    /* renamed from: jK */
    private final String f6083jK;

    /* renamed from: jL */
    private GoogleSignInOptions f6084jL;
    final int versionCode;

    SignInConfiguration(int i, String str, GoogleSignInOptions googleSignInOptions) {
        this.versionCode = i;
        this.f6083jK = zzaa.zzib(str);
        this.f6084jL = googleSignInOptions;
    }

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        this(3, str, googleSignInOptions);
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj != null) {
            try {
                SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
                if (this.f6083jK.equals(signInConfiguration.zzajj()) && (this.f6084jL != null ? this.f6084jL.equals(signInConfiguration.zzajk()) : signInConfiguration.zzajk() == null)) {
                    z = true;
                }
            } catch (ClassCastException e) {
            }
        }
        return z;
    }

    public int hashCode() {
        return new zze().zzq(this.f6083jK).zzq(this.f6084jL).zzajf();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }

    public String zzajj() {
        return this.f6083jK;
    }

    public GoogleSignInOptions zzajk() {
        return this.f6084jL;
    }
}
