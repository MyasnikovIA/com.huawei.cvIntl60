package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: classes.dex */
public class RecordConsentRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RecordConsentRequest> CREATOR = new zzf();
    private final Scope[] aDu;

    /* renamed from: gj */
    private final Account f6945gj;

    /* renamed from: ju */
    private final String f6946ju;
    final int mVersionCode;

    RecordConsentRequest(int i, Account account, Scope[] scopeArr, String str) {
        this.mVersionCode = i;
        this.f6945gj = account;
        this.aDu = scopeArr;
        this.f6946ju = str;
    }

    public Account getAccount() {
        return this.f6945gj;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }

    public String zzaix() {
        return this.f6946ju;
    }

    public Scope[] zzcdk() {
        return this.aDu;
    }
}
