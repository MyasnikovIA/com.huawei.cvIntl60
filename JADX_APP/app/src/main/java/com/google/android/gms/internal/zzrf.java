package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzrm;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

/* loaded from: classes.dex */
public class zzrf implements zzqs, zzrm {

    /* renamed from: AB */
    int f6761AB;

    /* renamed from: AC */
    final zzrm.zza f6762AC;

    /* renamed from: Aj */
    final Map<Api.zzc<?>, Api.zze> f6763Aj;

    /* renamed from: Aw */
    private final Condition f6764Aw;

    /* renamed from: Ax */
    private final zzb f6765Ax;

    /* renamed from: Az */
    private volatile zzre f6767Az;
    private final Context mContext;

    /* renamed from: xQ */
    final Api.zza<? extends zzxp, zzxq> f6768xQ;

    /* renamed from: yW */
    final zzrd f6769yW;

    /* renamed from: zP */
    final com.google.android.gms.common.internal.zzf f6770zP;

    /* renamed from: zg */
    private final Lock f6771zg;

    /* renamed from: zk */
    final Map<Api<?>, Integer> f6772zk;

    /* renamed from: zm */
    private final com.google.android.gms.common.zzc f6773zm;

    /* renamed from: Ay */
    final Map<Api.zzc<?>, ConnectionResult> f6766Ay = new HashMap();

    /* renamed from: AA */
    private ConnectionResult f6760AA = null;

    static abstract class zza {

        /* renamed from: AD */
        private final zzre f6774AD;

        protected zza(zzre zzreVar) {
            this.f6774AD = zzreVar;
        }

        protected abstract void zzaso();

        public final void zzc(zzrf zzrfVar) {
            zzrfVar.f6771zg.lock();
            try {
                if (zzrfVar.f6767Az != this.f6774AD) {
                    return;
                }
                zzaso();
            } finally {
                zzrfVar.f6771zg.unlock();
            }
        }
    }

    final class zzb extends Handler {
        zzb(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    ((zza) message.obj).zzc(zzrf.this);
                    return;
                case 2:
                    throw ((RuntimeException) message.obj);
                default:
                    Log.w("GACStateManager", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                    return;
            }
        }
    }

