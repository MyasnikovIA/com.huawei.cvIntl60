package com.google.android.gms.auth;

import android.content.Intent;

/* loaded from: classes.dex */
public class GooglePlayServicesAvailabilityException extends UserRecoverableAuthException {

    /* renamed from: hM */
    private final int f5956hM;

    GooglePlayServicesAvailabilityException(int i, String str, Intent intent) {
        super(str, intent);
        this.f5956hM = i;
    }

    public int getConnectionStatusCode() {
        return this.f5956hM;
    }
}
