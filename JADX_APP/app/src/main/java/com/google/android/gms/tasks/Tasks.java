package com.google.android.gms.tasks;

import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzaa;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class Tasks {

    /* renamed from: com.google.android.gms.tasks.Tasks$1 */
    final class RunnableC14251 implements Runnable {
        final /* synthetic */ Callable zzcvh;

        RunnableC14251(Callable callable) {
            callable = callable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                zzh.this.setResult(callable.call());
            } catch (Exception e) {
                zzh.this.setException(e);
            }
        }
    }

    private static final class zza implements zzb {
        private final CountDownLatch zzank;

        private zza() {
            this.zzank = new CountDownLatch(1);
        }

        /* synthetic */ zza(RunnableC14251 runnableC14251) {
            this();
        }

        public void await() {
            this.zzank.await();
        }

        public boolean await(long j, TimeUnit timeUnit) {
            return this.zzank.await(j, timeUnit);
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public void onFailure(@NonNull Exception exc) {
            this.zzank.countDown();
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(Object obj) {
            this.zzank.countDown();
        }
    }

    interface zzb extends OnFailureListener, OnSuccessListener<Object> {
    }

    private static final class zzc implements zzb {
        private final zzh<Void> aMS;
        private Exception aMX;
        private final int aMZ;
        private int aNa;
        private int aNb;
        private final Object zzako = new Object();

        public zzc(int i, zzh<Void> zzhVar) {
            this.aMZ = i;
            this.aMS = zzhVar;
        }

        private void zzclj() {
            if (this.aNa + this.aNb == this.aMZ) {
                if (this.aMX == null) {
                    this.aMS.setResult(null);
                    return;
                }
                zzh<Void> zzhVar = this.aMS;
                int i = this.aNb;
                zzhVar.setException(new ExecutionException(new StringBuilder(54).append(i).append(" out of ").append(this.aMZ).append(" underlying tasks failed").toString(), this.aMX));
            }
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public void onFailure(@NonNull Exception exc) {
            synchronized (this.zzako) {
                this.aNb++;
                this.aMX = exc;
                zzclj();
            }
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(Object obj) {
            synchronized (this.zzako) {
                this.aNa++;
                zzclj();
            }
        }
    }

    private Tasks() {
    }

    public static <TResult> TResult await(@NonNull Task<TResult> task) {
        zzaa.zzawk();
        zzaa.zzb(task, "Task must not be null");
        if (task.isComplete()) {
            return (TResult) zzb(task);
        }
        zza zzaVar = new zza();
        zza(task, zzaVar);
        zzaVar.await();
        return (TResult) zzb(task);
    }

    public static <TResult> TResult await(@NonNull Task<TResult> task, long j, @NonNull TimeUnit timeUnit) {
        zzaa.zzawk();
        zzaa.zzb(task, "Task must not be null");
        zzaa.zzb(timeUnit, "TimeUnit must not be null");
        if (task.isComplete()) {
            return (TResult) zzb(task);
        }
        zza zzaVar = new zza();
        zza(task, zzaVar);
        if (zzaVar.await(j, timeUnit)) {
            return (TResult) zzb(task);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static <TResult> Task<TResult> call(@NonNull Callable<TResult> callable) {
        return call(TaskExecutors.MAIN_THREAD, callable);
    }

    public static <TResult> Task<TResult> call(@NonNull Executor executor, @NonNull Callable<TResult> callable) {
        zzaa.zzb(executor, "Executor must not be null");
        zzaa.zzb(callable, "Callback must not be null");
        zzh zzhVar = new zzh();
        executor.execute(new Runnable() { // from class: com.google.android.gms.tasks.Tasks.1
            final /* synthetic */ Callable zzcvh;

            RunnableC14251(Callable callable2) {
                callable = callable2;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    zzh.this.setResult(callable.call());
                } catch (Exception e) {
                    zzh.this.setException(e);
                }
            }
        });
        return zzhVar;
    }

    public static <TResult> Task<TResult> forException(@NonNull Exception exc) {
        zzh zzhVar = new zzh();
        zzhVar.setException(exc);
        return zzhVar;
    }

    public static <TResult> Task<TResult> forResult(TResult tresult) {
        zzh zzhVar = new zzh();
        zzhVar.setResult(tresult);
        return zzhVar;
    }

    public static Task<Void> whenAll(Collection<? extends Task<?>> collection) {
        if (collection.isEmpty()) {
            return forResult(null);
        }
        Iterator<? extends Task<?>> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        zzh zzhVar = new zzh();
        zzc zzcVar = new zzc(collection.size(), zzhVar);
        Iterator<? extends Task<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            zza(it2.next(), zzcVar);
        }
        return zzhVar;
    }

    public static Task<Void> whenAll(Task<?>... taskArr) {
        return taskArr.length == 0 ? forResult(null) : whenAll(Arrays.asList(taskArr));
    }

    private static void zza(Task<?> task, zzb zzbVar) {
        task.addOnSuccessListener(TaskExecutors.aMT, zzbVar);
        task.addOnFailureListener(TaskExecutors.aMT, zzbVar);
    }

    private static <TResult> TResult zzb(Task<TResult> task) {
        if (task.isSuccessful()) {
            return task.getResult();
        }
        throw new ExecutionException(task.getException());
    }
}
