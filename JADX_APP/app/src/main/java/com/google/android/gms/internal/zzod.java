package com.google.android.gms.internal;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
class zzod implements ProxyApi.ProxyResult {

    /* renamed from: hv */
    private Status f6536hv;

    /* renamed from: je */
    private ProxyResponse f6537je;

    public zzod(ProxyResponse proxyResponse) {
        this.f6537je = proxyResponse;
        this.f6536hv = Status.f6171xZ;
    }

    public zzod(Status status) {
        this.f6536hv = status;
    }

    @Override // com.google.android.gms.auth.api.proxy.ProxyApi.ProxyResult
    public ProxyResponse getResponse() {
        return this.f6537je;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.f6536hv;
    }
}
