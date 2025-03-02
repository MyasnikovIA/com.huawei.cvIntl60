package com.facebook;

import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.internal.C1050a;
import com.facebook.internal.C1060k;
import com.facebook.internal.C1061l;
import com.facebook.internal.C1070u;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ab */
/* loaded from: classes.dex */
final class C1040ab {

    /* renamed from: a */
    private static final String f5370a = C1040ab.class.getName();

    /* renamed from: b */
    private static AtomicBoolean f5371b = new AtomicBoolean(false);

    /* renamed from: c */
    private static a f5372c = new a(true, "com.facebook.sdk.AutoLogAppEventsEnabled", "com.facebook.sdk.AutoLogAppEventsEnabled");

    /* renamed from: d */
    private static a f5373d = new a(true, "com.facebook.sdk.AdvertiserIDCollectionEnabled", "com.facebook.sdk.AdvertiserIDCollectionEnabled");

    /* renamed from: e */
    private static a f5374e = new a(false, "auto_event_setup_enabled", null);

    /* renamed from: f */
    private static SharedPreferences f5375f;

    /* renamed from: g */
    private static SharedPreferences.Editor f5376g;

    C1040ab() {
    }

    /* renamed from: a */
    public static void m5876a() {
        if (C1074k.m6172a() && f5371b.compareAndSet(false, true)) {
            f5375f = C1074k.m6181f().getSharedPreferences("com.facebook.sdk.USER_SETTINGS", 0);
            f5376g = f5375f.edit();
            m5878b(f5372c);
            m5878b(f5373d);
            m5887g();
        }
    }

    /* renamed from: b */
    private static void m5878b(a aVar) {
        if (aVar == f5374e) {
            m5887g();
            return;
        }
        if (aVar.f5380c == null) {
            m5882d(aVar);
            if (aVar.f5380c == null && aVar.f5379b != null) {
                m5885e(aVar);
                return;
            }
            return;
        }
        m5880c(aVar);
    }

    /* renamed from: g */
    private static void m5887g() {
        m5882d(f5374e);
        long currentTimeMillis = System.currentTimeMillis();
        if (f5374e.f5380c == null || currentTimeMillis - f5374e.f5382e >= 604800000) {
            f5374e.f5380c = null;
            f5374e.f5382e = 0L;
            C1074k.m6179d().execute(new Runnable() { // from class: com.facebook.ab.1

                /* renamed from: a */
                final /* synthetic */ long f5377a;

                AnonymousClass1(long currentTimeMillis2) {
                    currentTimeMillis = currentTimeMillis2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    C1060k m5980a;
                    if (C1040ab.f5373d.m5889a() && (m5980a = C1061l.m5980a(C1074k.m6185j(), false)) != null && m5980a.m5971h()) {
                        C1050a m5919a = C1050a.m5919a(C1074k.m6181f());
                        if (((m5919a == null || m5919a.m5926b() == null) ? null : m5919a.m5926b()) != null) {
                            Bundle bundle = new Bundle();
                            bundle.putString("advertiser_id", m5919a.m5926b());
                            bundle.putString("fields", "auto_event_setup_enabled");
                            GraphRequest m5537a = GraphRequest.m5537a((AccessToken) null, C1074k.m6185j(), (GraphRequest.InterfaceC0995b) null);
                            m5537a.m5582a(true);
                            m5537a.m5577a(bundle);
                            JSONObject m6420b = m5537a.m5590i().m6420b();
                            if (m6420b != null) {
                                C1040ab.f5374e.f5380c = Boolean.valueOf(m6420b.optBoolean("auto_event_setup_enabled", false));
                                C1040ab.f5374e.f5382e = currentTimeMillis;
                                C1040ab.m5880c(C1040ab.f5374e);
                            }
                        }
                    }
                }
            });
        }
    }

    /* renamed from: com.facebook.ab$1 */
    static class AnonymousClass1 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ long f5377a;

