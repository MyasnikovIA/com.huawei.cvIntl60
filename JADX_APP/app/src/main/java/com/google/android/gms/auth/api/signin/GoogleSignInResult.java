package com.google.android.gms.auth.api.signin;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public class GoogleSignInResult implements Result {

    /* renamed from: hv */
    private Status f6078hv;

    /* renamed from: jx */
    private GoogleSignInAccount f6079jx;

    public GoogleSignInResult(@Nullable GoogleSignInAccount googleSignInAccount, @NonNull Status status) {
        this.f6079jx = googleSignInAccount;
        this.f6078hv = status;
    }

    @Nullable
    public GoogleSignInAccount getSignInAccount() {
        return this.f6079jx;
    }

    @Override // com.google.android.gms.common.api.Result
    @NonNull
    public Status getStatus() {
        return this.f6078hv;
    }

    public boolean isSuccess() {
        return this.f6078hv.isSuccess();
    }
}
