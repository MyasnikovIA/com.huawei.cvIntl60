package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class zzapk<T> {
    public abstract void zza(zzaqr zzaqrVar, T t);

    public abstract T zzb(zzaqp zzaqpVar);

    public final zzaoy zzcn(T t) {
        try {
            zzaqg zzaqgVar = new zzaqg();
            zza(zzaqgVar, t);
            return zzaqgVar.m6623bu();
        } catch (IOException e) {
            throw new zzaoz(e);
        }
    }
}
