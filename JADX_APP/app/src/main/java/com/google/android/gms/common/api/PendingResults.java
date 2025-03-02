package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzqq;
import com.google.android.gms.internal.zzru;
import com.google.android.gms.internal.zzsc;

/* loaded from: classes.dex */
public final class PendingResults {

    private static final class zza<R extends Result> extends zzqq<R> {

        /* renamed from: xU */
        private final R f6167xU;

        public zza(R r) {
            super(Looper.getMainLooper());
            this.f6167xU = r;
        }

        @Override // com.google.android.gms.internal.zzqq
        protected R zzc(Status status) {
            if (status.getStatusCode() != this.f6167xU.getStatus().getStatusCode()) {
                throw new UnsupportedOperationException("Creating failed results is not supported");
            }
            return this.f6167xU;
        }
    }

    private static final class zzb<R extends Result> extends zzqq<R> {

        /* renamed from: xV */
        private final R f6168xV;

        public zzb(GoogleApiClient googleApiClient, R r) {
            super(googleApiClient);
            this.f6168xV = r;
        }

        @Override // com.google.android.gms.internal.zzqq
        protected R zzc(Status status) {
            return this.f6168xV;
        }
    }

    private static final class zzc<R extends Result> extends zzqq<R> {
        public zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzqq
        protected R zzc(Status status) {
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    private PendingResults() {
    }

    public static PendingResult<Status> canceledPendingResult() {
        zzsc zzscVar = new zzsc(Looper.getMainLooper());
        zzscVar.cancel();
        return zzscVar;
    }

    public static <R extends Result> PendingResult<R> canceledPendingResult(R r) {
        zzaa.zzb(r, "Result must not be null");
        zzaa.zzb(r.getStatus().getStatusCode() == 16, "Status code must be CommonStatusCodes.CANCELED");
        zza zzaVar = new zza(r);
        zzaVar.cancel();
        return zzaVar;
    }

    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(R r) {
        zzaa.zzb(r, "Result must not be null");
        zzc zzcVar = new zzc(null);
        zzcVar.zzc((zzc) r);
        return new zzru(zzcVar);
    }

    public static PendingResult<Status> immediatePendingResult(Status status) {
        zzaa.zzb(status, "Result must not be null");
        zzsc zzscVar = new zzsc(Looper.getMainLooper());
        zzscVar.zzc((zzsc) status);
        return zzscVar;
    }

    public static <R extends Result> PendingResult<R> zza(R r, GoogleApiClient googleApiClient) {
        zzaa.zzb(r, "Result must not be null");
        zzaa.zzb(!r.getStatus().isSuccess(), "Status code must not be SUCCESS");
        zzb zzbVar = new zzb(googleApiClient, r);
        zzbVar.zzc((zzb) r);
        return zzbVar;
    }

    public static PendingResult<Status> zza(Status status, GoogleApiClient googleApiClient) {
        zzaa.zzb(status, "Result must not be null");
        zzsc zzscVar = new zzsc(googleApiClient);
        zzscVar.zzc((zzsc) status);
        return zzscVar;
    }

    public static <R extends Result> OptionalPendingResult<R> zzb(R r, GoogleApiClient googleApiClient) {
        zzaa.zzb(r, "Result must not be null");
        zzc zzcVar = new zzc(googleApiClient);
        zzcVar.zzc((zzc) r);
        return new zzru(zzcVar);
    }
}
