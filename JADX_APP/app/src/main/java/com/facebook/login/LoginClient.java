package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.C1048h;
import com.facebook.internal.C1053d;
import com.facebook.internal.C1070u;
import com.facebook.internal.C1071v;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes.dex */
class LoginClient implements Parcelable {
    public static final Parcelable.Creator<LoginClient> CREATOR = new Parcelable.Creator<LoginClient>() { // from class: com.facebook.login.LoginClient.1
        C10911() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LoginClient createFromParcel(Parcel parcel) {
            return new LoginClient(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LoginClient[] newArray(int i) {
            return new LoginClient[i];
        }
    };

    /* renamed from: a */
    LoginMethodHandler[] f5663a;

    /* renamed from: b */
    int f5664b;

    /* renamed from: c */
    Fragment f5665c;

    /* renamed from: d */
    InterfaceC1096b f5666d;

    /* renamed from: e */
    InterfaceC1095a f5667e;

    /* renamed from: f */
    boolean f5668f;

    /* renamed from: g */
    Request f5669g;

    /* renamed from: h */
    Map<String, String> f5670h;

    /* renamed from: i */
    Map<String, String> f5671i;

    /* renamed from: j */
    private C1104e f5672j;

    /* renamed from: com.facebook.login.LoginClient$a */
    interface InterfaceC1095a {
        /* renamed from: a */
        void mo6317a();

        /* renamed from: b */
        void mo6318b();
    }

    /* renamed from: com.facebook.login.LoginClient$b */
    public interface InterfaceC1096b {
        /* renamed from: a */
        void mo6319a(Result result);
    }

    public LoginClient(Fragment fragment) {
        this.f5664b = -1;
        this.f5665c = fragment;
    }

    /* renamed from: a */
    public Fragment m6273a() {
        return this.f5665c;
    }

    /* renamed from: a */
    void m6274a(Fragment fragment) {
        if (this.f5665c != null) {
            throw new C1048h("Can't set fragment once it is already set.");
        }
        this.f5665c = fragment;
    }

    /* renamed from: b */
    FragmentActivity m6280b() {
        return this.f5665c.getActivity();
    }

    /* renamed from: c */
    public Request m6283c() {
        return this.f5669g;
    }

    /* renamed from: d */
    public static int m6267d() {
        return C1053d.b.Login.m5942a();
    }

    /* renamed from: a */
    void m6275a(Request request) {
        if (!m6286e()) {
            m6281b(request);
        }
    }

    /* renamed from: b */
    void m6281b(Request request) {
        if (request != null) {
            if (this.f5669g != null) {
                throw new C1048h("Attempted to authorize while a request is pending.");
            }
            if (!AccessToken.m5503b() || m6289h()) {
                this.f5669g = request;
                this.f5663a = m6285c(request);
                m6290i();
            }
        }
    }

    /* renamed from: e */
    boolean m6286e() {
        return this.f5669g != null && this.f5664b >= 0;
    }

    /* renamed from: f */
    void m6287f() {
        if (this.f5664b >= 0) {
            m6288g().mo6257b();
        }
    }

    /* renamed from: g */
    LoginMethodHandler m6288g() {
        if (this.f5664b >= 0) {
            return this.f5663a[this.f5664b];
        }
        return null;
    }

    /* renamed from: a */
    public boolean m6279a(int i, int i2, Intent intent) {
        if (this.f5669g != null) {
            return m6288g().mo6204a(i, i2, intent);
        }
        return false;
    }

    /* renamed from: c */
    protected LoginMethodHandler[] m6285c(Request request) {
        ArrayList arrayList = new ArrayList();
        EnumC1102c m6299b = request.m6299b();
        if (m6299b.m6346a()) {
            arrayList.add(new GetTokenLoginMethodHandler(this));
        }
        if (m6299b.m6347b()) {
            arrayList.add(new KatanaProxyLoginMethodHandler(this));
        }
        if (m6299b.m6351f()) {
            arrayList.add(new FacebookLiteLoginMethodHandler(this));
        }
        if (m6299b.m6350e()) {
            arrayList.add(new CustomTabLoginMethodHandler(this));
        }
        if (m6299b.m6348c()) {
            arrayList.add(new WebViewLoginMethodHandler(this));
        }
        if (m6299b.m6349d()) {
            arrayList.add(new DeviceAuthMethodHandler(this));
        }
        LoginMethodHandler[] loginMethodHandlerArr = new LoginMethodHandler[arrayList.size()];
        arrayList.toArray(loginMethodHandlerArr);
        return loginMethodHandlerArr;
    }

    /* renamed from: h */
    boolean m6289h() {
        if (this.f5668f) {
            return true;
        }
        if (m6272a("android.permission.INTERNET") != 0) {
            FragmentActivity m6280b = m6280b();
            m6282b(Result.m6312a(this.f5669g, m6280b.getString(com.facebook.common.R.string.com_facebook_internet_permission_error_title), m6280b.getString(com.facebook.common.R.string.com_facebook_internet_permission_error_message)));
            return false;
        }
        this.f5668f = true;
        return true;
    }

    /* renamed from: i */
    void m6290i() {
        if (this.f5664b >= 0) {
            m6265a(m6288g().mo6202a(), "skipped", null, null, m6288g().f5694a);
        }
        while (this.f5663a != null && this.f5664b < this.f5663a.length - 1) {
            this.f5664b++;
            if (m6291j()) {
                return;
            }
        }
        if (this.f5669g != null) {
            m6270n();
        }
    }

    /* renamed from: n */
    private void m6270n() {
        m6282b(Result.m6312a(this.f5669g, "Login attempt failed.", null));
    }

    /* renamed from: a */
    private void m6266a(String str, String str2, boolean z) {
        if (this.f5670h == null) {
            this.f5670h = new HashMap();
        }
        if (this.f5670h.containsKey(str) && z) {
            str2 = this.f5670h.get(str) + "," + str2;
        }
        this.f5670h.put(str, str2);
    }

    /* renamed from: j */
    boolean m6291j() {
        boolean z = false;
        LoginMethodHandler m6288g = m6288g();
        if (m6288g.mo6327e() && !m6289h()) {
            m6266a("no_internet_permission", "1", false);
        } else {
            z = m6288g.mo6205a(this.f5669g);
            if (z) {
                m6271o().m6361a(this.f5669g.m6302e(), m6288g.mo6202a());
            } else {
                m6271o().m6365b(this.f5669g.m6302e(), m6288g.mo6202a());
                m6266a("not_tried", m6288g.mo6202a(), true);
            }
        }
        return z;
    }

    /* renamed from: a */
    void m6276a(Result result) {
        if (result.f5683b != null && AccessToken.m5503b()) {
            m6284c(result);
        } else {
            m6282b(result);
        }
    }

    /* renamed from: b */
    void m6282b(Result result) {
        LoginMethodHandler m6288g = m6288g();
        if (m6288g != null) {
            m6264a(m6288g.mo6202a(), result, m6288g.f5694a);
        }
        if (this.f5670h != null) {
            result.f5687f = this.f5670h;
        }
        if (this.f5671i != null) {
            result.f5688g = this.f5671i;
        }
        this.f5663a = null;
        this.f5664b = -1;
        this.f5669g = null;
        this.f5670h = null;
        m6268d(result);
    }

    /* renamed from: a */
    void m6278a(InterfaceC1096b interfaceC1096b) {
        this.f5666d = interfaceC1096b;
    }

    /* renamed from: a */
    void m6277a(InterfaceC1095a interfaceC1095a) {
        this.f5667e = interfaceC1095a;
    }

    /* renamed from: a */
    int m6272a(String str) {
        return m6280b().checkCallingOrSelfPermission(str);
    }

    /* renamed from: c */
    void m6284c(Result result) {
        Result m6312a;
        if (result.f5683b == null) {
            throw new C1048h("Can't validate without a token");
        }
        AccessToken m5496a = AccessToken.m5496a();
        AccessToken accessToken = result.f5683b;
        if (m5496a != null && accessToken != null) {
            try {
                if (m5496a.m5514l().equals(accessToken.m5514l())) {
                    m6312a = Result.m6310a(this.f5669g, result.f5683b);
                    m6282b(m6312a);
                }
            } catch (Exception e) {
                m6282b(Result.m6312a(this.f5669g, "Caught exception", e.getMessage()));
                return;
            }
        }
        m6312a = Result.m6312a(this.f5669g, "User logged in as different Facebook user.", null);
        m6282b(m6312a);
    }

    /* renamed from: o */
    private C1104e m6271o() {
        if (this.f5672j == null || !this.f5672j.m6359a().equals(this.f5669g.m6301d())) {
            this.f5672j = new C1104e(m6280b(), this.f5669g.m6301d());
        }
        return this.f5672j;
    }

    /* renamed from: d */
    private void m6268d(Result result) {
        if (this.f5666d != null) {
            this.f5666d.mo6319a(result);
        }
    }

    /* renamed from: k */
    void m6292k() {
        if (this.f5667e != null) {
            this.f5667e.mo6317a();
        }
    }

    /* renamed from: l */
    void m6293l() {
        if (this.f5667e != null) {
            this.f5667e.mo6318b();
        }
    }

    /* renamed from: a */
    private void m6264a(String str, Result result, Map<String, String> map) {
        m6265a(str, result.f5682a.m6316a(), result.f5684c, result.f5685d, map);
    }

    /* renamed from: a */
    private void m6265a(String str, String str2, String str3, String str4, Map<String, String> map) {
        if (this.f5669g == null) {
            m6271o().m6362a("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", str);
        } else {
            m6271o().m6363a(this.f5669g.m6302e(), str, str2, str3, str4, map);
        }
    }

    /* renamed from: m */
    static String m6269m() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    public static class Request implements Parcelable {
        public static final Parcelable.Creator<Request> CREATOR = new Parcelable.Creator<Request>() { // from class: com.facebook.login.LoginClient.Request.1
            C10921() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Request createFromParcel(Parcel parcel) {
                return new Request(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Request[] newArray(int i) {
                return new Request[i];
            }
        };

        /* renamed from: a */
        private final EnumC1102c f5673a;

        /* renamed from: b */
        private Set<String> f5674b;

        /* renamed from: c */
        private final EnumC1100a f5675c;

        /* renamed from: d */
        private final String f5676d;

        /* renamed from: e */
        private final String f5677e;

        /* renamed from: f */
        private boolean f5678f;

        /* renamed from: g */
        private String f5679g;

        /* renamed from: h */
        private String f5680h;

        /* renamed from: i */
        private String f5681i;

        /* synthetic */ Request(Parcel parcel, C10911 c10911) {
            this(parcel);
        }

        Request(EnumC1102c enumC1102c, Set<String> set, EnumC1100a enumC1100a, String str, String str2, String str3) {
            this.f5678f = false;
            this.f5673a = enumC1102c;
            this.f5674b = set == null ? new HashSet<>() : set;
            this.f5675c = enumC1100a;
            this.f5680h = str;
            this.f5676d = str2;
            this.f5677e = str3;
        }

        /* renamed from: a */
        Set<String> m6296a() {
            return this.f5674b;
        }

        /* renamed from: a */
        void m6297a(Set<String> set) {
            C1071v.m6125a((Object) set, "permissions");
            this.f5674b = set;
        }

        /* renamed from: b */
        EnumC1102c m6299b() {
            return this.f5673a;
        }

        /* renamed from: c */
        EnumC1100a m6300c() {
            return this.f5675c;
        }

        /* renamed from: d */
        String m6301d() {
            return this.f5676d;
        }

        /* renamed from: e */
        String m6302e() {
            return this.f5677e;
        }

        /* renamed from: f */
        boolean m6303f() {
            return this.f5678f;
        }

        /* renamed from: a */
        void m6298a(boolean z) {
            this.f5678f = z;
        }

        /* renamed from: g */
        String m6304g() {
            return this.f5679g;
        }

        /* renamed from: h */
        String m6305h() {
            return this.f5681i;
        }

        /* renamed from: i */
        String m6306i() {
            return this.f5680h;
        }

        /* renamed from: j */
        boolean m6307j() {
            Iterator<String> it = this.f5674b.iterator();
            while (it.hasNext()) {
                if (C1105f.m6375a(it.next())) {
                    return true;
                }
            }
            return false;
        }

        private Request(Parcel parcel) {
            this.f5678f = false;
            String readString = parcel.readString();
            this.f5673a = readString != null ? EnumC1102c.valueOf(readString) : null;
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.f5674b = new HashSet(arrayList);
            String readString2 = parcel.readString();
            this.f5675c = readString2 != null ? EnumC1100a.valueOf(readString2) : null;
            this.f5676d = parcel.readString();
            this.f5677e = parcel.readString();
            this.f5678f = parcel.readByte() != 0;
            this.f5679g = parcel.readString();
            this.f5680h = parcel.readString();
            this.f5681i = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f5673a != null ? this.f5673a.name() : null);
            parcel.writeStringList(new ArrayList(this.f5674b));
            parcel.writeString(this.f5675c != null ? this.f5675c.name() : null);
            parcel.writeString(this.f5676d);
            parcel.writeString(this.f5677e);
            parcel.writeByte((byte) (this.f5678f ? 1 : 0));
            parcel.writeString(this.f5679g);
            parcel.writeString(this.f5680h);
            parcel.writeString(this.f5681i);
        }

        /* renamed from: com.facebook.login.LoginClient$Request$1 */
        static class C10921 implements Parcelable.Creator<Request> {
            C10921() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Request createFromParcel(Parcel parcel) {
                return new Request(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Request[] newArray(int i) {
                return new Request[i];
            }
        }
    }

    public static class Result implements Parcelable {
        public static final Parcelable.Creator<Result> CREATOR = new Parcelable.Creator<Result>() { // from class: com.facebook.login.LoginClient.Result.1
            C10931() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Result createFromParcel(Parcel parcel) {
                return new Result(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Result[] newArray(int i) {
                return new Result[i];
            }
        };

        /* renamed from: a */
        final EnumC1094a f5682a;

        /* renamed from: b */
        final AccessToken f5683b;

        /* renamed from: c */
        final String f5684c;

        /* renamed from: d */
        final String f5685d;

        /* renamed from: e */
        final Request f5686e;

        /* renamed from: f */
        public Map<String, String> f5687f;

        /* renamed from: g */
        public Map<String, String> f5688g;

        /* synthetic */ Result(Parcel parcel, C10911 c10911) {
            this(parcel);
        }

        /* renamed from: com.facebook.login.LoginClient$Result$a */
        enum EnumC1094a {
            SUCCESS("success"),
            CANCEL("cancel"),
            ERROR(IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR);


            /* renamed from: d */
            private final String f5693d;

            EnumC1094a(String str) {
                this.f5693d = str;
            }

            /* renamed from: a */
            String m6316a() {
                return this.f5693d;
            }
        }

        Result(Request request, EnumC1094a enumC1094a, AccessToken accessToken, String str, String str2) {
            C1071v.m6125a(enumC1094a, "code");
            this.f5686e = request;
            this.f5683b = accessToken;
            this.f5684c = str;
            this.f5682a = enumC1094a;
            this.f5685d = str2;
        }

        /* renamed from: a */
        static Result m6310a(Request request, AccessToken accessToken) {
            return new Result(request, EnumC1094a.SUCCESS, accessToken, null, null);
        }

        /* renamed from: a */
        static Result m6311a(Request request, String str) {
            return new Result(request, EnumC1094a.CANCEL, null, str, null);
        }

        /* renamed from: a */
        static Result m6312a(Request request, String str, String str2) {
            return m6313a(request, str, str2, null);
        }

        /* renamed from: a */
        static Result m6313a(Request request, String str, String str2, String str3) {
            return new Result(request, EnumC1094a.ERROR, null, TextUtils.join(": ", C1070u.m6103b(str, str2)), str3);
        }

        private Result(Parcel parcel) {
            this.f5682a = EnumC1094a.valueOf(parcel.readString());
            this.f5683b = (AccessToken) parcel.readParcelable(AccessToken.class.getClassLoader());
            this.f5684c = parcel.readString();
            this.f5685d = parcel.readString();
            this.f5686e = (Request) parcel.readParcelable(Request.class.getClassLoader());
            this.f5687f = C1070u.m6081a(parcel);
            this.f5688g = C1070u.m6081a(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f5682a.name());
            parcel.writeParcelable(this.f5683b, i);
            parcel.writeString(this.f5684c);
            parcel.writeString(this.f5685d);
            parcel.writeParcelable(this.f5686e, i);
            C1070u.m6085a(parcel, this.f5687f);
            C1070u.m6085a(parcel, this.f5688g);
        }

        /* renamed from: com.facebook.login.LoginClient$Result$1 */
        static class C10931 implements Parcelable.Creator<Result> {
            C10931() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Result createFromParcel(Parcel parcel) {
                return new Result(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Result[] newArray(int i) {
                return new Result[i];
            }
        }
    }

    public LoginClient(Parcel parcel) {
        this.f5664b = -1;
        Parcelable[] readParcelableArray = parcel.readParcelableArray(LoginMethodHandler.class.getClassLoader());
        this.f5663a = new LoginMethodHandler[readParcelableArray.length];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < readParcelableArray.length) {
                this.f5663a[i2] = (LoginMethodHandler) readParcelableArray[i2];
                this.f5663a[i2].m6324a(this);
                i = i2 + 1;
            } else {
                this.f5664b = parcel.readInt();
                this.f5669g = (Request) parcel.readParcelable(Request.class.getClassLoader());
                this.f5670h = C1070u.m6081a(parcel);
                this.f5671i = C1070u.m6081a(parcel);
                return;
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelableArray(this.f5663a, i);
        parcel.writeInt(this.f5664b);
        parcel.writeParcelable(this.f5669g, i);
        C1070u.m6085a(parcel, this.f5670h);
        C1070u.m6085a(parcel, this.f5671i);
    }

    /* renamed from: com.facebook.login.LoginClient$1 */
    static class C10911 implements Parcelable.Creator<LoginClient> {
        C10911() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LoginClient createFromParcel(Parcel parcel) {
            return new LoginClient(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LoginClient[] newArray(int i) {
            return new LoginClient[i];
        }
    }
}
