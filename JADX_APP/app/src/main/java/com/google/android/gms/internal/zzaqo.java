package com.google.android.gms.internal;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public class zzaqo<T> {
    final Type bqi;
    final Class<? super T> brm;
    final int brn;

    protected zzaqo() {
        this.bqi = zzq(getClass());
        this.brm = (Class<? super T>) zzapr.zzf(this.bqi);
        this.brn = this.bqi.hashCode();
    }

    zzaqo(Type type) {
        this.bqi = zzapr.zze((Type) zzapq.zzy(type));
        this.brm = (Class<? super T>) zzapr.zzf(this.bqi);
        this.brn = this.bqi.hashCode();
    }

    public static zzaqo<?> zzl(Type type) {
        return new zzaqo<>(type);
    }

    static Type zzq(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        return zzapr.zze(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
    }

    public static <T> zzaqo<T> zzr(Class<T> cls) {
        return new zzaqo<>(cls);
    }

    /* renamed from: bB */
    public final Class<? super T> m6628bB() {
        return this.brm;
    }

    /* renamed from: bC */
    public final Type m6629bC() {
        return this.bqi;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzaqo) && zzapr.zza(this.bqi, ((zzaqo) obj).bqi);
    }

    public final int hashCode() {
        return this.brn;
    }

    public final String toString() {
        return zzapr.zzg(this.bqi);
    }
}
