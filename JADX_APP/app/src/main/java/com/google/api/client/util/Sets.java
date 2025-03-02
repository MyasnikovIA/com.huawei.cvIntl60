package com.google.api.client.util;

import java.util.HashSet;
import java.util.TreeSet;

/* loaded from: classes.dex */
public final class Sets {
    public static <E> HashSet<E> newHashSet() {
        return new HashSet<>();
    }

    public static <E extends Comparable<?>> TreeSet<E> newTreeSet() {
        return new TreeSet<>();
    }

    private Sets() {
    }
}
