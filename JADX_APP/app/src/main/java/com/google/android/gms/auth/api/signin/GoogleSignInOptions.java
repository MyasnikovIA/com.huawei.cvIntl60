package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.zze;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {

    /* renamed from: gj */
    private Account f6064gj;

    /* renamed from: jq */
    private final ArrayList<Scope> f6065jq;

    /* renamed from: jr */
    private boolean f6066jr;

    /* renamed from: js */
    private final boolean f6067js;

    /* renamed from: jt */
    private final boolean f6068jt;

    /* renamed from: ju */
    private String f6069ju;

    /* renamed from: jv */
    private String f6070jv;
    final int versionCode;

    /* renamed from: jn */
    public static final Scope f6061jn = new Scope(Scopes.PROFILE);

    /* renamed from: jo */
    public static final Scope f6062jo = new Scope("email");

    /* renamed from: jp */
    public static final Scope f6063jp = new Scope("openid");
    public static final GoogleSignInOptions DEFAULT_SIGN_IN = new Builder().requestId().requestProfile().build();
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new zzb();

    /* renamed from: jm */
    private static Comparator<Scope> f6060jm = new Comparator<Scope>() { // from class: com.google.android.gms.auth.api.signin.GoogleSignInOptions.1
        C12441() {
        }

        @Override // java.util.Comparator
        /* renamed from: zza */
        public int compare(Scope scope, Scope scope2) {
            return scope.zzari().compareTo(scope2.zzari());
        }
    };

    /* renamed from: com.google.android.gms.auth.api.signin.GoogleSignInOptions$1 */
    final class C12441 implements Comparator<Scope> {
        C12441() {
        }

        @Override // java.util.Comparator
        /* renamed from: zza */
        public int compare(Scope scope, Scope scope2) {
            return scope.zzari().compareTo(scope2.zzari());
        }
    }

    public static final class Builder {

        /* renamed from: gj */
        private Account f6071gj;

        /* renamed from: jr */
        private boolean f6072jr;

        /* renamed from: js */
        private boolean f6073js;

        /* renamed from: jt */
        private boolean f6074jt;

        /* renamed from: ju */
        private String f6075ju;

        /* renamed from: jv */
        private String f6076jv;

        /* renamed from: jw */
        private Set<Scope> f6077jw;

        public Builder() {
            this.f6077jw = new HashSet();
        }

        public Builder(@NonNull GoogleSignInOptions googleSignInOptions) {
            this.f6077jw = new HashSet();
            zzaa.zzy(googleSignInOptions);
            this.f6077jw = new HashSet(googleSignInOptions.f6065jq);
            this.f6073js = googleSignInOptions.f6067js;
            this.f6074jt = googleSignInOptions.f6068jt;
            this.f6072jr = googleSignInOptions.f6066jr;
            this.f6075ju = googleSignInOptions.f6069ju;
            this.f6071gj = googleSignInOptions.f6064gj;
            this.f6076jv = googleSignInOptions.f6070jv;
        }

        private String zzgc(String str) {
            zzaa.zzib(str);
            zzaa.zzb(this.f6075ju == null || this.f6075ju.equals(str), "two different server client ids provided");
            return str;
        }

        public GoogleSignInOptions build() {
            if (this.f6072jr && (this.f6071gj == null || !this.f6077jw.isEmpty())) {
                requestId();
            }
            return new GoogleSignInOptions(this.f6077jw, this.f6071gj, this.f6072jr, this.f6073js, this.f6074jt, this.f6075ju, this.f6076jv);
        }

        public Builder requestEmail() {
            this.f6077jw.add(GoogleSignInOptions.f6062jo);
            return this;
        }

        public Builder requestId() {
            this.f6077jw.add(GoogleSignInOptions.f6063jp);
            return this;
        }

        public Builder requestIdToken(String str) {
            this.f6072jr = true;
            this.f6075ju = zzgc(str);
            return this;
        }

        public Builder requestProfile() {
            this.f6077jw.add(GoogleSignInOptions.f6061jn);
            return this;
        }

        public Builder requestScopes(Scope scope, Scope... scopeArr) {
            this.f6077jw.add(scope);
            this.f6077jw.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public Builder requestServerAuthCode(String str) {
            return requestServerAuthCode(str, false);
        }

        public Builder requestServerAuthCode(String str, boolean z) {
            this.f6073js = true;
            this.f6075ju = zzgc(str);
            this.f6074jt = z;
            return this;
        }

        public Builder setAccountName(String str) {
            this.f6071gj = new Account(zzaa.zzib(str), "com.google");
            return this;
        }

        public Builder setHostedDomain(String str) {
            this.f6076jv = zzaa.zzib(str);
            return this;
        }
    }

    GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2) {
        this.versionCode = i;
        this.f6065jq = arrayList;
        this.f6064gj = account;
        this.f6066jr = z;
        this.f6067js = z2;
        this.f6068jt = z3;
        this.f6069ju = str;
        this.f6070jv = str2;
    }

    private GoogleSignInOptions(Set<Scope> set, Account account, boolean z, boolean z2, boolean z3, String str, String str2) {
        this(2, (ArrayList<Scope>) new ArrayList(set), account, z, z2, z3, str, str2);
    }

    /* synthetic */ GoogleSignInOptions(Set set, Account account, boolean z, boolean z2, boolean z3, String str, String str2, C12441 c12441) {
        this(set, account, z, z2, z3, str, str2);
    }

    private JSONObject zzais() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.f6065jq, f6060jm);
            Iterator<Scope> it = this.f6065jq.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().zzari());
            }
            jSONObject.put("scopes", jSONArray);
            if (this.f6064gj != null) {
                jSONObject.put("accountName", this.f6064gj.name);
            }
            jSONObject.put("idTokenRequested", this.f6066jr);
            jSONObject.put("forceCodeForRefreshToken", this.f6068jt);
            jSONObject.put("serverAuthRequested", this.f6067js);
            if (!TextUtils.isEmpty(this.f6069ju)) {
                jSONObject.put("serverClientId", this.f6069ju);
            }
            if (!TextUtils.isEmpty(this.f6070jv)) {
                jSONObject.put("hostedDomain", this.f6070jv);
            }
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    @Nullable
    public static GoogleSignInOptions zzgb(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String optString = jSONObject.optString("accountName", null);
        return new GoogleSignInOptions(hashSet, !TextUtils.isEmpty(optString) ? new Account(optString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.optString("serverClientId", null), jSONObject.optString("hostedDomain", null));
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.f6065jq.size() != googleSignInOptions.zzait().size() || !this.f6065jq.containsAll(googleSignInOptions.zzait())) {
                return false;
            }
            if (this.f6064gj == null) {
                if (googleSignInOptions.getAccount() != null) {
                    return false;
                }
            } else if (!this.f6064gj.equals(googleSignInOptions.getAccount())) {
                return false;
            }
            if (TextUtils.isEmpty(this.f6069ju)) {
                if (!TextUtils.isEmpty(googleSignInOptions.zzaix())) {
                    return false;
                }
            } else if (!this.f6069ju.equals(googleSignInOptions.zzaix())) {
                return false;
            }
            if (this.f6068jt == googleSignInOptions.zzaiw() && this.f6066jr == googleSignInOptions.zzaiu()) {
                return this.f6067js == googleSignInOptions.zzaiv();
            }
            return false;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public Account getAccount() {
        return this.f6064gj;
    }

    public Scope[] getScopeArray() {
        return (Scope[]) this.f6065jq.toArray(new Scope[this.f6065jq.size()]);
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        Iterator<Scope> it = this.f6065jq.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().zzari());
        }
        Collections.sort(arrayList);
        return new zze().zzq(arrayList).zzq(this.f6064gj).zzq(this.f6069ju).zzbe(this.f6068jt).zzbe(this.f6066jr).zzbe(this.f6067js).zzajf();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    public String zzaiq() {
        return zzais().toString();
    }

    public ArrayList<Scope> zzait() {
        return new ArrayList<>(this.f6065jq);
    }

    public boolean zzaiu() {
        return this.f6066jr;
    }

    public boolean zzaiv() {
        return this.f6067js;
    }

    public boolean zzaiw() {
        return this.f6068jt;
    }

    public String zzaix() {
        return this.f6069ju;
    }

    public String zzaiy() {
        return this.f6070jv;
    }
}
