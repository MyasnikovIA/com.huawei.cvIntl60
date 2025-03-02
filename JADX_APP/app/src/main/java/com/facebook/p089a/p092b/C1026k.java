package com.facebook.p089a.p092b;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.facebook.C1074k;

/* renamed from: com.facebook.a.b.k */
/* loaded from: classes.dex */
class C1026k {

    /* renamed from: a */
    private String f5282a;

    /* renamed from: b */
    private boolean f5283b;

    private C1026k(String str, boolean z) {
        this.f5282a = str;
        this.f5283b = z;
    }

    /* renamed from: a */
    public static C1026k m5801a() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(C1074k.m6181f());
        if (defaultSharedPreferences.contains("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage")) {
            return new C1026k(defaultSharedPreferences.getString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", null), defaultSharedPreferences.getBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", false));
        }
        return null;
    }

    /* renamed from: b */
    public static void m5802b() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C1074k.m6181f()).edit();
        edit.remove("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage");
        edit.remove("com.facebook.appevents.SourceApplicationInfo.openedByApplink");
        edit.apply();
    }

    public String toString() {
        String str = "Unclassified";
        if (this.f5283b) {
            str = "Applink";
        }
        if (this.f5282a != null) {
            return str + "(" + this.f5282a + ")";
        }
        return str;
    }

    /* renamed from: c */
    public void m5803c() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C1074k.m6181f()).edit();
        edit.putString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", this.f5282a);
        edit.putBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", this.f5283b);
        edit.apply();
    }
}
