package com.facebook;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.C1110o;
import com.facebook.internal.C1062m;
import com.facebook.internal.C1064o;
import com.facebook.internal.C1068s;
import com.facebook.internal.C1070u;
import com.facebook.internal.C1071v;
import com.google.android.exoplayer.C1167C;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.api.client.http.UrlEncodedParser;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes.dex */
public class GraphRequest {

    /* renamed from: b */
    private static final String f5082b;

    /* renamed from: c */
    private static String f5083c;

    /* renamed from: r */
    private static volatile String f5085r;

    /* renamed from: e */
    private AccessToken f5086e;

    /* renamed from: f */
    private EnumC1112q f5087f;

    /* renamed from: g */
    private String f5088g;

    /* renamed from: h */
    private JSONObject f5089h;

    /* renamed from: i */
    private String f5090i;

    /* renamed from: j */
    private String f5091j;

    /* renamed from: k */
    private boolean f5092k;

    /* renamed from: l */
    private Bundle f5093l;

    /* renamed from: m */
    private InterfaceC0995b f5094m;

    /* renamed from: n */
    private String f5095n;

    /* renamed from: o */
    private Object f5096o;

    /* renamed from: p */
    private String f5097p;

    /* renamed from: q */
    private boolean f5098q;

    /* renamed from: a */
    public static final String f5081a = GraphRequest.class.getSimpleName();

    /* renamed from: d */
    private static Pattern f5084d = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");

    /* renamed from: com.facebook.GraphRequest$b */
    public interface InterfaceC0995b {
        /* renamed from: a */
        void mo777a(C1111p c1111p);
    }

    /* renamed from: com.facebook.GraphRequest$c */
    public interface InterfaceC0996c {
        /* renamed from: a */
        void m5601a(JSONObject jSONObject, C1111p c1111p);
    }

    /* renamed from: com.facebook.GraphRequest$d */
    private interface InterfaceC0997d {
        /* renamed from: a */
        void mo5594a(String str, String str2);
    }

    /* renamed from: com.facebook.GraphRequest$e */
    public interface InterfaceC0998e extends InterfaceC0995b {
        /* renamed from: a */
        void m5602a(long j, long j2);
    }

    static {
        char[] charArray = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        StringBuilder sb = new StringBuilder();
        SecureRandom secureRandom = new SecureRandom();
        int nextInt = secureRandom.nextInt(11) + 30;
        for (int i = 0; i < nextInt; i++) {
            sb.append(charArray[secureRandom.nextInt(charArray.length)]);
        }
        f5082b = sb.toString();
    }

