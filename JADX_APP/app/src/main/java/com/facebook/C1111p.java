package com.facebook;

import android.util.Log;
import com.facebook.internal.C1064o;
import com.facebook.internal.C1070u;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* renamed from: com.facebook.p */
/* loaded from: classes.dex */
public class C1111p {

    /* renamed from: a */
    private static final String f5760a = C1111p.class.getSimpleName();

    /* renamed from: b */
    private final HttpURLConnection f5761b;

    /* renamed from: c */
    private final JSONObject f5762c;

    /* renamed from: d */
    private final JSONArray f5763d;

    /* renamed from: e */
    private final FacebookRequestError f5764e;

    /* renamed from: f */
    private final String f5765f;

    /* renamed from: g */
    private final GraphRequest f5766g;

    C1111p(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject) {
        this(graphRequest, httpURLConnection, str, jSONObject, null, null);
    }

    C1111p(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONArray jSONArray) {
        this(graphRequest, httpURLConnection, str, null, jSONArray, null);
    }

    C1111p(GraphRequest graphRequest, HttpURLConnection httpURLConnection, FacebookRequestError facebookRequestError) {
        this(graphRequest, httpURLConnection, null, null, null, facebookRequestError);
    }

    C1111p(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject, JSONArray jSONArray, FacebookRequestError facebookRequestError) {
        this.f5766g = graphRequest;
        this.f5761b = httpURLConnection;
        this.f5765f = str;
        this.f5762c = jSONObject;
        this.f5763d = jSONArray;
        this.f5764e = facebookRequestError;
    }

    /* renamed from: a */
    public final FacebookRequestError m6419a() {
        return this.f5764e;
    }

    /* renamed from: b */
    public final JSONObject m6420b() {
        return this.f5762c;
    }

    public String toString() {
        String str;
        try {
            Locale locale = Locale.US;
            Object[] objArr = new Object[1];
            objArr[0] = Integer.valueOf(this.f5761b != null ? this.f5761b.getResponseCode() : 200);
            str = String.format(locale, "%d", objArr);
        } catch (IOException e) {
            str = "unknown";
        }
        return "{Response:  responseCode: " + str + ", graphObject: " + this.f5762c + ", error: " + this.f5764e + "}";
    }

    /* renamed from: a */
    static List<C1111p> m6416a(HttpURLConnection httpURLConnection, C1110o c1110o) {
        List<C1111p> m6418a;
        InputStream inputStream = null;
        try {
            if (httpURLConnection.getResponseCode() >= 400) {
                inputStream = httpURLConnection.getErrorStream();
            } else {
                inputStream = httpURLConnection.getInputStream();
            }
            m6418a = m6414a(inputStream, httpURLConnection, c1110o);
        } catch (C1048h e) {
            C1064o.m6003a(EnumC1160t.REQUESTS, "Response", "Response <Error>: %s", e);
            m6418a = m6418a(c1110o, httpURLConnection, e);
        } catch (Exception e2) {
            C1064o.m6003a(EnumC1160t.REQUESTS, "Response", "Response <Error>: %s", e2);
            m6418a = m6418a(c1110o, httpURLConnection, new C1048h(e2));
        } finally {
            C1070u.m6086a((Closeable) inputStream);
        }
        return m6418a;
    }

    /* renamed from: a */
    static List<C1111p> m6414a(InputStream inputStream, HttpURLConnection httpURLConnection, C1110o c1110o) {
        String m6071a = C1070u.m6071a(inputStream);
        C1064o.m6003a(EnumC1160t.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", Integer.valueOf(m6071a.length()), m6071a);
        return m6415a(m6071a, httpURLConnection, c1110o);
    }

    /* renamed from: a */
    static List<C1111p> m6415a(String str, HttpURLConnection httpURLConnection, C1110o c1110o) {
        List<C1111p> m6417a = m6417a(httpURLConnection, c1110o, new JSONTokener(str).nextValue());
        C1064o.m6003a(EnumC1160t.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", c1110o.m6403b(), Integer.valueOf(str.length()), m6417a);
        return m6417a;
    }

    /* renamed from: a */
    private static List<C1111p> m6417a(HttpURLConnection httpURLConnection, List<GraphRequest> list, Object obj) {
        Object obj2;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        if (size == 1) {
            GraphRequest graphRequest = list.get(0);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(TtmlNode.TAG_BODY, obj);
                jSONObject.put("code", httpURLConnection != null ? httpURLConnection.getResponseCode() : 200);
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
                obj2 = jSONArray;
            } catch (IOException e) {
                arrayList.add(new C1111p(graphRequest, httpURLConnection, new FacebookRequestError(httpURLConnection, e)));
            } catch (JSONException e2) {
                arrayList.add(new C1111p(graphRequest, httpURLConnection, new FacebookRequestError(httpURLConnection, e2)));
                obj2 = obj;
            }
            if ((obj2 instanceof JSONArray) || ((JSONArray) obj2).length() != size) {
                throw new C1048h("Unexpected number of results");
            }
            JSONArray jSONArray2 = (JSONArray) obj2;
            for (int i = 0; i < jSONArray2.length(); i++) {
                GraphRequest graphRequest2 = list.get(i);
                try {
                    arrayList.add(m6413a(graphRequest2, httpURLConnection, jSONArray2.get(i), obj));
                } catch (C1048h e3) {
                    arrayList.add(new C1111p(graphRequest2, httpURLConnection, new FacebookRequestError(httpURLConnection, e3)));
                } catch (JSONException e4) {
                    arrayList.add(new C1111p(graphRequest2, httpURLConnection, new FacebookRequestError(httpURLConnection, e4)));
                }
            }
            return arrayList;
        }
        obj2 = obj;
        if (obj2 instanceof JSONArray) {
        }
        throw new C1048h("Unexpected number of results");
    }

    /* renamed from: a */
    private static C1111p m6413a(GraphRequest graphRequest, HttpURLConnection httpURLConnection, Object obj, Object obj2) {
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            FacebookRequestError m5526a = FacebookRequestError.m5526a(jSONObject, obj2, httpURLConnection);
            if (m5526a != null) {
                Log.e(f5760a, m5526a.toString());
                if (m5526a.m5529b() == 190 && C1070u.m6096a(graphRequest.m5587f())) {
                    if (m5526a.m5530c() != 493) {
                        AccessToken.m5500a((AccessToken) null);
                    } else if (!AccessToken.m5496a().m5515m()) {
                        AccessToken.m5504c();
                    }
                }
                return new C1111p(graphRequest, httpURLConnection, m5526a);
            }
            Object m6068a = C1070u.m6068a(jSONObject, TtmlNode.TAG_BODY, "FACEBOOK_NON_JSON_RESULT");
            if (m6068a instanceof JSONObject) {
                return new C1111p(graphRequest, httpURLConnection, m6068a.toString(), (JSONObject) m6068a);
            }
            if (m6068a instanceof JSONArray) {
                return new C1111p(graphRequest, httpURLConnection, m6068a.toString(), (JSONArray) m6068a);
            }
            obj = JSONObject.NULL;
        }
        if (obj == JSONObject.NULL) {
            return new C1111p(graphRequest, httpURLConnection, obj.toString(), (JSONObject) null);
        }
        throw new C1048h("Got unexpected object type in response, class: " + obj.getClass().getSimpleName());
    }

    /* renamed from: a */
    static List<C1111p> m6418a(List<GraphRequest> list, HttpURLConnection httpURLConnection, C1048h c1048h) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new C1111p(list.get(i), httpURLConnection, new FacebookRequestError(httpURLConnection, c1048h)));
        }
        return arrayList;
    }
}
