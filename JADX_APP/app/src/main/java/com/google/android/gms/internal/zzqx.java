package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzrr;

/* loaded from: classes.dex */
public abstract class zzqx<L> implements zzrr.zzc<L> {

    /* renamed from: zy */
    private final DataHolder f6678zy;

    protected zzqx(DataHolder dataHolder) {
        this.f6678zy = dataHolder;
    }

    protected abstract void zza(L l, DataHolder dataHolder);

    @Override // com.google.android.gms.internal.zzrr.zzc
    public void zzasm() {
        if (this.f6678zy != null) {
            this.f6678zy.close();
        }
    }

    @Override // com.google.android.gms.internal.zzrr.zzc
    public final void zzt(L l) {
        zza(l, this.f6678zy);
    }
}
