package com.google.android.gms.internal;

import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzqn {

    /* renamed from: yw */
    private int f6613yw;

    /* renamed from: yv */
    private final TaskCompletionSource<Void> f6612yv = new TaskCompletionSource<>();

    /* renamed from: yx */
    private boolean f6614yx = false;

    /* renamed from: xo */
    private final ArrayMap<zzql<?>, ConnectionResult> f6611xo = new ArrayMap<>();

    public zzqn(Iterable<com.google.android.gms.common.api.zzc<? extends Api.ApiOptions>> iterable) {
        Iterator<com.google.android.gms.common.api.zzc<? extends Api.ApiOptions>> it = iterable.iterator();
        while (it.hasNext()) {
            this.f6611xo.put(it.next().getApiKey(), null);
        }
        this.f6613yw = this.f6611xo.keySet().size();
    }

    public Task<Void> getTask() {
        return this.f6612yv.getTask();
    }

    public void zza(zzql<?> zzqlVar, ConnectionResult connectionResult) {
        this.f6611xo.put(zzqlVar, connectionResult);
        this.f6613yw--;
        if (!connectionResult.isSuccess()) {
            this.f6614yx = true;
        }
        if (this.f6613yw == 0) {
            if (!this.f6614yx) {
                this.f6612yv.setResult(null);
            } else {
                this.f6612yv.setException(new com.google.android.gms.common.api.zzb(this.f6611xo));
            }
        }
    }

    public Set<zzql<?>> zzaro() {
        return this.f6611xo.keySet();
    }

    public void zzarp() {
        this.f6612yv.setResult(null);
    }
}
