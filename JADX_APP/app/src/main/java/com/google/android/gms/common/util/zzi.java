package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;

/* loaded from: classes.dex */
public final class zzi {

    /* renamed from: Gr */
    private static Boolean f6447Gr;

    /* renamed from: Gs */
    private static Boolean f6448Gs;

    /* renamed from: Gt */
    private static Boolean f6449Gt;

    /* renamed from: Gu */
    private static Boolean f6450Gu;

    public static boolean zzaym() {
        boolean z = com.google.android.gms.common.zze.f6478xb;
        return "user".equals(Build.TYPE);
    }

    public static boolean zzb(Resources resources) {
        if (resources == null) {
            return false;
        }
        if (f6447Gr == null) {
            f6447Gr = Boolean.valueOf((zzs.zzayn() && ((resources.getConfiguration().screenLayout & 15) > 3)) || zzc(resources));
        }
        return f6447Gr.booleanValue();
    }

    @TargetApi(13)
    private static boolean zzc(Resources resources) {
        if (f6448Gs == null) {
            Configuration configuration = resources.getConfiguration();
            f6448Gs = Boolean.valueOf(zzs.zzayp() && (configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600);
        }
        return f6448Gs.booleanValue();
    }

    @TargetApi(20)
    public static boolean zzci(Context context) {
        if (f6449Gt == null) {
            f6449Gt = Boolean.valueOf(zzs.zzayv() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return f6449Gt.booleanValue();
    }

    @TargetApi(21)
    public static boolean zzcj(Context context) {
        if (f6450Gu == null) {
            f6450Gu = Boolean.valueOf(zzs.zzayx() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f6450Gu.booleanValue();
    }
}
