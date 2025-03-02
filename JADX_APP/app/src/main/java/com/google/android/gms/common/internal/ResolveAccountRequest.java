package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: classes.dex */
public class ResolveAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountRequest> CREATOR = new zzab();

    /* renamed from: EH */
    private final int f6268EH;

    /* renamed from: EI */
    private final GoogleSignInAccount f6269EI;

    /* renamed from: gj */
    private final Account f6270gj;
    final int mVersionCode;

    ResolveAccountRequest(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.mVersionCode = i;
        this.f6270gj = account;
        this.f6268EH = i2;
        this.f6269EI = googleSignInAccount;
    }

    public ResolveAccountRequest(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }

    public Account getAccount() {
        return this.f6270gj;
    }

    public int getSessionId() {
        return this.f6268EH;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzab.zza(this, parcel, i);
    }

    @Nullable
    public GoogleSignInAccount zzawl() {
        return this.f6269EI;
    }
}
