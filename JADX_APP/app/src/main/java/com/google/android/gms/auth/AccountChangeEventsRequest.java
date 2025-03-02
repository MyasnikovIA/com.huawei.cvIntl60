package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: classes.dex */
public class AccountChangeEventsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new zzb();

    /* renamed from: gj */
    Account f5953gj;

    /* renamed from: hA */
    int f5954hA;

    /* renamed from: hy */
    @Deprecated
    String f5955hy;
    final int mVersion;

    public AccountChangeEventsRequest() {
        this.mVersion = 1;
    }

    AccountChangeEventsRequest(int i, int i2, String str, Account account) {
        this.mVersion = i;
        this.f5954hA = i2;
        this.f5955hy = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.f5953gj = account;
        } else {
            this.f5953gj = new Account(str, "com.google");
        }
    }

    public Account getAccount() {
        return this.f5953gj;
    }

    @Deprecated
    public String getAccountName() {
        return this.f5955hy;
    }

    public int getEventIndex() {
        return this.f5954hA;
    }

    public AccountChangeEventsRequest setAccount(Account account) {
        this.f5953gj = account;
        return this;
    }

    @Deprecated
    public AccountChangeEventsRequest setAccountName(String str) {
        this.f5955hy = str;
        return this;
    }

    public AccountChangeEventsRequest setEventIndex(int i) {
        this.f5954hA = i;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
