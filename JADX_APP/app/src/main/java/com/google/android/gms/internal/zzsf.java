package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class zzsf<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {

    /* renamed from: BA */
    private final zza f6838BA;

    /* renamed from: yJ */
    private final WeakReference<GoogleApiClient> f6846yJ;

    /* renamed from: Bv */
    private ResultTransform<? super R, ? extends Result> f6840Bv = null;

    /* renamed from: Bw */
    private zzsf<? extends Result> f6841Bw = null;

    /* renamed from: Bx */
    private volatile ResultCallbacks<? super R> f6842Bx = null;

    /* renamed from: By */
    private PendingResult<R> f6843By = null;

    /* renamed from: yH */
    private final Object f6845yH = new Object();

    /* renamed from: Bz */
    private Status f6844Bz = null;

    /* renamed from: BB */
    private boolean f6839BB = false;

    /* renamed from: com.google.android.gms.internal.zzsf$1 */
    class RunnableC13871 implements Runnable {

        /* renamed from: BC */
        final /* synthetic */ Result f6847BC;

        RunnableC13871(Result result) {
            r = result;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        @WorkerThread
        public void run() {
            try {
                try {
                    zzqq.f6625yG.set(true);
                    zzsf.this.f6838BA.sendMessage(zzsf.this.f6838BA.obtainMessage(0, zzsf.this.f6840Bv.onSuccess(r)));
                    zzqq.f6625yG.set(false);
                    zzsf.this.zze(r);
                    GoogleApiClient googleApiClient = (GoogleApiClient) zzsf.this.f6846yJ.get();
                    if (googleApiClient != null) {
                        googleApiClient.zzb(zzsf.this);
                    }
                } catch (RuntimeException e) {
                    zzsf.this.f6838BA.sendMessage(zzsf.this.f6838BA.obtainMessage(1, e));
                    zzqq.f6625yG.set(false);
                    zzsf.this.zze(r);
                    GoogleApiClient googleApiClient2 = (GoogleApiClient) zzsf.this.f6846yJ.get();
                    if (googleApiClient2 != null) {
                        googleApiClient2.zzb(zzsf.this);
                    }
                }
            } finally {
            }
        }
    }

    private final class zza extends Handler {
        public zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    PendingResult<?> pendingResult = (PendingResult) message.obj;
                    synchronized (zzsf.this.f6845yH) {
                        if (pendingResult == null) {
                            zzsf.this.f6841Bw.zzad(new Status(13, "Transform returned null"));
                        } else if (pendingResult instanceof zzrz) {
                            zzsf.this.f6841Bw.zzad(((zzrz) pendingResult).getStatus());
                        } else {
                            zzsf.this.f6841Bw.zza(pendingResult);
                        }
                    }
                    return;
                case 1:
                    RuntimeException runtimeException = (RuntimeException) message.obj;
                    String valueOf = String.valueOf(runtimeException.getMessage());
                    Log.e("TransformedResultImpl", valueOf.length() != 0 ? "Runtime exception on the transformation worker thread: ".concat(valueOf) : new String("Runtime exception on the transformation worker thread: "));
                    throw runtimeException;
                default:
                    Log.e("TransformedResultImpl", new StringBuilder(70).append("TransformationResultHandler received unknown message type: ").append(message.what).toString());
                    return;
            }
        }
    }

    public zzsf(WeakReference<GoogleApiClient> weakReference) {
        com.google.android.gms.common.internal.zzaa.zzb(weakReference, "GoogleApiClient reference must not be null");
        this.f6846yJ = weakReference;
        GoogleApiClient googleApiClient = this.f6846yJ.get();
        this.f6838BA = new zza(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    public void zzad(Status status) {
        synchronized (this.f6845yH) {
            this.f6844Bz = status;
            zzae(this.f6844Bz);
        }
    }

    private void zzae(Status status) {
        synchronized (this.f6845yH) {
            if (this.f6840Bv != null) {
                Status onFailure = this.f6840Bv.onFailure(status);
                com.google.android.gms.common.internal.zzaa.zzb(onFailure, "onFailure must not return null");
                this.f6841Bw.zzad(onFailure);
            } else if (zzaue()) {
                this.f6842Bx.onFailure(status);
            }
        }
    }

    private void zzauc() {
        if (this.f6840Bv == null && this.f6842Bx == null) {
            return;
        }
        GoogleApiClient googleApiClient = this.f6846yJ.get();
        if (!this.f6839BB && this.f6840Bv != null && googleApiClient != null) {
            googleApiClient.zza(this);
            this.f6839BB = true;
        }
        if (this.f6844Bz != null) {
            zzae(this.f6844Bz);
        } else if (this.f6843By != null) {
            this.f6843By.setResultCallback(this);
        }
    }

    private boolean zzaue() {
        return (this.f6842Bx == null || this.f6846yJ.get() == null) ? false : true;
    }

    public void zze(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(result);
                Log.w("TransformedResultImpl", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public void andFinally(@NonNull ResultCallbacks<? super R> resultCallbacks) {
        synchronized (this.f6845yH) {
            com.google.android.gms.common.internal.zzaa.zza(this.f6842Bx == null, "Cannot call andFinally() twice.");
            com.google.android.gms.common.internal.zzaa.zza(this.f6840Bv == null, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.f6842Bx = resultCallbacks;
            zzauc();
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public void onResult(R r) {
        synchronized (this.f6845yH) {
            if (!r.getStatus().isSuccess()) {
                zzad(r.getStatus());
                zze(r);
            } else if (this.f6840Bv != null) {
                zzry.zzatf().submit(new Runnable() { // from class: com.google.android.gms.internal.zzsf.1

                    /* renamed from: BC */
                    final /* synthetic */ Result f6847BC;

                    RunnableC13871(Result r2) {
                        r = r2;
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    @WorkerThread
                    public void run() {
                        try {
                            try {
                                zzqq.f6625yG.set(true);
                                zzsf.this.f6838BA.sendMessage(zzsf.this.f6838BA.obtainMessage(0, zzsf.this.f6840Bv.onSuccess(r)));
                                zzqq.f6625yG.set(false);
                                zzsf.this.zze(r);
                                GoogleApiClient googleApiClient = (GoogleApiClient) zzsf.this.f6846yJ.get();
                                if (googleApiClient != null) {
                                    googleApiClient.zzb(zzsf.this);
                                }
                            } catch (RuntimeException e) {
                                zzsf.this.f6838BA.sendMessage(zzsf.this.f6838BA.obtainMessage(1, e));
                                zzqq.f6625yG.set(false);
                                zzsf.this.zze(r);
                                GoogleApiClient googleApiClient2 = (GoogleApiClient) zzsf.this.f6846yJ.get();
                                if (googleApiClient2 != null) {
                                    googleApiClient2.zzb(zzsf.this);
                                }
                            }
                        } finally {
                        }
                    }
                });
            } else if (zzaue()) {
                this.f6842Bx.onSuccess(r2);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    @NonNull
    public <S extends Result> TransformedResult<S> then(@NonNull ResultTransform<? super R, ? extends S> resultTransform) {
        zzsf<? extends Result> zzsfVar;
        synchronized (this.f6845yH) {
            com.google.android.gms.common.internal.zzaa.zza(this.f6840Bv == null, "Cannot call then() twice.");
            com.google.android.gms.common.internal.zzaa.zza(this.f6842Bx == null, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.f6840Bv = resultTransform;
            zzsfVar = new zzsf<>(this.f6846yJ);
            this.f6841Bw = zzsfVar;
            zzauc();
        }
        return zzsfVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void zza(PendingResult<?> pendingResult) {
        synchronized (this.f6845yH) {
            this.f6843By = pendingResult;
            zzauc();
        }
    }

    void zzaud() {
        this.f6842Bx = null;
    }
}
