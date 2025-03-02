package com.facebook.p089a.p090a.p091a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.a.a.a.a */
/* loaded from: classes.dex */
public class C1005a {

    /* renamed from: a */
    private final String f5131a;

    /* renamed from: b */
    private final b f5132b;

    /* renamed from: c */
    private final a f5133c;

    /* renamed from: d */
    private final String f5134d;

    /* renamed from: e */
    private final List<C1007c> f5135e;

    /* renamed from: f */
    private final List<C1006b> f5136f;

    /* renamed from: g */
    private final String f5137g;

    /* renamed from: h */
    private final String f5138h;

    /* renamed from: i */
    private final String f5139i;

    /* renamed from: com.facebook.a.a.a.a$a */
    public enum a {
        CLICK,
        SELECTED,
        TEXT_CHANGED
    }

    /* renamed from: com.facebook.a.a.a.a$b */
    public enum b {
        MANUAL,
        INFERENCE
    }

    public C1005a(String str, b bVar, a aVar, String str2, List<C1007c> list, List<C1006b> list2, String str3, String str4, String str5) {
        this.f5131a = str;
        this.f5132b = bVar;
        this.f5133c = aVar;
        this.f5134d = str2;
        this.f5135e = list;
        this.f5136f = list2;
        this.f5137g = str3;
        this.f5138h = str4;
        this.f5139i = str5;
    }

    /* renamed from: a */
    public static List<C1005a> m5639a(JSONArray jSONArray) {
        int length;
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            try {
                length = jSONArray.length();
            } catch (IllegalArgumentException e) {
            } catch (JSONException e2) {
            }
        } else {
            length = 0;
        }
        for (int i = 0; i < length; i++) {
            arrayList.add(m5638a(jSONArray.getJSONObject(i)));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static C1005a m5638a(JSONObject jSONObject) {
        String string = jSONObject.getString("event_name");
        b valueOf = b.valueOf(jSONObject.getString("method").toUpperCase(Locale.ENGLISH));
        a valueOf2 = a.valueOf(jSONObject.getString("event_type").toUpperCase(Locale.ENGLISH));
        String string2 = jSONObject.getString("app_version");
        JSONArray jSONArray = jSONObject.getJSONArray("path");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(new C1007c(jSONArray.getJSONObject(i)));
        }
        String optString = jSONObject.optString("path_type", "absolute");
        JSONArray optJSONArray = jSONObject.optJSONArray("parameters");
        ArrayList arrayList2 = new ArrayList();
        if (optJSONArray != null) {
            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                arrayList2.add(new C1006b(optJSONArray.getJSONObject(i2)));
            }
        }
        return new C1005a(string, valueOf, valueOf2, string2, arrayList, arrayList2, jSONObject.optString("component_id"), optString, jSONObject.optString("activity_name"));
    }

    /* renamed from: a */
    public List<C1007c> m5640a() {
        return Collections.unmodifiableList(this.f5135e);
    }

    /* renamed from: b */
    public List<C1006b> m5641b() {
        return Collections.unmodifiableList(this.f5136f);
    }

    /* renamed from: c */
    public String m5642c() {
        return this.f5131a;
    }

    /* renamed from: d */
    public a m5643d() {
        return this.f5133c;
    }

    /* renamed from: e */
    public String m5644e() {
        return this.f5139i;
    }
}
