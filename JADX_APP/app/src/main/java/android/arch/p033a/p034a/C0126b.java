package android.arch.p033a.p034a;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.arch.a.a.b */
/* loaded from: classes.dex */
public class C0126b extends AbstractC0127c {

    /* renamed from: a */
    private final Object f959a = new Object();

    /* renamed from: b */
    private ExecutorService f960b = Executors.newFixedThreadPool(2);

    /* renamed from: c */
    @Nullable
    private volatile Handler f961c;

    @Override // android.arch.p033a.p034a.AbstractC0127c
    /* renamed from: a */
    public void mo1270a(Runnable runnable) {
        this.f960b.execute(runnable);
    }

    @Override // android.arch.p033a.p034a.AbstractC0127c
    /* renamed from: b */
    public void mo1271b(Runnable runnable) {
        if (this.f961c == null) {
            synchronized (this.f959a) {
                if (this.f961c == null) {
                    this.f961c = new Handler(Looper.getMainLooper());
                }
            }
        }
        this.f961c.post(runnable);
    }

    @Override // android.arch.p033a.p034a.AbstractC0127c
    /* renamed from: b */
    public boolean mo1272b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
