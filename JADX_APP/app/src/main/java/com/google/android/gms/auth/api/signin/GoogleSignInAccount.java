package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzh;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new zza();

    /* renamed from: jf */
    public static zze f6048jf = zzh.zzayl();

    /* renamed from: jm */
    private static Comparator<Scope> f6049jm = new Comparator<Scope>() { // from class: com.google.android.gms.auth.api.signin.GoogleSignInAccount.1
        C12431() {
        }

        @Override // java.util.Comparator
        /* renamed from: zza */
        public int compare(Scope scope, Scope scope2) {
            return scope.zzari().compareTo(scope2.zzari());
        }
    };

    /* renamed from: hR */
    List<Scope> f6050hR;

    /* renamed from: iF */
    private String f6051iF;

    /* renamed from: is */
    private String f6052is;

    /* renamed from: it */
    private String f6053it;

    /* renamed from: jg */
    private String f6054jg;

    /* renamed from: jh */
    private String f6055jh;

    /* renamed from: ji */
    private Uri f6056ji;

    /* renamed from: jj */
    private String f6057jj;

    /* renamed from: jk */
    private long f6058jk;

    /* renamed from: jl */
    private String f6059jl;
    final int versionCode;
    private String zzboa;

    /* renamed from: com.google.android.gms.auth.api.signin.GoogleSignInAccount$1 */
    final class C12431 implements Comparator<Scope> {
        C12431() {
        }

        @Override // java.util.Comparator
        /* renamed from: zza */
        public int compare(Scope scope, Scope scope2) {
            return scope.zzari().compareTo(scope2.zzari());
        }
    }

    GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list, String str7, String str8) {
        this.versionCode = i;
        this.zzboa = str;
        this.f6051iF = str2;
        this.f6054jg = str3;
        this.f6055jh = str4;
        this.f6056ji = uri;
        this.f6057jj = str5;
        this.f6058jk = j;
        this.f6059jl = str6;
        this.f6050hR = list;
        this.f6052is = str7;
        this.f6053it = str8;
    }

    public static GoogleSignInAccount zza(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Uri uri, @Nullable Long l, @NonNull String str7, @NonNull Set<Scope> set) {
        if (l == null) {
            l = Long.valueOf(f6048jf.currentTimeMillis() / 1000);
        }
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l.longValue(), zzaa.zzib(str7), new ArrayList((Collection) zzaa.zzy(set)), str5, str6);
    }

    private JSONObject zzais() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (getId() != null) {
                jSONObject.put(TtmlNode.ATTR_ID, getId());
            }
            if (getIdToken() != null) {
                jSONObject.put("tokenId", getIdToken());
            }
            if (getEmail() != null) {
                jSONObject.put("email", getEmail());
            }
            if (getDisplayName() != null) {
                jSONObject.put("displayName", getDisplayName());
            }
            if (getGivenName() != null) {
                jSONObject.put("givenName", getGivenName());
            }
            if (getFamilyName() != null) {
                jSONObject.put("familyName", getFamilyName());
            }
            if (getPhotoUrl() != null) {
                jSONObject.put("photoUrl", getPhotoUrl().toString());
            }
            if (getServerAuthCode() != null) {
                jSONObject.put("serverAuthCode", getServerAuthCode());
            }
            jSONObject.put("expirationTime", this.f6058jk);
            jSONObject.put("obfuscatedIdentifier", zzaip());
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.f6050hR, f6049jm);
            Iterator<Scope> it = this.f6050hR.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().zzari());
            }
            jSONObject.put("grantedScopes", jSONArray);
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    @Nullable
    public static GoogleSignInAccount zzfz(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl", null);
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        return zza(jSONObject.optString(TtmlNode.ATTR_ID), jSONObject.optString("tokenId", null), jSONObject.optString("email", null), jSONObject.optString("displayName", null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet).zzga(jSONObject.optString("serverAuthCode", null));
    }

    public boolean equals(Object obj) {
        if (obj instanceof GoogleSignInAccount) {
            return ((GoogleSignInAccount) obj).zzaiq().equals(zzaiq());
        }
        return false;
    }

    @Nullable
    public String getDisplayName() {
        return this.f6055jh;
    }

    @Nullable
    public String getEmail() {
        return this.f6054jg;
    }

    @Nullable
    public String getFamilyName() {
        return this.f6053it;
    }

    @Nullable
    public String getGivenName() {
        return this.f6052is;
    }

    @NonNull
    public Set<Scope> getGrantedScopes() {
        return new HashSet(this.f6050hR);
    }

    @Nullable
    public String getId() {
        return this.zzboa;
    }

    @Nullable
    public String getIdToken() {
        return this.f6051iF;
    }

    @Nullable
    public Uri getPhotoUrl() {
        return this.f6056ji;
    }

    @Nullable
    public String getServerAuthCode() {
        return this.f6057jj;
    }

    public int hashCode() {
        return zzaiq().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public boolean zza() {
        return f6048jf.currentTimeMillis() / 1000 >= this.f6058jk - 300;
    }

    public long zzaio() {
        return this.f6058jk;
    }

    @NonNull
    public String zzaip() {
        return this.f6059jl;
    }

    public String zzaiq() {
        return zzais().toString();
    }

    public String zzair() {
        JSONObject zzais = zzais();
        zzais.remove("serverAuthCode");
        return zzais.toString();
    }

    public GoogleSignInAccount zzga(String str) {
        this.f6057jj = str;
        return this;
    }
}
