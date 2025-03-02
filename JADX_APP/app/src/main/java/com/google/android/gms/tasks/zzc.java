package com.google.android.gms.tasks;

import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
class zzc<TResult> implements zzf<TResult> {
    private final Executor aEQ;
    private OnCompleteListener<TResult> aMK;
    private final Object zzako = new Object();

    /* renamed from: com.google.android.gms.tasks.zzc$1 */
    class RunnableC14281 implements Runnable {
        final /* synthetic */ Task aMH;

        RunnableC14281(Task task) {
            task = task;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (zzc.this.zzako) {
                if (zzc.this.aMK != null) {
                    zzc.this.aMK.onComplete(task);
                }
            }
        }
    }

    public zzc(@NonNull Executor executor, @NonNull OnCompleteListener<TResult> onCompleteListener) {
        this.aEQ = executor;
        this.aMK = onCompleteListener;
    }

    @Override // com.google.android.gms.tasks.zzf
    public void cancel() {
        synchronized (this.zzako) {
            this.aMK = null;
        }
    }

    @Override // com.google.android.gms.tasks.zzf
    public void onComplete(@NonNull Task<TResult> task) {
        synchronized (this.zzako) {
            if (this.aMK == null) {
                return;
            }
            this.aEQ.execute(new Runnable() { // from class: com.google.android.gms.tasks.zzc.1
                final /* synthetic */ Task aMH;

                RunnableC14281(Task task2) {
                    task = task2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    synchronized (zzc.this.zzako) {
                        if (zzc.this.aMK != null) {
                            zzc.this.aMK.onComplete(task);
                        }
                    }
                }
            });
        }
    }
}
