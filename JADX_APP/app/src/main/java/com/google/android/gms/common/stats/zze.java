package com.google.android.gms.common.stats;

import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import java.util.List;

/* loaded from: classes.dex */
public class zze {
    public static String zza(PowerManager.WakeLock wakeLock, String str) {
        String valueOf = String.valueOf(String.valueOf((Process.myPid() << 32) | System.identityHashCode(wakeLock)));
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        String valueOf2 = String.valueOf(str);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    static String zzih(String str) {
        if ("com.google.android.gms".equals(str)) {
            return null;
        }
        return str;
    }

    static List<String> zzz(List<String> list) {
        if (list != null && list.size() == 1 && "com.google.android.gms".equals(list.get(0))) {
            return null;
        }
        return list;
    }
}
