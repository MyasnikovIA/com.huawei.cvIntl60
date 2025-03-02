package com.facebook.internal;

import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* renamed from: com.facebook.internal.r */
/* loaded from: classes.dex */
class C1067r {

    /* renamed from: a */
    private static final ConcurrentHashMap<String, JSONObject> f5541a = new ConcurrentHashMap<>();

    /* renamed from: a */
    public static JSONObject m6055a(String str) {
        return f5541a.get(str);
    }

    /* renamed from: a */
    public static void m6056a(String str, JSONObject jSONObject) {
        f5541a.put(str, jSONObject);
    }
}
