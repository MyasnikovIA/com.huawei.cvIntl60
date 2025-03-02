package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.internal.zzsz;

/* loaded from: classes.dex */
public class zzy {

    /* renamed from: EE */
    private static String f6369EE;

    /* renamed from: EF */
    private static int f6370EF;
    private static Object zzaox = new Object();
    private static boolean zzchk;

    public static String zzcd(Context context) {
        zzcf(context);
        return f6369EE;
    }

    public static int zzce(Context context) {
        zzcf(context);
        return f6370EF;
    }

    private static void zzcf(Context context) {
        Bundle bundle;
        synchronized (zzaox) {
            if (zzchk) {
                return;
            }
            zzchk = true;
            try {
                bundle = zzsz.zzco(context).getApplicationInfo(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf("MetadataValueReader", "This should never happen.", e);
            }
            if (bundle == null) {
                return;
            }
            f6369EE = bundle.getString("com.google.app.id");
            f6370EF = bundle.getInt("com.google.android.gms.version");
        }
    }
}
