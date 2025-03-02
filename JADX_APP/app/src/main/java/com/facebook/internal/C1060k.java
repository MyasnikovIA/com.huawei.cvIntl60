package com.facebook.internal;

import android.net.Uri;
import java.util.EnumSet;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.facebook.internal.k */
/* loaded from: classes.dex */
public final class C1060k {

    /* renamed from: a */
    private boolean f5473a;

    /* renamed from: b */
    private String f5474b;

    /* renamed from: c */
    private boolean f5475c;

    /* renamed from: d */
    private boolean f5476d;

    /* renamed from: e */
    private int f5477e;

    /* renamed from: f */
    private EnumSet<EnumC1069t> f5478f;

    /* renamed from: g */
    private Map<String, Map<String, a>> f5479g;

    /* renamed from: h */
    private boolean f5480h;

    /* renamed from: i */
    private C1056g f5481i;

    /* renamed from: j */
    private String f5482j;

    /* renamed from: k */
    private String f5483k;

    /* renamed from: l */
    private boolean f5484l;

    /* renamed from: m */
    private boolean f5485m;

    /* renamed from: n */
    private String f5486n;

    /* renamed from: o */
    private JSONArray f5487o;

    /* renamed from: p */
    private boolean f5488p;

    public C1060k(boolean z, String str, boolean z2, boolean z3, int i, EnumSet<EnumC1069t> enumSet, Map<String, Map<String, a>> map, boolean z4, C1056g c1056g, String str2, String str3, boolean z5, boolean z6, JSONArray jSONArray, String str4, boolean z7) {
        this.f5473a = z;
        this.f5474b = str;
        this.f5475c = z2;
        this.f5476d = z3;
        this.f5479g = map;
        this.f5481i = c1056g;
        this.f5477e = i;
        this.f5480h = z4;
        this.f5478f = enumSet;
        this.f5482j = str2;
        this.f5483k = str3;
        this.f5484l = z5;
        this.f5485m = z6;
        this.f5487o = jSONArray;
        this.f5486n = str4;
        this.f5488p = z7;
    }

    /* renamed from: a */
    public boolean m5964a() {
        return this.f5473a;
    }

    /* renamed from: b */
    public boolean m5965b() {
        return this.f5476d;
    }

    /* renamed from: c */
    public int m5966c() {
        return this.f5477e;
    }

    /* renamed from: d */
    public boolean m5967d() {
        return this.f5480h;
    }

    /* renamed from: e */
    public EnumSet<EnumC1069t> m5968e() {
        return this.f5478f;
    }

    /* renamed from: f */
    public C1056g m5969f() {
        return this.f5481i;
    }

    /* renamed from: g */
    public boolean m5970g() {
        return this.f5484l;
    }

    /* renamed from: h */
    public boolean m5971h() {
        return this.f5485m;
    }

    /* renamed from: i */
    public JSONArray m5972i() {
        return this.f5487o;
    }

    /* renamed from: j */
    public String m5973j() {
        return this.f5486n;
    }

    /* renamed from: com.facebook.internal.k$a */
    public static class a {

        /* renamed from: a */
        private String f5489a;

        /* renamed from: b */
        private String f5490b;

        /* renamed from: c */
        private Uri f5491c;

        /* renamed from: d */
        private int[] f5492d;

        /* renamed from: a */
        public static a m5974a(JSONObject jSONObject) {
            String optString = jSONObject.optString("name");
            if (C1070u.m6098a(optString)) {
                return null;
            }
            String[] split = optString.split("\\|");
            if (split.length != 2) {
                return null;
            }
            String str = split[0];
            String str2 = split[1];
            if (C1070u.m6098a(str) || C1070u.m6098a(str2)) {
                return null;
            }
            String optString2 = jSONObject.optString("url");
            return new a(str, str2, C1070u.m6098a(optString2) ? null : Uri.parse(optString2), m5975a(jSONObject.optJSONArray("versions")));
        }

        /* renamed from: a */
        private static int[] m5975a(JSONArray jSONArray) {
            if (jSONArray == null) {
                return null;
            }
            int length = jSONArray.length();
            int[] iArr = new int[length];
            for (int i = 0; i < length; i++) {
                int optInt = jSONArray.optInt(i, -1);
                if (optInt == -1) {
                    String optString = jSONArray.optString(i);
                    if (!C1070u.m6098a(optString)) {
                        try {
                            optInt = Integer.parseInt(optString);
                        } catch (NumberFormatException e) {
                            C1070u.m6088a("FacebookSDK", (Exception) e);
                            optInt = -1;
                        }
                    }
                }
                iArr[i] = optInt;
            }
            return iArr;
        }

        private a(String str, String str2, Uri uri, int[] iArr) {
            this.f5489a = str;
            this.f5490b = str2;
            this.f5491c = uri;
            this.f5492d = iArr;
        }

        /* renamed from: a */
        public String m5976a() {
            return this.f5489a;
        }

        /* renamed from: b */
        public String m5977b() {
            return this.f5490b;
        }
    }
}
