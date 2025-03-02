package com.facebook.p089a.p092b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.facebook.C1074k;
import com.facebook.internal.C1070u;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.facebook.a.b.b */
/* loaded from: classes.dex */
public class C1017b {
    /* renamed from: a */
    public static void m5744a() {
    }

    /* renamed from: b */
    public static void m5745b() {
    }

    /* renamed from: a */
    public static double m5742a(String str) {
        try {
            Matcher matcher = Pattern.compile("[-+]*\\d+([\\,\\.]\\d+)*([\\.\\,]\\d+)?", 8).matcher(str);
            if (!matcher.find()) {
                return 0.0d;
            }
            return NumberFormat.getNumberInstance(C1070u.m6080a()).parse(matcher.group(0)).doubleValue();
        } catch (ParseException e) {
            return 0.0d;
        }
    }

    /* renamed from: a */
    public static String m5743a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(b)));
        }
        return stringBuffer.toString();
    }

    /* renamed from: c */
    public static boolean m5746c() {
        return Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.startsWith("unknown") || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion") || (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT);
    }

    /* renamed from: d */
    public static String m5747d() {
        Context m6181f = C1074k.m6181f();
        try {
            return m6181f.getPackageManager().getPackageInfo(m6181f.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }
}