    public GraphRequest() {
        this(null, null, null, null, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, EnumC1112q enumC1112q, InterfaceC0995b interfaceC0995b) {
        this(accessToken, str, bundle, enumC1112q, interfaceC0995b, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, EnumC1112q enumC1112q, InterfaceC0995b interfaceC0995b, String str2) {
        this.f5092k = true;
        this.f5098q = false;
        this.f5086e = accessToken;
        this.f5088g = str;
        this.f5097p = str2;
        m5578a(interfaceC0995b);
        m5579a(enumC1112q);
        if (bundle != null) {
            this.f5093l = new Bundle(bundle);
        } else {
            this.f5093l = new Bundle();
        }
        if (this.f5097p == null) {
            this.f5097p = C1074k.m6182g();
        }
    }

    /* renamed from: com.facebook.GraphRequest$1 */
    static class C09891 implements InterfaceC0995b {

        /* renamed from: a */
        final /* synthetic */ InterfaceC0996c f5099a;

        @Override // com.facebook.GraphRequest.InterfaceC0995b
        /* renamed from: a */
        public void mo777a(C1111p c1111p) {
            if (this.f5099a != null) {
                this.f5099a.m5601a(c1111p.m6420b(), c1111p);
            }
        }
    }

    /* renamed from: a */
    public static GraphRequest m5538a(AccessToken accessToken, String str, JSONObject jSONObject, InterfaceC0995b interfaceC0995b) {
        GraphRequest graphRequest = new GraphRequest(accessToken, str, null, EnumC1112q.POST, interfaceC0995b);
        graphRequest.m5581a(jSONObject);
        return graphRequest;
    }

    /* renamed from: a */
    public static GraphRequest m5537a(AccessToken accessToken, String str, InterfaceC0995b interfaceC0995b) {
        return new GraphRequest(accessToken, str, null, null, interfaceC0995b);
    }

    /* renamed from: a */
    public final JSONObject m5576a() {
        return this.f5089h;
    }

    /* renamed from: a */
    public final void m5581a(JSONObject jSONObject) {
        this.f5089h = jSONObject;
    }

    /* renamed from: b */
    public final String m5583b() {
        return this.f5088g;
    }

    /* renamed from: c */
    public final EnumC1112q m5584c() {
        return this.f5087f;
    }

    /* renamed from: a */
    public final void m5579a(EnumC1112q enumC1112q) {
        if (this.f5095n != null && enumC1112q != EnumC1112q.GET) {
            throw new C1048h("Can't change HTTP method on request with overridden URL.");
        }
        if (enumC1112q == null) {
            enumC1112q = EnumC1112q.GET;
        }
        this.f5087f = enumC1112q;
    }

    /* renamed from: d */
    public final String m5585d() {
        return this.f5097p;
    }

    /* renamed from: a */
    public final void m5582a(boolean z) {
        this.f5098q = z;
    }

    /* renamed from: e */
    public final Bundle m5586e() {
        return this.f5093l;
    }

    /* renamed from: a */
    public final void m5577a(Bundle bundle) {
        this.f5093l = bundle;
    }

    /* renamed from: f */
    public final AccessToken m5587f() {
        return this.f5086e;
    }

    /* renamed from: g */
    public final InterfaceC0995b m5588g() {
        return this.f5094m;
    }

    /* renamed from: a */
    public final void m5578a(InterfaceC0995b interfaceC0995b) {
        if (C1074k.m6173a(EnumC1160t.GRAPH_API_DEBUG_INFO) || C1074k.m6173a(EnumC1160t.GRAPH_API_DEBUG_WARNING)) {
            this.f5094m = new InterfaceC0995b() { // from class: com.facebook.GraphRequest.2

                /* renamed from: a */
                final /* synthetic */ InterfaceC0995b f5100a;

                C09902(InterfaceC0995b interfaceC0995b2) {
                    interfaceC0995b = interfaceC0995b2;
                }

                @Override // com.facebook.GraphRequest.InterfaceC0995b
                /* renamed from: a */
                public void mo777a(C1111p c1111p) {
                    JSONObject m6420b = c1111p.m6420b();
                    JSONObject optJSONObject = m6420b != null ? m6420b.optJSONObject("__debug__") : null;
                    JSONArray optJSONArray = optJSONObject != null ? optJSONObject.optJSONArray("messages") : null;
                    if (optJSONArray != null) {
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                            String optString = optJSONObject2 != null ? optJSONObject2.optString("message") : null;
                            String optString2 = optJSONObject2 != null ? optJSONObject2.optString(IjkMediaMeta.IJKM_KEY_TYPE) : null;
                            String optString3 = optJSONObject2 != null ? optJSONObject2.optString("link") : null;
                            if (optString != null && optString2 != null) {
                                EnumC1160t enumC1160t = EnumC1160t.GRAPH_API_DEBUG_INFO;
                                if (optString2.equals("warning")) {
                                    enumC1160t = EnumC1160t.GRAPH_API_DEBUG_WARNING;
                                }
                                if (!C1070u.m6098a(optString3)) {
                                    optString = optString + " Link: " + optString3;
                                }
                                C1064o.m6002a(enumC1160t, GraphRequest.f5081a, optString);
                            }
                        }
                    }
                    if (interfaceC0995b != null) {
                        interfaceC0995b.mo777a(c1111p);
                    }
                }
            };
        } else {
            this.f5094m = interfaceC0995b2;
        }
    }

    /* renamed from: com.facebook.GraphRequest$2 */
    class C09902 implements InterfaceC0995b {

        /* renamed from: a */
        final /* synthetic */ InterfaceC0995b f5100a;

        C09902(InterfaceC0995b interfaceC0995b2) {
            interfaceC0995b = interfaceC0995b2;
        }

        @Override // com.facebook.GraphRequest.InterfaceC0995b
        /* renamed from: a */
        public void mo777a(C1111p c1111p) {
            JSONObject m6420b = c1111p.m6420b();
            JSONObject optJSONObject = m6420b != null ? m6420b.optJSONObject("__debug__") : null;
            JSONArray optJSONArray = optJSONObject != null ? optJSONObject.optJSONArray("messages") : null;
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                    String optString = optJSONObject2 != null ? optJSONObject2.optString("message") : null;
                    String optString2 = optJSONObject2 != null ? optJSONObject2.optString(IjkMediaMeta.IJKM_KEY_TYPE) : null;
                    String optString3 = optJSONObject2 != null ? optJSONObject2.optString("link") : null;
                    if (optString != null && optString2 != null) {
                        EnumC1160t enumC1160t = EnumC1160t.GRAPH_API_DEBUG_INFO;
                        if (optString2.equals("warning")) {
                            enumC1160t = EnumC1160t.GRAPH_API_DEBUG_WARNING;
                        }
                        if (!C1070u.m6098a(optString3)) {
                            optString = optString + " Link: " + optString3;
                        }
                        C1064o.m6002a(enumC1160t, GraphRequest.f5081a, optString);
                    }
                }
            }
            if (interfaceC0995b != null) {
                interfaceC0995b.mo777a(c1111p);
            }
        }
    }

    /* renamed from: a */
    public final void m5580a(Object obj) {
        this.f5096o = obj;
    }

    /* renamed from: h */
    public final Object m5589h() {
        return this.f5096o;
    }

    /* renamed from: i */
    public final C1111p m5590i() {
        return m5539a(this);
    }

    /* renamed from: j */
    public final AsyncTaskC1109n m5591j() {
        return m5558b(this);
    }

    /* renamed from: a */
    public static HttpURLConnection m5541a(C1110o c1110o) {
        URL url;
        m5564d(c1110o);
        try {
            if (c1110o.size() == 1) {
                url = new URL(c1110o.get(0).m5593l());
            } else {
                url = new URL(C1068s.m6058b());
            }
            HttpURLConnection httpURLConnection = null;
            try {
                httpURLConnection = m5542a(url);
                m5549a(c1110o, httpURLConnection);
                return httpURLConnection;
            } catch (IOException | JSONException e) {
                C1070u.m6091a(httpURLConnection);
                throw new C1048h("could not construct request body", e);
            }
        } catch (MalformedURLException e2) {
            throw new C1048h("could not construct URL for request", e2);
        }
    }

    /* renamed from: a */
    public static C1111p m5539a(GraphRequest graphRequest) {
        List<C1111p> m5545a = m5545a(graphRequest);
        if (m5545a == null || m5545a.size() != 1) {
            throw new C1048h("invalid state: expected a single response");
        }
        return m5545a.get(0);
    }

    /* renamed from: a */
    public static List<C1111p> m5545a(GraphRequest... graphRequestArr) {
        C1071v.m6125a(graphRequestArr, "requests");
        return m5544a((Collection<GraphRequest>) Arrays.asList(graphRequestArr));
    }

    /* renamed from: a */
    public static List<C1111p> m5544a(Collection<GraphRequest> collection) {
        return m5559b(new C1110o(collection));
    }

    /* renamed from: b */
    public static List<C1111p> m5559b(C1110o c1110o) {
        List<C1111p> m6418a;
        HttpURLConnection httpURLConnection = null;
        C1071v.m6133c(c1110o, "requests");
        try {
            httpURLConnection = m5541a(c1110o);
            m6418a = m5543a(httpURLConnection, c1110o);
        } catch (Exception e) {
            m6418a = C1111p.m6418a(c1110o.m6405d(), (HttpURLConnection) null, new C1048h(e));
            m5550a(c1110o, m6418a);
        } finally {
            C1070u.m6091a(httpURLConnection);
        }
        return m6418a;
    }

    /* renamed from: b */
    public static AsyncTaskC1109n m5558b(GraphRequest... graphRequestArr) {
        C1071v.m6125a(graphRequestArr, "requests");
        return m5557b((Collection<GraphRequest>) Arrays.asList(graphRequestArr));
    }

    /* renamed from: b */
    public static AsyncTaskC1109n m5557b(Collection<GraphRequest> collection) {
        return m5562c(new C1110o(collection));
    }

    /* renamed from: c */
    public static AsyncTaskC1109n m5562c(C1110o c1110o) {
        C1071v.m6133c(c1110o, "requests");
        AsyncTaskC1109n asyncTaskC1109n = new AsyncTaskC1109n(c1110o);
        asyncTaskC1109n.executeOnExecutor(C1074k.m6179d(), new Void[0]);
        return asyncTaskC1109n;
    }

    /* renamed from: a */
    public static List<C1111p> m5543a(HttpURLConnection httpURLConnection, C1110o c1110o) {
        List<C1111p> m6416a = C1111p.m6416a(httpURLConnection, c1110o);
        C1070u.m6091a(httpURLConnection);
        int size = c1110o.size();
        if (size != m6416a.size()) {
            throw new C1048h(String.format(Locale.US, "Received %d responses while expecting %d", Integer.valueOf(m6416a.size()), Integer.valueOf(size)));
        }
        m5550a(c1110o, m6416a);
        C1041b.m5891a().m5905e();
        return m6416a;
    }

    public String toString() {
        return "{Request:  accessToken: " + (this.f5086e == null ? "null" : this.f5086e) + ", graphPath: " + this.f5088g + ", graphObject: " + this.f5089h + ", httpMethod: " + this.f5087f + ", parameters: " + this.f5093l + "}";
    }

    /* renamed from: a */
    static void m5550a(C1110o c1110o, List<C1111p> list) {
        int size = c1110o.size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            GraphRequest graphRequest = c1110o.get(i);
            if (graphRequest.f5094m != null) {
                arrayList.add(new Pair(graphRequest.f5094m, list.get(i)));
            }
        }
        if (arrayList.size() > 0) {
            RunnableC09913 runnableC09913 = new Runnable() { // from class: com.facebook.GraphRequest.3

                /* renamed from: a */
                final /* synthetic */ ArrayList f5102a;

                /* renamed from: b */
                final /* synthetic */ C1110o f5103b;

                RunnableC09913(ArrayList arrayList2, C1110o c1110o2) {
                    arrayList = arrayList2;
                    c1110o = c1110o2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        Pair pair = (Pair) it.next();
                        ((InterfaceC0995b) pair.first).mo777a((C1111p) pair.second);
                    }
                    Iterator<C1110o.a> it2 = c1110o.m6406e().iterator();
                    while (it2.hasNext()) {
                        it2.next().mo5906a(c1110o);
                    }
                }
            };
            Handler m6404c = c1110o2.m6404c();
            if (m6404c == null) {
                runnableC09913.run();
            } else {
                m6404c.post(runnableC09913);
            }
        }
    }

    /* renamed from: com.facebook.GraphRequest$3 */
    static class RunnableC09913 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ ArrayList f5102a;

        /* renamed from: b */
        final /* synthetic */ C1110o f5103b;

        RunnableC09913(ArrayList arrayList2, C1110o c1110o2) {
            arrayList = arrayList2;
            c1110o = c1110o2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                ((InterfaceC0995b) pair.first).mo777a((C1111p) pair.second);
            }
            Iterator<C1110o.a> it2 = c1110o.m6406e().iterator();
            while (it2.hasNext()) {
                it2.next().mo5906a(c1110o);
            }
        }
    }

    /* renamed from: a */
    private static HttpURLConnection m5542a(URL url) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestProperty("User-Agent", m5575q());
        httpURLConnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
        httpURLConnection.setChunkedStreamingMode(0);
        return httpURLConnection;
    }

    /* renamed from: n */
    private void m5572n() {
        if (this.f5086e != null) {
            if (!this.f5093l.containsKey("access_token")) {
                String m5506d = this.f5086e.m5506d();
                C1064o.m6004a(m5506d);
                this.f5093l.putString("access_token", m5506d);
            }
        } else if (!this.f5098q && !this.f5093l.containsKey("access_token")) {
            String m6185j = C1074k.m6185j();
            String m6186k = C1074k.m6186k();
            if (!C1070u.m6098a(m6185j) && !C1070u.m6098a(m6186k)) {
                this.f5093l.putString("access_token", m6185j + "|" + m6186k);
            } else {
                C1070u.m6089a(f5081a, "Warning: Request without access token missing application ID or client token.");
            }
        }
        this.f5093l.putString("sdk", "android");
        this.f5093l.putString(IjkMediaMeta.IJKM_KEY_FORMAT, "json");
        if (C1074k.m6173a(EnumC1160t.GRAPH_API_DEBUG_INFO)) {
            this.f5093l.putString("debug", "info");
        } else if (C1074k.m6173a(EnumC1160t.GRAPH_API_DEBUG_WARNING)) {
            this.f5093l.putString("debug", "warning");
        }
    }

    /* renamed from: a */
    private String m5540a(String str, Boolean bool) {
        if (bool.booleanValue() || this.f5087f != EnumC1112q.POST) {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            for (String str2 : this.f5093l.keySet()) {
                Object obj = this.f5093l.get(str2);
                if (obj == null) {
                    obj = "";
                }
                if (!m5567e(obj)) {
                    if (this.f5087f == EnumC1112q.GET) {
                        throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", obj.getClass().getSimpleName()));
                    }
                } else {
                    buildUpon.appendQueryParameter(str2, m5568f(obj).toString());
                }
            }
            return buildUpon.toString();
        }
        return str;
    }

    /* renamed from: k */
    final String m5592k() {
        if (this.f5095n != null) {
            throw new C1048h("Can't override URL for a batch request");
        }
        String format = String.format("%s/%s", C1068s.m6058b(), m5573o());
        m5572n();
        Uri parse = Uri.parse(m5540a(format, (Boolean) true));
        return String.format("%s?%s", parse.getPath(), parse.getQuery());
    }

    /* renamed from: l */
    final String m5593l() {
        String m6058b;
        if (this.f5095n != null) {
            return this.f5095n.toString();
        }
        if (m5584c() == EnumC1112q.POST && this.f5088g != null && this.f5088g.endsWith("/videos")) {
            m6058b = C1068s.m6059c();
        } else {
            m6058b = C1068s.m6058b();
        }
        String format = String.format("%s/%s", m6058b, m5573o());
        m5572n();
        return m5540a(format, (Boolean) false);
    }

    /* renamed from: o */
    private String m5573o() {
        return f5084d.matcher(this.f5088g).matches() ? this.f5088g : String.format("%s/%s", this.f5097p, this.f5088g);
    }

    /* renamed from: com.facebook.GraphRequest$a */
    private static class C0994a {

        /* renamed from: a */
        private final GraphRequest f5108a;

        /* renamed from: b */
        private final Object f5109b;

        public C0994a(GraphRequest graphRequest, Object obj) {
            this.f5108a = graphRequest;
            this.f5109b = obj;
        }

        /* renamed from: a */
        public GraphRequest m5599a() {
            return this.f5108a;
        }

        /* renamed from: b */
        public Object m5600b() {
            return this.f5109b;
        }
    }

    /* renamed from: a */
    private void m5554a(JSONArray jSONArray, Map<String, C0994a> map) {
        JSONObject jSONObject = new JSONObject();
        if (this.f5090i != null) {
            jSONObject.put("name", this.f5090i);
            jSONObject.put("omit_response_on_success", this.f5092k);
        }
        if (this.f5091j != null) {
            jSONObject.put("depends_on", this.f5091j);
        }
        String m5592k = m5592k();
        jSONObject.put("relative_url", m5592k);
        jSONObject.put("method", this.f5087f);
        if (this.f5086e != null) {
            C1064o.m6004a(this.f5086e.m5506d());
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.f5093l.keySet().iterator();
        while (it.hasNext()) {
            Object obj = this.f5093l.get(it.next());
            if (m5565d(obj)) {
                String format = String.format(Locale.ROOT, "%s%d", "file", Integer.valueOf(map.size()));
                arrayList.add(format);
                map.put(format, new C0994a(this, obj));
            }
        }
        if (!arrayList.isEmpty()) {
            jSONObject.put("attached_files", TextUtils.join(",", arrayList));
        }
        if (this.f5089h != null) {
            ArrayList arrayList2 = new ArrayList();
            m5555a(this.f5089h, m5592k, new InterfaceC0997d() { // from class: com.facebook.GraphRequest.4

                /* renamed from: a */
                final /* synthetic */ ArrayList f5104a;

                C09924(ArrayList arrayList22) {
                    arrayList2 = arrayList22;
                }

                @Override // com.facebook.GraphRequest.InterfaceC0997d
                /* renamed from: a */
                public void mo5594a(String str, String str2) {
                    arrayList2.add(String.format(Locale.US, "%s=%s", str, URLEncoder.encode(str2, C1167C.UTF8_NAME)));
                }
            });
            jSONObject.put(TtmlNode.TAG_BODY, TextUtils.join("&", arrayList22));
        }
        jSONArray.put(jSONObject);
    }

    /* renamed from: com.facebook.GraphRequest$4 */
    class C09924 implements InterfaceC0997d {

        /* renamed from: a */
        final /* synthetic */ ArrayList f5104a;

        C09924(ArrayList arrayList22) {
            arrayList2 = arrayList22;
        }

        @Override // com.facebook.GraphRequest.InterfaceC0997d
        /* renamed from: a */
        public void mo5594a(String str, String str2) {
            arrayList2.add(String.format(Locale.US, "%s=%s", str, URLEncoder.encode(str2, C1167C.UTF8_NAME)));
        }
    }

    /* renamed from: e */
    private static boolean m5566e(C1110o c1110o) {
        Iterator<C1110o.a> it = c1110o.m6406e().iterator();
        while (it.hasNext()) {
            if (it.next() instanceof C1110o.b) {
                return true;
            }
        }
        Iterator<GraphRequest> it2 = c1110o.iterator();
        while (it2.hasNext()) {
            if (it2.next().m5588g() instanceof InterfaceC0998e) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private static void m5552a(HttpURLConnection httpURLConnection, boolean z) {
        if (z) {
            httpURLConnection.setRequestProperty("Content-Type", UrlEncodedParser.CONTENT_TYPE);
            httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        } else {
            httpURLConnection.setRequestProperty("Content-Type", m5574p());
        }
    }

    /* renamed from: f */
    private static boolean m5569f(C1110o c1110o) {
        Iterator<GraphRequest> it = c1110o.iterator();
        while (it.hasNext()) {
            GraphRequest next = it.next();
            Iterator<String> it2 = next.f5093l.keySet().iterator();
            while (it2.hasNext()) {
                if (m5565d(next.f5093l.get(it2.next()))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: b */
    static final boolean m5560b(GraphRequest graphRequest) {
        String m5585d = graphRequest.m5585d();
        if (C1070u.m6098a(m5585d)) {
            return true;
        }
        if (m5585d.startsWith("v")) {
            m5585d = m5585d.substring(1);
        }
        String[] split = m5585d.split("\\.");
        return (split.length >= 2 && Integer.parseInt(split[0]) > 2) || (Integer.parseInt(split[0]) >= 2 && Integer.parseInt(split[1]) >= 4);
    }

    /* renamed from: d */
    static final void m5564d(C1110o c1110o) {
        Iterator<GraphRequest> it = c1110o.iterator();
        while (it.hasNext()) {
            GraphRequest next = it.next();
            if (EnumC1112q.GET.equals(next.m5584c()) && m5560b(next)) {
                Bundle m5586e = next.m5586e();
                if (!m5586e.containsKey("fields") || C1070u.m6098a(m5586e.getString("fields"))) {
                    C1064o.m6001a(EnumC1160t.DEVELOPER_ERRORS, 5, "Request", "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter.", next.m5583b());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c4  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static final void m5549a(com.facebook.C1110o r13, java.net.HttpURLConnection r14) {
        /*
            r4 = 0
            r6 = 0
            r1 = 1
            com.facebook.internal.o r12 = new com.facebook.internal.o
            com.facebook.t r0 = com.facebook.EnumC1160t.REQUESTS
            java.lang.String r2 = "Request"
            r12.<init>(r0, r2)
            int r2 = r13.size()
            boolean r5 = m5569f(r13)
            if (r2 != r1) goto L75
            com.facebook.GraphRequest r0 = r13.get(r6)
            com.facebook.q r0 = r0.f5087f
        L1c:
            java.lang.String r3 = r0.name()
            r14.setRequestMethod(r3)
            m5552a(r14, r5)
            java.net.URL r3 = r14.getURL()
            java.lang.String r7 = "Request:\n"
            r12.m6012c(r7)
            java.lang.String r7 = "Id"
            java.lang.String r8 = r13.m6403b()
            r12.m6009a(r7, r8)
            java.lang.String r7 = "URL"
            r12.m6009a(r7, r3)
            java.lang.String r7 = "Method"
            java.lang.String r8 = r14.getRequestMethod()
            r12.m6009a(r7, r8)
            java.lang.String r7 = "User-Agent"
            java.lang.String r8 = "User-Agent"
            java.lang.String r8 = r14.getRequestProperty(r8)
            r12.m6009a(r7, r8)
            java.lang.String r7 = "Content-Type"
            java.lang.String r8 = "Content-Type"
            java.lang.String r8 = r14.getRequestProperty(r8)
            r12.m6009a(r7, r8)
            int r7 = r13.m6395a()
            r14.setConnectTimeout(r7)
            int r7 = r13.m6395a()
            r14.setReadTimeout(r7)
            com.facebook.q r7 = com.facebook.EnumC1112q.POST
            if (r0 != r7) goto L78
            r0 = r1
        L6f:
            if (r0 != 0) goto L7a
            r12.m6008a()
        L74:
            return
        L75:
            com.facebook.q r0 = com.facebook.EnumC1112q.POST
            goto L1c
        L78:
            r0 = r6
            goto L6f
        L7a:
            r14.setDoOutput(r1)
            java.io.BufferedOutputStream r7 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> Lc0
            java.io.OutputStream r0 = r14.getOutputStream()     // Catch: java.lang.Throwable -> Lc0
            r7.<init>(r0)     // Catch: java.lang.Throwable -> Lc0
            if (r5 == 0) goto L8e
            java.util.zip.GZIPOutputStream r0 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Throwable -> Lc8
            r0.<init>(r7)     // Catch: java.lang.Throwable -> Lc8
            r7 = r0
        L8e:
            boolean r0 = m5566e(r13)     // Catch: java.lang.Throwable -> Lc8
            if (r0 == 0) goto Lcd
            com.facebook.x r4 = new com.facebook.x     // Catch: java.lang.Throwable -> Lc8
            android.os.Handler r0 = r13.m6404c()     // Catch: java.lang.Throwable -> Lc8
            r4.<init>(r0)     // Catch: java.lang.Throwable -> Lc8
            r1 = 0
            r0 = r13
            m5548a(r0, r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> Lc8
            int r0 = r4.m6581a()     // Catch: java.lang.Throwable -> Lc8
            java.util.Map r9 = r4.m6584b()     // Catch: java.lang.Throwable -> Lc8
            com.facebook.y r6 = new com.facebook.y     // Catch: java.lang.Throwable -> Lc8
            long r10 = (long) r0     // Catch: java.lang.Throwable -> Lc8
            r8 = r13
            r6.<init>(r7, r8, r9, r10)     // Catch: java.lang.Throwable -> Lc8
            r4 = r6
        Lb2:
            r0 = r13
            r1 = r12
            m5548a(r0, r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> Lca
            if (r4 == 0) goto Lbc
            r4.close()
        Lbc:
            r12.m6008a()
            goto L74
        Lc0:
            r0 = move-exception
            r7 = r4
        Lc2:
            if (r7 == 0) goto Lc7
            r7.close()
        Lc7:
            throw r0
        Lc8:
            r0 = move-exception
            goto Lc2
        Lca:
            r0 = move-exception
            r7 = r4
            goto Lc2
        Lcd:
            r4 = r7
            goto Lb2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.m5549a(com.facebook.o, java.net.HttpURLConnection):void");
    }

    /* renamed from: a */
    private static void m5548a(C1110o c1110o, C1064o c1064o, int i, URL url, OutputStream outputStream, boolean z) {
        C0999f c0999f = new C0999f(outputStream, c1064o, z);
        if (i == 1) {
            GraphRequest graphRequest = c1110o.get(0);
            HashMap hashMap = new HashMap();
            for (String str : graphRequest.f5093l.keySet()) {
                Object obj = graphRequest.f5093l.get(str);
                if (m5565d(obj)) {
                    hashMap.put(str, new C0994a(graphRequest, obj));
                }
            }
            if (c1064o != null) {
                c1064o.m6012c("  Parameters:\n");
            }
            m5546a(graphRequest.f5093l, c0999f, graphRequest);
            if (c1064o != null) {
                c1064o.m6012c("  Attachments:\n");
            }
            m5553a(hashMap, c0999f);
            if (graphRequest.f5089h != null) {
                m5555a(graphRequest.f5089h, url.getPath(), c0999f);
                return;
            }
            return;
        }
        String m5570g = m5570g(c1110o);
        if (C1070u.m6098a(m5570g)) {
            throw new C1048h("App ID was not specified at the request or Settings.");
        }
        c0999f.mo5594a("batch_app_id", m5570g);
        HashMap hashMap2 = new HashMap();
        m5547a(c0999f, c1110o, hashMap2);
        if (c1064o != null) {
            c1064o.m6012c("  Attachments:\n");
        }
        m5553a(hashMap2, c0999f);
    }

    /* renamed from: a */
    private static boolean m5556a(String str) {
        Matcher matcher = f5084d.matcher(str);
        if (matcher.matches()) {
            str = matcher.group(1);
        }
        return str.startsWith("me/") || str.startsWith("/me/");
    }

    /* renamed from: a */
    private static void m5555a(JSONObject jSONObject, String str, InterfaceC0997d interfaceC0997d) {
        boolean z;
        if (m5556a(str)) {
            int indexOf = str.indexOf(":");
            int indexOf2 = str.indexOf("?");
            z = indexOf > 3 && (indexOf2 == -1 || indexOf < indexOf2);
        } else {
            z = false;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            m5551a(next, jSONObject.opt(next), interfaceC0997d, z && next.equalsIgnoreCase("image"));
        }
    }

    /* renamed from: a */
    private static void m5551a(String str, Object obj, InterfaceC0997d interfaceC0997d, boolean z) {
        Class<?> cls = obj.getClass();
        if (JSONObject.class.isAssignableFrom(cls)) {
            JSONObject jSONObject = (JSONObject) obj;
            if (z) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    m5551a(String.format("%s[%s]", str, next), jSONObject.opt(next), interfaceC0997d, z);
                }
                return;
            }
            if (jSONObject.has(TtmlNode.ATTR_ID)) {
                m5551a(str, jSONObject.optString(TtmlNode.ATTR_ID), interfaceC0997d, z);
                return;
            } else if (jSONObject.has("url")) {
                m5551a(str, jSONObject.optString("url"), interfaceC0997d, z);
                return;
            } else {
                if (jSONObject.has("fbsdk:create_object")) {
                    m5551a(str, jSONObject.toString(), interfaceC0997d, z);
                    return;
                }
                return;
            }
        }
        if (JSONArray.class.isAssignableFrom(cls)) {
            JSONArray jSONArray = (JSONArray) obj;
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                m5551a(String.format(Locale.ROOT, "%s[%d]", str, Integer.valueOf(i)), jSONArray.opt(i), interfaceC0997d, z);
            }
            return;
        }
        if (String.class.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls)) {
            interfaceC0997d.mo5594a(str, obj.toString());
        } else if (Date.class.isAssignableFrom(cls)) {
            interfaceC0997d.mo5594a(str, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj));
        }
    }

    /* renamed from: a */
    private static void m5546a(Bundle bundle, C0999f c0999f, GraphRequest graphRequest) {
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (m5567e(obj)) {
                c0999f.m5608a(str, obj, graphRequest);
            }
        }
    }

    /* renamed from: a */
    private static void m5553a(Map<String, C0994a> map, C0999f c0999f) {
        for (String str : map.keySet()) {
            C0994a c0994a = map.get(str);
            if (m5565d(c0994a.m5600b())) {
                c0999f.m5608a(str, c0994a.m5600b(), c0994a.m5599a());
            }
        }
    }

    /* renamed from: a */
    private static void m5547a(C0999f c0999f, Collection<GraphRequest> collection, Map<String, C0994a> map) {
        JSONArray jSONArray = new JSONArray();
        Iterator<GraphRequest> it = collection.iterator();
        while (it.hasNext()) {
            it.next().m5554a(jSONArray, map);
        }
        c0999f.m5610a("batch", jSONArray, collection);
    }

    /* renamed from: p */
    private static String m5574p() {
        return String.format("multipart/form-data; boundary=%s", f5082b);
    }

    /* renamed from: q */
    private static String m5575q() {
        if (f5085r == null) {
            f5085r = String.format("%s.%s", "FBAndroidSDK", "4.42.0");
            String m5995a = C1062m.m5995a();
            if (!C1070u.m6098a(m5995a)) {
                f5085r = String.format(Locale.ROOT, "%s/%s", f5085r, m5995a);
            }
        }
        return f5085r;
    }

    /* renamed from: g */
    private static String m5570g(C1110o c1110o) {
        String m5513k;
        if (!C1070u.m6098a(c1110o.m6407f())) {
            return c1110o.m6407f();
        }
        Iterator<GraphRequest> it = c1110o.iterator();
        while (it.hasNext()) {
            AccessToken accessToken = it.next().f5086e;
            if (accessToken != null && (m5513k = accessToken.m5513k()) != null) {
                return m5513k;
            }
        }
        if (!C1070u.m6098a(f5083c)) {
            return f5083c;
        }
        return C1074k.m6185j();
    }

    /* renamed from: d */
    private static boolean m5565d(Object obj) {
        return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof Uri) || (obj instanceof ParcelFileDescriptor) || (obj instanceof ParcelableResourceWithMimeType);
    }

    /* renamed from: e */
    public static boolean m5567e(Object obj) {
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
    }

    /* renamed from: f */
    public static String m5568f(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if ((obj instanceof Boolean) || (obj instanceof Number)) {
            return obj.toString();
        }
        if (obj instanceof Date) {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format(obj);
        }
        throw new IllegalArgumentException("Unsupported parameter type.");
    }

    /* renamed from: com.facebook.GraphRequest$f */
    private static class C0999f implements InterfaceC0997d {

        /* renamed from: a */
        private final OutputStream f5110a;

        /* renamed from: b */
        private final C1064o f5111b;

        /* renamed from: c */
        private boolean f5112c = true;

        /* renamed from: d */
        private boolean f5113d;

        public C0999f(OutputStream outputStream, C1064o c1064o, boolean z) {
            this.f5113d = false;
            this.f5110a = outputStream;
            this.f5111b = c1064o;
            this.f5113d = z;
        }

        /* renamed from: a */
        public void m5608a(String str, Object obj, GraphRequest graphRequest) {
            if (this.f5110a instanceof InterfaceC1166z) {
                ((InterfaceC1166z) this.f5110a).mo6583a(graphRequest);
            }
            if (GraphRequest.m5567e(obj)) {
                mo5594a(str, GraphRequest.m5568f(obj));
                return;
            }
            if (obj instanceof Bitmap) {
                m5605a(str, (Bitmap) obj);
                return;
            }
            if (obj instanceof byte[]) {
                m5611a(str, (byte[]) obj);
                return;
            }
            if (obj instanceof Uri) {
                m5606a(str, (Uri) obj, (String) null);
                return;
            }
            if (obj instanceof ParcelFileDescriptor) {
                m5607a(str, (ParcelFileDescriptor) obj, (String) null);
                return;
            }
            if (obj instanceof ParcelableResourceWithMimeType) {
                ParcelableResourceWithMimeType parcelableResourceWithMimeType = (ParcelableResourceWithMimeType) obj;
                Parcelable m5596b = parcelableResourceWithMimeType.m5596b();
                String m5595a = parcelableResourceWithMimeType.m5595a();
                if (m5596b instanceof ParcelFileDescriptor) {
                    m5607a(str, (ParcelFileDescriptor) m5596b, m5595a);
                    return;
                } else {
                    if (m5596b instanceof Uri) {
                        m5606a(str, (Uri) m5596b, m5595a);
                        return;
                    }
                    throw m5603b();
                }
            }
            throw m5603b();
        }

        /* renamed from: b */
        private RuntimeException m5603b() {
            return new IllegalArgumentException("value is not a supported type.");
        }

        /* renamed from: a */
        public void m5610a(String str, JSONArray jSONArray, Collection<GraphRequest> collection) {
            if (!(this.f5110a instanceof InterfaceC1166z)) {
                mo5594a(str, jSONArray.toString());
                return;
            }
            InterfaceC1166z interfaceC1166z = (InterfaceC1166z) this.f5110a;
            m5609a(str, (String) null, (String) null);
            m5612a("[", new Object[0]);
            int i = 0;
            for (GraphRequest graphRequest : collection) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                interfaceC1166z.mo6583a(graphRequest);
                if (i > 0) {
                    m5612a(",%s", jSONObject.toString());
                } else {
                    m5612a("%s", jSONObject.toString());
                }
                i++;
            }
            m5612a("]", new Object[0]);
            if (this.f5111b != null) {
                this.f5111b.m6009a("    " + str, (Object) jSONArray.toString());
            }
        }

        @Override // com.facebook.GraphRequest.InterfaceC0997d
        /* renamed from: a */
        public void mo5594a(String str, String str2) {
            m5609a(str, (String) null, (String) null);
            m5613b("%s", str2);
            m5604a();
            if (this.f5111b != null) {
                this.f5111b.m6009a("    " + str, (Object) str2);
            }
        }

        /* renamed from: a */
        public void m5605a(String str, Bitmap bitmap) {
            m5609a(str, str, "image/png");
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, this.f5110a);
            m5613b("", new Object[0]);
            m5604a();
            if (this.f5111b != null) {
                this.f5111b.m6009a("    " + str, (Object) "<Image>");
            }
        }

        /* renamed from: a */
        public void m5611a(String str, byte[] bArr) {
            m5609a(str, str, "content/unknown");
            this.f5110a.write(bArr);
            m5613b("", new Object[0]);
            m5604a();
            if (this.f5111b != null) {
                this.f5111b.m6009a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(bArr.length)));
            }
        }

        /* renamed from: a */
        public void m5606a(String str, Uri uri, String str2) {
            int m6063a;
            if (str2 == null) {
                str2 = "content/unknown";
            }
            m5609a(str, str, str2);
            if (this.f5110a instanceof C1164x) {
                ((C1164x) this.f5110a).m6582a(C1070u.m6110d(uri));
                m6063a = 0;
            } else {
                m6063a = C1070u.m6063a(C1074k.m6181f().getContentResolver().openInputStream(uri), this.f5110a) + 0;
            }
            m5613b("", new Object[0]);
            m5604a();
            if (this.f5111b != null) {
                this.f5111b.m6009a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(m6063a)));
            }
        }

        /* renamed from: a */
        public void m5607a(String str, ParcelFileDescriptor parcelFileDescriptor, String str2) {
            int m6063a;
            if (str2 == null) {
                str2 = "content/unknown";
            }
            m5609a(str, str, str2);
            if (this.f5110a instanceof C1164x) {
                ((C1164x) this.f5110a).m6582a(parcelFileDescriptor.getStatSize());
                m6063a = 0;
            } else {
                m6063a = C1070u.m6063a((InputStream) new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.f5110a) + 0;
            }
            m5613b("", new Object[0]);
            m5604a();
            if (this.f5111b != null) {
                this.f5111b.m6009a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(m6063a)));
            }
        }

        /* renamed from: a */
        public void m5604a() {
            if (!this.f5113d) {
                m5613b("--%s", GraphRequest.f5082b);
            } else {
                this.f5110a.write("&".getBytes());
            }
        }

        /* renamed from: a */
        public void m5609a(String str, String str2, String str3) {
            if (!this.f5113d) {
                m5612a("Content-Disposition: form-data; name=\"%s\"", str);
                if (str2 != null) {
                    m5612a("; filename=\"%s\"", str2);
                }
                m5613b("", new Object[0]);
                if (str3 != null) {
                    m5613b("%s: %s", "Content-Type", str3);
                }
                m5613b("", new Object[0]);
                return;
            }
            this.f5110a.write(String.format("%s=", str).getBytes());
        }

        /* renamed from: a */
        public void m5612a(String str, Object... objArr) {
            if (!this.f5113d) {
                if (this.f5112c) {
                    this.f5110a.write("--".getBytes());
                    this.f5110a.write(GraphRequest.f5082b.getBytes());
                    this.f5110a.write("\r\n".getBytes());
                    this.f5112c = false;
                }
                this.f5110a.write(String.format(str, objArr).getBytes());
                return;
            }
            this.f5110a.write(URLEncoder.encode(String.format(Locale.US, str, objArr), C1167C.UTF8_NAME).getBytes());
        }

        /* renamed from: b */
        public void m5613b(String str, Object... objArr) {
            m5612a(str, objArr);
            if (!this.f5113d) {
                m5612a("\r\n", new Object[0]);
            }
        }
    }

    public static class ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
        public static final Parcelable.Creator<ParcelableResourceWithMimeType> CREATOR = new Parcelable.Creator<ParcelableResourceWithMimeType>() { // from class: com.facebook.GraphRequest.ParcelableResourceWithMimeType.1
            C09931() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public ParcelableResourceWithMimeType createFromParcel(Parcel parcel) {
                return new ParcelableResourceWithMimeType(parcel, (C09891) null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public ParcelableResourceWithMimeType[] newArray(int i) {
                return new ParcelableResourceWithMimeType[i];
            }
        };

        /* renamed from: a */
        private final String f5106a;

        /* renamed from: b */
        private final RESOURCE f5107b;

        /* synthetic */ ParcelableResourceWithMimeType(Parcel parcel, C09891 c09891) {
            this(parcel);
        }

        /* renamed from: a */
        public String m5595a() {
            return this.f5106a;
        }

        /* renamed from: b */
        public RESOURCE m5596b() {
            return this.f5107b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f5106a);
            parcel.writeParcelable(this.f5107b, i);
        }

        /* renamed from: com.facebook.GraphRequest$ParcelableResourceWithMimeType$1 */
        static class C09931 implements Parcelable.Creator<ParcelableResourceWithMimeType> {
            C09931() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public ParcelableResourceWithMimeType createFromParcel(Parcel parcel) {
                return new ParcelableResourceWithMimeType(parcel, (C09891) null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public ParcelableResourceWithMimeType[] newArray(int i) {
                return new ParcelableResourceWithMimeType[i];
            }
        }

        public ParcelableResourceWithMimeType(RESOURCE resource, String str) {
            this.f5106a = str;
            this.f5107b = resource;
        }

        private ParcelableResourceWithMimeType(Parcel parcel) {
            this.f5106a = parcel.readString();
            this.f5107b = (RESOURCE) parcel.readParcelable(C1074k.m6181f().getClassLoader());
        }
    }
}
