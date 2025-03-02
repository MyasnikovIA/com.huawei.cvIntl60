package com.facebook.p089a.p092b;

import android.content.Context;
import android.support.v4.app.NotificationCompat;
import com.facebook.EnumC1160t;
import com.facebook.internal.C1050a;
import com.facebook.internal.C1064o;
import com.facebook.internal.C1070u;
import com.facebook.p089a.C1032g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: com.facebook.a.b.c */
/* loaded from: classes.dex */
public class C1018c {

    /* renamed from: a */
    private static final Map<a, String> f5247a = new HashMap<a, String>() { // from class: com.facebook.a.b.c.1
        AnonymousClass1() {
            put(a.MOBILE_INSTALL_EVENT, "MOBILE_APP_INSTALL");
            put(a.CUSTOM_APP_EVENTS, "CUSTOM_APP_EVENTS");
        }
    };

    /* renamed from: com.facebook.a.b.c$a */
    public enum a {
        MOBILE_INSTALL_EVENT,
        CUSTOM_APP_EVENTS
    }

    /* renamed from: com.facebook.a.b.c$1 */
    static class AnonymousClass1 extends HashMap<a, String> {
        AnonymousClass1() {
            put(a.MOBILE_INSTALL_EVENT, "MOBILE_APP_INSTALL");
            put(a.CUSTOM_APP_EVENTS, "CUSTOM_APP_EVENTS");
        }
    }

    /* renamed from: a */
    public static JSONObject m5748a(a aVar, C1050a c1050a, String str, boolean z, Context context) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, f5247a.get(aVar));
        String m5849e = C1032g.m5849e();
        if (m5849e != null) {
            jSONObject.put("app_user_id", m5849e);
        }
        String m5850f = C1032g.m5850f();
        if (!m5850f.isEmpty()) {
            jSONObject.put("ud", m5850f);
        }
        C1070u.m6093a(jSONObject, c1050a, str, z);
        try {
            C1070u.m6092a(jSONObject, context);
        } catch (Exception e) {
            C1064o.m6003a(EnumC1160t.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", e.toString());
        }
        jSONObject.put("application_package_name", context.getPackageName());
        return jSONObject;
    }
}
