package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.internal.zzrr;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public abstract class zzsh<A extends Api.zzb> {

    /* renamed from: Bm */
    private final zzrr.zzb<?> f6859Bm;

    public zzrr.zzb<?> zzatz() {
        return this.f6859Bm;
    }

    protected abstract void zzc(A a2, TaskCompletionSource<Void> taskCompletionSource);
}