    public zzrf(Context context, zzrd zzrdVar, Lock lock, Looper looper, com.google.android.gms.common.zzc zzcVar, Map<Api.zzc<?>, Api.zze> map, com.google.android.gms.common.internal.zzf zzfVar, Map<Api<?>, Integer> map2, Api.zza<? extends zzxp, zzxq> zzaVar, ArrayList<zzqr> arrayList, zzrm.zza zzaVar2) {
        this.mContext = context;
        this.f6771zg = lock;
        this.f6773zm = zzcVar;
        this.f6763Aj = map;
        this.f6770zP = zzfVar;
        this.f6772zk = map2;
        this.f6768xQ = zzaVar;
        this.f6769yW = zzrdVar;
        this.f6762AC = zzaVar2;
        Iterator<zzqr> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().zza(this);
        }
        this.f6765Ax = new zzb(looper);
        this.f6764Aw = lock.newCondition();
        this.f6767Az = new zzrc(this);
    }

    @Override // com.google.android.gms.internal.zzrm
    public ConnectionResult blockingConnect() {
        connect();
        while (isConnecting()) {
            try {
                this.f6764Aw.await();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        return isConnected() ? ConnectionResult.f6123wO : this.f6760AA != null ? this.f6760AA : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.internal.zzrm
    public ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        connect();
        long nanos = timeUnit.toNanos(j);
        while (isConnecting()) {
            if (nanos <= 0) {
                disconnect();
                return new ConnectionResult(14, null);
            }
            try {
                nanos = this.f6764Aw.awaitNanos(nanos);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        return isConnected() ? ConnectionResult.f6123wO : this.f6760AA != null ? this.f6760AA : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.internal.zzrm
    public void connect() {
        this.f6767Az.connect();
    }

    @Override // com.google.android.gms.internal.zzrm
    public void disconnect() {
        if (this.f6767Az.disconnect()) {
            this.f6766Ay.clear();
        }
    }

    @Override // com.google.android.gms.internal.zzrm
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String concat = String.valueOf(str).concat("  ");
        printWriter.append((CharSequence) str).append("mState=").println(this.f6767Az);
        for (Api<?> api : this.f6772zk.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) api.getName()).println(":");
            this.f6763Aj.get(api.zzaqv()).dump(concat, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.internal.zzrm
    @Nullable
    public ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        Api.zzc<?> zzaqv = api.zzaqv();
        if (this.f6763Aj.containsKey(zzaqv)) {
            if (this.f6763Aj.get(zzaqv).isConnected()) {
                return ConnectionResult.f6123wO;
            }
            if (this.f6766Ay.containsKey(zzaqv)) {
                return this.f6766Ay.get(zzaqv);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzrm
    public boolean isConnected() {
        return this.f6767Az instanceof zzra;
    }

    @Override // com.google.android.gms.internal.zzrm
    public boolean isConnecting() {
        return this.f6767Az instanceof zzrb;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(@Nullable Bundle bundle) {
        this.f6771zg.lock();
        try {
            this.f6767Az.onConnected(bundle);
        } finally {
            this.f6771zg.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        this.f6771zg.lock();
        try {
            this.f6767Az.onConnectionSuspended(i);
        } finally {
            this.f6771zg.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzrm
    public <A extends Api.zzb, R extends Result, T extends zzqo.zza<R, A>> T zza(@NonNull T t) {
        t.zzarv();
        return (T) this.f6767Az.zza(t);
    }

    @Override // com.google.android.gms.internal.zzqs
    public void zza(@NonNull ConnectionResult connectionResult, @NonNull Api<?> api, int i) {
        this.f6771zg.lock();
        try {
            this.f6767Az.zza(connectionResult, api, i);
        } finally {
            this.f6771zg.unlock();
        }
    }

    void zza(zza zzaVar) {
        this.f6765Ax.sendMessage(this.f6765Ax.obtainMessage(1, zzaVar));
    }

    void zza(RuntimeException runtimeException) {
        this.f6765Ax.sendMessage(this.f6765Ax.obtainMessage(2, runtimeException));
    }

    @Override // com.google.android.gms.internal.zzrm
    public boolean zza(zzsa zzsaVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.zzrm
    public void zzard() {
    }

    @Override // com.google.android.gms.internal.zzrm
    public void zzarz() {
        if (isConnected()) {
            ((zzra) this.f6767Az).zzasn();
        }
    }

    void zzatc() {
        this.f6771zg.lock();
        try {
            this.f6767Az = new zzrb(this, this.f6770zP, this.f6772zk, this.f6773zm, this.f6768xQ, this.f6771zg, this.mContext);
            this.f6767Az.begin();
            this.f6764Aw.signalAll();
        } finally {
            this.f6771zg.unlock();
        }
    }

    void zzatd() {
        this.f6771zg.lock();
        try {
            this.f6769yW.zzasz();
            this.f6767Az = new zzra(this);
            this.f6767Az.begin();
            this.f6764Aw.signalAll();
        } finally {
            this.f6771zg.unlock();
        }
    }

    void zzate() {
        Iterator<Api.zze> it = this.f6763Aj.values().iterator();
        while (it.hasNext()) {
            it.next().disconnect();
        }
    }

    @Override // com.google.android.gms.internal.zzrm
    public <A extends Api.zzb, T extends zzqo.zza<? extends Result, A>> T zzb(@NonNull T t) {
        t.zzarv();
        return (T) this.f6767Az.zzb(t);
    }

    void zzh(ConnectionResult connectionResult) {
        this.f6771zg.lock();
        try {
            this.f6760AA = connectionResult;
            this.f6767Az = new zzrc(this);
            this.f6767Az.begin();
            this.f6764Aw.signalAll();
        } finally {
            this.f6771zg.unlock();
        }
    }
}
