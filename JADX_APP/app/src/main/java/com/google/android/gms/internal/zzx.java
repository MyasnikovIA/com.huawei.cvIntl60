package com.google.android.gms.internal;

import com.google.android.gms.internal.zzb;
import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;

/* loaded from: classes.dex */
public class zzx {
    public static String zza(Map<String, String> map) {
        return zzb(map, "ISO-8859-1");
    }

    public static zzb.zza zzb(zzi zziVar) {
        boolean z;
        long j;
        long j2;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = zziVar.zzz;
        long j3 = 0;
        long j4 = 0;
        boolean z2 = false;
        String str = map.get("Date");
        long zzg = str != null ? zzg(str) : 0L;
        String str2 = map.get("Cache-Control");
        if (str2 != null) {
            String[] split = str2.split(",");
            int i = 0;
            z = false;
            while (i < split.length) {
                String trim = split[i].trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        j3 = Long.parseLong(trim.substring(8));
                    } catch (Exception e) {
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    try {
                        j4 = Long.parseLong(trim.substring(23));
                    } catch (Exception e2) {
                    }
                } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                    z = true;
                }
                i++;
                j4 = j4;
            }
            z2 = true;
        } else {
            z = false;
        }
        String str3 = map.get("Expires");
        long zzg2 = str3 != null ? zzg(str3) : 0L;
        String str4 = map.get("Last-Modified");
        long zzg3 = str4 != null ? zzg(str4) : 0L;
        String str5 = map.get("ETag");
        if (z2) {
            j2 = currentTimeMillis + (1000 * j3);
            j = z ? j2 : (1000 * j4) + j2;
        } else if (zzg <= 0 || zzg2 < zzg) {
            j = 0;
            j2 = 0;
        } else {
            long j5 = currentTimeMillis + (zzg2 - zzg);
            j = j5;
            j2 = j5;
        }
        zzb.zza zzaVar = new zzb.zza();
        zzaVar.data = zziVar.data;
        zzaVar.zza = str5;
        zzaVar.zze = j2;
        zzaVar.zzd = j;
        zzaVar.zzb = zzg;
        zzaVar.zzc = zzg3;
        zzaVar.zzf = map;
        return zzaVar;
    }

    public static String zzb(Map<String, String> map, String str) {
        String str2 = map.get("Content-Type");
        if (str2 == null) {
            return str;
        }
        String[] split = str2.split(";");
        for (int i = 1; i < split.length; i++) {
            String[] split2 = split[i].trim().split("=");
            if (split2.length == 2 && split2[0].equals("charset")) {
                return split2[1];
            }
        }
        return str;
    }

    public static long zzg(String str) {
        try {
            return DateUtils.parseDate(str).getTime();
        } catch (DateParseException e) {
            return 0L;
        }
    }
}
