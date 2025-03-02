package com.google.android.gms.common.internal;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.google.android.exoplayer.hls.HlsChunkSource;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
final class zzm extends zzl implements Handler.Callback {

    /* renamed from: En */
    private final HashMap<zza, zzb> f6349En = new HashMap<>();

    /* renamed from: Eo */
    private final com.google.android.gms.common.stats.zza f6350Eo = com.google.android.gms.common.stats.zza.zzaxr();

    /* renamed from: Ep */
    private final long f6351Ep = HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS;
    private final Handler mHandler;
    private final Context zzatc;

    private static final class zza {

        /* renamed from: Eq */
        private final String f6352Eq;

        /* renamed from: Er */
        private final ComponentName f6353Er;

        /* renamed from: cd */
        private final String f6354cd;

        public zza(ComponentName componentName) {
            this.f6354cd = null;
            this.f6352Eq = null;
            this.f6353Er = (ComponentName) zzaa.zzy(componentName);
        }

        public zza(String str, String str2) {
            this.f6354cd = zzaa.zzib(str);
            this.f6352Eq = zzaa.zzib(str2);
            this.f6353Er = null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return zzz.equal(this.f6354cd, zzaVar.f6354cd) && zzz.equal(this.f6353Er, zzaVar.f6353Er);
        }

        public int hashCode() {
            return zzz.hashCode(this.f6354cd, this.f6353Er);
        }

        public String toString() {
            return this.f6354cd == null ? this.f6353Er.flattenToString() : this.f6354cd;
        }

        public Intent zzawe() {
            return this.f6354cd != null ? new Intent(this.f6354cd).setPackage(this.f6352Eq) : new Intent().setComponent(this.f6353Er);
        }
    }

    private final class zzb {

        /* renamed from: DI */
        private IBinder f6355DI;

        /* renamed from: Er */
        private ComponentName f6356Er;

        /* renamed from: Eu */
        private boolean f6359Eu;

        /* renamed from: Ev */
        private final zza f6360Ev;

        /* renamed from: Es */
        private final zza f6357Es = new zza();

        /* renamed from: Et */
        private final Set<ServiceConnection> f6358Et = new HashSet();
        private int mState = 2;

        public class zza implements ServiceConnection {
            public zza() {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                synchronized (zzm.this.f6349En) {
                    zzb.this.f6355DI = iBinder;
                    zzb.this.f6356Er = componentName;
                    Iterator it = zzb.this.f6358Et.iterator();
                    while (it.hasNext()) {
                        ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                    }
                    zzb.this.mState = 1;
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                synchronized (zzm.this.f6349En) {
                    zzb.this.f6355DI = null;
                    zzb.this.f6356Er = componentName;
                    Iterator it = zzb.this.f6358Et.iterator();
                    while (it.hasNext()) {
                        ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                    }
                    zzb.this.mState = 2;
                }
            }
        }

        public zzb(zza zzaVar) {
            this.f6360Ev = zzaVar;
        }

        public IBinder getBinder() {
            return this.f6355DI;
        }

        public ComponentName getComponentName() {
            return this.f6356Er;
        }

        public int getState() {
            return this.mState;
        }

        public boolean isBound() {
            return this.f6359Eu;
        }

        public void zza(ServiceConnection serviceConnection, String str) {
            zzm.this.f6350Eo.zza(zzm.this.zzatc, serviceConnection, str, this.f6360Ev.zzawe());
            this.f6358Et.add(serviceConnection);
        }

        public boolean zza(ServiceConnection serviceConnection) {
            return this.f6358Et.contains(serviceConnection);
        }

        public boolean zzawf() {
            return this.f6358Et.isEmpty();
        }

        public void zzb(ServiceConnection serviceConnection, String str) {
            zzm.this.f6350Eo.zzb(zzm.this.zzatc, serviceConnection);
            this.f6358Et.remove(serviceConnection);
        }

        @TargetApi(14)
        public void zzhw(String str) {
            this.mState = 3;
            this.f6359Eu = zzm.this.f6350Eo.zza(zzm.this.zzatc, str, this.f6360Ev.zzawe(), this.f6357Es, 129);
            if (this.f6359Eu) {
                return;
            }
            this.mState = 2;
            try {
                zzm.this.f6350Eo.zza(zzm.this.zzatc, this.f6357Es);
            } catch (IllegalArgumentException e) {
            }
        }

        public void zzhx(String str) {
            zzm.this.f6350Eo.zza(zzm.this.zzatc, this.f6357Es);
            this.f6359Eu = false;
            this.mState = 2;
        }
    }

    zzm(Context context) {
        this.zzatc = context.getApplicationContext();
        this.mHandler = new Handler(context.getMainLooper(), this);
    }

    private boolean zza(zza zzaVar, ServiceConnection serviceConnection, String str) {
        boolean isBound;
        zzaa.zzb(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f6349En) {
            zzb zzbVar = this.f6349En.get(zzaVar);
            if (zzbVar != null) {
                this.mHandler.removeMessages(0, zzaVar);
                if (!zzbVar.zza(serviceConnection)) {
                    zzbVar.zza(serviceConnection, str);
                    switch (zzbVar.getState()) {
                        case 1:
                            serviceConnection.onServiceConnected(zzbVar.getComponentName(), zzbVar.getBinder());
                            break;
                        case 2:
                            zzbVar.zzhw(str);
                            break;
                    }
                } else {
                    String valueOf = String.valueOf(zzaVar);
                    throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 81).append("Trying to bind a GmsServiceConnection that was already connected before.  config=").append(valueOf).toString());
                }
            } else {
                zzbVar = new zzb(zzaVar);
                zzbVar.zza(serviceConnection, str);
                zzbVar.zzhw(str);
                this.f6349En.put(zzaVar, zzbVar);
            }
            isBound = zzbVar.isBound();
        }
        return isBound;
    }

    private void zzb(zza zzaVar, ServiceConnection serviceConnection, String str) {
        zzaa.zzb(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f6349En) {
            zzb zzbVar = this.f6349En.get(zzaVar);
            if (zzbVar == null) {
                String valueOf = String.valueOf(zzaVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 50).append("Nonexistent connection status for service config: ").append(valueOf).toString());
            }
            if (!zzbVar.zza(serviceConnection)) {
                String valueOf2 = String.valueOf(zzaVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf2).length() + 76).append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=").append(valueOf2).toString());
            }
            zzbVar.zzb(serviceConnection, str);
            if (zzbVar.zzawf()) {
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, zzaVar), this.f6351Ep);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                zza zzaVar = (zza) message.obj;
                synchronized (this.f6349En) {
                    zzb zzbVar = this.f6349En.get(zzaVar);
                    if (zzbVar != null && zzbVar.zzawf()) {
                        if (zzbVar.isBound()) {
                            zzbVar.zzhx("GmsClientSupervisor");
                        }
                        this.f6349En.remove(zzaVar);
                    }
                }
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.android.gms.common.internal.zzl
    public boolean zza(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return zza(new zza(componentName), serviceConnection, str);
    }

    @Override // com.google.android.gms.common.internal.zzl
    public boolean zza(String str, String str2, ServiceConnection serviceConnection, String str3) {
        return zza(new zza(str, str2), serviceConnection, str3);
    }

    @Override // com.google.android.gms.common.internal.zzl
    public void zzb(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        zzb(new zza(componentName), serviceConnection, str);
    }

    @Override // com.google.android.gms.common.internal.zzl
    public void zzb(String str, String str2, ServiceConnection serviceConnection, String str3) {
        zzb(new zza(str, str2), serviceConnection, str3);
    }
}
