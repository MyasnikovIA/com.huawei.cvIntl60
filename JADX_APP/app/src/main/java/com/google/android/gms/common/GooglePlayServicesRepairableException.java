package com.google.android.gms.common;

import android.content.Intent;

/* loaded from: classes.dex */
public class GooglePlayServicesRepairableException extends UserRecoverableException {

    /* renamed from: hM */
    private final int f6129hM;

    GooglePlayServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.f6129hM = i;
    }

    public int getConnectionStatusCode() {
        return this.f6129hM;
    }
}
