package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.internal.zzrr;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public abstract class zzrw<A extends Api.zzb> {

    /* renamed from: Bt */
    private final zzrr<?> f6828Bt;

    protected abstract void zza(A a2, TaskCompletionSource<Void> taskCompletionSource);

    public zzrr.zzb<?> zzatz() {
        return this.f6828Bt.zzatz();
    }

    public void zzaua() {
        this.f6828Bt.clear();
    }
}
