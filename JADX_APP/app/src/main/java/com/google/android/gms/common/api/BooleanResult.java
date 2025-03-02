package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzaa;

/* loaded from: classes.dex */
public class BooleanResult implements Result {

    /* renamed from: hv */
    private final Status f6146hv;

    /* renamed from: xv */
    private final boolean f6147xv;

    public BooleanResult(Status status, boolean z) {
        this.f6146hv = (Status) zzaa.zzb(status, "Status must not be null");
        this.f6147xv = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BooleanResult)) {
            return false;
        }
        BooleanResult booleanResult = (BooleanResult) obj;
        return this.f6146hv.equals(booleanResult.f6146hv) && this.f6147xv == booleanResult.f6147xv;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.f6146hv;
    }

    public boolean getValue() {
        return this.f6147xv;
    }

    public final int hashCode() {
        return (this.f6147xv ? 1 : 0) + ((this.f6146hv.hashCode() + 527) * 31);
    }
}
