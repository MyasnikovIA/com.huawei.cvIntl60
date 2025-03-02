package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.internal.C1070u;
import com.facebook.internal.C1071v;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class Profile implements Parcelable {

    /* renamed from: b */
    @Nullable
    private final String f5115b;

    /* renamed from: c */
    @Nullable
    private final String f5116c;

    /* renamed from: d */
    @Nullable
    private final String f5117d;

    /* renamed from: e */
    @Nullable
    private final String f5118e;

    /* renamed from: f */
    @Nullable
    private final String f5119f;

    /* renamed from: g */
    @Nullable
    private final Uri f5120g;

    /* renamed from: a */
    private static final String f5114a = Profile.class.getSimpleName();
    public static final Parcelable.Creator<Profile> CREATOR = new Parcelable.Creator<Profile>() { // from class: com.facebook.Profile.2
        C10012() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Profile createFromParcel(Parcel parcel) {
            return new Profile(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Profile[] newArray(int i) {
            return new Profile[i];
        }
    };

    /* synthetic */ Profile(Parcel parcel, C10001 c10001) {
        this(parcel);
    }

    /* renamed from: a */
    public static Profile m5614a() {
        return C1162v.m6572a().m6576b();
    }

    /* renamed from: a */
    public static void m5615a(@Nullable Profile profile) {
        C1162v.m6572a().m6575a(profile);
    }

    /* renamed from: b */
    public static void m5616b() {
        AccessToken m5496a = AccessToken.m5496a();
        if (!AccessToken.m5503b()) {
            m5615a(null);
        } else {
            C1070u.m6087a(m5496a.m5506d(), (C1070u.a) new C1070u.a() { // from class: com.facebook.Profile.1
                C10001() {
                }

                @Override // com.facebook.internal.C1070u.a
                /* renamed from: a */
                public void mo5622a(JSONObject jSONObject) {
                    String optString = jSONObject.optString(TtmlNode.ATTR_ID);
                    if (optString != null) {
                        String optString2 = jSONObject.optString("link");
                        Profile.m5615a(new Profile(optString, jSONObject.optString("first_name"), jSONObject.optString("middle_name"), jSONObject.optString("last_name"), jSONObject.optString("name"), optString2 != null ? Uri.parse(optString2) : null));
                    }
                }

                @Override // com.facebook.internal.C1070u.a
                /* renamed from: a */
                public void mo5621a(C1048h c1048h) {
                    Log.e(Profile.f5114a, "Got unexpected exception: " + c1048h);
                }
            });
        }
    }

    /* renamed from: com.facebook.Profile$1 */
    static class C10001 implements C1070u.a {
        C10001() {
        }

        @Override // com.facebook.internal.C1070u.a
        /* renamed from: a */
        public void mo5622a(JSONObject jSONObject) {
            String optString = jSONObject.optString(TtmlNode.ATTR_ID);
            if (optString != null) {
                String optString2 = jSONObject.optString("link");
                Profile.m5615a(new Profile(optString, jSONObject.optString("first_name"), jSONObject.optString("middle_name"), jSONObject.optString("last_name"), jSONObject.optString("name"), optString2 != null ? Uri.parse(optString2) : null));
            }
        }

        @Override // com.facebook.internal.C1070u.a
        /* renamed from: a */
        public void mo5621a(C1048h c1048h) {
            Log.e(Profile.f5114a, "Got unexpected exception: " + c1048h);
        }
    }

    public Profile(String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Uri uri) {
        C1071v.m6126a(str, TtmlNode.ATTR_ID);
        this.f5115b = str;
        this.f5116c = str2;
        this.f5117d = str3;
        this.f5118e = str4;
        this.f5119f = str5;
        this.f5120g = uri;
    }

    /* renamed from: c */
    public String m5618c() {
        return this.f5115b;
    }

    /* renamed from: d */
    public String m5619d() {
        return this.f5119f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Profile)) {
            return false;
        }
        Profile profile = (Profile) obj;
        if (this.f5115b.equals(profile.f5115b) && this.f5116c == null) {
            return profile.f5116c == null;
        }
        if (this.f5116c.equals(profile.f5116c) && this.f5117d == null) {
            return profile.f5117d == null;
        }
        if (this.f5117d.equals(profile.f5117d) && this.f5118e == null) {
            return profile.f5118e == null;
        }
        if (this.f5118e.equals(profile.f5118e) && this.f5119f == null) {
            return profile.f5119f == null;
        }
        if (this.f5119f.equals(profile.f5119f) && this.f5120g == null) {
            return profile.f5120g == null;
        }
        return this.f5120g.equals(profile.f5120g);
    }

    public int hashCode() {
        int hashCode = this.f5115b.hashCode() + 527;
        if (this.f5116c != null) {
            hashCode = (hashCode * 31) + this.f5116c.hashCode();
        }
        if (this.f5117d != null) {
            hashCode = (hashCode * 31) + this.f5117d.hashCode();
        }
        if (this.f5118e != null) {
            hashCode = (hashCode * 31) + this.f5118e.hashCode();
        }
        if (this.f5119f != null) {
            hashCode = (hashCode * 31) + this.f5119f.hashCode();
        }
        if (this.f5120g != null) {
            return (hashCode * 31) + this.f5120g.hashCode();
        }
        return hashCode;
    }

    /* renamed from: e */
    JSONObject m5620e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TtmlNode.ATTR_ID, this.f5115b);
            jSONObject.put("first_name", this.f5116c);
            jSONObject.put("middle_name", this.f5117d);
            jSONObject.put("last_name", this.f5118e);
            jSONObject.put("name", this.f5119f);
            if (this.f5120g != null) {
                jSONObject.put("link_uri", this.f5120g.toString());
                return jSONObject;
            }
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    Profile(JSONObject jSONObject) {
        this.f5115b = jSONObject.optString(TtmlNode.ATTR_ID, null);
        this.f5116c = jSONObject.optString("first_name", null);
        this.f5117d = jSONObject.optString("middle_name", null);
        this.f5118e = jSONObject.optString("last_name", null);
        this.f5119f = jSONObject.optString("name", null);
        String optString = jSONObject.optString("link_uri", null);
        this.f5120g = optString != null ? Uri.parse(optString) : null;
    }

    private Profile(Parcel parcel) {
        this.f5115b = parcel.readString();
        this.f5116c = parcel.readString();
        this.f5117d = parcel.readString();
        this.f5118e = parcel.readString();
        this.f5119f = parcel.readString();
        String readString = parcel.readString();
        this.f5120g = readString == null ? null : Uri.parse(readString);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5115b);
        parcel.writeString(this.f5116c);
        parcel.writeString(this.f5117d);
        parcel.writeString(this.f5118e);
        parcel.writeString(this.f5119f);
        parcel.writeString(this.f5120g == null ? null : this.f5120g.toString());
    }

    /* renamed from: com.facebook.Profile$2 */
    static class C10012 implements Parcelable.Creator<Profile> {
        C10012() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Profile createFromParcel(Parcel parcel) {
            return new Profile(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Profile[] newArray(int i) {
            return new Profile[i];
        }
    }
}
