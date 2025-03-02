package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.internal.zzsg;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class zzqq<R extends Result> extends PendingResult<R> {

    /* renamed from: yG */
    static final ThreadLocal<Boolean> f6625yG = new ThreadLocal<Boolean>() { // from class: com.google.android.gms.internal.zzqq.1
        C13691() {
        }

        @Override // java.lang.ThreadLocal
        /* renamed from: zzarw */
        public Boolean initialValue() {
            return false;
        }
    };

    /* renamed from: xV */
    private R f6626xV;

    /* renamed from: yH */
    private final Object f6627yH;

    /* renamed from: yI */
    protected final zza<R> f6628yI;

    /* renamed from: yJ */
    protected final WeakReference<GoogleApiClient> f6629yJ;

    /* renamed from: yK */
    private final ArrayList<PendingResult.zza> f6630yK;

    /* renamed from: yL */
    private ResultCallback<? super R> f6631yL;

    /* renamed from: yM */
    private final AtomicReference<zzsg.zzb> f6632yM;

    /* renamed from: yN */
    private zzb f6633yN;

    /* renamed from: yO */
    private volatile boolean f6634yO;

    /* renamed from: yP */
    private boolean f6635yP;

    /* renamed from: yQ */
    private com.google.android.gms.common.internal.zzq f6636yQ;

    /* renamed from: yR */
    private volatile zzsf<R> f6637yR;

    /* renamed from: yS */
    private boolean f6638yS;
    private boolean zzak;
    private final CountDownLatch zzank;

    /* renamed from: com.google.android.gms.internal.zzqq$1 */
    final class C13691 extends ThreadLocal<Boolean> {
        C13691() {
        }

        @Override // java.lang.ThreadLocal
        /* renamed from: zzarw */
        public Boolean initialValue() {
            return false;
        }
    }

    public static class zza<R extends Result> extends Handler {
        public zza() {
            this(Looper.getMainLooper());
        }

        public zza(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    zzb((ResultCallback) pair.first, (Result) pair.second);
                    break;
                case 2:
                    ((zzqq) message.obj).zzab(Status.f6174yc);
                    break;
                default:
                    Log.wtf("BasePendingResult", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
                    break;
            }
        }

        public void zza(ResultCallback<? super R> resultCallback, R r) {
            sendMessage(obtainMessage(1, new Pair(resultCallback, r)));
        }

        public void zza(zzqq<R> zzqqVar, long j) {
            sendMessageDelayed(obtainMessage(2, zzqqVar), j);
        }

        public void zzarx() {
            removeMessages(2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected void zzb(ResultCallback<? super R> resultCallback, R r) {
            try {
                resultCallback.onResult(r);
            } catch (RuntimeException e) {
                zzqq.zze(r);
                throw e;
            }
        }
    }

    private final class zzb {
        private zzb() {
        }

        /* synthetic */ zzb(zzqq zzqqVar, C13691 c13691) {
            this();
        }

        protected void finalize() {
            zzqq.zze(zzqq.this.f6626xV);
            super.finalize();
        }
    }

    @Deprecated
    zzqq() {
        this.f6627yH = new Object();
        this.zzank = new CountDownLatch(1);
        this.f6630yK = new ArrayList<>();
        this.f6632yM = new AtomicReference<>();
        this.f6638yS = false;
        this.f6628yI = new zza<>(Looper.getMainLooper());
        this.f6629yJ = new WeakReference<>(null);
    }

    @Deprecated
    protected zzqq(Looper looper) {
        this.f6627yH = new Object();
        this.zzank = new CountDownLatch(1);
        this.f6630yK = new ArrayList<>();
        this.f6632yM = new AtomicReference<>();
        this.f6638yS = false;
        this.f6628yI = new zza<>(looper);
        this.f6629yJ = new WeakReference<>(null);
    }

    protected zzqq(GoogleApiClient googleApiClient) {
        this.f6627yH = new Object();
        this.zzank = new CountDownLatch(1);
        this.f6630yK = new ArrayList<>();
        this.f6632yM = new AtomicReference<>();
        this.f6638yS = false;
        this.f6628yI = new zza<>(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
        this.f6629yJ = new WeakReference<>(googleApiClient);
    }

    private R get() {
        R r;
        synchronized (this.f6627yH) {
            com.google.android.gms.common.internal.zzaa.zza(this.f6634yO ? false : true, "Result has already been consumed.");
            com.google.android.gms.common.internal.zzaa.zza(isReady(), "Result is not ready.");
            r = this.f6626xV;
            this.f6626xV = null;
            this.f6631yL = null;
            this.f6634yO = true;
        }
        zzart();
        return r;
    }

    private void zzart() {
        zzsg.zzb andSet = this.f6632yM.getAndSet(null);
        if (andSet != null) {
            andSet.zzc(this);
        }
    }

    private void zzd(R r) {
        this.f6626xV = r;
        this.f6636yQ = null;
        this.zzank.countDown();
        Status status = this.f6626xV.getStatus();
        if (this.zzak) {
            this.f6631yL = null;
        } else if (this.f6631yL != null) {
            this.f6628yI.zzarx();
            this.f6628yI.zza((ResultCallback<? super ResultCallback<? super R>>) this.f6631yL, (ResultCallback<? super R>) get());
        } else if (this.f6626xV instanceof Releasable) {
            this.f6633yN = new zzb();
        }
        Iterator<PendingResult.zza> it = this.f6630yK.iterator();
        while (it.hasNext()) {
            it.next().zzx(status);
        }
        this.f6630yK.clear();
    }

    public static void zze(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(result);
                Log.w("BasePendingResult", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await() {
        com.google.android.gms.common.internal.zzaa.zza(Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread");
        com.google.android.gms.common.internal.zzaa.zza(!this.f6634yO, "Result has already been consumed");
        com.google.android.gms.common.internal.zzaa.zza(this.f6637yR == null, "Cannot await if then() has been called.");
        try {
            this.zzank.await();
        } catch (InterruptedException e) {
            zzab(Status.f6172ya);
        }
        com.google.android.gms.common.internal.zzaa.zza(isReady(), "Result is not ready.");
        return get();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await(long j, TimeUnit timeUnit) {
        com.google.android.gms.common.internal.zzaa.zza(j <= 0 || Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread when time is greater than zero.");
        com.google.android.gms.common.internal.zzaa.zza(!this.f6634yO, "Result has already been consumed.");
        com.google.android.gms.common.internal.zzaa.zza(this.f6637yR == null, "Cannot await if then() has been called.");
        try {
            if (!this.zzank.await(j, timeUnit)) {
                zzab(Status.f6174yc);
            }
        } catch (InterruptedException e) {
            zzab(Status.f6172ya);
        }
        com.google.android.gms.common.internal.zzaa.zza(isReady(), "Result is not ready.");
        return get();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void cancel() {
        synchronized (this.f6627yH) {
            if (this.zzak || this.f6634yO) {
                return;
            }
            if (this.f6636yQ != null) {
                try {
                    this.f6636yQ.cancel();
                } catch (RemoteException e) {
                }
            }
            zze(this.f6626xV);
            this.zzak = true;
            zzd(zzc(Status.f6175yd));
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public boolean isCanceled() {
        boolean z;
        synchronized (this.f6627yH) {
            z = this.zzak;
        }
        return z;
    }

    public final boolean isReady() {
        return this.zzank.getCount() == 0;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback) {
        synchronized (this.f6627yH) {
            if (resultCallback == null) {
                this.f6631yL = null;
                return;
            }
            com.google.android.gms.common.internal.zzaa.zza(!this.f6634yO, "Result has already been consumed.");
            com.google.android.gms.common.internal.zzaa.zza(this.f6637yR == null, "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.f6628yI.zza((ResultCallback<? super ResultCallback<? super R>>) resultCallback, (ResultCallback<? super R>) get());
            } else {
                this.f6631yL = resultCallback;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit) {
        synchronized (this.f6627yH) {
            if (resultCallback == null) {
                this.f6631yL = null;
                return;
            }
            com.google.android.gms.common.internal.zzaa.zza(!this.f6634yO, "Result has already been consumed.");
            com.google.android.gms.common.internal.zzaa.zza(this.f6637yR == null, "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.f6628yI.zza((ResultCallback<? super ResultCallback<? super R>>) resultCallback, (ResultCallback<? super R>) get());
            } else {
                this.f6631yL = resultCallback;
                this.f6628yI.zza(this, timeUnit.toMillis(j));
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        TransformedResult<S> then;
        com.google.android.gms.common.internal.zzaa.zza(!this.f6634yO, "Result has already been consumed.");
        synchronized (this.f6627yH) {
            com.google.android.gms.common.internal.zzaa.zza(this.f6637yR == null, "Cannot call then() twice.");
            com.google.android.gms.common.internal.zzaa.zza(this.f6631yL == null, "Cannot call then() if callbacks are set.");
            this.f6638yS = true;
            this.f6637yR = new zzsf<>(this.f6629yJ);
            then = this.f6637yR.then(resultTransform);
            if (isReady()) {
                this.f6628yI.zza(this.f6637yR, (zzsf<R>) get());
            } else {
                this.f6631yL = this.f6637yR;
            }
        }
        return then;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void zza(PendingResult.zza zzaVar) {
        com.google.android.gms.common.internal.zzaa.zza(!this.f6634yO, "Result has already been consumed.");
        com.google.android.gms.common.internal.zzaa.zzb(zzaVar != null, "Callback cannot be null.");
        synchronized (this.f6627yH) {
            if (isReady()) {
                zzaVar.zzx(this.f6626xV.getStatus());
            } else {
                this.f6630yK.add(zzaVar);
            }
        }
    }

    protected final void zza(com.google.android.gms.common.internal.zzq zzqVar) {
        synchronized (this.f6627yH) {
            this.f6636yQ = zzqVar;
        }
    }

    public void zza(zzsg.zzb zzbVar) {
        this.f6632yM.set(zzbVar);
    }

    public final void zzab(Status status) {
        synchronized (this.f6627yH) {
            if (!isReady()) {
                zzc((zzqq<R>) zzc(status));
                this.f6635yP = true;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public Integer zzarh() {
        return null;
    }

    public boolean zzars() {
        boolean isCanceled;
        synchronized (this.f6627yH) {
            if (this.f6629yJ.get() == null || !this.f6638yS) {
                cancel();
            }
            isCanceled = isCanceled();
        }
        return isCanceled;
    }

    public void zzaru() {
        setResultCallback(null);
    }

    public void zzarv() {
        this.f6638yS = this.f6638yS || f6625yG.get().booleanValue();
    }

    protected abstract R zzc(Status status);

    public final void zzc(R r) {
        synchronized (this.f6627yH) {
            if (this.f6635yP || this.zzak) {
                zze(r);
                return;
            }
            if (isReady()) {
            }
            com.google.android.gms.common.internal.zzaa.zza(!isReady(), "Results have already been set");
            com.google.android.gms.common.internal.zzaa.zza(this.f6634yO ? false : true, "Result has already been consumed");
            zzd(r);
        }
    }
}
