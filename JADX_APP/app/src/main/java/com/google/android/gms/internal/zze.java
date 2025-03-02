package com.google.android.gms.internal;

import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class zze implements zzn {
    private final Executor zzr;

    /* renamed from: com.google.android.gms.internal.zze$1 */
    class ExecutorC13611 implements Executor {
        final /* synthetic */ Handler zzs;

        ExecutorC13611(Handler handler) {
            handler = handler;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            handler.post(runnable);
        }
    }

    private class zza implements Runnable {
        private final zzk zzu;
        private final zzm zzv;
        private final Runnable zzw;

        public zza(zzk zzkVar, zzm zzmVar, Runnable runnable) {
            this.zzu = zzkVar;
            this.zzv = zzmVar;
            this.zzw = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.zzu.isCanceled()) {
                this.zzu.zzd("canceled-at-delivery");
                return;
            }
            if (this.zzv.isSuccess()) {
                this.zzu.zza((zzk) this.zzv.result);
            } else {
                this.zzu.zzc(this.zzv.zzbg);
            }
            if (this.zzv.zzbh) {
                this.zzu.zzc("intermediate-response");
            } else {
                this.zzu.zzd("done");
            }
            if (this.zzw != null) {
                this.zzw.run();
            }
        }
    }

    public zze(Handler handler) {
        this.zzr = new Executor() { // from class: com.google.android.gms.internal.zze.1
            final /* synthetic */ Handler zzs;

            ExecutorC13611(Handler handler2) {
                handler = handler2;
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    @Override // com.google.android.gms.internal.zzn
    public void zza(zzk<?> zzkVar, zzm<?> zzmVar) {
        zza(zzkVar, zzmVar, null);
    }

    @Override // com.google.android.gms.internal.zzn
    public void zza(zzk<?> zzkVar, zzm<?> zzmVar, Runnable runnable) {
        zzkVar.zzt();
        zzkVar.zzc("post-response");
        this.zzr.execute(new zza(zzkVar, zzmVar, runnable));
    }

    @Override // com.google.android.gms.internal.zzn
    public void zza(zzk<?> zzkVar, zzr zzrVar) {
        zzkVar.zzc("post-error");
        this.zzr.execute(new zza(zzkVar, zzm.zzd(zzrVar), null));
    }
}
