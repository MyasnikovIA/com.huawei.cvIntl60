package android.arch.p033a.p034a;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.util.concurrent.Executor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.arch.a.a.a */
/* loaded from: classes.dex */
public class C0125a extends AbstractC0127c {

    /* renamed from: a */
    private static volatile C0125a f954a;

    /* renamed from: d */
    @NonNull
    private static final Executor f955d = new Executor() { // from class: android.arch.a.a.a.1
        AnonymousClass1() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C0125a.m1269a().mo1271b(runnable);
        }
    };

    /* renamed from: e */
    @NonNull
    private static final Executor f956e = new Executor() { // from class: android.arch.a.a.a.2
        AnonymousClass2() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C0125a.m1269a().mo1270a(runnable);
        }
    };

    /* renamed from: c */
    @NonNull
    private AbstractC0127c f958c = new C0126b();

    /* renamed from: b */
    @NonNull
    private AbstractC0127c f957b = this.f958c;

    /* renamed from: android.arch.a.a.a$1 */
    static class AnonymousClass1 implements Executor {
        AnonymousClass1() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C0125a.m1269a().mo1271b(runnable);
        }
    }

    /* renamed from: android.arch.a.a.a$2 */
    static class AnonymousClass2 implements Executor {
        AnonymousClass2() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C0125a.m1269a().mo1270a(runnable);
        }
    }

    private C0125a() {
    }

    @NonNull
    /* renamed from: a */
    public static C0125a m1269a() {
        if (f954a != null) {
            return f954a;
        }
        synchronized (C0125a.class) {
            if (f954a == null) {
                f954a = new C0125a();
            }
        }
        return f954a;
    }

    @Override // android.arch.p033a.p034a.AbstractC0127c
    /* renamed from: a */
    public void mo1270a(Runnable runnable) {
        this.f957b.mo1270a(runnable);
    }

    @Override // android.arch.p033a.p034a.AbstractC0127c
    /* renamed from: b */
    public void mo1271b(Runnable runnable) {
        this.f957b.mo1271b(runnable);
    }

    @Override // android.arch.p033a.p034a.AbstractC0127c
    /* renamed from: b */
    public boolean mo1272b() {
        return this.f957b.mo1272b();
    }
}
