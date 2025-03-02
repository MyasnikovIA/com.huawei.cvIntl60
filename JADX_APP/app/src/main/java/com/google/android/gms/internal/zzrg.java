package com.google.android.gms.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public abstract class zzrg {

    /* renamed from: AF */
    private static final ExecutorService f6776AF = Executors.newFixedThreadPool(2, new zzsw("GAC_Executor"));

    public static ExecutorService zzatf() {
        return f6776AF;
    }
}
