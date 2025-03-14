package com.google.android.gms.tasks;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class TaskExecutors {
    public static final Executor MAIN_THREAD = new zza();
    static final Executor aMT = new Executor() { // from class: com.google.android.gms.tasks.TaskExecutors.1
        ExecutorC14241() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            runnable.run();
        }
    };

    /* renamed from: com.google.android.gms.tasks.TaskExecutors$1 */
    final class ExecutorC14241 implements Executor {
        ExecutorC14241() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            runnable.run();
        }
    }

    private static final class zza implements Executor {
        private final Handler mHandler = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            this.mHandler.post(runnable);
        }
    }

    private TaskExecutors() {
    }
}
