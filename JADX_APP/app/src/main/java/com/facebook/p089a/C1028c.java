package com.facebook.p089a;

import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.facebook.C1048h;
import com.facebook.EnumC1160t;
import com.facebook.internal.C1064o;
import com.facebook.internal.C1070u;
import com.facebook.p089a.p092b.C1017b;
import com.google.android.exoplayer.C1167C;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONObject;

/* renamed from: com.facebook.a.c */
/* loaded from: classes.dex */
class C1028c implements Serializable {

    /* renamed from: a */
    private static final HashSet<String> f5292a = new HashSet<>();
    private static final long serialVersionUID = 1;

    /* renamed from: b */
    private final JSONObject f5293b;

    /* renamed from: c */
    private final boolean f5294c;

    /* renamed from: d */
    private final boolean f5295d;

    /* renamed from: e */
    private final String f5296e;

    /* renamed from: f */
    private final String f5297f;

    /* synthetic */ C1028c(String str, boolean z, boolean z2, String str2, AnonymousClass1 anonymousClass1) {
        this(str, z, z2, str2);
    }

    public C1028c(String str, String str2, Double d, Bundle bundle, boolean z, boolean z2, @Nullable UUID uuid) {
        this.f5293b = m5804a(str, str2, d, bundle, z, z2, uuid);
        this.f5294c = z;
        this.f5295d = z2;
        this.f5296e = str2;
        this.f5297f = m5807e();
    }

    /* renamed from: a */
    public String m5808a() {
        return this.f5296e;
    }

    private C1028c(String str, boolean z, boolean z2, String str2) {
        this.f5293b = new JSONObject(str);
        this.f5294c = z;
        this.f5296e = this.f5293b.optString("_eventName");
        this.f5297f = str2;
        this.f5295d = z2;
    }

    /* renamed from: b */
    public boolean m5809b() {
        return this.f5294c;
    }

    /* renamed from: c */
    public JSONObject m5810c() {
        return this.f5293b;
    }

    /* renamed from: d */
    public boolean m5811d() {
        if (this.f5297f == null) {
            return true;
        }
        return m5807e().equals(this.f5297f);
    }

    /* renamed from: a */
    private static void m5805a(String str) {
        boolean contains;
        if (str == null || str.length() == 0 || str.length() > 40) {
            if (str == null) {
                str = "<None Provided>";
            }
            throw new C1048h(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", str, 40));
        }
        synchronized (f5292a) {
            contains = f5292a.contains(str);
        }
        if (!contains) {
            if (str.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$")) {
                synchronized (f5292a) {
                    f5292a.add(str);
                }
                return;
            }
            throw new C1048h(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", str));
        }
    }

    /* renamed from: a */
    private static JSONObject m5804a(String str, String str2, Double d, Bundle bundle, boolean z, boolean z2, @Nullable UUID uuid) {
        m5805a(str2);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("_eventName", str2);
        jSONObject.put("_eventName_md5", m5806b(str2));
        jSONObject.put("_logTime", System.currentTimeMillis() / 1000);
        jSONObject.put("_ui", str);
        if (uuid != null) {
            jSONObject.put("_session_id", uuid);
        }
        if (d != null) {
            jSONObject.put("_valueToSum", d.doubleValue());
        }
        if (z) {
            jSONObject.put("_implicitlyLogged", "1");
        }
        if (z2) {
            jSONObject.put("_inBackground", "1");
        }
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                m5805a(str3);
                Object obj = bundle.get(str3);
                if (!(obj instanceof String) && !(obj instanceof Number)) {
                    throw new C1048h(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", obj, str3));
                }
                jSONObject.put(str3, obj.toString());
            }
        }
        if (!z) {
            C1064o.m6003a(EnumC1160t.APP_EVENTS, "AppEvents", "Created app event '%s'", jSONObject.toString());
        }
        return jSONObject;
    }

    /* renamed from: com.facebook.a.c$a */
    static class a implements Serializable {
        private static final long serialVersionUID = -2488473066578201069L;

        /* renamed from: a */
        private final String f5298a;

        /* renamed from: b */
        private final boolean f5299b;

        /* renamed from: c */
        private final boolean f5300c;

        private Object readResolve() {
            return new C1028c(this.f5298a, this.f5299b, this.f5300c, null);
        }
    }

    /* renamed from: com.facebook.a.c$b */
    static class b implements Serializable {
        private static final long serialVersionUID = 20160803001L;

        /* renamed from: a */
        private final String f5301a;

        /* renamed from: b */
        private final boolean f5302b;

        /* renamed from: c */
        private final boolean f5303c;

        /* renamed from: d */
        private final String f5304d;

        /* synthetic */ b(String str, boolean z, boolean z2, String str2, AnonymousClass1 anonymousClass1) {
            this(str, z, z2, str2);
        }

        private b(String str, boolean z, boolean z2, String str2) {
            this.f5301a = str;
            this.f5302b = z;
            this.f5303c = z2;
            this.f5304d = str2;
        }

        private Object readResolve() {
            return new C1028c(this.f5301a, this.f5302b, this.f5303c, this.f5304d);
        }
    }

    private Object writeReplace() {
        return new b(this.f5293b.toString(), this.f5294c, this.f5295d, this.f5297f);
    }

    public String toString() {
        return String.format("\"%s\", implicit: %b, json: %s", this.f5293b.optString("_eventName"), Boolean.valueOf(this.f5294c), this.f5293b.toString());
    }

    /* renamed from: e */
    private String m5807e() {
        if (Build.VERSION.SDK_INT > 19) {
            return m5806b(this.f5293b.toString());
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> keys = this.f5293b.keys();
        while (keys.hasNext()) {
            arrayList.add(keys.next());
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            sb.append(str).append(" = ").append(this.f5293b.optString(str)).append('\n');
        }
        return m5806b(sb.toString());
    }

    /* renamed from: b */
    private static String m5806b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes(C1167C.UTF8_NAME);
            messageDigest.update(bytes, 0, bytes.length);
            return C1017b.m5743a(messageDigest.digest());
        } catch (UnsupportedEncodingException e) {
            C1070u.m6088a("Failed to generate checksum: ", (Exception) e);
            return "1";
        } catch (NoSuchAlgorithmException e2) {
            C1070u.m6088a("Failed to generate checksum: ", (Exception) e2);
            return "0";
        }
    }
}
