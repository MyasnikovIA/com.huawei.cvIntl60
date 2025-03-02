package com.google.api.client.util;

/* loaded from: classes.dex */
public final class Throwables {
    public static RuntimeException propagate(Throwable th) {
        return com.google.api.client.repackaged.com.google.common.base.Throwables.propagate(th);
    }

    public static void propagateIfPossible(Throwable th) {
        com.google.api.client.repackaged.com.google.common.base.Throwables.propagateIfPossible(th);
    }

    public static <X extends Throwable> void propagateIfPossible(Throwable th, Class<X> cls) {
        com.google.api.client.repackaged.com.google.common.base.Throwables.propagateIfPossible(th, cls);
    }

    private Throwables() {
    }
}
