package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* loaded from: classes.dex */
public final class IdToken extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<IdToken> CREATOR = new zze();

    /* renamed from: iF */
    @NonNull
    private final String f6012iF;

    /* renamed from: ip */
    @NonNull
    private final String f6013ip;
    final int mVersionCode;

    IdToken(int i, @NonNull String str, @NonNull String str2) {
        com.google.android.gms.auth.api.credentials.internal.zzb.zzfx(str);
        zzaa.zzb(!TextUtils.isEmpty(str2), "id token string cannot be null or empty");
        this.mVersionCode = i;
        this.f6013ip = str;
        this.f6012iF = str2;
    }

    public IdToken(@NonNull String str, @NonNull String str2) {
        this(1, str, str2);
    }

    @NonNull
    public String getAccountType() {
        return this.f6013ip;
    }

    @NonNull
    public String getIdToken() {
        return this.f6012iF;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }
}
