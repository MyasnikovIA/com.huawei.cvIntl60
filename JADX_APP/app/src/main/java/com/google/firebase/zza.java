package com.google.firebase;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzsb;

/* loaded from: classes.dex */
public class zza implements zzsb {
    @Override // com.google.android.gms.internal.zzsb
    public Exception zzz(Status status) {
        return status.getStatusCode() == 8 ? new FirebaseException(status.zzark()) : new FirebaseApiNotAvailableException(status.zzark());
    }
}
