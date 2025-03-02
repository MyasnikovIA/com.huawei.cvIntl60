package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzrj;
import com.google.android.gms.internal.zzrm;
import com.google.android.gms.internal.zzsg;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;

/* loaded from: classes.dex */
public final class zzrd extends GoogleApiClient implements zzrm.zza {

    /* renamed from: Ab */
    private final com.google.android.gms.common.internal.zzk f6725Ab;

    /* renamed from: Ae */
    private volatile boolean f6728Ae;

    /* renamed from: Ah */
    private final zza f6731Ah;

    /* renamed from: Ai */
    zzrj f6732Ai;

    /* renamed from: Aj */
    final Map<Api.zzc<?>, Api.zze> f6733Aj;

    /* renamed from: Am */
    private final ArrayList<zzqr> f6736Am;

    /* renamed from: An */
    private Integer f6737An;

    /* renamed from: Ap */
    final zzsg f6739Ap;
    private final Context mContext;

    /* renamed from: xN */
    private final int f6741xN;

    /* renamed from: xP */
    private final GoogleApiAvailability f6742xP;

    /* renamed from: xQ */
    final Api.zza<? extends zzxp, zzxq> f6743xQ;

    /* renamed from: xT */
    private boolean f6744xT;

    /* renamed from: zP */
    final com.google.android.gms.common.internal.zzf f6745zP;

    /* renamed from: zg */
    private final Lock f6746zg;

    /* renamed from: zk */
    final Map<Api<?>, Integer> f6747zk;
    private final Looper zzajy;

    /* renamed from: Ac */
    private zzrm f6726Ac = null;

    /* renamed from: Ad */
    final Queue<zzqo.zza<?, ?>> f6727Ad = new LinkedList();

    /* renamed from: Af */
    private long f6729Af = 120000;

    /* renamed from: Ag */
    private long f6730Ag = HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS;

    /* renamed from: Ak */
    Set<Scope> f6734Ak = new HashSet();

    /* renamed from: Al */
    private final zzrs f6735Al = new zzrs();

    /* renamed from: Ao */
    Set<zzsf> f6738Ao = null;

    /* renamed from: Aq */
    private final zzk.zza f6740Aq = new zzk.zza() { // from class: com.google.android.gms.internal.zzrd.1
        C13801() {
        }

        @Override // com.google.android.gms.common.internal.zzk.zza
        public boolean isConnected() {
            return zzrd.this.isConnected();
        }

        @Override // com.google.android.gms.common.internal.zzk.zza
        public Bundle zzapn() {
            return null;
        }
    };

    /* renamed from: com.google.android.gms.internal.zzrd$1 */
    class C13801 implements zzk.zza {
        C13801() {
        }

        @Override // com.google.android.gms.common.internal.zzk.zza
        public boolean isConnected() {
            return zzrd.this.isConnected();
        }

