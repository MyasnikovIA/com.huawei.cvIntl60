package com.p052a.p053a.p057d.p060b.p063c;

import android.os.Process;
import android.os.StrictMode;
import android.support.annotation.NonNull;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* renamed from: com.a.a.d.b.c.a */
/* loaded from: classes.dex */
public final class C0787a extends ThreadPoolExecutor {

    /* renamed from: b */
    private static final long f4292b = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: a */
    private final boolean f4293a;

    /* renamed from: a */
    public static C0787a m4769a() {
        return m4770a(1, "disk-cache", b.f4303d);
    }

    /* renamed from: a */
    public static C0787a m4770a(int i, String str, b bVar) {
        return new C0787a(i, str, bVar, true, false);
    }

    /* renamed from: b */
    public static C0787a m4772b() {
        return m4773b(m4775d(), "source", b.f4303d);
    }

    /* renamed from: b */
    public static C0787a m4773b(int i, String str, b bVar) {
        return new C0787a(i, str, bVar, false, false);
    }

    /* renamed from: c */
    public static C0787a m4774c() {
        return new C0787a(0, Integer.MAX_VALUE, f4292b, "source-unlimited", b.f4303d, false, false, new SynchronousQueue());
    }

    C0787a(int i, String str, b bVar, boolean z, boolean z2) {
        this(i, i, 0L, str, bVar, z, z2);
    }

    C0787a(int i, int i2, long j, String str, b bVar, boolean z, boolean z2) {
        this(i, i2, j, str, bVar, z, z2, new PriorityBlockingQueue());
    }

