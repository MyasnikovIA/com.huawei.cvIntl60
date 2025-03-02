package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzaa;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class BatchResult implements Result {

    /* renamed from: hv */
    private final Status f6144hv;

    /* renamed from: xs */
    private final PendingResult<?>[] f6145xs;

    BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.f6144hv = status;
        this.f6145xs = pendingResultArr;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.f6144hv;
    }

    public <R extends Result> R take(BatchResultToken<R> batchResultToken) {
        zzaa.zzb(batchResultToken.mId < this.f6145xs.length, "The result token does not belong to this batch");
        return (R) this.f6145xs[batchResultToken.mId].await(0L, TimeUnit.MILLISECONDS);
    }
}
