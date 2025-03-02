package com.facebook.internal;

import com.facebook.FacebookRequestError;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.facebook.internal.g */
/* loaded from: classes.dex */
public final class C1056g {

    /* renamed from: g */
    private static C1056g f5458g;

    /* renamed from: a */
    private final Map<Integer, Set<Integer>> f5459a;

    /* renamed from: b */
    private final Map<Integer, Set<Integer>> f5460b;

    /* renamed from: c */
    private final Map<Integer, Set<Integer>> f5461c;

    /* renamed from: d */
    private final String f5462d;

    /* renamed from: e */
    private final String f5463e;

    /* renamed from: f */
    private final String f5464f;

    C1056g(Map<Integer, Set<Integer>> map, Map<Integer, Set<Integer>> map2, Map<Integer, Set<Integer>> map3, String str, String str2, String str3) {
        this.f5459a = map;
        this.f5460b = map2;
        this.f5461c = map3;
        this.f5462d = str;
        this.f5463e = str2;
        this.f5464f = str3;
    }

    /* renamed from: a */
    public String m5955a(FacebookRequestError.EnumC0987a enumC0987a) {
        switch (enumC0987a) {
            case OTHER:
                return this.f5462d;
            case LOGIN_RECOVERABLE:
                return this.f5464f;
            case TRANSIENT:
                return this.f5463e;
            default:
                return null;
        }
    }

    /* renamed from: a */
    public FacebookRequestError.EnumC0987a m5954a(int i, int i2, boolean z) {
        Set<Integer> set;
        Set<Integer> set2;
        Set<Integer> set3;
        if (z) {
            return FacebookRequestError.EnumC0987a.TRANSIENT;
        }
        if (this.f5459a != null && this.f5459a.containsKey(Integer.valueOf(i)) && ((set3 = this.f5459a.get(Integer.valueOf(i))) == null || set3.contains(Integer.valueOf(i2)))) {
            return FacebookRequestError.EnumC0987a.OTHER;
        }
        if (this.f5461c != null && this.f5461c.containsKey(Integer.valueOf(i)) && ((set2 = this.f5461c.get(Integer.valueOf(i))) == null || set2.contains(Integer.valueOf(i2)))) {
            return FacebookRequestError.EnumC0987a.LOGIN_RECOVERABLE;
        }
        if (this.f5460b != null && this.f5460b.containsKey(Integer.valueOf(i)) && ((set = this.f5460b.get(Integer.valueOf(i))) == null || set.contains(Integer.valueOf(i2)))) {
            return FacebookRequestError.EnumC0987a.TRANSIENT;
        }
        return FacebookRequestError.EnumC0987a.OTHER;
    }

    /* renamed from: a */
    public static synchronized C1056g m5950a() {
        C1056g c1056g;
        synchronized (C1056g.class) {
            if (f5458g == null) {
                f5458g = m5953b();
            }
            c1056g = f5458g;
        }
        return c1056g;
    }

    /* renamed from: com.facebook.internal.g$1 */
    static class AnonymousClass1 extends HashMap<Integer, Set<Integer>> {
        AnonymousClass1() {
            put(2, null);
            put(4, null);
            put(9, null);
            put(17, null);
            put(341, null);
        }
    }

    /* renamed from: b */
    private static C1056g m5953b() {
        return new C1056g(null, new HashMap<Integer, Set<Integer>>() { // from class: com.facebook.internal.g.1
            AnonymousClass1() {
                put(2, null);
                put(4, null);
                put(9, null);
                put(17, null);
                put(341, null);
            }
        }, new HashMap<Integer, Set<Integer>>() { // from class: com.facebook.internal.g.2
            AnonymousClass2() {
                put(102, null);
                put(190, null);
                put(412, null);
            }
        }, null, null, null);
    }

    /* renamed from: com.facebook.internal.g$2 */
    static class AnonymousClass2 extends HashMap<Integer, Set<Integer>> {
        AnonymousClass2() {
            put(102, null);
            put(190, null);
            put(412, null);
        }
    }

    /* renamed from: a */
    private static Map<Integer, Set<Integer>> m5952a(JSONObject jSONObject) {
        int optInt;
        HashSet hashSet;
        JSONArray optJSONArray = jSONObject.optJSONArray("items");
        if (optJSONArray.length() == 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null && (optInt = optJSONObject.optInt("code")) != 0) {
                JSONArray optJSONArray2 = optJSONObject.optJSONArray("subcodes");
                if (optJSONArray2 == null || optJSONArray2.length() <= 0) {
                    hashSet = null;
                } else {
                    HashSet hashSet2 = new HashSet();
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        int optInt2 = optJSONArray2.optInt(i2);
                        if (optInt2 != 0) {
                            hashSet2.add(Integer.valueOf(optInt2));
                        }
                    }
                    hashSet = hashSet2;
                }
                hashMap.put(Integer.valueOf(optInt), hashSet);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static C1056g m5951a(JSONArray jSONArray) {
        String optString;
        if (jSONArray == null) {
            return null;
        }
        String str = null;
        String str2 = null;
        String str3 = null;
        Map<Integer, Set<Integer>> map = null;
        Map<Integer, Set<Integer>> map2 = null;
        Map<Integer, Set<Integer>> map3 = null;
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null && (optString = optJSONObject.optString("name")) != null) {
                if (optString.equalsIgnoreCase("other")) {
                    str3 = optJSONObject.optString("recovery_message", null);
                    map3 = m5952a(optJSONObject);
                } else if (optString.equalsIgnoreCase("transient")) {
                    str2 = optJSONObject.optString("recovery_message", null);
                    map2 = m5952a(optJSONObject);
                } else if (optString.equalsIgnoreCase("login_recoverable")) {
                    str = optJSONObject.optString("recovery_message", null);
                    map = m5952a(optJSONObject);
                }
            }
        }
        return new C1056g(map3, map2, map, str3, str2, str);
    }
}
