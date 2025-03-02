package com.facebook;

import android.content.SharedPreferences;
import com.facebook.internal.C1071v;
import com.google.android.gms.common.Scopes;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.u */
/* loaded from: classes.dex */
final class C1161u {

    /* renamed from: a */
    private final SharedPreferences f5910a = C1074k.m6181f().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);

    C1161u() {
    }

    /* renamed from: a */
    Profile m6569a() {
        String string = this.f5910a.getString("com.facebook.ProfileManager.CachedProfile", null);
        if (string != null) {
            try {
                return new Profile(new JSONObject(string));
            } catch (JSONException e) {
            }
        }
        return null;
    }

    /* renamed from: a */
    void m6570a(Profile profile) {
        C1071v.m6125a(profile, Scopes.PROFILE);
        JSONObject m5620e = profile.m5620e();
        if (m5620e != null) {
            this.f5910a.edit().putString("com.facebook.ProfileManager.CachedProfile", m5620e.toString()).apply();
        }
    }

    /* renamed from: b */
    void m6571b() {
        this.f5910a.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
    }
}
