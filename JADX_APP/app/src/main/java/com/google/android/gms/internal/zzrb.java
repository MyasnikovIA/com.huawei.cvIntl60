package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.BinderThread;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.zze;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzrf;
import com.google.android.gms.signin.internal.SignInResponse;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

/* loaded from: classes.dex */
public class zzrb implements zzre {
    private final Context mContext;

    /* renamed from: xQ */
    private final Api.zza<? extends zzxp, zzxq> f6686xQ;

    /* renamed from: zA */
    private final zzrf f6687zA;

    /* renamed from: zD */
    private int f6688zD;

    /* renamed from: zF */
    private int f6690zF;

    /* renamed from: zI */
    private zzxp f6693zI;

    /* renamed from: zJ */
    private int f6694zJ;

    /* renamed from: zK */
    private boolean f6695zK;

    /* renamed from: zL */
    private boolean f6696zL;

    /* renamed from: zM */
    private com.google.android.gms.common.internal.zzp f6697zM;

    /* renamed from: zN */
    private boolean f6698zN;

    /* renamed from: zO */
    private boolean f6699zO;

    /* renamed from: zP */
    private final com.google.android.gms.common.internal.zzf f6700zP;

    /* renamed from: zg */
    private final Lock f6702zg;

    /* renamed from: zk */
    private final Map<Api<?>, Integer> f6703zk;

    /* renamed from: zm */
    private final com.google.android.gms.common.zzc f6704zm;

    /* renamed from: zq */
    private ConnectionResult f6705zq;

    /* renamed from: zE */
    private int f6689zE = 0;

    /* renamed from: zG */
    private final Bundle f6691zG = new Bundle();

    /* renamed from: zH */
    private final Set<Api.zzc> f6692zH = new HashSet();

    /* renamed from: zQ */
    private ArrayList<Future<?>> f6701zQ = new ArrayList<>();