        AnonymousClass1(long currentTimeMillis2) {
            currentTimeMillis = currentTimeMillis2;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1060k m5980a;
            if (C1040ab.f5373d.m5889a() && (m5980a = C1061l.m5980a(C1074k.m6185j(), false)) != null && m5980a.m5971h()) {
                C1050a m5919a = C1050a.m5919a(C1074k.m6181f());
                if (((m5919a == null || m5919a.m5926b() == null) ? null : m5919a.m5926b()) != null) {
                    Bundle bundle = new Bundle();
                    bundle.putString("advertiser_id", m5919a.m5926b());
                    bundle.putString("fields", "auto_event_setup_enabled");
                    GraphRequest m5537a = GraphRequest.m5537a((AccessToken) null, C1074k.m6185j(), (GraphRequest.InterfaceC0995b) null);
                    m5537a.m5582a(true);
                    m5537a.m5577a(bundle);
                    JSONObject m6420b = m5537a.m5590i().m6420b();
                    if (m6420b != null) {
                        C1040ab.f5374e.f5380c = Boolean.valueOf(m6420b.optBoolean("auto_event_setup_enabled", false));
                        C1040ab.f5374e.f5382e = currentTimeMillis;
                        C1040ab.m5880c(C1040ab.f5374e);
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public static void m5880c(a aVar) {
        m5888h();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("value", aVar.f5380c);
            jSONObject.put("last_timestamp", aVar.f5382e);
            f5376g.putString(aVar.f5378a, jSONObject.toString()).commit();
        } catch (JSONException e) {
            C1070u.m6088a(f5370a, (Exception) e);
        }
    }

    /* renamed from: d */
    private static void m5882d(a aVar) {
        m5888h();
        try {
            String string = f5375f.getString(aVar.f5378a, "");
            if (!string.isEmpty()) {
                JSONObject jSONObject = new JSONObject(string);
                aVar.f5380c = Boolean.valueOf(jSONObject.getBoolean("value"));
                aVar.f5382e = jSONObject.getLong("last_timestamp");
            }
        } catch (JSONException e) {
            C1070u.m6088a(f5370a, (Exception) e);
        }
    }

    /* renamed from: e */
    private static void m5885e(a aVar) {
        m5888h();
        try {
            ApplicationInfo applicationInfo = C1074k.m6181f().getPackageManager().getApplicationInfo(C1074k.m6181f().getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey(aVar.f5379b)) {
                aVar.f5380c = Boolean.valueOf(applicationInfo.metaData.getBoolean(aVar.f5379b, aVar.f5381d));
            }
        } catch (PackageManager.NameNotFoundException e) {
            C1070u.m6088a(f5370a, (Exception) e);
        }
    }

    /* renamed from: h */
    private static void m5888h() {
        if (!f5371b.get()) {
            throw new C1075l("The UserSettingManager has not been initialized successfully");
        }
    }

    /* renamed from: b */
    public static boolean m5879b() {
        m5876a();
        return f5372c.m5889a();
    }

    /* renamed from: c */
    public static boolean m5881c() {
        m5876a();
        return f5373d.m5889a();
    }

    /* renamed from: d */
    public static boolean m5883d() {
        m5876a();
        return f5374e.m5889a();
    }

    /* renamed from: com.facebook.ab$a */
    private static class a {

        /* renamed from: a */
        String f5378a;

        /* renamed from: b */
        String f5379b;

        /* renamed from: c */
        Boolean f5380c;

        /* renamed from: d */
        boolean f5381d;

        /* renamed from: e */
        long f5382e;

        a(boolean z, String str, String str2) {
            this.f5381d = z;
            this.f5378a = str;
            this.f5379b = str2;
        }

        /* renamed from: a */
        boolean m5889a() {
            return this.f5380c == null ? this.f5381d : this.f5380c.booleanValue();
        }
    }
}
