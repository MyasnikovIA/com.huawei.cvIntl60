package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zze;
import com.google.android.gms.internal.zzqj;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzrr;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class zzrh implements Handler.Callback {

    /* renamed from: AJ */
    private static zzrh f6779AJ;

    /* renamed from: AI */
    private long f6780AI;

    /* renamed from: AK */
    private int f6781AK;

    /* renamed from: AL */
    private final AtomicInteger f6782AL;

    /* renamed from: AM */
    private final AtomicInteger f6783AM;

    /* renamed from: AN */
    private zzqw f6784AN;

    /* renamed from: AO */
    private final Set<zzql<?>> f6785AO;

    /* renamed from: AP */
    private final Set<zzql<?>> f6786AP;

    /* renamed from: Af */
    private long f6787Af;

    /* renamed from: Ag */
    private long f6788Ag;
    private final Context mContext;
    private final Handler mHandler;

    /* renamed from: xP */
    private final GoogleApiAvailability f6789xP;

    /* renamed from: zj */
    private final Map<zzql<?>, zza<?>> f6790zj;

    /* renamed from: AG */
    public static final Status f6777AG = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: AH */
    private static final Status f6778AH = new Status(4, "The user must be signed in to make this API call.");
    private static final Object zzaox = new Object();

    class zza<O extends Api.ApiOptions> implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zzqs {

        /* renamed from: AR */
        private final Api.zzb f6792AR;

        /* renamed from: AS */
        private final zzqv f6793AS;

        /* renamed from: AV */
        private final int f6796AV;

        /* renamed from: Ae */
        private boolean f6799Ae;

        /* renamed from: xB */
        private final Api.zze f6800xB;

        /* renamed from: xx */
        private final zzql<O> f6801xx;

        /* renamed from: AQ */
        private final Queue<zzqj> f6791AQ = new LinkedList();

        /* renamed from: AT */
        private final Set<zzqn> f6794AT = new HashSet();

        /* renamed from: AU */
        private final Map<zzrr.zzb<?>, zzrx> f6795AU = new HashMap();

        /* renamed from: AW */
        private ConnectionResult f6797AW = null;

        @WorkerThread
        public zza(com.google.android.gms.common.api.zzc<O> zzcVar) {
            if (zzcVar.isConnectionlessGoogleApiClient()) {
                this.f6800xB = zzcVar.getClient();
                zzcVar.getClientCallbacks().zza(this);
            } else {
                this.f6800xB = zzcVar.buildApiClient(zzrh.this.mHandler.getLooper(), this, this);
            }
            if (this.f6800xB instanceof com.google.android.gms.common.internal.zzag) {
                this.f6792AR = ((com.google.android.gms.common.internal.zzag) this.f6800xB).zzawt();
            } else {
                this.f6792AR = this.f6800xB;
            }
            this.f6801xx = zzcVar.getApiKey();
            this.f6793AS = new zzqv();
            this.f6796AV = zzcVar.getInstanceId();
        }

        @WorkerThread
        public void connect() {
            if (this.f6800xB.isConnected() || this.f6800xB.isConnecting()) {
                return;
            }
            if (this.f6800xB.zzaqx() && zzrh.this.f6781AK != 0) {
                zzrh.this.f6781AK = zzrh.this.f6789xP.isGooglePlayServicesAvailable(zzrh.this.mContext);
                if (zzrh.this.f6781AK != 0) {
                    onConnectionFailed(new ConnectionResult(zzrh.this.f6781AK, null));
                    return;
                }
            }
            if (this.f6800xB.zzain()) {
            }
            this.f6800xB.zza(zzrh.this.new zzb(this.f6800xB, this.f6801xx));
        }

        @WorkerThread
        public void resume() {
            if (this.f6799Ae) {
                connect();
            }
        }

        @WorkerThread
        public void zzac(Status status) {
            Iterator<zzqj> it = this.f6791AQ.iterator();
            while (it.hasNext()) {
                it.next().zzy(status);
            }
            this.f6791AQ.clear();
        }

        @WorkerThread
        public void zzasx() {
            if (this.f6799Ae) {
                zzatq();
                zzac(zzrh.this.f6789xP.isGooglePlayServicesAvailable(zzrh.this.mContext) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.f6800xB.disconnect();
            }
        }

        @WorkerThread
        private void zzatq() {
            if (this.f6799Ae) {
                zzrh.this.mHandler.removeMessages(9, this.f6801xx);
                zzrh.this.mHandler.removeMessages(7, this.f6801xx);
                this.f6799Ae = false;
            }
        }

        private void zzatr() {
            zzrh.this.mHandler.removeMessages(10, this.f6801xx);
            zzrh.this.mHandler.sendMessageDelayed(zzrh.this.mHandler.obtainMessage(10, this.f6801xx), zzrh.this.f6780AI);
        }

        public void zzats() {
            if (this.f6800xB.isConnected() && this.f6795AU.size() == 0) {
                if (this.f6793AS.zzasi()) {
                    zzatr();
                } else {
                    this.f6800xB.disconnect();
                }
            }
        }

        @WorkerThread
        private void zzb(zzqj zzqjVar) {
            zzqjVar.zza(this.f6793AS, zzain());
            try {
                zzqjVar.zza(this);
            } catch (DeadObjectException e) {
                onConnectionSuspended(1);
                this.f6800xB.disconnect();
            }
        }

        @WorkerThread
        private void zzi(ConnectionResult connectionResult) {
            Iterator<zzqn> it = this.f6794AT.iterator();
            while (it.hasNext()) {
                it.next().zza(this.f6801xx, connectionResult);
            }
            this.f6794AT.clear();
        }

        public Api.zze getClient() {
            return this.f6800xB;
        }

        public int getInstanceId() {
            return this.f6796AV;
        }

        boolean isConnected() {
            return this.f6800xB.isConnected();
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        @WorkerThread
        public void onConnected(@Nullable Bundle bundle) {
            zzato();
            zzi(ConnectionResult.f6123wO);
            zzatq();
            Iterator<zzrx> it = this.f6795AU.values().iterator();
            while (it.hasNext()) {
                try {
                    it.next().f6829yi.zza(this.f6792AR, new TaskCompletionSource<>());
                } catch (DeadObjectException e) {
                    onConnectionSuspended(1);
                    this.f6800xB.disconnect();
                }
            }
            zzatm();
            zzatr();
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        @WorkerThread
        public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            zzato();
            zzrh.this.f6781AK = -1;
            zzi(connectionResult);
            if (connectionResult.getErrorCode() == 4) {
                zzac(zzrh.f6778AH);
                return;
            }
            if (this.f6791AQ.isEmpty()) {
                this.f6797AW = connectionResult;
                return;
            }
            synchronized (zzrh.zzaox) {
                if (zzrh.this.f6784AN != null && zzrh.this.f6785AO.contains(this.f6801xx)) {
                    zzrh.this.f6784AN.zzb(connectionResult, this.f6796AV);
                } else if (!zzrh.this.zzc(connectionResult, this.f6796AV)) {
                    if (connectionResult.getErrorCode() == 18) {
                        this.f6799Ae = true;
                    }
                    if (this.f6799Ae) {
                        zzrh.this.mHandler.sendMessageDelayed(Message.obtain(zzrh.this.mHandler, 7, this.f6801xx), zzrh.this.f6788Ag);
                    } else {
                        String valueOf = String.valueOf(this.f6801xx.zzarl());
                        zzac(new Status(17, new StringBuilder(String.valueOf(valueOf).length() + 38).append("API: ").append(valueOf).append(" is not available on this device.").toString()));
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        @WorkerThread
        public void onConnectionSuspended(int i) {
            zzato();
            this.f6799Ae = true;
            this.f6793AS.zzask();
            zzrh.this.mHandler.sendMessageDelayed(Message.obtain(zzrh.this.mHandler, 7, this.f6801xx), zzrh.this.f6788Ag);
            zzrh.this.mHandler.sendMessageDelayed(Message.obtain(zzrh.this.mHandler, 9, this.f6801xx), zzrh.this.f6787Af);
            zzrh.this.f6781AK = -1;
        }

        @WorkerThread
        public void signOut() {
            zzac(zzrh.f6777AG);
            this.f6793AS.zzasj();
            Iterator<zzrr.zzb<?>> it = this.f6795AU.keySet().iterator();
            while (it.hasNext()) {
                zza(new zzqj.zze(it.next(), new TaskCompletionSource()));
            }
            this.f6800xB.disconnect();
        }

        @Override // com.google.android.gms.internal.zzqs
        public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
            onConnectionFailed(connectionResult);
        }

        @WorkerThread
        public void zza(zzqj zzqjVar) {
            if (this.f6800xB.isConnected()) {
                zzb(zzqjVar);
                zzatr();
                return;
            }
            this.f6791AQ.add(zzqjVar);
            if (this.f6797AW == null || !this.f6797AW.hasResolution()) {
                connect();
            } else {
                onConnectionFailed(this.f6797AW);
            }
        }

        public boolean zzain() {
            return this.f6800xB.zzain();
        }

        @WorkerThread
        public void zzatm() {
            while (this.f6800xB.isConnected() && !this.f6791AQ.isEmpty()) {
                zzb(this.f6791AQ.remove());
            }
        }

        public Map<zzrr.zzb<?>, zzrx> zzatn() {
            return this.f6795AU;
        }

        @WorkerThread
        public void zzato() {
            this.f6797AW = null;
        }

        ConnectionResult zzatp() {
            return this.f6797AW;
        }

        @WorkerThread
        public void zzb(zzqn zzqnVar) {
            this.f6794AT.add(zzqnVar);
        }
    }

    private class zzb implements zze.zzf {

        /* renamed from: xB */
        private final Api.zze f6803xB;

        /* renamed from: xx */
        private final zzql<?> f6804xx;

        public zzb(Api.zze zzeVar, zzql<?> zzqlVar) {
            this.f6803xB = zzeVar;
            this.f6804xx = zzqlVar;
        }

        @Override // com.google.android.gms.common.internal.zze.zzf
        @WorkerThread
        public void zzg(@NonNull ConnectionResult connectionResult) {
            if (!connectionResult.isSuccess()) {
                ((zza) zzrh.this.f6790zj.get(this.f6804xx)).onConnectionFailed(connectionResult);
            } else {
                if (this.f6803xB.zzain()) {
                    return;
                }
                this.f6803xB.zza(null, Collections.emptySet());
            }
        }
    }

    private zzrh(Context context) {
        this(context, GoogleApiAvailability.getInstance());
    }

    private zzrh(Context context, GoogleApiAvailability googleApiAvailability) {
        this.f6788Ag = HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS;
        this.f6787Af = 120000L;
        this.f6780AI = 10000L;
        this.f6781AK = -1;
        this.f6782AL = new AtomicInteger(1);
        this.f6783AM = new AtomicInteger(0);
        this.f6790zj = new ConcurrentHashMap(5, 0.75f, 1);
        this.f6784AN = null;
        this.f6785AO = new com.google.android.gms.common.util.zza();
        this.f6786AP = new com.google.android.gms.common.util.zza();
        this.mContext = context;
        HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper(), this);
        this.f6789xP = googleApiAvailability;
    }

    @WorkerThread
    private void zza(int i, ConnectionResult connectionResult) {
        zza<?> zzaVar;
        Iterator<zza<?>> it = this.f6790zj.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                zzaVar = null;
                break;
            } else {
                zzaVar = it.next();
                if (zzaVar.getInstanceId() == i) {
                    break;
                }
            }
        }
        if (zzaVar == null) {
            Log.wtf("GoogleApiManager", new StringBuilder(76).append("Could not find API instance ").append(i).append(" while trying to fail enqueued calls.").toString(), new Exception());
            return;
        }
        String valueOf = String.valueOf(this.f6789xP.getErrorString(connectionResult.getErrorCode()));
        String valueOf2 = String.valueOf(connectionResult.getErrorMessage());
        zzaVar.zzac(new Status(17, new StringBuilder(String.valueOf(valueOf).length() + 69 + String.valueOf(valueOf2).length()).append("Error resolution was canceled by the user, original error message: ").append(valueOf).append(": ").append(valueOf2).toString()));
    }

    @WorkerThread
    private void zza(zzrv zzrvVar) {
        zza<?> zzaVar = this.f6790zj.get(zzrvVar.f6827Bs.getApiKey());
        if (zzaVar == null) {
            zzb(zzrvVar.f6827Bs);
            zzaVar = this.f6790zj.get(zzrvVar.f6827Bs.getApiKey());
        }
        if (!zzaVar.zzain() || this.f6783AM.get() == zzrvVar.f6826Br) {
            zzaVar.zza(zzrvVar.f6825Bq);
        } else {
            zzrvVar.f6825Bq.zzy(f6777AG);
            zzaVar.signOut();
        }
    }

    public static zzrh zzatg() {
        zzrh zzrhVar;
        synchronized (zzaox) {
            com.google.android.gms.common.internal.zzaa.zzb(f6779AJ, "Must guarantee manager is non-null before using getInstance");
            zzrhVar = f6779AJ;
        }
        return zzrhVar;
    }

    @WorkerThread
    private void zzati() {
        for (zza<?> zzaVar : this.f6790zj.values()) {
            zzaVar.zzato();
            zzaVar.connect();
        }
    }

    @WorkerThread
    private void zzb(com.google.android.gms.common.api.zzc<?> zzcVar) {
        zzql<?> apiKey = zzcVar.getApiKey();
        if (!this.f6790zj.containsKey(apiKey)) {
            this.f6790zj.put(apiKey, new zza<>(zzcVar));
        }
        zza<?> zzaVar = this.f6790zj.get(apiKey);
        if (zzaVar.zzain()) {
            this.f6786AP.add(apiKey);
        }
        zzaVar.connect();
    }

    public static zzrh zzbx(Context context) {
        zzrh zzrhVar;
        synchronized (zzaox) {
            if (f6779AJ == null) {
                f6779AJ = new zzrh(context.getApplicationContext());
            }
            zzrhVar = f6779AJ;
        }
        return zzrhVar;
    }

    @Override // android.os.Handler.Callback
    @WorkerThread
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1:
                zza((zzqn) message.obj);
                return true;
            case 2:
                zzati();
                return true;
            case 3:
            case 6:
            case 11:
                zza((zzrv) message.obj);
                return true;
            case 4:
                zza(message.arg1, (ConnectionResult) message.obj);
                return true;
            case 5:
                zzb((com.google.android.gms.common.api.zzc<?>) message.obj);
                return true;
            case 7:
                if (this.f6790zj.containsKey(message.obj)) {
                    this.f6790zj.get(message.obj).resume();
                }
                return true;
            case 8:
                zzatj();
                return true;
            case 9:
                if (this.f6790zj.containsKey(message.obj)) {
                    this.f6790zj.get(message.obj).zzasx();
                }
                return true;
            case 10:
                if (this.f6790zj.containsKey(message.obj)) {
                    this.f6790zj.get(message.obj).zzats();
                }
                return true;
            default:
                Log.w("GoogleApiManager", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                return false;
        }
    }

    public <O extends Api.ApiOptions> Task<Void> zza(@NonNull com.google.android.gms.common.api.zzc<O> zzcVar, @NonNull zzrr.zzb<?> zzbVar) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(11, new zzrv(new zzqj.zze(zzbVar, taskCompletionSource), this.f6783AM.get(), zzcVar)));
        return taskCompletionSource.getTask();
    }

    public <O extends Api.ApiOptions> Task<Void> zza(@NonNull com.google.android.gms.common.api.zzc<O> zzcVar, @NonNull zzrw<Api.zzb> zzrwVar, @NonNull zzsh<Api.zzb> zzshVar) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(6, new zzrv(new zzqj.zzc(new zzrx(zzrwVar, zzshVar), taskCompletionSource), this.f6783AM.get(), zzcVar)));
        return taskCompletionSource.getTask();
    }

    public Task<Void> zza(Iterable<com.google.android.gms.common.api.zzc<?>> iterable) {
        zzqn zzqnVar = new zzqn(iterable);
        Iterator<com.google.android.gms.common.api.zzc<?>> it = iterable.iterator();
        while (it.hasNext()) {
            zza<?> zzaVar = this.f6790zj.get(it.next().getApiKey());
            if (zzaVar == null || !zzaVar.isConnected()) {
                this.mHandler.sendMessage(this.mHandler.obtainMessage(1, zzqnVar));
                return zzqnVar.getTask();
            }
        }
        zzqnVar.zzarp();
        return zzqnVar.getTask();
    }

    public void zza(ConnectionResult connectionResult, int i) {
        if (zzc(connectionResult, i)) {
            return;
        }
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, i, 0, connectionResult));
    }

    public void zza(com.google.android.gms.common.api.zzc<?> zzcVar) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(5, zzcVar));
    }

    public <O extends Api.ApiOptions> void zza(com.google.android.gms.common.api.zzc<O> zzcVar, int i, zzqo.zza<? extends Result, Api.zzb> zzaVar) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, new zzrv(new zzqj.zzb(i, zzaVar), this.f6783AM.get(), zzcVar)));
    }

    public <O extends Api.ApiOptions, TResult> void zza(com.google.android.gms.common.api.zzc<O> zzcVar, int i, zzse<Api.zzb, TResult> zzseVar, TaskCompletionSource<TResult> taskCompletionSource, zzsb zzsbVar) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, new zzrv(new zzqj.zzd(i, zzseVar, taskCompletionSource, zzsbVar), this.f6783AM.get(), zzcVar)));
    }

    @WorkerThread
    public void zza(zzqn zzqnVar) {
        for (zzql<?> zzqlVar : zzqnVar.zzaro()) {
            zza<?> zzaVar = this.f6790zj.get(zzqlVar);
            if (zzaVar == null) {
                zzqnVar.zza(zzqlVar, new ConnectionResult(13));
                return;
            } else if (zzaVar.isConnected()) {
                zzqnVar.zza(zzqlVar, ConnectionResult.f6123wO);
            } else if (zzaVar.zzatp() != null) {
                zzqnVar.zza(zzqlVar, zzaVar.zzatp());
            } else {
                zzaVar.zzb(zzqnVar);
            }
        }
    }

    public void zza(@NonNull zzqw zzqwVar) {
        synchronized (zzaox) {
            if (this.f6784AN != zzqwVar) {
                this.f6784AN = zzqwVar;
                this.f6785AO.clear();
                this.f6785AO.addAll(zzqwVar.zzasl());
            }
        }
    }

    public void zzarm() {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(2));
    }

    public int zzath() {
        return this.f6782AL.getAndIncrement();
    }

    @WorkerThread
    public void zzatj() {
        Iterator<zzql<?>> it = this.f6786AP.iterator();
        while (it.hasNext()) {
            this.f6790zj.remove(it.next()).signOut();
        }
        this.f6786AP.clear();
    }

    void zzb(@NonNull zzqw zzqwVar) {
        synchronized (zzaox) {
            if (this.f6784AN == zzqwVar) {
                this.f6784AN = null;
                this.f6785AO.clear();
            }
        }
    }

    boolean zzc(ConnectionResult connectionResult, int i) {
        if (!connectionResult.hasResolution() && !this.f6789xP.isUserResolvableError(connectionResult.getErrorCode())) {
            return false;
        }
        this.f6789xP.zza(this.mContext, connectionResult, i);
        return true;
    }
}
