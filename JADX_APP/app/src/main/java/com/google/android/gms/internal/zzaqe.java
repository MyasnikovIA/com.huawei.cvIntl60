package com.google.android.gms.internal;

/* loaded from: classes.dex */
public final class zzaqe implements zzapl {
    private final zzaps bod;

    public zzaqe(zzaps zzapsVar) {
        this.bod = zzapsVar;
    }

    static zzapk<?> zza(zzaps zzapsVar, zzaos zzaosVar, zzaqo<?> zzaqoVar, zzapm zzapmVar) {
        Class<?> value = zzapmVar.value();
        if (zzapk.class.isAssignableFrom(value)) {
            return (zzapk) zzapsVar.zzb(zzaqo.zzr(value)).mo6609bj();
        }
        if (zzapl.class.isAssignableFrom(value)) {
            return ((zzapl) zzapsVar.zzb(zzaqo.zzr(value)).mo6609bj()).zza(zzaosVar, zzaqoVar);
        }
        throw new IllegalArgumentException("@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference.");
    }

    @Override // com.google.android.gms.internal.zzapl
    public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
        zzapm zzapmVar = (zzapm) zzaqoVar.m6628bB().getAnnotation(zzapm.class);
        if (zzapmVar == null) {
            return null;
        }
        return (zzapk<T>) zza(this.bod, zzaosVar, zzaqoVar, zzapmVar);
    }
}
