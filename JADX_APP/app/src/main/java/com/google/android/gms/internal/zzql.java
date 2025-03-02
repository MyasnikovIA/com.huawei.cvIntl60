package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;

/* loaded from: classes.dex */
public final class zzql<O extends Api.ApiOptions> {

    /* renamed from: vS */
    private final Api<O> f6602vS;

    /* renamed from: xw */
    private final O f6603xw;

    /* renamed from: yo */
    private final boolean f6604yo;

    /* renamed from: yp */
    private final int f6605yp;

    private zzql(Api<O> api) {
        this.f6604yo = true;
        this.f6602vS = api;
        this.f6603xw = null;
        this.f6605yp = System.identityHashCode(this);
    }

    private zzql(Api<O> api, O o) {
        this.f6604yo = false;
        this.f6602vS = api;
        this.f6603xw = o;
        this.f6605yp = com.google.android.gms.common.internal.zzz.hashCode(this.f6602vS, this.f6603xw);
    }

    public static <O extends Api.ApiOptions> zzql<O> zza(Api<O> api, O o) {
        return new zzql<>(api, o);
    }

    public static <O extends Api.ApiOptions> zzql<O> zzb(Api<O> api) {
        return new zzql<>(api);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzql)) {
            return false;
        }
        zzql zzqlVar = (zzql) obj;
        return !this.f6604yo && !zzqlVar.f6604yo && com.google.android.gms.common.internal.zzz.equal(this.f6602vS, zzqlVar.f6602vS) && com.google.android.gms.common.internal.zzz.equal(this.f6603xw, zzqlVar.f6603xw);
    }

    public int hashCode() {
        return this.f6605yp;
    }

    public String zzarl() {
        return this.f6602vS.getName();
    }
}
