package com.google.android.gms.internal;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;

/* loaded from: classes.dex */
public class zzrn {

    /* renamed from: Be */
    private final Object f6811Be;

    public zzrn(Activity activity) {
        com.google.android.gms.common.internal.zzaa.zzb(activity, "Activity must not be null");
        com.google.android.gms.common.internal.zzaa.zzb(com.google.android.gms.common.util.zzs.zzayn() || (activity instanceof FragmentActivity), "This Activity is not supported before platform version 11 (3.0 Honeycomb). Please use FragmentActivity instead.");
        this.f6811Be = activity;
    }

    public boolean zzatv() {
        return this.f6811Be instanceof FragmentActivity;
    }

    public Activity zzatw() {
        return (Activity) this.f6811Be;
    }

    public FragmentActivity zzatx() {
        return (FragmentActivity) this.f6811Be;
    }
}