        @Override // com.google.android.gms.common.internal.zzk.zza
        public Bundle zzapn() {
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzrd$2 */
    class C13812 implements GoogleApiClient.ConnectionCallbacks {

        /* renamed from: As */
        final /* synthetic */ AtomicReference f6750As;

        /* renamed from: At */
        final /* synthetic */ zzsc f6751At;

        C13812(AtomicReference atomicReference, zzsc zzscVar) {
            atomicReference = atomicReference;
            zzscVar = zzscVar;
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            zzrd.this.zza((GoogleApiClient) atomicReference.get(), zzscVar, true);
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
        }
    }

    /* renamed from: com.google.android.gms.internal.zzrd$3 */
    class C13823 implements GoogleApiClient.OnConnectionFailedListener {

        /* renamed from: At */
        final /* synthetic */ zzsc f6753At;

        C13823(zzsc zzscVar) {
            zzscVar = zzscVar;
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            zzscVar.zzc((zzsc) new Status(8));
        }
    }

    /* renamed from: com.google.android.gms.internal.zzrd$4 */
    class C13834 implements ResultCallback<Status> {

        /* renamed from: At */
        final /* synthetic */ zzsc f6755At;

        /* renamed from: Au */
        final /* synthetic */ boolean f6756Au;

        /* renamed from: of */
        final /* synthetic */ GoogleApiClient f6757of;

        C13834(zzsc zzscVar, boolean z, GoogleApiClient googleApiClient) {
            zzscVar = zzscVar;
            z = z;
            googleApiClient = googleApiClient;
        }

        @Override // com.google.android.gms.common.api.ResultCallback
        /* renamed from: zzp */
        public void onResult(@NonNull Status status) {
            com.google.android.gms.auth.api.signin.internal.zzk.zzba(zzrd.this.mContext).zzajo();
            if (status.isSuccess() && zzrd.this.isConnected()) {
                zzrd.this.reconnect();
            }
            zzscVar.zzc((zzsc) status);
            if (z) {
                googleApiClient.disconnect();
            }
        }
    }

    final class zza extends Handler {
        zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    zzrd.this.zzasx();
                    break;
                case 2:
                    zzrd.this.resume();
                    break;
                default:
                    Log.w("GoogleApiClientImpl", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                    break;
            }
        }
    }

    static class zzb extends zzrj.zza {

        /* renamed from: Av */
        private WeakReference<zzrd> f6759Av;

        zzb(zzrd zzrdVar) {
            this.f6759Av = new WeakReference<>(zzrdVar);
        }

        @Override // com.google.android.gms.internal.zzrj.zza
        public void zzarr() {
            zzrd zzrdVar = this.f6759Av.get();
            if (zzrdVar == null) {
                return;
            }
            zzrdVar.resume();
        }
    }

    public zzrd(Context context, Lock lock, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, GoogleApiAvailability googleApiAvailability, Api.zza<? extends zzxp, zzxq> zzaVar, Map<Api<?>, Integer> map, List<GoogleApiClient.ConnectionCallbacks> list, List<GoogleApiClient.OnConnectionFailedListener> list2, Map<Api.zzc<?>, Api.zze> map2, int i, int i2, ArrayList<zzqr> arrayList, boolean z) {
        this.f6737An = null;
        this.mContext = context;
        this.f6746zg = lock;
        this.f6744xT = z;
        this.f6725Ab = new com.google.android.gms.common.internal.zzk(looper, this.f6740Aq);
        this.zzajy = looper;
        this.f6731Ah = new zza(looper);
        this.f6742xP = googleApiAvailability;
        this.f6741xN = i;
        if (this.f6741xN >= 0) {
            this.f6737An = Integer.valueOf(i2);
        }
        this.f6747zk = map;
        this.f6733Aj = map2;
        this.f6736Am = arrayList;
        this.f6739Ap = new zzsg(this.f6733Aj);
        Iterator<GoogleApiClient.ConnectionCallbacks> it = list.iterator();
        while (it.hasNext()) {
            this.f6725Ab.registerConnectionCallbacks(it.next());
        }
        Iterator<GoogleApiClient.OnConnectionFailedListener> it2 = list2.iterator();
        while (it2.hasNext()) {
            this.f6725Ab.registerConnectionFailedListener(it2.next());
        }
        this.f6745zP = zzfVar;
        this.f6743xQ = zzaVar;
    }

    public void resume() {
        this.f6746zg.lock();
        try {
            if (isResuming()) {
                zzasw();
            }
        } finally {
            this.f6746zg.unlock();
        }
    }

    public static int zza(Iterable<Api.zze> iterable, boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        for (Api.zze zzeVar : iterable) {
            if (zzeVar.zzain()) {
                z3 = true;
            }
            z2 = zzeVar.zzajc() ? true : z2;
        }
        if (z3) {
            return (z2 && z) ? 2 : 1;
        }
        return 3;
    }

