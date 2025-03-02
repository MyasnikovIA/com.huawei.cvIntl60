package com.facebook;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.C1071v;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.a */
/* loaded from: classes.dex */
class C1002a {

    /* renamed from: a */
    private final SharedPreferences f5122a;

    /* renamed from: b */
    private final a f5123b;

    /* renamed from: c */
    private C1113s f5124c;

    C1002a(SharedPreferences sharedPreferences, a aVar) {
        this.f5122a = sharedPreferences;
        this.f5123b = aVar;
    }

    public C1002a() {
        this(C1074k.m6181f().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0), new a());
    }

    /* renamed from: a */
    public AccessToken m5630a() {
        if (m5625c()) {
            return m5626d();
        }
        if (!m5627e()) {
            return null;
        }
        AccessToken m5628f = m5628f();
        if (m5628f != null) {
            m5631a(m5628f);
            m5629g().m6428b();
            return m5628f;
        }
        return m5628f;
    }

    /* renamed from: a */
    public void m5631a(AccessToken accessToken) {
        C1071v.m6125a(accessToken, "accessToken");
        try {
            this.f5122a.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", accessToken.m5516n().toString()).apply();
        } catch (JSONException e) {
        }
    }

    /* renamed from: b */
    public void m5632b() {
        this.f5122a.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
        if (m5627e()) {
            m5629g().m6428b();
        }
    }

    /* renamed from: c */
    private boolean m5625c() {
        return this.f5122a.contains("com.facebook.AccessTokenManager.CachedAccessToken");
    }

    /* renamed from: d */
    private AccessToken m5626d() {
        String string = this.f5122a.getString("com.facebook.AccessTokenManager.CachedAccessToken", null);
        if (string == null) {
            return null;
        }
        try {
            return AccessToken.m5498a(new JSONObject(string));
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: e */
    private boolean m5627e() {
        return C1074k.m6178c();
    }

    /* renamed from: f */
    private AccessToken m5628f() {
        Bundle m6427a = m5629g().m6427a();
        if (m6427a == null || !C1113s.m6423a(m6427a)) {
            return null;
        }
        return AccessToken.m5497a(m6427a);
    }

    /* renamed from: g */
    private C1113s m5629g() {
        if (this.f5124c == null) {
            synchronized (this) {
                if (this.f5124c == null) {
                    this.f5124c = this.f5123b.m5635a();
                }
            }
        }
        return this.f5124c;
    }

    /* renamed from: com.facebook.a$a */
    static class a {
        a() {
        }

        /* renamed from: a */
        public C1113s m5635a() {
            return new C1113s(C1074k.m6181f());
        }
    }
}
