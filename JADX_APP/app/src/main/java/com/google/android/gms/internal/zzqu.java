package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
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
public class zzqu implements zzrm {

    /* renamed from: xy */
    private final zzrh f6658xy;

    /* renamed from: zg */
    private final Lock f6659zg;

    /* renamed from: zj */
    private final Map<Api.zzc<?>, com.google.android.gms.common.api.zzc<?>> f6660zj = new HashMap();

    /* renamed from: zk */
    private final Map<Api<?>, Integer> f6661zk;

    /* renamed from: zl */
    private final zzrd f6662zl;

    /* renamed from: zm */
    private final com.google.android.gms.common.zzc f6663zm;

    /* renamed from: zn */
    private final Condition f6664zn;

    /* renamed from: zo */
    private boolean f6665zo;

    /* renamed from: zp */
    private Map<zzql<?>, ConnectionResult> f6666zp;

    /* renamed from: zq */
    private ConnectionResult f6667zq;
    private final Looper zzajy;

    /* renamed from: com.google.android.gms.internal.zzqu$1 */
    class C13711 extends com.google.android.gms.common.api.zzc {
        C13711(Context context, Api api, Looper looper, Api.zze zzeVar, zzqr zzqrVar) {
            super(context, api, looper, zzeVar, zzqrVar);
        }
    }

    private class zza implements OnFailureListener, OnSuccessListener<Void> {
        private zza() {
        }

        /* synthetic */ zza(zzqu zzquVar, C13711 c13711) {
            this();
        }

