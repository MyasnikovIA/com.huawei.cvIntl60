package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.google.android.exoplayer.C1167C;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzrm;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;

/* loaded from: classes.dex */
final class zzqt implements zzrm {
    private final Context mContext;

    /* renamed from: yW */
    private final zzrd f6643yW;

    /* renamed from: yX */
    private final zzrf f6644yX;

    /* renamed from: yY */
    private final zzrf f6645yY;

    /* renamed from: yZ */
    private final Map<Api.zzc<?>, zzrf> f6646yZ;

    /* renamed from: zb */
    private final Api.zze f6648zb;

    /* renamed from: zc */
    private Bundle f6649zc;

    /* renamed from: zg */
    private final Lock f6653zg;
    private final Looper zzajy;

    /* renamed from: za */
    private final Set<zzsa> f6647za = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: zd */
    private ConnectionResult f6650zd = null;

    /* renamed from: ze */
    private ConnectionResult f6651ze = null;

    /* renamed from: zf */
    private boolean f6652zf = false;

    /* renamed from: zh */
    private int f6654zh = 0;

    /* renamed from: com.google.android.gms.internal.zzqt$1 */
    class RunnableC13701 implements Runnable {
        RunnableC13701() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zzqt.this.f6653zg.lock();
            try {
                zzqt.this.zzasc();
            } finally {
                zzqt.this.f6653zg.unlock();
            }
        }
    }

    private class zza implements zzrm.zza {
        private zza() {
        }

        /* synthetic */ zza(zzqt zzqtVar, RunnableC13701 runnableC13701) {
            this();
        }

        @Override // com.google.android.gms.internal.zzrm.zza
        public void zzc(int i, boolean z) {
            zzqt.this.f6653zg.lock();
            try {
                if (zzqt.this.f6652zf || zzqt.this.f6651ze == null || !zzqt.this.f6651ze.isSuccess()) {
                    zzqt.this.f6652zf = false;
                    zzqt.this.zzb(i, z);
                } else {
                    zzqt.this.f6652zf = true;
                    zzqt.this.f6645yY.onConnectionSuspended(i);
                }
            } finally {
                zzqt.this.f6653zg.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzrm.zza
        public void zzc(@NonNull ConnectionResult connectionResult) {
            zzqt.this.f6653zg.lock();
            try {
                zzqt.this.f6650zd = connectionResult;
                zzqt.this.zzasc();
            } finally {
                zzqt.this.f6653zg.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzrm.zza
        public void zzn(@Nullable Bundle bundle) {
            zzqt.this.f6653zg.lock();
            try {
                zzqt.this.zzm(bundle);
                zzqt.this.f6650zd = ConnectionResult.f6123wO;
                zzqt.this.zzasc();
            } finally {
                zzqt.this.f6653zg.unlock();
            }
        }
    }

    private class zzb implements zzrm.zza {
        private zzb() {
        }

        /* synthetic */ zzb(zzqt zzqtVar, RunnableC13701 runnableC13701) {
            this();
        }

        @Override // com.google.android.gms.internal.zzrm.zza
        public void zzc(int i, boolean z) {
            zzqt.this.f6653zg.lock();
            try {
                if (zzqt.this.f6652zf) {
                    zzqt.this.f6652zf = false;
                    zzqt.this.zzb(i, z);
                } else {
                    zzqt.this.f6652zf = true;
                    zzqt.this.f6644yX.onConnectionSuspended(i);
                }
            } finally {
                zzqt.this.f6653zg.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzrm.zza
        public void zzc(@NonNull ConnectionResult connectionResult) {
            zzqt.this.f6653zg.lock();
            try {
                zzqt.this.f6651ze = connectionResult;
                zzqt.this.zzasc();
            } finally {
                zzqt.this.f6653zg.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzrm.zza
        public void zzn(@Nullable Bundle bundle) {
            zzqt.this.f6653zg.lock();
            try {
                zzqt.this.f6651ze = ConnectionResult.f6123wO;
                zzqt.this.zzasc();
            } finally {
                zzqt.this.f6653zg.unlock();
            }
        }
    }

    private zzqt(Context context, zzrd zzrdVar, Lock lock, Looper looper, com.google.android.gms.common.zzc zzcVar, Map<Api.zzc<?>, Api.zze> map, Map<Api.zzc<?>, Api.zze> map2, com.google.android.gms.common.internal.zzf zzfVar, Api.zza<? extends zzxp, zzxq> zzaVar, Api.zze zzeVar, ArrayList<zzqr> arrayList, ArrayList<zzqr> arrayList2, Map<Api<?>, Integer> map3, Map<Api<?>, Integer> map4) {
        this.mContext = context;
        this.f6643yW = zzrdVar;
        this.f6653zg = lock;
        this.zzajy = looper;
        this.f6648zb = zzeVar;
        this.f6644yX = new zzrf(context, this.f6643yW, lock, looper, zzcVar, map2, null, map4, null, arrayList2, new zza());
        this.f6645yY = new zzrf(context, this.f6643yW, lock, looper, zzcVar, map, zzfVar, map3, zzaVar, arrayList, new zzb());
        ArrayMap arrayMap = new ArrayMap();
        Iterator<Api.zzc<?>> it = map2.keySet().iterator();
        while (it.hasNext()) {
            arrayMap.put(it.next(), this.f6644yX);
        }
        Iterator<Api.zzc<?>> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            arrayMap.put(it2.next(), this.f6645yY);
        }
        this.f6646yZ = Collections.unmodifiableMap(arrayMap);
    }

    public static zzqt zza(Context context, zzrd zzrdVar, Lock lock, Looper looper, com.google.android.gms.common.zzc zzcVar, Map<Api.zzc<?>, Api.zze> map, com.google.android.gms.common.internal.zzf zzfVar, Map<Api<?>, Integer> map2, Api.zza<? extends zzxp, zzxq> zzaVar, ArrayList<zzqr> arrayList) {
        Api.zze zzeVar = null;
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        for (Map.Entry<Api.zzc<?>, Api.zze> entry : map.entrySet()) {
            Api.zze value = entry.getValue();
            if (value.zzajc()) {
                zzeVar = value;
            }
            if (value.zzain()) {
                arrayMap.put(entry.getKey(), value);
            } else {
                arrayMap2.put(entry.getKey(), value);
            }
        }
        com.google.android.gms.common.internal.zzaa.zza(!arrayMap.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (Api<?> api : map2.keySet()) {
            Api.zzc<?> zzaqv = api.zzaqv();
            if (arrayMap.containsKey(zzaqv)) {
                arrayMap3.put(api, map2.get(api));
            } else {
                if (!arrayMap2.containsKey(zzaqv)) {
                    throw new IllegalStateException("Each API in the apiTypeMap must have a corresponding client in the clients map.");
                }
                arrayMap4.put(api, map2.get(api));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<zzqr> it = arrayList.iterator();
        while (it.hasNext()) {
            zzqr next = it.next();
            if (arrayMap3.containsKey(next.f6640vS)) {
                arrayList2.add(next);
            } else {
                if (!arrayMap4.containsKey(next.f6640vS)) {
                    throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the apiTypeMap");
                }
                arrayList3.add(next);
            }
        }
        return new zzqt(context, zzrdVar, lock, looper, zzcVar, arrayMap, arrayMap2, zzfVar, zzaVar, zzeVar, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    private void zza(ConnectionResult connectionResult) {
        switch (this.f6654zh) {
            case 2:
                this.f6643yW.zzc(connectionResult);
            case 1:
                zzase();
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                break;
        }
        this.f6654zh = 0;
    }

    private void zzasb() {
        this.f6651ze = null;
        this.f6650zd = null;
        this.f6644yX.connect();
        this.f6645yY.connect();
    }

    public void zzasc() {
        if (zzb(this.f6650zd)) {
            if (zzb(this.f6651ze) || zzasf()) {
                zzasd();
                return;
            }
            if (this.f6651ze != null) {
                if (this.f6654zh == 1) {
                    zzase();
                    return;
                } else {
                    zza(this.f6651ze);
                    this.f6644yX.disconnect();
                    return;
                }
            }
            return;
        }
        if (this.f6650zd != null && zzb(this.f6651ze)) {
            this.f6645yY.disconnect();
            zza(this.f6650zd);
        } else {
            if (this.f6650zd == null || this.f6651ze == null) {
                return;
            }
            ConnectionResult connectionResult = this.f6650zd;
            if (this.f6645yY.f6761AB < this.f6644yX.f6761AB) {
                connectionResult = this.f6651ze;
            }
            zza(connectionResult);
        }
    }

    private void zzasd() {
        switch (this.f6654zh) {
            case 2:
                this.f6643yW.zzn(this.f6649zc);
            case 1:
                zzase();
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                break;
        }
        this.f6654zh = 0;
    }

    private void zzase() {
        Iterator<zzsa> it = this.f6647za.iterator();
        while (it.hasNext()) {
            it.next().zzajb();
        }
        this.f6647za.clear();
    }

    private boolean zzasf() {
        return this.f6651ze != null && this.f6651ze.getErrorCode() == 4;
    }

    @Nullable
    private PendingIntent zzasg() {
        if (this.f6648zb == null) {
            return null;
        }
        return PendingIntent.getActivity(this.mContext, this.f6643yW.getSessionId(), this.f6648zb.zzajd(), C1167C.SAMPLE_FLAG_DECODE_ONLY);
    }

    public void zzb(int i, boolean z) {
        this.f6643yW.zzc(i, z);
        this.f6651ze = null;
        this.f6650zd = null;
    }

    private static boolean zzb(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    private boolean zzc(zzqo.zza<? extends Result, ? extends Api.zzb> zzaVar) {
        Api.zzc<? extends Api.zzb> zzaqv = zzaVar.zzaqv();
        com.google.android.gms.common.internal.zzaa.zzb(this.f6646yZ.containsKey(zzaqv), "GoogleApiClient is not configured to use the API required for this call.");
        return this.f6646yZ.get(zzaqv).equals(this.f6645yY);
    }

    public void zzm(Bundle bundle) {
        if (this.f6649zc == null) {
            this.f6649zc = bundle;
        } else if (bundle != null) {
            this.f6649zc.putAll(bundle);
        }
    }

    @Override // com.google.android.gms.internal.zzrm
    public ConnectionResult blockingConnect() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.zzrm
    public ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.zzrm
    public void connect() {
        this.f6654zh = 2;
        this.f6652zf = false;
        zzasb();
    }

    @Override // com.google.android.gms.internal.zzrm
    public void disconnect() {
        this.f6651ze = null;
        this.f6650zd = null;
        this.f6654zh = 0;
        this.f6644yX.disconnect();
        this.f6645yY.disconnect();
        zzase();
    }

    @Override // com.google.android.gms.internal.zzrm
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.f6645yY.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.f6644yX.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.internal.zzrm
    @Nullable
    public ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        return this.f6646yZ.get(api.zzaqv()).equals(this.f6645yY) ? zzasf() ? new ConnectionResult(4, zzasg()) : this.f6645yY.getConnectionResult(api) : this.f6644yX.getConnectionResult(api);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
    
        if (r2.f6654zh == 1) goto L30;
     */
    @Override // com.google.android.gms.internal.zzrm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isConnected() {
        /*
            r2 = this;
            r0 = 1
            java.util.concurrent.locks.Lock r1 = r2.f6653zg
            r1.lock()
            com.google.android.gms.internal.zzrf r1 = r2.f6644yX     // Catch: java.lang.Throwable -> L26
            boolean r1 = r1.isConnected()     // Catch: java.lang.Throwable -> L26
            if (r1 == 0) goto L24
            boolean r1 = r2.zzasa()     // Catch: java.lang.Throwable -> L26
            if (r1 != 0) goto L1e
            boolean r1 = r2.zzasf()     // Catch: java.lang.Throwable -> L26
            if (r1 != 0) goto L1e
            int r1 = r2.f6654zh     // Catch: java.lang.Throwable -> L26
            if (r1 != r0) goto L24
        L1e:
            java.util.concurrent.locks.Lock r1 = r2.f6653zg
            r1.unlock()
            return r0
        L24:
            r0 = 0
            goto L1e
        L26:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r2.f6653zg
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzqt.isConnected():boolean");
    }

    @Override // com.google.android.gms.internal.zzrm
    public boolean isConnecting() {
        this.f6653zg.lock();
        try {
            return this.f6654zh == 2;
        } finally {
            this.f6653zg.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzrm
    public <A extends Api.zzb, R extends Result, T extends zzqo.zza<R, A>> T zza(@NonNull T t) {
        if (!zzc((zzqo.zza<? extends Result, ? extends Api.zzb>) t)) {
            return (T) this.f6644yX.zza((zzrf) t);
        }
        if (!zzasf()) {
            return (T) this.f6645yY.zza((zzrf) t);
        }
        t.zzaa(new Status(4, null, zzasg()));
        return t;
    }

    @Override // com.google.android.gms.internal.zzrm
    public boolean zza(zzsa zzsaVar) {
        this.f6653zg.lock();
        try {
            if ((!isConnecting() && !isConnected()) || zzasa()) {
                this.f6653zg.unlock();
                return false;
            }
            this.f6647za.add(zzsaVar);
            if (this.f6654zh == 0) {
                this.f6654zh = 1;
            }
            this.f6651ze = null;
            this.f6645yY.connect();
            return true;
        } finally {
            this.f6653zg.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzrm
    public void zzard() {
        this.f6653zg.lock();
        try {
            boolean isConnecting = isConnecting();
            this.f6645yY.disconnect();
            this.f6651ze = new ConnectionResult(4);
            if (isConnecting) {
                new Handler(this.zzajy).post(new Runnable() { // from class: com.google.android.gms.internal.zzqt.1
                    RunnableC13701() {
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        zzqt.this.f6653zg.lock();
                        try {
                            zzqt.this.zzasc();
                        } finally {
                            zzqt.this.f6653zg.unlock();
                        }
                    }
                });
            } else {
                zzase();
            }
        } finally {
            this.f6653zg.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzrm
    public void zzarz() {
        this.f6644yX.zzarz();
        this.f6645yY.zzarz();
    }

    public boolean zzasa() {
        return this.f6645yY.isConnected();
    }

    @Override // com.google.android.gms.internal.zzrm
    public <A extends Api.zzb, T extends zzqo.zza<? extends Result, A>> T zzb(@NonNull T t) {
        if (!zzc((zzqo.zza<? extends Result, ? extends Api.zzb>) t)) {
            return (T) this.f6644yX.zzb((zzrf) t);
        }
        if (!zzasf()) {
            return (T) this.f6645yY.zzb((zzrf) t);
        }
        t.zzaa(new Status(4, null, zzasg()));
        return t;
    }
}
