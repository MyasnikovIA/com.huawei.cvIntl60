package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Api;

/* loaded from: classes.dex */
public final class zzxq implements Api.ApiOptions.Optional {
    public static final zzxq aDl = new zza().zzcdh();
    private final boolean aDm;
    private final boolean aDn;
    private final Long aDo;
    private final Long aDp;

    /* renamed from: jr */
    private final boolean f6923jr;

    /* renamed from: jt */
    private final boolean f6924jt;

    /* renamed from: ju */
    private final String f6925ju;

    /* renamed from: jv */
    private final String f6926jv;

    public static final class zza {
        public zzxq zzcdh() {
            return new zzxq(false, false, null, false, null, false, null, null);
        }
    }

    private zzxq(boolean z, boolean z2, String str, boolean z3, String str2, boolean z4, Long l, Long l2) {
        this.aDm = z;
        this.f6923jr = z2;
        this.f6925ju = str;
        this.f6924jt = z3;
        this.aDn = z4;
        this.f6926jv = str2;
        this.aDo = l;
        this.aDp = l2;
    }

    /* synthetic */ zzxq(boolean z, boolean z2, String str, boolean z3, String str2, boolean z4, Long l, Long l2, C14181 c14181) {
        this(z, z2, str, z3, str2, z4, l, l2);
    }

    public boolean zzaiu() {
        return this.f6923jr;
    }

    public boolean zzaiw() {
        return this.f6924jt;
    }

    public String zzaix() {
        return this.f6925ju;
    }

    @Nullable
    public String zzaiy() {
        return this.f6926jv;
    }

    public boolean zzcdd() {
        return this.aDm;
    }

    public boolean zzcde() {
        return this.aDn;
    }

    @Nullable
    public Long zzcdf() {
        return this.aDo;
    }

    @Nullable
    public Long zzcdg() {
        return this.aDp;
    }
}
