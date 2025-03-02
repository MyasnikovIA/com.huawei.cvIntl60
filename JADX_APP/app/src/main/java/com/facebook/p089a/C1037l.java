package com.facebook.p089a;

import android.content.Context;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.internal.C1050a;
import com.facebook.internal.C1070u;
import com.facebook.p089a.p092b.C1018c;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.a.l */
/* loaded from: classes.dex */
class C1037l {

    /* renamed from: c */
    private int f5352c;

    /* renamed from: d */
    private C1050a f5353d;

    /* renamed from: e */
    private String f5354e;

    /* renamed from: a */
    private List<C1028c> f5350a = new ArrayList();

    /* renamed from: b */
    private List<C1028c> f5351b = new ArrayList();

    /* renamed from: f */
    private final int f5355f = 1000;

    public C1037l(C1050a c1050a, String str) {
        this.f5353d = c1050a;
        this.f5354e = str;
    }

    /* renamed from: a */
    public synchronized void m5865a(C1028c c1028c) {
        if (this.f5350a.size() + this.f5351b.size() >= 1000) {
            this.f5352c++;
        } else {
            this.f5350a.add(c1028c);
        }
    }

    /* renamed from: a */
    public synchronized int m5863a() {
        return this.f5350a.size();
    }

    /* renamed from: a */
    public synchronized void m5866a(boolean z) {
        if (z) {
            this.f5350a.addAll(this.f5351b);
        }
        this.f5351b.clear();
        this.f5352c = 0;
    }

    /* renamed from: a */
    public int m5864a(GraphRequest graphRequest, Context context, boolean z, boolean z2) {
        synchronized (this) {
            int i = this.f5352c;
            this.f5351b.addAll(this.f5350a);
            this.f5350a.clear();
            JSONArray jSONArray = new JSONArray();
            for (C1028c c1028c : this.f5351b) {
                if (c1028c.m5811d()) {
                    if (z || !c1028c.m5809b()) {
                        jSONArray.put(c1028c.m5810c());
                    }
                } else {
                    C1070u.m6089a("Event with invalid checksum: %s", c1028c.toString());
                }
            }
            if (jSONArray.length() == 0) {
                return 0;
            }
            m5862a(graphRequest, context, i, jSONArray, z2);
            return jSONArray.length();
        }
    }

    /* renamed from: b */
    public synchronized List<C1028c> m5867b() {
        List<C1028c> list;
        list = this.f5350a;
        this.f5350a = new ArrayList();
        return list;
    }

    /* renamed from: a */
    private void m5862a(GraphRequest graphRequest, Context context, int i, JSONArray jSONArray, boolean z) {
        JSONObject jSONObject;
        try {
            jSONObject = C1018c.m5748a(C1018c.a.CUSTOM_APP_EVENTS, this.f5353d, this.f5354e, z, context);
            if (this.f5352c > 0) {
                jSONObject.put("num_skipped_events", i);
            }
        } catch (JSONException e) {
            jSONObject = new JSONObject();
        }
        graphRequest.m5581a(jSONObject);
        Bundle m5586e = graphRequest.m5586e();
        if (m5586e == null) {
            m5586e = new Bundle();
        }
        String jSONArray2 = jSONArray.toString();
        if (jSONArray2 != null) {
            m5586e.putString("custom_events", jSONArray2);
            graphRequest.m5580a((Object) jSONArray2);
        }
        graphRequest.m5577a(m5586e);
    }
}