    public void zza(GoogleApiClient googleApiClient, zzsc zzscVar, boolean z) {
        zzsn.f6883EU.zzg(googleApiClient).setResultCallback(new ResultCallback<Status>() { // from class: com.google.android.gms.internal.zzrd.4

            /* renamed from: At */
            final /* synthetic */ zzsc f6755At;

            /* renamed from: Au */
            final /* synthetic */ boolean f6756Au;

            /* renamed from: of */
            final /* synthetic */ GoogleApiClient f6757of;

            C13834(zzsc zzscVar2, boolean z2, GoogleApiClient googleApiClient2) {
                zzscVar = zzscVar2;
                z = z2;
                googleApiClient = googleApiClient2;
            }

            @Override // com.google.android.gms.common.api.ResultCallback
            /* renamed from: zzp */
            public void onResult(@NonNull Status status) {
                com.google.android.gms.auth.api.signin.internal.zzk.zzba(zzrd.this.mContext).zzajo();
                if (status.isSuccess() && zzrd.this.isConnected()) {
                    zzrd.this.reconnect();
                }
                zzscVar.zzc((zzsc) status);
                if (z) {
                    googleApiClient.disconnect();
                }
            }
        });
    }

    private void zzasw() {
        this.f6725Ab.zzawd();
        this.f6726Ac.connect();
    }

    public void zzasx() {
        this.f6746zg.lock();
        try {
            if (zzasz()) {
                zzasw();
            }
        } finally {
            this.f6746zg.unlock();
        }
    }

    private void zzb(@NonNull zzrn zzrnVar) {
        if (this.f6741xN < 0) {
            throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
        }
        zzqm.zza(zzrnVar).zzfs(this.f6741xN);
    }

