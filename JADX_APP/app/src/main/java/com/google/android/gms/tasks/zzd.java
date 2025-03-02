package com.google.android.gms.tasks;

import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
class zzd<TResult> implements zzf<TResult> {
    private final Executor aEQ;
    private OnFailureListener aMM;
    private final Object zzako = new Object();

    /* renamed from: com.google.android.gms.tasks.zzd$1 */
    class RunnableC14291 implements Runnable {
        final /* synthetic */ Task aMH;

        RunnableC14291(Task task) {
            task = task;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (zzd.this.zzako) {
                if (zzd.this.aMM != null) {
                    zzd.this.aMM.onFailure(task.getException());
                }
            }
        }
    }

    public zzd(@NonNull Executor executor, @NonNull OnFailureListener onFailureListener) {
        this.aEQ = executor;
        this.aMM = onFailureListener;
    }

    @Override // com.google.android.gms.tasks.zzf
    public void cancel() {
        synchronized (this.zzako) {
            this.aMM = null;
        }
    }

    @Override // com.google.android.gms.tasks.zzf
    public void onComplete(@NonNull Task<TResult> task) {
        if (task.isSuccessful()) {
            return;
        }
        synchronized (this.zzako) {
            if (this.aMM != null) {
                this.aEQ.execute(new Runnable() { // from class: com.google.android.gms.tasks.zzd.1
                    final /* synthetic */ Task aMH;

                    RunnableC14291(Task task2) {
                        task = task2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (zzd.this.zzako) {
                            if (zzd.this.aMM != null) {
                                zzd.this.aMM.onFailure(task.getException());
                            }
                        }
                    }
                });
            }
        }
    }
}
