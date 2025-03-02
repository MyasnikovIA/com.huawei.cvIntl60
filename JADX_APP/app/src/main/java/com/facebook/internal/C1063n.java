package com.facebook.internal;

import com.facebook.C1074k;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;

/* renamed from: com.facebook.internal.n */
/* loaded from: classes.dex */
public class C1063n<T> {

    /* renamed from: a */
    private T f5513a;

    /* renamed from: b */
    private CountDownLatch f5514b = new CountDownLatch(1);

    public C1063n(Callable<T> callable) {
        C1074k.m6179d().execute(new FutureTask(new Callable<Void>() { // from class: com.facebook.internal.n.1

            /* renamed from: a */
            final /* synthetic */ Callable f5515a;

            AnonymousClass1(Callable callable2) {
                callable = callable2;
            }

            @Override // java.util.concurrent.Callable
            /* renamed from: a */
            public Void call() {
                try {
                    C1063n.this.f5513a = callable.call();
                    C1063n.this.f5514b.countDown();
                    return null;
                } catch (Throwable th) {
                    C1063n.this.f5514b.countDown();
                    throw th;
                }
            }
        }));
    }

    /* renamed from: com.facebook.internal.n$1 */
    class AnonymousClass1 implements Callable<Void> {

        /* renamed from: a */
        final /* synthetic */ Callable f5515a;

        AnonymousClass1(Callable callable2) {
            callable = callable2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() {
            try {
                C1063n.this.f5513a = callable.call();
                C1063n.this.f5514b.countDown();
                return null;
            } catch (Throwable th) {
                C1063n.this.f5514b.countDown();
                throw th;
            }
        }
    }
}