        @Nullable
        private ConnectionResult zzash() {
            int intValue;
            ConnectionResult connectionResult = null;
            int i = 0;
            for (Api api : zzqu.this.f6661zk.keySet()) {
                ConnectionResult connectionResult2 = (ConnectionResult) zzqu.this.f6666zp.get(((com.google.android.gms.common.api.zzc) zzqu.this.f6660zj.get(api.zzaqv())).getApiKey());
                if (!connectionResult2.isSuccess() && (intValue = ((Integer) zzqu.this.f6661zk.get(api)).intValue()) != 2 && (intValue != 1 || connectionResult2.hasResolution() || zzqu.this.f6663zm.isUserResolvableError(connectionResult2.getErrorCode()))) {
                    int priority = api.zzaqs().getPriority();
                    if (connectionResult != null && i <= priority) {
                        priority = i;
                        connectionResult2 = connectionResult;
                    }
                    i = priority;
                    connectionResult = connectionResult2;
                }
            }
            return connectionResult;
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public void onFailure(@NonNull Exception exc) {
            com.google.android.gms.common.api.zzb zzbVar = (com.google.android.gms.common.api.zzb) exc;
            zzqu.this.f6659zg.lock();
            try {
                zzqu.this.f6666zp = zzbVar.zzara();
                zzqu.this.f6667zq = zzash();
                if (zzqu.this.f6667zq == null) {
                    zzqu.this.f6662zl.zzn(null);
                } else {
                    zzqu.this.f6665zo = false;
                    zzqu.this.f6662zl.zzc(zzqu.this.f6667zq);
                }
                zzqu.this.f6664zn.signalAll();
            } finally {
                zzqu.this.f6659zg.unlock();
            }
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        /* renamed from: zza */
        public void onSuccess(Void r5) {
            zzqu.this.f6659zg.lock();
            try {
                zzqu.this.f6666zp = new ArrayMap(zzqu.this.f6660zj.size());
                Iterator it = zzqu.this.f6660zj.keySet().iterator();
                while (it.hasNext()) {
                    zzqu.this.f6666zp.put(((com.google.android.gms.common.api.zzc) zzqu.this.f6660zj.get((Api.zzc) it.next())).getApiKey(), ConnectionResult.f6123wO);
                }
                zzqu.this.f6662zl.zzn(null);
                zzqu.this.f6664zn.signalAll();
            } finally {
                zzqu.this.f6659zg.unlock();
            }
        }
    }

    public zzqu(Context context, Lock lock, Looper looper, com.google.android.gms.common.zzc zzcVar, Map<Api.zzc<?>, Api.zze> map, Map<Api<?>, Integer> map2, ArrayList<zzqr> arrayList, zzrd zzrdVar) {
        this.f6659zg = lock;
        this.zzajy = looper;
        this.f6664zn = lock.newCondition();
        this.f6663zm = zzcVar;
        this.f6662zl = zzrdVar;
        this.f6661zk = map2;
        HashMap hashMap = new HashMap();
        for (Api<?> api : map2.keySet()) {
            hashMap.put(api.zzaqv(), api);
        }
        HashMap hashMap2 = new HashMap();
        Iterator<zzqr> it = arrayList.iterator();
        while (it.hasNext()) {
            zzqr next = it.next();
            hashMap2.put(next.f6640vS, next);
        }
        for (Map.Entry<Api.zzc<?>, Api.zze> entry : map.entrySet()) {
            Api api2 = (Api) hashMap.get(entry.getKey());
            this.f6660zj.put(entry.getKey(), new com.google.android.gms.common.api.zzc(context, api2, looper, entry.getValue(), (zzqr) hashMap2.get(api2)) { // from class: com.google.android.gms.internal.zzqu.1
                C13711(Context context2, Api api22, Looper looper2, Api.zze zzeVar, zzqr zzqrVar) {
                    super(context2, api22, looper2, zzeVar, zzqrVar);
                }
            });
        }
        this.f6658xy = zzrh.zzatg();
    }

    @Override // com.google.android.gms.internal.zzrm
    public ConnectionResult blockingConnect() {
        connect();
        while (isConnecting()) {
            try {
                this.f6664zn.await();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        return isConnected() ? ConnectionResult.f6123wO : this.f6667zq != null ? this.f6667zq : new ConnectionResult(13, null);
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
                nanos = this.f6664zn.awaitNanos(nanos);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        return isConnected() ? ConnectionResult.f6123wO : this.f6667zq != null ? this.f6667zq : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.internal.zzrm
    public void connect() {
        this.f6659zg.lock();
        try {
            if (this.f6665zo) {
                return;
            }
            this.f6665zo = true;
            this.f6666zp = null;
            this.f6667zq = null;
            zza zzaVar = new zza();
            zzsv zzsvVar = new zzsv(this.zzajy);
            this.f6658xy.zza(this.f6660zj.values()).addOnSuccessListener(zzsvVar, zzaVar).addOnFailureListener(zzsvVar, zzaVar);
        } finally {
            this.f6659zg.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzrm
    public void disconnect() {
        this.f6659zg.lock();
        try {
            this.f6665zo = false;
            this.f6666zp = null;
            this.f6667zq = null;
            this.f6664zn.signalAll();
        } finally {
            this.f6659zg.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzrm
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.google.android.gms.internal.zzrm
    @Nullable
    public ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        this.f6659zg.lock();
        try {
            if (this.f6660zj.get(api.zzaqv()).getClient().isConnected()) {
                return ConnectionResult.f6123wO;
            }
            if (this.f6666zp != null) {
                return this.f6666zp.get(this.f6660zj.get(api.zzaqv()).getApiKey());
            }
            this.f6659zg.unlock();
            return null;
        } finally {
            this.f6659zg.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzrm
    public boolean isConnected() {
        boolean z;
        this.f6659zg.lock();
        try {
            if (this.f6666zp != null) {
                if (this.f6667zq == null) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            this.f6659zg.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzrm
    public boolean isConnecting() {
        boolean z;
        this.f6659zg.lock();
        try {
            if (this.f6666zp == null) {
                if (this.f6665zo) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            this.f6659zg.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzrm
    public <A extends Api.zzb, R extends Result, T extends zzqo.zza<R, A>> T zza(@NonNull T t) {
        this.f6662zl.f6739Ap.zzb(t);
        return (T) this.f6660zj.get(t.zzaqv()).doRead((com.google.android.gms.common.api.zzc<?>) t);
    }

    @Override // com.google.android.gms.internal.zzrm
    public boolean zza(zzsa zzsaVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.zzrm
    public void zzard() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.zzrm
    public void zzarz() {
    }

    @Override // com.google.android.gms.internal.zzrm
    public <A extends Api.zzb, T extends zzqo.zza<? extends Result, A>> T zzb(@NonNull T t) {
        this.f6662zl.f6739Ap.zzb(t);
        return (T) this.f6660zj.get(t.zzaqv()).doWrite((com.google.android.gms.common.api.zzc<?>) t);
    }
}
