package com.google.android.gms.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class zzaop {
    private final Field bnT;

    public zzaop(Field field) {
        zzapq.zzy(field);
        this.bnT = field;
    }

    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        return (T) this.bnT.getAnnotation(cls);
    }
}
