package com.facebook.internal;

import android.util.Log;
import com.facebook.C1074k;
import com.facebook.EnumC1160t;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.facebook.internal.o */
/* loaded from: classes.dex */
public class C1064o {

    /* renamed from: a */
    private static final HashMap<String, String> f5517a = new HashMap<>();

    /* renamed from: b */
    private final EnumC1160t f5518b;

    /* renamed from: c */
    private final String f5519c;

    /* renamed from: d */
    private StringBuilder f5520d;

    /* renamed from: e */
    private int f5521e = 3;

    /* renamed from: a */
    public static synchronized void m6005a(String str, String str2) {
        synchronized (C1064o.class) {
            f5517a.put(str, str2);
        }
    }

    /* renamed from: a */
    public static synchronized void m6004a(String str) {
        synchronized (C1064o.class) {
            if (!C1074k.m6173a(EnumC1160t.INCLUDE_ACCESS_TOKENS)) {
                m6005a(str, "ACCESS_TOKEN_REMOVED");
            }
        }
    }

    /* renamed from: a */
    public static void m6002a(EnumC1160t enumC1160t, String str, String str2) {
        m6000a(enumC1160t, 3, str, str2);
    }

    /* renamed from: a */
    public static void m6003a(EnumC1160t enumC1160t, String str, String str2, Object... objArr) {
        if (C1074k.m6173a(enumC1160t)) {
            m6000a(enumC1160t, 3, str, String.format(str2, objArr));
        }
    }

    /* renamed from: a */
    public static void m6001a(EnumC1160t enumC1160t, int i, String str, String str2, Object... objArr) {
        if (C1074k.m6173a(enumC1160t)) {
            m6000a(enumC1160t, i, str, String.format(str2, objArr));
        }
    }

    /* renamed from: a */
    public static void m6000a(EnumC1160t enumC1160t, int i, String str, String str2) {
        if (C1074k.m6173a(enumC1160t)) {
            String m6007d = m6007d(str2);
            if (!str.startsWith("FacebookSDK.")) {
                str = "FacebookSDK." + str;
            }
            Log.println(i, str, m6007d);
            if (enumC1160t == EnumC1160t.DEVELOPER_ERRORS) {
                new Exception().printStackTrace();
            }
        }
    }

    /* renamed from: d */
    private static synchronized String m6007d(String str) {
        synchronized (C1064o.class) {
            for (Map.Entry<String, String> entry : f5517a.entrySet()) {
                str = str.replace(entry.getKey(), entry.getValue());
            }
        }
        return str;
    }

    public C1064o(EnumC1160t enumC1160t, String str) {
        C1071v.m6126a(str, "tag");
        this.f5518b = enumC1160t;
        this.f5519c = "FacebookSDK." + str;
        this.f5520d = new StringBuilder();
    }

    /* renamed from: a */
    public void m6008a() {
        m6011b(this.f5520d.toString());
        this.f5520d = new StringBuilder();
    }

    /* renamed from: b */
    public void m6011b(String str) {
        m6000a(this.f5518b, this.f5521e, this.f5519c, str);
    }

    /* renamed from: c */
    public void m6012c(String str) {
        if (m6006b()) {
            this.f5520d.append(str);
        }
    }

    /* renamed from: a */
    public void m6010a(String str, Object... objArr) {
        if (m6006b()) {
            this.f5520d.append(String.format(str, objArr));
        }
    }

    /* renamed from: a */
    public void m6009a(String str, Object obj) {
        m6010a("  %s:\t%s\n", str, obj);
    }

    /* renamed from: b */
    private boolean m6006b() {
        return C1074k.m6173a(this.f5518b);
    }
}
