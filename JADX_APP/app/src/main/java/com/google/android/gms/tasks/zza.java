package com.google.android.gms.tasks;

import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
class zza<TResult, TContinuationResult> implements zzf<TResult> {
    private final Executor aEQ;
    private final Continuation<TResult, TContinuationResult> aMF;
    private final zzh<TContinuationResult> aMG;

    /* renamed from: com.google.android.gms.tasks.zza$1 */
    class RunnableC14261 implements Runnable {
        final /* synthetic */ Task aMH;

        RunnableC14261(Task task) {
            task = task;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            try {
                zza.this.aMG.setResult(zza.this.aMF.then(task));
            } catch (RuntimeExecutionException e) {
                if (e.getCause() instanceof Exception) {
                    zza.this.aMG.setException((Exception) e.getCause());
                } else {
                    zza.this.aMG.setException(e);
                }
            } catch (Exception e2) {
                zza.this.aMG.setException(e2);
            }
        }
    }

    public zza(@NonNull Executor executor, @NonNull Continuation<TResult, TContinuationResult> continuation, @NonNull zzh<TContinuationResult> zzhVar) {
        this.aEQ = executor;
        this.aMF = continuation;
        this.aMG = zzhVar;
    }

    @Override // com.google.android.gms.tasks.zzf
    public void cancel() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.zzf
    public void onComplete(@NonNull Task<TResult> task) {
        this.aEQ.execute(new Runnable() { // from class: com.google.android.gms.tasks.zza.1
            final /* synthetic */ Task aMH;

            RunnableC14261(Task task2) {
                task = task2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    zza.this.aMG.setResult(zza.this.aMF.then(task));
                } catch (RuntimeExecutionException e) {
                    if (e.getCause() instanceof Exception) {
                        zza.this.aMG.setException((Exception) e.getCause());
                    } else {
                        zza.this.aMG.setException(e);
                    }
                } catch (Exception e2) {
                    zza.this.aMG.setException(e2);
                }
            }
        });
    }
}
