package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.C1056g;
import com.facebook.internal.C1060k;
import com.facebook.internal.C1061l;
import com.facebook.internal.C1070u;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import java.net.HttpURLConnection;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes.dex */
public final class FacebookRequestError implements Parcelable {

    /* renamed from: b */
    private final EnumC0987a f5061b;

    /* renamed from: c */
    private final int f5062c;

    /* renamed from: d */
    private final int f5063d;

    /* renamed from: e */
    private final int f5064e;

    /* renamed from: f */
    private final String f5065f;

    /* renamed from: g */
    private final String f5066g;

    /* renamed from: h */
    private final String f5067h;

    /* renamed from: i */
    private final String f5068i;

    /* renamed from: j */
    private final String f5069j;

    /* renamed from: k */
    private final JSONObject f5070k;

    /* renamed from: l */
    private final JSONObject f5071l;

    /* renamed from: m */
    private final Object f5072m;

    /* renamed from: n */
    private final HttpURLConnection f5073n;

    /* renamed from: o */
    private final C1048h f5074o;

    /* renamed from: a */
    static final C0988b f5060a = new C0988b(200, 299);
    public static final Parcelable.Creator<FacebookRequestError> CREATOR = new Parcelable.Creator<FacebookRequestError>() { // from class: com.facebook.FacebookRequestError.1
        C09861() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FacebookRequestError createFromParcel(Parcel parcel) {
            return new FacebookRequestError(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FacebookRequestError[] newArray(int i) {
            return new FacebookRequestError[i];
        }
    };

    /* renamed from: com.facebook.FacebookRequestError$a */
    public enum EnumC0987a {
        LOGIN_RECOVERABLE,
        OTHER,
        TRANSIENT
    }

    /* synthetic */ FacebookRequestError(Parcel parcel, C09861 c09861) {
        this(parcel);
    }

    /* renamed from: com.facebook.FacebookRequestError$b */
    private static class C0988b {

        /* renamed from: a */
        private final int f5079a;

        /* renamed from: b */
        private final int f5080b;

        /* synthetic */ C0988b(int i, int i2, C09861 c09861) {
            this(i, i2);
        }

        private C0988b(int i, int i2) {
            this.f5079a = i;
            this.f5080b = i2;
        }

        /* renamed from: a */
        boolean m5536a(int i) {
            return this.f5079a <= i && i <= this.f5080b;
        }
    }

    private FacebookRequestError(int i, int i2, int i3, String str, String str2, String str3, String str4, boolean z, JSONObject jSONObject, JSONObject jSONObject2, Object obj, HttpURLConnection httpURLConnection, C1048h c1048h) {
        this.f5062c = i;
        this.f5063d = i2;
        this.f5064e = i3;
        this.f5065f = str;
        this.f5066g = str2;
        this.f5071l = jSONObject;
        this.f5070k = jSONObject2;
        this.f5072m = obj;
        this.f5073n = httpURLConnection;
        this.f5067h = str3;
        this.f5068i = str4;
        boolean z2 = false;
        if (c1048h != null) {
            this.f5074o = c1048h;
            z2 = true;
        } else {
            this.f5074o = new C1108m(this, str2);
        }
        C1056g m5527g = m5527g();
        this.f5061b = z2 ? EnumC0987a.OTHER : m5527g.m5954a(i2, i3, z);
        this.f5069j = m5527g.m5955a(this.f5061b);
    }

    FacebookRequestError(HttpURLConnection httpURLConnection, Exception exc) {
        this(-1, -1, -1, null, null, null, null, false, null, null, null, httpURLConnection, exc instanceof C1048h ? (C1048h) exc : new C1048h(exc));
    }

    public FacebookRequestError(int i, String str, String str2) {
        this(-1, i, -1, str, str2, null, null, false, null, null, null, null, null);
    }

    /* renamed from: a */
    public int m5528a() {
        return this.f5062c;
    }

    /* renamed from: b */
    public int m5529b() {
        return this.f5063d;
    }

    /* renamed from: c */
    public int m5530c() {
        return this.f5064e;
    }

    /* renamed from: d */
    public String m5531d() {
        return this.f5065f;
    }

    /* renamed from: e */
    public String m5532e() {
        return this.f5066g != null ? this.f5066g : this.f5074o.getLocalizedMessage();
    }

    /* renamed from: f */
    public C1048h m5533f() {
        return this.f5074o;
    }

    public String toString() {
        return "{HttpStatus: " + this.f5062c + ", errorCode: " + this.f5063d + ", subErrorCode: " + this.f5064e + ", errorType: " + this.f5065f + ", errorMessage: " + m5532e() + "}";
    }

    /* renamed from: a */
    static FacebookRequestError m5526a(JSONObject jSONObject, Object obj, HttpURLConnection httpURLConnection) {
        try {
            if (jSONObject.has("code")) {
                int i = jSONObject.getInt("code");
                Object m6068a = C1070u.m6068a(jSONObject, TtmlNode.TAG_BODY, "FACEBOOK_NON_JSON_RESULT");
                if (m6068a != null && (m6068a instanceof JSONObject)) {
                    JSONObject jSONObject2 = (JSONObject) m6068a;
                    String str = null;
                    String str2 = null;
                    String str3 = null;
                    String str4 = null;
                    boolean z = false;
                    int i2 = -1;
                    int i3 = -1;
                    boolean z2 = false;
                    if (jSONObject2.has(IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR)) {
                        JSONObject jSONObject3 = (JSONObject) C1070u.m6068a(jSONObject2, IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR, (String) null);
                        str = jSONObject3.optString(IjkMediaMeta.IJKM_KEY_TYPE, null);
                        str2 = jSONObject3.optString("message", null);
                        i2 = jSONObject3.optInt("code", -1);
                        i3 = jSONObject3.optInt("error_subcode", -1);
                        str3 = jSONObject3.optString("error_user_msg", null);
                        str4 = jSONObject3.optString("error_user_title", null);
                        z = jSONObject3.optBoolean("is_transient", false);
                        z2 = true;
                    } else if (jSONObject2.has("error_code") || jSONObject2.has("error_msg") || jSONObject2.has("error_reason")) {
                        str = jSONObject2.optString("error_reason", null);
                        str2 = jSONObject2.optString("error_msg", null);
                        i2 = jSONObject2.optInt("error_code", -1);
                        i3 = jSONObject2.optInt("error_subcode", -1);
                        z2 = true;
                    }
                    if (z2) {
                        return new FacebookRequestError(i, i2, i3, str, str2, str4, str3, z, jSONObject2, jSONObject, obj, httpURLConnection, null);
                    }
                }
                if (!f5060a.m5536a(i)) {
                    return new FacebookRequestError(i, -1, -1, null, null, null, null, false, jSONObject.has(TtmlNode.TAG_BODY) ? (JSONObject) C1070u.m6068a(jSONObject, TtmlNode.TAG_BODY, "FACEBOOK_NON_JSON_RESULT") : null, jSONObject, obj, httpURLConnection, null);
                }
            }
        } catch (JSONException e) {
        }
        return null;
    }

    /* renamed from: g */
    static synchronized C1056g m5527g() {
        C1056g m5950a;
        synchronized (FacebookRequestError.class) {
            C1060k m5978a = C1061l.m5978a(C1074k.m6185j());
            m5950a = m5978a == null ? C1056g.m5950a() : m5978a.m5969f();
        }
        return m5950a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f5062c);
        parcel.writeInt(this.f5063d);
        parcel.writeInt(this.f5064e);
        parcel.writeString(this.f5065f);
        parcel.writeString(this.f5066g);
        parcel.writeString(this.f5067h);
        parcel.writeString(this.f5068i);
    }

    /* renamed from: com.facebook.FacebookRequestError$1 */
    static class C09861 implements Parcelable.Creator<FacebookRequestError> {
        C09861() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FacebookRequestError createFromParcel(Parcel parcel) {
            return new FacebookRequestError(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FacebookRequestError[] newArray(int i) {
            return new FacebookRequestError[i];
        }
    }

    private FacebookRequestError(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), false, null, null, null, null, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
