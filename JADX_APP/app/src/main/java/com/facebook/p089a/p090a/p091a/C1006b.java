package com.facebook.p089a.p090a.p091a;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.facebook.a.a.a.b */
/* loaded from: classes.dex */
public final class C1006b {

    /* renamed from: a */
    public final String f5157a;

    /* renamed from: b */
    public final String f5158b;

    /* renamed from: c */
    public final List<C1007c> f5159c;

    /* renamed from: d */
    public final String f5160d;

    public C1006b(JSONObject jSONObject) {
        this.f5157a = jSONObject.getString("name");
        this.f5158b = jSONObject.optString("value");
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("path");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                arrayList.add(new C1007c(optJSONArray.getJSONObject(i)));
            }
        }
        this.f5159c = arrayList;
        this.f5160d = jSONObject.optString("path_type", "absolute");
    }
}
