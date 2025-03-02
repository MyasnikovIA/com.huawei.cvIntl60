package com.facebook.p089a.p090a.p091a;

import android.util.Log;

/* renamed from: com.facebook.a.a.a.e */
/* loaded from: classes.dex */
public class C1009e {

    /* renamed from: a */
    private static final String f5176a = C1009e.class.getCanonicalName();

    /* renamed from: b */
    private static Class<?> f5177b;

    /* renamed from: a */
    public static void m5657a(String str, String str2, String str3) {
        try {
            if (f5177b == null) {
                f5177b = Class.forName("com.unity3d.player.UnityPlayer");
            }
            f5177b.getMethod("UnitySendMessage", String.class, String.class, String.class).invoke(f5177b, str, str2, str3);
        } catch (Exception e) {
            Log.e(f5176a, "Failed to send message to Unity", e);
        }
    }

    /* renamed from: a */
    public static void m5655a() {
        m5657a("UnityFacebookSDKPlugin", "CaptureViewHierarchy", "");
    }

    /* renamed from: a */
    public static void m5656a(String str) {
        m5657a("UnityFacebookSDKPlugin", "OnReceiveMapping", str);
    }
}
