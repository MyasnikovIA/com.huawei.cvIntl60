package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzrh;
import com.google.android.gms.internal.zzrr;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public abstract class zzqj {

    /* renamed from: nV */
    public final int f6592nV;

    private static abstract class zza extends zzqj {

        /* renamed from: yg */
        protected final TaskCompletionSource<Void> f6593yg;

        public zza(int i, TaskCompletionSource<Void> taskCompletionSource) {
            super(i);
            this.f6593yg = taskCompletionSource;
        }

        private void zza(RemoteException remoteException) {
            zzy(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        @Override // com.google.android.gms.internal.zzqj
        public void zza(@NonNull zzqv zzqvVar, boolean z) {
        }

        @Override // com.google.android.gms.internal.zzqj
        public final void zza(zzrh.zza<?> zzaVar) {
            try {
                zzb(zzaVar);
            } catch (DeadObjectException e) {
                zza(e);
                throw e;
            } catch (RemoteException e2) {
                zza(e2);
            }
        }

        protected abstract void zzb(zzrh.zza<?> zzaVar);

        @Override // com.google.android.gms.internal.zzqj
        public void zzy(@NonNull Status status) {
            this.f6593yg.trySetException(new com.google.android.gms.common.api.zza(status));
        }
    }

    public static class zzb<A extends zzqo.zza<? extends Result, Api.zzb>> extends zzqj {

        /* renamed from: yh */
        protected final A f6594yh;

        public zzb(int i, A a2) {
            super(i);
            this.f6594yh = a2;
        }

        @Override // com.google.android.gms.internal.zzqj
        public void zza(@NonNull zzqv zzqvVar, boolean z) {
            zzqvVar.zza(this.f6594yh, z);
        }

        @Override // com.google.android.gms.internal.zzqj
        public void zza(zzrh.zza<?> zzaVar) {
            this.f6594yh.zzb(zzaVar.getClient());
        }

        @Override // com.google.android.gms.internal.zzqj
        public void zzy(@NonNull Status status) {
            this.f6594yh.zzaa(status);
        }
    }

    public static final class zzc extends zza {

        /* renamed from: yi */
        public final zzrw<Api.zzb> f6595yi;

        /* renamed from: yj */
        public final zzsh<Api.zzb> f6596yj;

        public zzc(zzrx zzrxVar, TaskCompletionSource<Void> taskCompletionSource) {
            super(3, taskCompletionSource);
            this.f6595yi = zzrxVar.f6829yi;
            this.f6596yj = zzrxVar.f6830yj;
        }

        @Override // com.google.android.gms.internal.zzqj.zza, com.google.android.gms.internal.zzqj
        public /* bridge */ /* synthetic */ void zza(@NonNull zzqv zzqvVar, boolean z) {
            super.zza(zzqvVar, z);
        }

        @Override // com.google.android.gms.internal.zzqj.zza
        public void zzb(zzrh.zza<?> zzaVar) {
            this.f6595yi.zza(zzaVar.getClient(), this.f6593yg);
            if (this.f6595yi.zzatz() != null) {
                zzaVar.zzatn().put(this.f6595yi.zzatz(), new zzrx(this.f6595yi, this.f6596yj));
            }
        }

        @Override // com.google.android.gms.internal.zzqj.zza, com.google.android.gms.internal.zzqj
        public /* bridge */ /* synthetic */ void zzy(@NonNull Status status) {
            super.zzy(status);
        }
    }

    public static final class zzd<TResult> extends zzqj {

        /* renamed from: ym */
        private static final Status f6597ym = new Status(8, "Connection to Google Play services was lost while executing the API call.");

        /* renamed from: yg */
        private final TaskCompletionSource<TResult> f6598yg;

        /* renamed from: yk */
        private final zzse<Api.zzb, TResult> f6599yk;

        /* renamed from: yl */
        private final zzsb f6600yl;

        public zzd(int i, zzse<Api.zzb, TResult> zzseVar, TaskCompletionSource<TResult> taskCompletionSource, zzsb zzsbVar) {
            super(i);
            this.f6598yg = taskCompletionSource;
            this.f6599yk = zzseVar;
            this.f6600yl = zzsbVar;
        }

        @Override // com.google.android.gms.internal.zzqj
        public void zza(@NonNull zzqv zzqvVar, boolean z) {
            zzqvVar.zza(this.f6598yg, z);
        }

        @Override // com.google.android.gms.internal.zzqj
        public void zza(zzrh.zza<?> zzaVar) {
            try {
                this.f6599yk.zzb(zzaVar.getClient(), this.f6598yg);
            } catch (DeadObjectException e) {
                throw e;
            } catch (RemoteException e2) {
                zzy(f6597ym);
            }
        }

        @Override // com.google.android.gms.internal.zzqj
        public void zzy(@NonNull Status status) {
            this.f6598yg.trySetException(this.f6600yl.zzz(status));
        }
    }

    public static final class zze extends zza {

        /* renamed from: yn */
        public final zzrr.zzb<?> f6601yn;

        public zze(zzrr.zzb<?> zzbVar, TaskCompletionSource<Void> taskCompletionSource) {
            super(4, taskCompletionSource);
            this.f6601yn = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzqj.zza, com.google.android.gms.internal.zzqj
        public /* bridge */ /* synthetic */ void zza(@NonNull zzqv zzqvVar, boolean z) {
            super.zza(zzqvVar, z);
        }

        @Override // com.google.android.gms.internal.zzqj.zza
        public void zzb(zzrh.zza<?> zzaVar) {
            zzrx remove = zzaVar.zzatn().remove(this.f6601yn);
            if (remove != null) {
                remove.f6830yj.zzc(zzaVar.getClient(), this.f6593yg);
                remove.f6829yi.zzaua();
            } else {
                Log.wtf("UnregisterListenerTask", "Received call to unregister a listener without a matching registration call.", new Exception());
                this.f6593yg.trySetException(new com.google.android.gms.common.api.zza(Status.f6173yb));
            }
        }

        @Override // com.google.android.gms.internal.zzqj.zza, com.google.android.gms.internal.zzqj
        public /* bridge */ /* synthetic */ void zzy(@NonNull Status status) {
            super.zzy(status);
        }
    }

    public zzqj(int i) {
        this.f6592nV = i;
    }

    public abstract void zza(@NonNull zzqv zzqvVar, boolean z);

    public abstract void zza(zzrh.zza<?> zzaVar);

    public abstract void zzy(@NonNull Status status);
}
