package com.facebook.p089a;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import com.facebook.C1074k;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.a.m */
/* loaded from: classes.dex */
public class C1038m {

    /* renamed from: b */
    private static ConcurrentHashMap<String, String> f5357b;

    /* renamed from: c */
    private static SharedPreferences f5358c;

    /* renamed from: a */
    private static final String f5356a = C1038m.class.getSimpleName();

    /* renamed from: d */
    private static AtomicBoolean f5359d = new AtomicBoolean(false);

    /* renamed from: a */
    static void m5870a() {
        if (!f5359d.get()) {
            m5872c();
        }
    }

    /* renamed from: b */
    static String m5871b() {
        if (!f5359d.get()) {
            Log.w(f5356a, "initStore should have been called before calling setUserID");
            m5872c();
        }
        return m5868a(f5357b);
    }

    /* renamed from: c */
    private static synchronized void m5872c() {
        synchronized (C1038m.class) {
            if (!f5359d.get()) {
                f5358c = PreferenceManager.getDefaultSharedPreferences(C1074k.m6181f());
                f5357b = new ConcurrentHashMap<>(m5869a(f5358c.getString("com.facebook.appevents.UserDataStore.userData", "")));
                f5359d.set(true);
            }
        }
    }

    /* renamed from: a */
    private static String m5868a(Map<String, String> map) {
        if (map.isEmpty()) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                jSONObject.put(str, map.get(str));
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            return "";
        }
    }

    /* renamed from: a */
    private static Map<String, String> m5869a(String str) {
        if (str.isEmpty()) {
            return new HashMap();
        }
        try {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            return hashMap;
        } catch (JSONException e) {
            return new HashMap();
        }
    }
}
