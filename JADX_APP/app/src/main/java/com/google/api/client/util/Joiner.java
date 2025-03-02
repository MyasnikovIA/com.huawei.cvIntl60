package com.google.api.client.util;

/* loaded from: classes.dex */
public final class Joiner {
    private final com.google.api.client.repackaged.com.google.common.base.Joiner wrapped;

    /* renamed from: on */
    public static Joiner m6684on(char c) {
        return new Joiner(com.google.api.client.repackaged.com.google.common.base.Joiner.m6677on(c));
    }

    private Joiner(com.google.api.client.repackaged.com.google.common.base.Joiner joiner) {
        this.wrapped = joiner;
    }

    public final String join(Iterable<?> iterable) {
        return this.wrapped.join(iterable);
    }
}
