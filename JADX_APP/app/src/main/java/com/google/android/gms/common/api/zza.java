package com.google.android.gms.common.api;

import android.support.annotation.NonNull;

/* loaded from: classes.dex */
public class zza extends Exception {

    /* renamed from: hv */
    protected final Status f6180hv;

    public zza(@NonNull Status status) {
        super(status.getStatusMessage());
        this.f6180hv = status;
    }
}