    C0787a(int i, int i2, long j, String str, b bVar, boolean z, boolean z2, BlockingQueue<Runnable> blockingQueue) {
        super(i, i2, j, TimeUnit.MILLISECONDS, blockingQueue, new a(str, bVar, z));
        this.f4293a = z2;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (this.f4293a) {
            runnable.run();
        } else {
            super.execute(runnable);
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    @NonNull
    public Future<?> submit(Runnable runnable) {
        return m4771a(super.submit(runnable));
    }

    /* renamed from: a */
    private <T> Future<T> m4771a(Future<T> future) {
        if (this.f4293a) {
            boolean z = false;
            while (!future.isDone()) {
                try {
                    try {
                        future.get();
                    } catch (InterruptedException e) {
                        z = true;
                    } catch (ExecutionException e2) {
                        throw new RuntimeException(e2);
                    }
                } finally {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
        return future;
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    @NonNull
    public <T> Future<T> submit(Runnable runnable, T t) {
        return m4771a(super.submit(runnable, t));
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return m4771a(super.submit(callable));
    }

    /* renamed from: d */
    public static int m4775d() {
        File[] fileArr;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                fileArr = new File("/sys/devices/system/cpu/").listFiles(new FilenameFilter() { // from class: com.a.a.d.b.c.a.1

                    /* renamed from: a */
                    final /* synthetic */ Pattern f4294a;

                    AnonymousClass1(Pattern pattern) {
                        compile = pattern;
                    }

                    @Override // java.io.FilenameFilter
                    public boolean accept(File file, String str) {
                        return compile.matcher(str).matches();
                    }
                });
            } catch (Throwable th) {
                if (Log.isLoggable("GlideExecutor", 6)) {
                    Log.e("GlideExecutor", "Failed to calculate accurate cpu count", th);
                }
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                fileArr = null;
            }
            return Math.min(4, Math.max(Math.max(1, Runtime.getRuntime().availableProcessors()), fileArr != null ? fileArr.length : 0));
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: com.a.a.d.b.c.a$1 */
    static class AnonymousClass1 implements FilenameFilter {

        /* renamed from: a */
        final /* synthetic */ Pattern f4294a;

        AnonymousClass1(Pattern pattern) {
            compile = pattern;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return compile.matcher(str).matches();
        }
    }

    /* renamed from: com.a.a.d.b.c.a$b */
    public interface b {

        /* renamed from: a */
        public static final b f4300a = new b() { // from class: com.a.a.d.b.c.a.b.1
            AnonymousClass1() {
            }

            @Override // com.p052a.p053a.p057d.p060b.p063c.C0787a.b
            /* renamed from: a */
            public void mo4776a(Throwable th) {
            }
        };

        /* renamed from: b */
        public static final b f4301b = new b() { // from class: com.a.a.d.b.c.a.b.2
            AnonymousClass2() {
            }

            @Override // com.p052a.p053a.p057d.p060b.p063c.C0787a.b
            /* renamed from: a */
            public void mo4776a(Throwable th) {
                if (th != null && Log.isLoggable("GlideExecutor", 6)) {
                    Log.e("GlideExecutor", "Request threw uncaught throwable", th);
                }
            }
        };

        /* renamed from: c */
        public static final b f4302c = new b() { // from class: com.a.a.d.b.c.a.b.3
            AnonymousClass3() {
            }

            @Override // com.p052a.p053a.p057d.p060b.p063c.C0787a.b
            /* renamed from: a */
            public void mo4776a(Throwable th) {
                if (th != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th);
                }
            }
        };

        /* renamed from: d */
        public static final b f4303d = f4301b;

        /* renamed from: a */
        void mo4776a(Throwable th);

        /* renamed from: com.a.a.d.b.c.a$b$1 */
        static class AnonymousClass1 implements b {
            AnonymousClass1() {
            }

            @Override // com.p052a.p053a.p057d.p060b.p063c.C0787a.b
            /* renamed from: a */
            public void mo4776a(Throwable th) {
            }
        }

        /* renamed from: com.a.a.d.b.c.a$b$2 */
        static class AnonymousClass2 implements b {
            AnonymousClass2() {
            }

            @Override // com.p052a.p053a.p057d.p060b.p063c.C0787a.b
            /* renamed from: a */
            public void mo4776a(Throwable th) {
                if (th != null && Log.isLoggable("GlideExecutor", 6)) {
                    Log.e("GlideExecutor", "Request threw uncaught throwable", th);
                }
            }
        }

        /* renamed from: com.a.a.d.b.c.a$b$3 */
        static class AnonymousClass3 implements b {
            AnonymousClass3() {
            }

            @Override // com.p052a.p053a.p057d.p060b.p063c.C0787a.b
            /* renamed from: a */
            public void mo4776a(Throwable th) {
                if (th != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th);
                }
            }
        }
    }

    /* renamed from: com.a.a.d.b.c.a$a */
    private static final class a implements ThreadFactory {

        /* renamed from: a */
        final b f4295a;

        /* renamed from: b */
        final boolean f4296b;

        /* renamed from: c */
        private final String f4297c;

        /* renamed from: d */
        private int f4298d;

        a(String str, b bVar, boolean z) {
            this.f4297c = str;
            this.f4295a = bVar;
            this.f4296b = z;
        }

        /* renamed from: com.a.a.d.b.c.a$a$1 */
        class AnonymousClass1 extends Thread {
            AnonymousClass1(Runnable runnable, String str) {
                super(runnable, str);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(9);
                if (a.this.f4296b) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    super.run();
                } catch (Throwable th) {
                    a.this.f4295a.mo4776a(th);
                }
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(@NonNull Runnable runnable) {
            AnonymousClass1 anonymousClass1;
            anonymousClass1 = new Thread(runnable, "glide-" + this.f4297c + "-thread-" + this.f4298d) { // from class: com.a.a.d.b.c.a.a.1
                AnonymousClass1(Runnable runnable2, String str) {
                    super(runnable2, str);
                }

                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Process.setThreadPriority(9);
                    if (a.this.f4296b) {
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                    }
                    try {
                        super.run();
                    } catch (Throwable th) {
                        a.this.f4295a.mo4776a(th);
                    }
                }
            };
            this.f4298d++;
            return anonymousClass1;
        }
    }
}
