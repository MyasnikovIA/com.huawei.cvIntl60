package com.google.android.gms.internal;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

/* loaded from: classes.dex */
public abstract class zzqy implements Releasable, Result {

    /* renamed from: hv */
    protected final Status f6679hv;

    /* renamed from: zy */
    protected final DataHolder f6680zy;

    protected zzqy(DataHolder dataHolder, Status status) {
        this.f6679hv = status;
        this.f6680zy = dataHolder;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.f6679hv;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
        if (this.f6680zy != null) {
            this.f6680zy.close();
        }
    }
}
