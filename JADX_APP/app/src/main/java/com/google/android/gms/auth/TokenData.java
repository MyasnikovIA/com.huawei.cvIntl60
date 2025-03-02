package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzz;
import java.util.List;

/* loaded from: classes.dex */
public class TokenData extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new zzf();

    /* renamed from: hN */
    private final String f5957hN;

    /* renamed from: hO */
    private final Long f5958hO;

    /* renamed from: hP */
    private final boolean f5959hP;

    /* renamed from: hQ */
    private final boolean f5960hQ;

    /* renamed from: hR */
    private final List<String> f5961hR;
    final int mVersionCode;

    TokenData(int i, String str, Long l, boolean z, boolean z2, List<String> list) {
        this.mVersionCode = i;
        this.f5957hN = zzaa.zzib(str);
        this.f5958hO = l;
        this.f5959hP = z;
        this.f5960hQ = z2;
        this.f5961hR = list;
    }

    @Nullable
    public static TokenData zzd(Bundle bundle, String str) {
        bundle.setClassLoader(TokenData.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(TokenData.class.getClassLoader());
        return (TokenData) bundle2.getParcelable("TokenData");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.f5957hN, tokenData.f5957hN) && zzz.equal(this.f5958hO, tokenData.f5958hO) && this.f5959hP == tokenData.f5959hP && this.f5960hQ == tokenData.f5960hQ && zzz.equal(this.f5961hR, tokenData.f5961hR);
    }

    public String getToken() {
        return this.f5957hN;
    }

    public int hashCode() {
        return zzz.hashCode(this.f5957hN, this.f5958hO, Boolean.valueOf(this.f5959hP), Boolean.valueOf(this.f5960hQ), this.f5961hR);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }

    @Nullable
    public Long zzahy() {
        return this.f5958hO;
    }

    public boolean zzahz() {
        return this.f5959hP;
    }

    public boolean zzaia() {
        return this.f5960hQ;
    }

    @Nullable
    public List<String> zzaib() {
        return this.f5961hR;
    }
}
