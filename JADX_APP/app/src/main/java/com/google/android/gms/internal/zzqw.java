package com.google.android.gms.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public class zzqw extends zzqp {

    /* renamed from: xy */
    private zzrh f6676xy;

    /* renamed from: zx */
    private final com.google.android.gms.common.util.zza<zzql<?>> f6677zx;

    private zzqw(zzrp zzrpVar) {
        super(zzrpVar);
        this.f6677zx = new com.google.android.gms.common.util.zza<>();
        this.f6812Bf.zza("ConnectionlessLifecycleHelper", this);
    }

    public static void zza(Activity activity, zzrh zzrhVar, zzql<?> zzqlVar) {
        zzrp zzs = zzs(activity);
        zzqw zzqwVar = (zzqw) zzs.zza("ConnectionlessLifecycleHelper", zzqw.class);
        if (zzqwVar == null) {
            zzqwVar = new zzqw(zzs);
        }
        zzqwVar.f6676xy = zzrhVar;
        zzqwVar.zza(zzqlVar);
        zzrhVar.zza(zzqwVar);
    }

    private void zza(zzql<?> zzqlVar) {
        com.google.android.gms.common.internal.zzaa.zzb(zzqlVar, "ApiKey cannot be null");
        this.f6677zx.add(zzqlVar);
    }

    @Override // com.google.android.gms.internal.zzqp, com.google.android.gms.internal.zzro
    public void onStart() {
        super.onStart();
        if (this.f6677zx.isEmpty()) {
            return;
        }
        this.f6676xy.zza(this);
    }

    @Override // com.google.android.gms.internal.zzqp, com.google.android.gms.internal.zzro
    public void onStop() {
        super.onStop();
        this.f6676xy.zzb(this);
    }

    @Override // com.google.android.gms.internal.zzqp
    protected void zza(ConnectionResult connectionResult, int i) {
        this.f6676xy.zza(connectionResult, i);
    }

    @Override // com.google.android.gms.internal.zzqp
    protected void zzarm() {
        this.f6676xy.zzarm();
    }

    com.google.android.gms.common.util.zza<zzql<?>> zzasl() {
        return this.f6677zx;
    }
}
