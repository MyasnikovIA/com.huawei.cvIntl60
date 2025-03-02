package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public class zzqo {

    public static abstract class zza<R extends Result, A extends Api.zzb> extends zzqq<R> implements zzb<R> {

        /* renamed from: vS */
        private final Api<?> f6615vS;

        /* renamed from: yy */
        private final Api.zzc<A> f6616yy;

        @Deprecated
        protected zza(Api.zzc<A> zzcVar, GoogleApiClient googleApiClient) {
            super((GoogleApiClient) com.google.android.gms.common.internal.zzaa.zzb(googleApiClient, "GoogleApiClient must not be null"));
            this.f6616yy = (Api.zzc) com.google.android.gms.common.internal.zzaa.zzy(zzcVar);
            this.f6615vS = null;
        }

        protected zza(Api<?> api, GoogleApiClient googleApiClient) {
            super((GoogleApiClient) com.google.android.gms.common.internal.zzaa.zzb(googleApiClient, "GoogleApiClient must not be null"));
            this.f6616yy = (Api.zzc<A>) api.zzaqv();
            this.f6615vS = api;
        }

        private void zza(RemoteException remoteException) {
            zzaa(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        public final Api<?> getApi() {
            return this.f6615vS;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzqo.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzc((zza<R, A>) obj);
        }

        protected abstract void zza(A a2);

        @Override // com.google.android.gms.internal.zzqo.zzb
        public final void zzaa(Status status) {
            com.google.android.gms.common.internal.zzaa.zzb(!status.isSuccess(), "Failed result must not be success");
            R zzc = zzc(status);
            zzc((zza<R, A>) zzc);
            zzb((zza<R, A>) zzc);
        }

        public final Api.zzc<A> zzaqv() {
            return this.f6616yy;
        }

        public final void zzb(A a2) {
            try {
                zza((zza<R, A>) a2);
            } catch (DeadObjectException e) {
                zza(e);
                throw e;
            } catch (RemoteException e2) {
                zza(e2);
            }
        }

        protected void zzb(R r) {
        }
    }

    public interface zzb<R> {
        void setResult(R r);

        void zzaa(Status status);
    }
}
