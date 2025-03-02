package com.google.android.gms.auth.api.credentials.internal;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class zzd implements CredentialRequestResult {

    /* renamed from: hv */
    private final Status f6030hv;

    /* renamed from: iP */
    private final Credential f6031iP;

    public zzd(Status status, Credential credential) {
        this.f6030hv = status;
        this.f6031iP = credential;
    }

    public static zzd zzi(Status status) {
        return new zzd(status, null);
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialRequestResult
    public Credential getCredential() {
        return this.f6031iP;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.f6030hv;
    }
}
