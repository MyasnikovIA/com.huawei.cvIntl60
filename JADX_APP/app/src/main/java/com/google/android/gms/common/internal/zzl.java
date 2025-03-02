package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;

/* loaded from: classes.dex */
public abstract class zzl {

    /* renamed from: El */
    private static final Object f6347El = new Object();

    /* renamed from: Em */
    private static zzl f6348Em;

    public static zzl zzcc(Context context) {
        synchronized (f6347El) {
            if (f6348Em == null) {
                f6348Em = new zzm(context.getApplicationContext());
            }
        }
        return f6348Em;
    }

    public abstract boolean zza(ComponentName componentName, ServiceConnection serviceConnection, String str);

    public abstract boolean zza(String str, String str2, ServiceConnection serviceConnection, String str3);

    public abstract void zzb(ComponentName componentName, ServiceConnection serviceConnection, String str);

    public abstract void zzb(String str, String str2, ServiceConnection serviceConnection, String str3);
}
