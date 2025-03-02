package com.google.android.gms.internal;

import android.content.Context;

/* loaded from: classes.dex */
public class zzsz {

    /* renamed from: GQ */
    private static zzsz f6894GQ = new zzsz();

    /* renamed from: GP */
    private zzsy f6895GP = null;

    public static zzsy zzco(Context context) {
        return f6894GQ.zzcn(context);
    }

    public synchronized zzsy zzcn(Context context) {
        if (this.f6895GP == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.f6895GP = new zzsy(context);
        }
        return this.f6895GP;
    }
}
