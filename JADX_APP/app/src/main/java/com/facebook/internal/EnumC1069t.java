package com.facebook.internal;

import java.util.EnumSet;
import java.util.Iterator;

/* renamed from: com.facebook.internal.t */
/* loaded from: classes.dex */
public enum EnumC1069t {
    None(0),
    Enabled(1),
    RequireConfirm(2);


    /* renamed from: d */
    public static final EnumSet<EnumC1069t> f5548d = EnumSet.allOf(EnumC1069t.class);

    /* renamed from: e */
    private final long f5550e;

    /* renamed from: a */
    public static EnumSet<EnumC1069t> m6061a(long j) {
        EnumSet<EnumC1069t> noneOf = EnumSet.noneOf(EnumC1069t.class);
        Iterator it = f5548d.iterator();
        while (it.hasNext()) {
            EnumC1069t enumC1069t = (EnumC1069t) it.next();
            if ((enumC1069t.m6062a() & j) != 0) {
                noneOf.add(enumC1069t);
            }
        }
        return noneOf;
    }

    EnumC1069t(long j) {
        this.f5550e = j;
    }

    /* renamed from: a */
    public long m6062a() {
        return this.f5550e;
    }
}
