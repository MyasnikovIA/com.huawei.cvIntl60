package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.internal.zzsz;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class zzy {

    /* renamed from: GH */
    private static final Method f6463GH = zzaza();

    /* renamed from: GI */
    private static final Method f6464GI = zzazb();

    /* renamed from: GJ */
    private static final Method f6465GJ = zzazc();

    /* renamed from: GK */
    private static final Method f6466GK = zzazd();

    /* renamed from: GL */
    private static final Method f6467GL = zzaze();

    public static int zza(WorkSource workSource) {
        if (f6465GJ != null) {
            try {
                return ((Integer) f6465GJ.invoke(workSource, new Object[0])).intValue();
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        }
        return 0;
    }

    public static String zza(WorkSource workSource, int i) {
        if (f6467GL != null) {
            try {
                return (String) f6467GL.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        }
        return null;
    }

    public static void zza(WorkSource workSource, int i, String str) {
        if (f6464GI != null) {
            if (str == null) {
                str = "";
            }
            try {
                f6464GI.invoke(workSource, Integer.valueOf(i), str);
                return;
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return;
            }
        }
        if (f6463GH != null) {
            try {
                f6463GH.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
        }
    }

    private static Method zzaza() {
        try {
            return WorkSource.class.getMethod("add", Integer.TYPE);
        } catch (Exception e) {
            return null;
        }
    }

    private static Method zzazb() {
        if (!zzs.zzayt()) {
            return null;
        }
        try {
            return WorkSource.class.getMethod("add", Integer.TYPE, String.class);
        } catch (Exception e) {
            return null;
        }
    }

    private static Method zzazc() {
        try {
            return WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception e) {
            return null;
        }
    }

    private static Method zzazd() {
        try {
            return WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception e) {
            return null;
        }
    }

    private static Method zzaze() {
        if (!zzs.zzayt()) {
            return null;
        }
        try {
            return WorkSource.class.getMethod("getName", Integer.TYPE);
        } catch (Exception e) {
            return null;
        }
    }

    public static List<String> zzb(WorkSource workSource) {
        int zza = workSource == null ? 0 : zza(workSource);
        if (zza == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < zza; i++) {
            String zza2 = zza(workSource, i);
            if (!zzv.zzij(zza2)) {
                arrayList.add(zza2);
            }
        }
        return arrayList;
    }

    public static boolean zzcm(Context context) {
        return (context == null || context.getPackageManager() == null || zzsz.zzco(context).checkPermission("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    public static WorkSource zzf(int i, String str) {
        WorkSource workSource = new WorkSource();
        zza(workSource, i, str);
        return workSource;
    }

    public static WorkSource zzy(Context context, String str) {
        if (context == null || context.getPackageManager() == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = zzsz.zzco(context).getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                return zzf(applicationInfo.uid, str);
            }
            String valueOf = String.valueOf(str);
            Log.e("WorkSourceUtil", valueOf.length() != 0 ? "Could not get applicationInfo from package: ".concat(valueOf) : new String("Could not get applicationInfo from package: "));
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("WorkSourceUtil", valueOf2.length() != 0 ? "Could not find package: ".concat(valueOf2) : new String("Could not find package: "));
            return null;
        }
    }
}
