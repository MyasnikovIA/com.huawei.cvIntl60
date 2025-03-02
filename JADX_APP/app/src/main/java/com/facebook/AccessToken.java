package com.facebook;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.internal.C1070u;
import com.facebook.internal.C1071v;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class AccessToken implements Parcelable {

    /* renamed from: e */
    private final Date f5036e;

    /* renamed from: f */
    private final Set<String> f5037f;

    /* renamed from: g */
    private final Set<String> f5038g;

    /* renamed from: h */
    private final String f5039h;

    /* renamed from: i */
    private final EnumC1043c f5040i;

    /* renamed from: j */
    private final Date f5041j;

    /* renamed from: k */
    private final String f5042k;

    /* renamed from: l */
    private final String f5043l;

    /* renamed from: m */
    private final Date f5044m;

    /* renamed from: a */
    private static final Date f5032a = new Date(Long.MAX_VALUE);

    /* renamed from: b */
    private static final Date f5033b = f5032a;

    /* renamed from: c */
    private static final Date f5034c = new Date();

    /* renamed from: d */
    private static final EnumC1043c f5035d = EnumC1043c.FACEBOOK_APPLICATION_WEB;
    public static final Parcelable.Creator<AccessToken> CREATOR = new Parcelable.Creator() { // from class: com.facebook.AccessToken.1
        C09821() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AccessToken createFromParcel(Parcel parcel) {
            return new AccessToken(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AccessToken[] newArray(int i) {
            return new AccessToken[i];
        }
    };

    /* renamed from: com.facebook.AccessToken$a */
    public interface InterfaceC0983a {
        /* renamed from: a */
        void m5519a(AccessToken accessToken);

        /* renamed from: a */
        void m5520a(C1048h c1048h);
    }

    public AccessToken(String str, String str2, String str3, @Nullable Collection<String> collection, @Nullable Collection<String> collection2, @Nullable EnumC1043c enumC1043c, @Nullable Date date, @Nullable Date date2, @Nullable Date date3) {
        C1071v.m6126a(str, "accessToken");
        C1071v.m6126a(str2, "applicationId");
        C1071v.m6126a(str3, "userId");
        this.f5036e = date == null ? f5033b : date;
        this.f5037f = Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet());
        this.f5038g = Collections.unmodifiableSet(collection2 != null ? new HashSet(collection2) : new HashSet());
        this.f5039h = str;
        this.f5040i = enumC1043c == null ? f5035d : enumC1043c;
        this.f5041j = date2 == null ? f5034c : date2;
        this.f5042k = str2;
        this.f5043l = str3;
        this.f5044m = (date3 == null || date3.getTime() == 0) ? f5033b : date3;
    }

    /* renamed from: a */
    public static AccessToken m5496a() {
        return C1041b.m5891a().m5902b();
    }

    /* renamed from: b */
    public static boolean m5503b() {
        AccessToken m5902b = C1041b.m5891a().m5902b();
        return (m5902b == null || m5902b.m5515m()) ? false : true;
    }

    /* renamed from: c */
    static void m5504c() {
        AccessToken m5902b = C1041b.m5891a().m5902b();
        if (m5902b != null) {
            m5500a(m5502b(m5902b));
        }
    }

    /* renamed from: a */
    public static void m5500a(AccessToken accessToken) {
        C1041b.m5891a().m5901a(accessToken);
    }

    /* renamed from: d */
    public String m5506d() {
        return this.f5039h;
    }

    /* renamed from: e */
    public Date m5507e() {
        return this.f5036e;
    }

    /* renamed from: f */
    public Date m5508f() {
        return this.f5044m;
    }

    /* renamed from: g */
    public Set<String> m5509g() {
        return this.f5037f;
    }

    /* renamed from: h */
    public Set<String> m5510h() {
        return this.f5038g;
    }

    /* renamed from: i */
    public EnumC1043c m5511i() {
        return this.f5040i;
    }

    /* renamed from: j */
    public Date m5512j() {
        return this.f5041j;
    }

    /* renamed from: k */
    public String m5513k() {
        return this.f5042k;
    }

    /* renamed from: l */
    public String m5514l() {
        return this.f5043l;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{AccessToken");
        sb.append(" token:").append(m5505o());
        m5501a(sb);
        sb.append("}");
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessToken)) {
            return false;
        }
        AccessToken accessToken = (AccessToken) obj;
        return this.f5036e.equals(accessToken.f5036e) && this.f5037f.equals(accessToken.f5037f) && this.f5038g.equals(accessToken.f5038g) && this.f5039h.equals(accessToken.f5039h) && this.f5040i == accessToken.f5040i && this.f5041j.equals(accessToken.f5041j) && (this.f5042k != null ? this.f5042k.equals(accessToken.f5042k) : accessToken.f5042k == null) && this.f5043l.equals(accessToken.f5043l) && this.f5044m.equals(accessToken.f5044m);
    }

    public int hashCode() {
        return (((((this.f5042k == null ? 0 : this.f5042k.hashCode()) + ((((((((((((this.f5036e.hashCode() + 527) * 31) + this.f5037f.hashCode()) * 31) + this.f5038g.hashCode()) * 31) + this.f5039h.hashCode()) * 31) + this.f5040i.hashCode()) * 31) + this.f5041j.hashCode()) * 31)) * 31) + this.f5043l.hashCode()) * 31) + this.f5044m.hashCode();
    }

    /* renamed from: b */
    static AccessToken m5502b(AccessToken accessToken) {
        return new AccessToken(accessToken.f5039h, accessToken.f5042k, accessToken.m5514l(), accessToken.m5509g(), accessToken.m5510h(), accessToken.f5040i, new Date(), new Date(), accessToken.f5044m);
    }

    /* renamed from: a */
    static AccessToken m5497a(Bundle bundle) {
        List<String> m5499a = m5499a(bundle, "com.facebook.TokenCachingStrategy.Permissions");
        List<String> m5499a2 = m5499a(bundle, "com.facebook.TokenCachingStrategy.DeclinedPermissions");
        String m6426d = C1113s.m6426d(bundle);
        if (C1070u.m6098a(m6426d)) {
            m6426d = C1074k.m6185j();
        }
        String m6424b = C1113s.m6424b(bundle);
        try {
            return new AccessToken(m6424b, m6426d, C1070u.m6111d(m6424b).getString(TtmlNode.ATTR_ID), m5499a, m5499a2, C1113s.m6425c(bundle), C1113s.m6421a(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), C1113s.m6421a(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"), null);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    static List<String> m5499a(Bundle bundle, String str) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList(str);
        if (stringArrayList == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(new ArrayList(stringArrayList));
    }

    /* renamed from: m */
    public boolean m5515m() {
        return new Date().after(this.f5036e);
    }

    /* renamed from: n */
    JSONObject m5516n() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", 1);
        jSONObject.put("token", this.f5039h);
        jSONObject.put("expires_at", this.f5036e.getTime());
        jSONObject.put("permissions", new JSONArray((Collection) this.f5037f));
        jSONObject.put("declined_permissions", new JSONArray((Collection) this.f5038g));
        jSONObject.put("last_refresh", this.f5041j.getTime());
        jSONObject.put("source", this.f5040i.name());
        jSONObject.put("application_id", this.f5042k);
        jSONObject.put("user_id", this.f5043l);
        jSONObject.put("data_access_expiration_time", this.f5044m.getTime());
        return jSONObject;
    }

    /* renamed from: a */
    static AccessToken m5498a(JSONObject jSONObject) {
        if (jSONObject.getInt("version") > 1) {
            throw new C1048h("Unknown AccessToken serialization format.");
        }
        String string = jSONObject.getString("token");
        Date date = new Date(jSONObject.getLong("expires_at"));
        JSONArray jSONArray = jSONObject.getJSONArray("permissions");
        JSONArray jSONArray2 = jSONObject.getJSONArray("declined_permissions");
        Date date2 = new Date(jSONObject.getLong("last_refresh"));
        EnumC1043c valueOf = EnumC1043c.valueOf(jSONObject.getString("source"));
        return new AccessToken(string, jSONObject.getString("application_id"), jSONObject.getString("user_id"), C1070u.m6079a(jSONArray), C1070u.m6079a(jSONArray2), valueOf, date, date2, new Date(jSONObject.optLong("data_access_expiration_time", 0L)));
    }

    /* renamed from: o */
    private String m5505o() {
        if (this.f5039h == null) {
            return "null";
        }
        if (C1074k.m6173a(EnumC1160t.INCLUDE_ACCESS_TOKENS)) {
            return this.f5039h;
        }
        return "ACCESS_TOKEN_REMOVED";
    }

    /* renamed from: a */
    private void m5501a(StringBuilder sb) {
        sb.append(" permissions:");
        if (this.f5037f == null) {
            sb.append("null");
            return;
        }
        sb.append("[");
        sb.append(TextUtils.join(", ", this.f5037f));
        sb.append("]");
    }

    AccessToken(Parcel parcel) {
        this.f5036e = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        this.f5037f = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.f5038g = Collections.unmodifiableSet(new HashSet(arrayList));
        this.f5039h = parcel.readString();
        this.f5040i = EnumC1043c.valueOf(parcel.readString());
        this.f5041j = new Date(parcel.readLong());
        this.f5042k = parcel.readString();
        this.f5043l = parcel.readString();
        this.f5044m = new Date(parcel.readLong());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f5036e.getTime());
        parcel.writeStringList(new ArrayList(this.f5037f));
        parcel.writeStringList(new ArrayList(this.f5038g));
        parcel.writeString(this.f5039h);
        parcel.writeString(this.f5040i.name());
        parcel.writeLong(this.f5041j.getTime());
        parcel.writeString(this.f5042k);
        parcel.writeString(this.f5043l);
        parcel.writeLong(this.f5044m.getTime());
    }

    /* renamed from: com.facebook.AccessToken$1 */
    static class C09821 implements Parcelable.Creator {
        C09821() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AccessToken createFromParcel(Parcel parcel) {
            return new AccessToken(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AccessToken[] newArray(int i) {
            return new AccessToken[i];
        }
    }
}
