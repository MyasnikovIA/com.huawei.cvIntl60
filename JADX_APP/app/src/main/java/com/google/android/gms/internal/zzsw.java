package com.google.android.gms.internal;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class zzsw implements ThreadFactory {

    /* renamed from: GM */
    private final String f6891GM;

    /* renamed from: GN */
    private final AtomicInteger f6892GN;

    /* renamed from: GO */
    private final ThreadFactory f6893GO;
    private final int mPriority;

    public zzsw(String str) {
        this(str, 0);
    }

    public zzsw(String str, int i) {
        this.f6892GN = new AtomicInteger();
        this.f6893GO = Executors.defaultThreadFactory();
        this.f6891GM = (String) com.google.android.gms.common.internal.zzaa.zzb(str, "Name must not be null");
        this.mPriority = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f6893GO.newThread(new zzsx(runnable, this.mPriority));
        String str = this.f6891GM;
        newThread.setName(new StringBuilder(String.valueOf(str).length() + 13).append(str).append("[").append(this.f6892GN.getAndIncrement()).append("]").toString());
        return newThread;
    }
}
