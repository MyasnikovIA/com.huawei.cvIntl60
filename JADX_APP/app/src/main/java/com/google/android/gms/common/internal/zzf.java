package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzxq;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzf {

    /* renamed from: DJ */
    private final Set<Scope> f6321DJ;

    /* renamed from: DK */
    private final Map<Api<?>, zza> f6322DK;

    /* renamed from: DL */
    private final zzxq f6323DL;

    /* renamed from: DM */
    private Integer f6324DM;

    /* renamed from: gj */
    private final Account f6325gj;

    /* renamed from: hu */
    private final String f6326hu;

    /* renamed from: xF */
    private final Set<Scope> f6327xF;

    /* renamed from: xH */
    private final int f6328xH;

    /* renamed from: xI */
    private final View f6329xI;

    /* renamed from: xJ */
    private final String f6330xJ;

    public static final class zza {

        /* renamed from: DN */
        public final boolean f6331DN;

        /* renamed from: jw */
        public final Set<Scope> f6332jw;

        public zza(Set<Scope> set, boolean z) {
            zzaa.zzy(set);
            this.f6332jw = Collections.unmodifiableSet(set);
            this.f6331DN = z;
        }
    }

    public zzf(Account account, Set<Scope> set, Map<Api<?>, zza> map, int i, View view, String str, String str2, zzxq zzxqVar) {
        this.f6325gj = account;
        this.f6327xF = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.f6322DK = map == null ? Collections.EMPTY_MAP : map;
        this.f6329xI = view;
        this.f6328xH = i;
        this.f6326hu = str;
        this.f6330xJ = str2;
        this.f6323DL = zzxqVar;
        HashSet hashSet = new HashSet(this.f6327xF);
        Iterator<zza> it = this.f6322DK.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().f6332jw);
        }
        this.f6321DJ = Collections.unmodifiableSet(hashSet);
    }

    public static zzf zzca(Context context) {
        return new GoogleApiClient.Builder(context).zzarf();
    }

    public Account getAccount() {
        return this.f6325gj;
    }

    @Deprecated
    public String getAccountName() {
        if (this.f6325gj != null) {
            return this.f6325gj.name;
        }
        return null;
    }

    public Account zzave() {
        return this.f6325gj != null ? this.f6325gj : new Account("<<default account>>", "com.google");
    }

    public int zzavo() {
        return this.f6328xH;
    }

    public Set<Scope> zzavp() {
        return this.f6327xF;
    }

    public Set<Scope> zzavq() {
        return this.f6321DJ;
    }

    public Map<Api<?>, zza> zzavr() {
        return this.f6322DK;
    }

    public String zzavs() {
        return this.f6326hu;
    }

    public String zzavt() {
        return this.f6330xJ;
    }

    public View zzavu() {
        return this.f6329xI;
    }

    public zzxq zzavv() {
        return this.f6323DL;
    }

    public Integer zzavw() {
        return this.f6324DM;
    }

    public Set<Scope> zzc(Api<?> api) {
        zza zzaVar = this.f6322DK.get(api);
        if (zzaVar == null || zzaVar.f6332jw.isEmpty()) {
            return this.f6327xF;
        }
        HashSet hashSet = new HashSet(this.f6327xF);
        hashSet.addAll(zzaVar.f6332jw);
        return hashSet;
    }

    public void zzc(Integer num) {
        this.f6324DM = num;
    }
}