    /* renamed from: com.google.android.gms.internal.zzrb$1 */
    class RunnableC13761 implements Runnable {
        RunnableC13761() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zzrb.this.f6704zm.zzbn(zzrb.this.mContext);
        }
    }

    private static class zza implements zze.zzf {

        /* renamed from: vS */
        private final Api<?> f6707vS;

        /* renamed from: yU */
        private final int f6708yU;

        /* renamed from: zS */
        private final WeakReference<zzrb> f6709zS;

        public zza(zzrb zzrbVar, Api<?> api, int i) {
            this.f6709zS = new WeakReference<>(zzrbVar);
            this.f6707vS = api;
            this.f6708yU = i;
        }

        @Override // com.google.android.gms.common.internal.zze.zzf
        public void zzg(@NonNull ConnectionResult connectionResult) {
            zzrb zzrbVar = this.f6709zS.get();
            if (zzrbVar == null) {
                return;
            }
            com.google.android.gms.common.internal.zzaa.zza(Looper.myLooper() == zzrbVar.f6687zA.f6769yW.getLooper(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
            zzrbVar.f6702zg.lock();
            try {
                if (zzrbVar.zzft(0)) {
                    if (!connectionResult.isSuccess()) {
                        zzrbVar.zzb(connectionResult, this.f6707vS, this.f6708yU);
                    }
                    if (zzrbVar.zzasp()) {
                        zzrbVar.zzasq();
                    }
                }
            } finally {
                zzrbVar.f6702zg.unlock();
            }
        }
    }

    private class zzb extends zzf {

        /* renamed from: zT */
        private final Map<Api.zze, zza> f6711zT;

        /* renamed from: com.google.android.gms.internal.zzrb$zzb$1 */
        class C13771 extends zzrf.zza {

            /* renamed from: zU */
            final /* synthetic */ ConnectionResult f6712zU;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C13771(zzre zzreVar, ConnectionResult connectionResult) {
                super(zzreVar);
                connectionResult = connectionResult;
            }

            @Override // com.google.android.gms.internal.zzrf.zza
            public void zzaso() {
                zzrb.this.zzf(connectionResult);
            }
        }

        /* renamed from: com.google.android.gms.internal.zzrb$zzb$2 */
        class C13782 extends zzrf.zza {

            /* renamed from: zW */
            final /* synthetic */ zze.zzf f6715zW;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C13782(zzre zzreVar, zze.zzf zzfVar) {
                super(zzreVar);
                zzaVar = zzfVar;
            }

            @Override // com.google.android.gms.internal.zzrf.zza
            public void zzaso() {
                zzaVar.zzg(new ConnectionResult(16, null));
            }
        }

        public zzb(Map<Api.zze, zza> map) {
            super();
            this.f6711zT = map;
        }

        @Override // com.google.android.gms.internal.zzrb.zzf
        @WorkerThread
        public void zzaso() {
            boolean z;
            boolean z2;
            Iterator<Api.zze> it = this.f6711zT.keySet().iterator();
            boolean z3 = true;
            boolean z4 = false;
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                Api.zze next = it.next();
                if (!next.zzaqx()) {
                    z2 = false;
                } else if (this.f6711zT.get(next).f6708yU == 0) {
                    z4 = true;
                    z = true;
                    break;
                } else {
                    z2 = z3;
                    z4 = true;
                }
                z3 = z2;
            }
            int isGooglePlayServicesAvailable = z4 ? zzrb.this.f6704zm.isGooglePlayServicesAvailable(zzrb.this.mContext) : 0;
            if (isGooglePlayServicesAvailable != 0 && (z || z3)) {
                zzrb.this.f6687zA.zza(new zzrf.zza(zzrb.this) { // from class: com.google.android.gms.internal.zzrb.zzb.1

                    /* renamed from: zU */
                    final /* synthetic */ ConnectionResult f6712zU;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C13771(zzre zzreVar, ConnectionResult connectionResult) {
                        super(zzreVar);
                        connectionResult = connectionResult;
                    }

                    @Override // com.google.android.gms.internal.zzrf.zza
                    public void zzaso() {
                        zzrb.this.zzf(connectionResult);
                    }
                });
                return;
            }
            if (zzrb.this.f6695zK) {
                zzrb.this.f6693zI.connect();
            }
            for (Api.zze zzeVar : this.f6711zT.keySet()) {
                zza zzaVar = this.f6711zT.get(zzeVar);
                if (!zzeVar.zzaqx() || isGooglePlayServicesAvailable == 0) {
                    zzeVar.zza(zzaVar);
                } else {
                    zzrb.this.f6687zA.zza(new zzrf.zza(zzrb.this) { // from class: com.google.android.gms.internal.zzrb.zzb.2

                        /* renamed from: zW */
                        final /* synthetic */ zze.zzf f6715zW;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C13782(zzre zzreVar, zze.zzf zzaVar2) {
                            super(zzreVar);
                            zzaVar = zzaVar2;
                        }

                        @Override // com.google.android.gms.internal.zzrf.zza
                        public void zzaso() {
                            zzaVar.zzg(new ConnectionResult(16, null));
                        }
                    });
                }
            }
        }
    }

    private class zzc extends zzf {

        /* renamed from: zX */
        private final ArrayList<Api.zze> f6717zX;

        public zzc(ArrayList<Api.zze> arrayList) {
            super();
            this.f6717zX = arrayList;
        }

        @Override // com.google.android.gms.internal.zzrb.zzf
        @WorkerThread
        public void zzaso() {
            zzrb.this.f6687zA.f6769yW.f6734Ak = zzrb.this.zzasv();
            Iterator<Api.zze> it = this.f6717zX.iterator();
            while (it.hasNext()) {
                it.next().zza(zzrb.this.f6697zM, zzrb.this.f6687zA.f6769yW.f6734Ak);
            }
        }
    }

    private static class zzd extends com.google.android.gms.signin.internal.zzb {

        /* renamed from: zS */
        private final WeakReference<zzrb> f6718zS;

        /* renamed from: com.google.android.gms.internal.zzrb$zzd$1 */
        class C13791 extends zzrf.zza {

            /* renamed from: zY */
            final /* synthetic */ zzrb f6720zY;

            /* renamed from: zZ */
            final /* synthetic */ SignInResponse f6721zZ;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C13791(zzre zzreVar, zzrb zzrbVar, SignInResponse signInResponse) {
                super(zzreVar);
                zzrbVar = zzrbVar;
                signInResponse = signInResponse;
            }

            @Override // com.google.android.gms.internal.zzrf.zza
            public void zzaso() {
                zzrbVar.zza(signInResponse);
            }
        }

        zzd(zzrb zzrbVar) {
            this.f6718zS = new WeakReference<>(zzrbVar);
        }

        @Override // com.google.android.gms.signin.internal.zzb, com.google.android.gms.signin.internal.zzd
        @BinderThread
        public void zzb(SignInResponse signInResponse) {
            zzrb zzrbVar = this.f6718zS.get();
            if (zzrbVar == null) {
                return;
            }
            zzrbVar.f6687zA.zza(new zzrf.zza(zzrbVar) { // from class: com.google.android.gms.internal.zzrb.zzd.1

                /* renamed from: zY */
                final /* synthetic */ zzrb f6720zY;

                /* renamed from: zZ */
                final /* synthetic */ SignInResponse f6721zZ;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C13791(zzrb zzrbVar2, zzrb zzrbVar22, SignInResponse signInResponse2) {
                    super(zzrbVar22);
                    zzrbVar = zzrbVar22;
                    signInResponse = signInResponse2;
                }

                @Override // com.google.android.gms.internal.zzrf.zza
                public void zzaso() {
                    zzrbVar.zza(signInResponse);
                }
            });
        }
    }

    private class zze implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
        private zze() {
        }

        /* synthetic */ zze(zzrb zzrbVar, RunnableC13761 runnableC13761) {
            this();
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            zzrb.this.f6693zI.zza(new zzd(zzrb.this));
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            zzrb.this.f6702zg.lock();
            try {
                if (zzrb.this.zze(connectionResult)) {
                    zzrb.this.zzast();
                    zzrb.this.zzasq();
                } else {
                    zzrb.this.zzf(connectionResult);
                }
            } finally {
                zzrb.this.f6702zg.unlock();
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
        }
    }

    private abstract class zzf implements Runnable {
        private zzf() {
        }

        /* synthetic */ zzf(zzrb zzrbVar, RunnableC13761 runnableC13761) {
            this();
        }

        @Override // java.lang.Runnable
        @WorkerThread
        public void run() {
            zzrb.this.f6702zg.lock();
            try {
                if (Thread.interrupted()) {
                    return;
                }
                zzaso();
            } catch (RuntimeException e) {
                zzrb.this.f6687zA.zza(e);
            } finally {
                zzrb.this.f6702zg.unlock();
            }
        }

        @WorkerThread
        protected abstract void zzaso();
    }

    public zzrb(zzrf zzrfVar, com.google.android.gms.common.internal.zzf zzfVar, Map<Api<?>, Integer> map, com.google.android.gms.common.zzc zzcVar, Api.zza<? extends zzxp, zzxq> zzaVar, Lock lock, Context context) {
        this.f6687zA = zzrfVar;
        this.f6700zP = zzfVar;
        this.f6703zk = map;
        this.f6704zm = zzcVar;
        this.f6686xQ = zzaVar;
        this.f6702zg = lock;
        this.mContext = context;
    }

    public void zza(SignInResponse signInResponse) {
        if (zzft(0)) {
            ConnectionResult zzawn = signInResponse.zzawn();
            if (!zzawn.isSuccess()) {
                if (!zze(zzawn)) {
                    zzf(zzawn);
                    return;
                } else {
                    zzast();
                    zzasq();
                    return;
                }
            }
            ResolveAccountResponse zzcdn = signInResponse.zzcdn();
            ConnectionResult zzawn2 = zzcdn.zzawn();
            if (!zzawn2.isSuccess()) {
                String valueOf = String.valueOf(zzawn2);
                Log.wtf("GoogleApiClientConnecting", new StringBuilder(String.valueOf(valueOf).length() + 48).append("Sign-in succeeded with resolve account failure: ").append(valueOf).toString(), new Exception());
                zzf(zzawn2);
            } else {
                this.f6696zL = true;
                this.f6697zM = zzcdn.zzawm();
                this.f6698zN = zzcdn.zzawo();
                this.f6699zO = zzcdn.zzawp();
                zzasq();
            }
        }
    }

    private boolean zza(int i, int i2, ConnectionResult connectionResult) {
        if (i2 != 1 || zzd(connectionResult)) {
            return this.f6705zq == null || i < this.f6688zD;
        }
        return false;
    }

    public boolean zzasp() {
        this.f6690zF--;
        if (this.f6690zF > 0) {
            return false;
        }
        if (this.f6690zF < 0) {
            Log.w("GoogleApiClientConnecting", this.f6687zA.f6769yW.zzatb());
            Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            zzf(new ConnectionResult(8, null));
            return false;
        }
        if (this.f6705zq == null) {
            return true;
        }
        this.f6687zA.f6761AB = this.f6688zD;
        zzf(this.f6705zq);
        return false;
    }

    public void zzasq() {
        if (this.f6690zF != 0) {
            return;
        }
        if (!this.f6695zK || this.f6696zL) {
            zzasr();
        }
    }

    private void zzasr() {
        ArrayList arrayList = new ArrayList();
        this.f6689zE = 1;
        this.f6690zF = this.f6687zA.f6763Aj.size();
        for (Api.zzc<?> zzcVar : this.f6687zA.f6763Aj.keySet()) {
            if (!this.f6687zA.f6766Ay.containsKey(zzcVar)) {
                arrayList.add(this.f6687zA.f6763Aj.get(zzcVar));
            } else if (zzasp()) {
                zzass();
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.f6701zQ.add(zzrg.zzatf().submit(new zzc(arrayList)));
    }

    private void zzass() {
        this.f6687zA.zzatd();
        zzrg.zzatf().execute(new Runnable() { // from class: com.google.android.gms.internal.zzrb.1
            RunnableC13761() {
            }

            @Override // java.lang.Runnable
            public void run() {
                zzrb.this.f6704zm.zzbn(zzrb.this.mContext);
            }
        });
        if (this.f6693zI != null) {
            if (this.f6698zN) {
                this.f6693zI.zza(this.f6697zM, this.f6699zO);
            }
            zzbr(false);
        }
        Iterator<Api.zzc<?>> it = this.f6687zA.f6766Ay.keySet().iterator();
        while (it.hasNext()) {
            this.f6687zA.f6763Aj.get(it.next()).disconnect();
        }
        this.f6687zA.f6762AC.zzn(this.f6691zG.isEmpty() ? null : this.f6691zG);
    }

    public void zzast() {
        this.f6695zK = false;
        this.f6687zA.f6769yW.f6734Ak = Collections.emptySet();
        for (Api.zzc<?> zzcVar : this.f6692zH) {
            if (!this.f6687zA.f6766Ay.containsKey(zzcVar)) {
                this.f6687zA.f6766Ay.put(zzcVar, new ConnectionResult(17, null));
            }
        }
    }

    private void zzasu() {
        Iterator<Future<?>> it = this.f6701zQ.iterator();
        while (it.hasNext()) {
            it.next().cancel(true);
        }
        this.f6701zQ.clear();
    }

    public Set<Scope> zzasv() {
        if (this.f6700zP == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(this.f6700zP.zzavp());
        Map<Api<?>, zzf.zza> zzavr = this.f6700zP.zzavr();
        for (Api<?> api : zzavr.keySet()) {
            if (!this.f6687zA.f6766Ay.containsKey(api.zzaqv())) {
                hashSet.addAll(zzavr.get(api).f6332jw);
            }
        }
        return hashSet;
    }

    public void zzb(ConnectionResult connectionResult, Api<?> api, int i) {
        if (i != 2) {
            int priority = api.zzaqs().getPriority();
            if (zza(priority, i, connectionResult)) {
                this.f6705zq = connectionResult;
                this.f6688zD = priority;
            }
        }
        this.f6687zA.f6766Ay.put(api.zzaqv(), connectionResult);
    }

    private void zzbr(boolean z) {
        if (this.f6693zI != null) {
            if (this.f6693zI.isConnected() && z) {
                this.f6693zI.zzcdc();
            }
            this.f6693zI.disconnect();
            this.f6697zM = null;
        }
    }

    private boolean zzd(ConnectionResult connectionResult) {
        return connectionResult.hasResolution() || this.f6704zm.zzfp(connectionResult.getErrorCode()) != null;
    }

    public boolean zze(ConnectionResult connectionResult) {
        if (this.f6694zJ != 2) {
            return this.f6694zJ == 1 && !connectionResult.hasResolution();
        }
        return true;
    }

    public void zzf(ConnectionResult connectionResult) {
        zzasu();
        zzbr(!connectionResult.hasResolution());
        this.f6687zA.zzh(connectionResult);
        this.f6687zA.f6762AC.zzc(connectionResult);
    }

    public boolean zzft(int i) {
        if (this.f6689zE == i) {
            return true;
        }
        Log.w("GoogleApiClientConnecting", this.f6687zA.f6769yW.zzatb());
        String valueOf = String.valueOf(this);
        Log.w("GoogleApiClientConnecting", new StringBuilder(String.valueOf(valueOf).length() + 23).append("Unexpected callback in ").append(valueOf).toString());
        Log.w("GoogleApiClientConnecting", new StringBuilder(33).append("mRemainingConnections=").append(this.f6690zF).toString());
        String valueOf2 = String.valueOf(zzfu(this.f6689zE));
        String valueOf3 = String.valueOf(zzfu(i));
        Log.wtf("GoogleApiClientConnecting", new StringBuilder(String.valueOf(valueOf2).length() + 70 + String.valueOf(valueOf3).length()).append("GoogleApiClient connecting is in step ").append(valueOf2).append(" but received callback for step ").append(valueOf3).toString(), new Exception());
        zzf(new ConnectionResult(8, null));
        return false;
    }

    private String zzfu(int i) {
        switch (i) {
            case 0:
                return "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
            case 1:
                return "STEP_GETTING_REMOTE_SERVICE";
            default:
                return "UNKNOWN";
        }
    }

    @Override // com.google.android.gms.internal.zzre
    public void begin() {
        this.f6687zA.f6766Ay.clear();
        this.f6695zK = false;
        this.f6705zq = null;
        this.f6689zE = 0;
        this.f6694zJ = 2;
        this.f6696zL = false;
        this.f6698zN = false;
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (Api<?> api : this.f6703zk.keySet()) {
            Api.zze zzeVar = this.f6687zA.f6763Aj.get(api.zzaqv());
            int intValue = this.f6703zk.get(api).intValue();
            boolean z2 = (api.zzaqs().getPriority() == 1) | z;
            if (zzeVar.zzain()) {
                this.f6695zK = true;
                if (intValue < this.f6694zJ) {
                    this.f6694zJ = intValue;
                }
                if (intValue != 0) {
                    this.f6692zH.add(api.zzaqv());
                }
            }
            hashMap.put(zzeVar, new zza(this, api, intValue));
            z = z2;
        }
        if (z) {
            this.f6695zK = false;
        }
        if (this.f6695zK) {
            this.f6700zP.zzc(Integer.valueOf(this.f6687zA.f6769yW.getSessionId()));
            zze zzeVar2 = new zze();
            this.f6693zI = this.f6686xQ.zza(this.mContext, this.f6687zA.f6769yW.getLooper(), this.f6700zP, this.f6700zP.zzavv(), zzeVar2, zzeVar2);
        }
        this.f6690zF = this.f6687zA.f6763Aj.size();
        this.f6701zQ.add(zzrg.zzatf().submit(new zzb(hashMap)));
    }

    @Override // com.google.android.gms.internal.zzre
    public void connect() {
    }

    @Override // com.google.android.gms.internal.zzre
    public boolean disconnect() {
        zzasu();
        zzbr(true);
        this.f6687zA.zzh(null);
        return true;
    }

    @Override // com.google.android.gms.internal.zzre
    public void onConnected(Bundle bundle) {
        if (zzft(1)) {
            if (bundle != null) {
                this.f6691zG.putAll(bundle);
            }
            if (zzasp()) {
                zzass();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzre
    public void onConnectionSuspended(int i) {
        zzf(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.internal.zzre
    public <A extends Api.zzb, R extends Result, T extends zzqo.zza<R, A>> T zza(T t) {
        this.f6687zA.f6769yW.f6727Ad.add(t);
        return t;
    }

    @Override // com.google.android.gms.internal.zzre
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
        if (zzft(1)) {
            zzb(connectionResult, api, i);
            if (zzasp()) {
                zzass();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzre
    public <A extends Api.zzb, T extends zzqo.zza<? extends Result, A>> T zzb(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