    private void zzfv(int i) {
        if (this.f6737An == null) {
            this.f6737An = Integer.valueOf(i);
        } else if (this.f6737An.intValue() != i) {
            String valueOf = String.valueOf(zzfw(i));
            String valueOf2 = String.valueOf(zzfw(this.f6737An.intValue()));
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 51 + String.valueOf(valueOf2).length()).append("Cannot use sign-in mode: ").append(valueOf).append(". Mode was already set to ").append(valueOf2).toString());
        }
        if (this.f6726Ac != null) {
            return;
        }
        boolean z = false;
        boolean z2 = false;
        for (Api.zze zzeVar : this.f6733Aj.values()) {
            if (zzeVar.zzain()) {
                z2 = true;
            }
            z = zzeVar.zzajc() ? true : z;
        }
        switch (this.f6737An.intValue()) {
            case 1:
                if (!z2) {
                    throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
                }
                if (z) {
                    throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
                }
                break;
            case 2:
                if (z2) {
                    this.f6726Ac = zzqt.zza(this.mContext, this, this.f6746zg, this.zzajy, this.f6742xP, this.f6733Aj, this.f6745zP, this.f6747zk, this.f6743xQ, this.f6736Am);
                    return;
                }
                break;
        }
        if (!this.f6744xT || z2 || z) {
            this.f6726Ac = new zzrf(this.mContext, this, this.f6746zg, this.zzajy, this.f6742xP, this.f6733Aj, this.f6745zP, this.f6747zk, this.f6743xQ, this.f6736Am, this);
        } else {
            this.f6726Ac = new zzqu(this.mContext, this.f6746zg, this.zzajy, this.f6742xP, this.f6733Aj, this.f6747zk, this.f6736Am, this);
        }
    }

    static String zzfw(int i) {
        switch (i) {
            case 1:
                return "SIGN_IN_MODE_REQUIRED";
            case 2:
                return "SIGN_IN_MODE_OPTIONAL";
            case 3:
                return "SIGN_IN_MODE_NONE";
            default:
                return "UNKNOWN";
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect() {
        com.google.android.gms.common.internal.zzaa.zza(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.f6746zg.lock();
        try {
            if (this.f6741xN >= 0) {
                com.google.android.gms.common.internal.zzaa.zza(this.f6737An != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.f6737An == null) {
                this.f6737An = Integer.valueOf(zza(this.f6733Aj.values(), false));
            } else if (this.f6737An.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            zzfv(this.f6737An.intValue());
            this.f6725Ab.zzawd();
            return this.f6726Ac.blockingConnect();
        } finally {
            this.f6746zg.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit) {
        com.google.android.gms.common.internal.zzaa.zza(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        com.google.android.gms.common.internal.zzaa.zzb(timeUnit, "TimeUnit must not be null");
        this.f6746zg.lock();
        try {
            if (this.f6737An == null) {
                this.f6737An = Integer.valueOf(zza(this.f6733Aj.values(), false));
            } else if (this.f6737An.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            zzfv(this.f6737An.intValue());
            this.f6725Ab.zzawd();
            return this.f6726Ac.blockingConnect(j, timeUnit);
        } finally {
            this.f6746zg.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public PendingResult<Status> clearDefaultAccountAndReconnect() {
        com.google.android.gms.common.internal.zzaa.zza(isConnected(), "GoogleApiClient is not connected yet.");
        com.google.android.gms.common.internal.zzaa.zza(this.f6737An.intValue() != 2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        zzsc zzscVar = new zzsc(this);
        if (this.f6733Aj.containsKey(zzsn.f6884hg)) {
            zza(this, zzscVar, false);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            GoogleApiClient build = new GoogleApiClient.Builder(this.mContext).addApi(zzsn.API).addConnectionCallbacks(new GoogleApiClient.ConnectionCallbacks() { // from class: com.google.android.gms.internal.zzrd.2

                /* renamed from: As */
                final /* synthetic */ AtomicReference f6750As;

                /* renamed from: At */
                final /* synthetic */ zzsc f6751At;

                C13812(AtomicReference atomicReference2, zzsc zzscVar2) {
                    atomicReference = atomicReference2;
                    zzscVar = zzscVar2;
                }

                @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
                public void onConnected(Bundle bundle) {
                    zzrd.this.zza((GoogleApiClient) atomicReference.get(), zzscVar, true);
                }

                @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
                public void onConnectionSuspended(int i) {
                }
            }).addOnConnectionFailedListener(new GoogleApiClient.OnConnectionFailedListener() { // from class: com.google.android.gms.internal.zzrd.3

                /* renamed from: At */
                final /* synthetic */ zzsc f6753At;

                C13823(zzsc zzscVar2) {
                    zzscVar = zzscVar2;
                }

                @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
                public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
                    zzscVar.zzc((zzsc) new Status(8));
                }
            }).setHandler(this.f6731Ah).build();
            atomicReference2.set(build);
            build.connect();
        }
        return zzscVar2;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void connect() {
        this.f6746zg.lock();
        try {
            if (this.f6741xN >= 0) {
                com.google.android.gms.common.internal.zzaa.zza(this.f6737An != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.f6737An == null) {
                this.f6737An = Integer.valueOf(zza(this.f6733Aj.values(), false));
            } else if (this.f6737An.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            connect(this.f6737An.intValue());
        } finally {
            this.f6746zg.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void connect(int i) {
        boolean z = true;
        this.f6746zg.lock();
        if (i != 3 && i != 1 && i != 2) {
            z = false;
        }
        try {
            com.google.android.gms.common.internal.zzaa.zzb(z, new StringBuilder(33).append("Illegal sign-in mode: ").append(i).toString());
            zzfv(i);
            zzasw();
        } finally {
            this.f6746zg.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void disconnect() {
        this.f6746zg.lock();
        try {
            this.f6739Ap.release();
            if (this.f6726Ac != null) {
                this.f6726Ac.disconnect();
            }
            this.f6735Al.release();
            for (zzqo.zza<?, ?> zzaVar : this.f6727Ad) {
                zzaVar.zza((zzsg.zzb) null);
                zzaVar.cancel();
            }
            this.f6727Ad.clear();
            if (this.f6726Ac == null) {
                return;
            }
            zzasz();
            this.f6725Ab.zzawc();
        } finally {
            this.f6746zg.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.mContext);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.f6728Ae);
        printWriter.append(" mWorkQueue.size()=").print(this.f6727Ad.size());
        this.f6739Ap.dump(printWriter);
        if (this.f6726Ac != null) {
            this.f6726Ac.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @NonNull
    public ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        this.f6746zg.lock();
        try {
            if (!isConnected() && !isResuming()) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            }
            if (!this.f6733Aj.containsKey(api.zzaqv())) {
                throw new IllegalArgumentException(String.valueOf(api.getName()).concat(" was never registered with GoogleApiClient"));
            }
            ConnectionResult connectionResult = this.f6726Ac.getConnectionResult(api);
            if (connectionResult == null) {
                if (isResuming()) {
                    connectionResult = ConnectionResult.f6123wO;
                } else {
                    Log.w("GoogleApiClientImpl", zzatb());
                    Log.wtf("GoogleApiClientImpl", String.valueOf(api.getName()).concat(" requested in getConnectionResult is not connected but is not present in the failed  connections map"), new Exception());
                    connectionResult = new ConnectionResult(8, null);
                }
            }
            return connectionResult;
        } finally {
            this.f6746zg.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Looper getLooper() {
        return this.zzajy;
    }

    public int getSessionId() {
        return System.identityHashCode(this);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean hasConnectedApi(@NonNull Api<?> api) {
        if (!isConnected()) {
            return false;
        }
        Api.zze zzeVar = this.f6733Aj.get(api.zzaqv());
        return zzeVar != null && zzeVar.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnected() {
        return this.f6726Ac != null && this.f6726Ac.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnecting() {
        return this.f6726Ac != null && this.f6726Ac.isConnecting();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionCallbacksRegistered(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        return this.f6725Ab.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionFailedListenerRegistered(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.f6725Ab.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    boolean isResuming() {
        return this.f6728Ae;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void reconnect() {
        disconnect();
        connect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionCallbacks(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.f6725Ab.registerConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionFailedListener(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f6725Ab.registerConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void stopAutoManage(@NonNull FragmentActivity fragmentActivity) {
        zzb(new zzrn(fragmentActivity));
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionCallbacks(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.f6725Ab.unregisterConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionFailedListener(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f6725Ab.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @NonNull
    public <C extends Api.zze> C zza(@NonNull Api.zzc<C> zzcVar) {
        C c = (C) this.f6733Aj.get(zzcVar);
        com.google.android.gms.common.internal.zzaa.zzb(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, R extends Result, T extends zzqo.zza<R, A>> T zza(@NonNull T t) {
        com.google.android.gms.common.internal.zzaa.zzb(t.zzaqv() != null, "This task can not be enqueued (it's probably a Batch or malformed)");
        boolean containsKey = this.f6733Aj.containsKey(t.zzaqv());
        String name = t.getApi() != null ? t.getApi().getName() : "the API";
        com.google.android.gms.common.internal.zzaa.zzb(containsKey, new StringBuilder(String.valueOf(name).length() + 65).append("GoogleApiClient is not configured to use ").append(name).append(" required for this call.").toString());
        this.f6746zg.lock();
        try {
            if (this.f6726Ac == null) {
                this.f6727Ad.add(t);
            } else {
                t = (T) this.f6726Ac.zza((zzrm) t);
            }
            return t;
        } finally {
            this.f6746zg.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zza(zzsf zzsfVar) {
        this.f6746zg.lock();
        try {
            if (this.f6738Ao == null) {
                this.f6738Ao = new HashSet();
            }
            this.f6738Ao.add(zzsfVar);
        } finally {
            this.f6746zg.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean zza(@NonNull Api<?> api) {
        return this.f6733Aj.containsKey(api.zzaqv());
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean zza(zzsa zzsaVar) {
        return this.f6726Ac != null && this.f6726Ac.zza(zzsaVar);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zzard() {
        if (this.f6726Ac != null) {
            this.f6726Ac.zzard();
        }
    }

    void zzasy() {
        if (isResuming()) {
            return;
        }
        this.f6728Ae = true;
        if (this.f6732Ai == null) {
            this.f6732Ai = this.f6742xP.zza(this.mContext.getApplicationContext(), new zzb(this));
        }
        this.f6731Ah.sendMessageDelayed(this.f6731Ah.obtainMessage(1), this.f6729Af);
        this.f6731Ah.sendMessageDelayed(this.f6731Ah.obtainMessage(2), this.f6730Ag);
    }

    boolean zzasz() {
        if (!isResuming()) {
            return false;
        }
        this.f6728Ae = false;
        this.f6731Ah.removeMessages(2);
        this.f6731Ah.removeMessages(1);
        if (this.f6732Ai != null) {
            this.f6732Ai.unregister();
            this.f6732Ai = null;
        }
        return true;
    }

    boolean zzata() {
        this.f6746zg.lock();
        try {
            if (this.f6738Ao != null) {
                r0 = this.f6738Ao.isEmpty() ? false : true;
            }
            return r0;
        } finally {
            this.f6746zg.unlock();
        }
    }

    String zzatb() {
        StringWriter stringWriter = new StringWriter();
        dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    <C extends Api.zze> C zzb(Api.zzc<?> zzcVar) {
        C c = (C) this.f6733Aj.get(zzcVar);
        com.google.android.gms.common.internal.zzaa.zzb(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, T extends zzqo.zza<? extends Result, A>> T zzb(@NonNull T t) {
        com.google.android.gms.common.internal.zzaa.zzb(t.zzaqv() != null, "This task can not be executed (it's probably a Batch or malformed)");
        boolean containsKey = this.f6733Aj.containsKey(t.zzaqv());
        String name = t.getApi() != null ? t.getApi().getName() : "the API";
        com.google.android.gms.common.internal.zzaa.zzb(containsKey, new StringBuilder(String.valueOf(name).length() + 65).append("GoogleApiClient is not configured to use ").append(name).append(" required for this call.").toString());
        this.f6746zg.lock();
        try {
            if (this.f6726Ac == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (isResuming()) {
                this.f6727Ad.add(t);
                while (!this.f6727Ad.isEmpty()) {
                    zzqo.zza<?, ?> remove = this.f6727Ad.remove();
                    this.f6739Ap.zzb(remove);
                    remove.zzaa(Status.f6173yb);
                }
            } else {
                t = (T) this.f6726Ac.zzb(t);
            }
            return t;
        } finally {
            this.f6746zg.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zzb(zzsf zzsfVar) {
        this.f6746zg.lock();
        try {
            if (this.f6738Ao == null) {
                Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", new Exception());
            } else if (!this.f6738Ao.remove(zzsfVar)) {
                Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", new Exception());
            } else if (!zzata()) {
                this.f6726Ac.zzarz();
            }
        } finally {
            this.f6746zg.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzrm.zza
    public void zzc(int i, boolean z) {
        if (i == 1 && !z) {
            zzasy();
        }
        this.f6739Ap.zzauf();
        this.f6725Ab.zzgn(i);
        this.f6725Ab.zzawc();
        if (i == 2) {
            zzasw();
        }
    }

    @Override // com.google.android.gms.internal.zzrm.zza
    public void zzc(ConnectionResult connectionResult) {
        if (!this.f6742xP.zzd(this.mContext, connectionResult.getErrorCode())) {
            zzasz();
        }
        if (isResuming()) {
            return;
        }
        this.f6725Ab.zzn(connectionResult);
        this.f6725Ab.zzawc();
    }

    @Override // com.google.android.gms.internal.zzrm.zza
    public void zzn(Bundle bundle) {
        while (!this.f6727Ad.isEmpty()) {
            zzb((zzrd) this.f6727Ad.remove());
        }
        this.f6725Ab.zzp(bundle);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <L> zzrr<L> zzs(@NonNull L l) {
        this.f6746zg.lock();
        try {
            return this.f6735Al.zzb(l, this.zzajy);
        } finally {
            this.f6746zg.unlock();
        }
    }
}
