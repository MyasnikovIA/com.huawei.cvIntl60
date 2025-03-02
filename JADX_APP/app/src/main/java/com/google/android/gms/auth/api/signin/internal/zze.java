package com.google.android.gms.auth.api.signin.internal;

/* loaded from: classes.dex */
public class zze {

    /* renamed from: jI */
    static int f6103jI = 31;

    /* renamed from: jJ */
    private int f6104jJ = 1;

    public int zzajf() {
        return this.f6104jJ;
    }

    public zze zzbe(boolean z) {
        this.f6104jJ = (z ? 1 : 0) + (this.f6104jJ * f6103jI);
        return this;
    }

    public zze zzq(Object obj) {
        this.f6104jJ = (obj == null ? 0 : obj.hashCode()) + (this.f6104jJ * f6103jI);
        return this;
    }
}
