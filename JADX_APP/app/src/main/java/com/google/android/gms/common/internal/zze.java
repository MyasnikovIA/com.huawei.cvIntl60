package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.support.annotation.BinderThread;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzs;
import com.google.android.gms.common.internal.zzt;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class zze<T extends IInterface> {

    /* renamed from: DB */
    public static final String[] f6288DB = {"service_esmobile", "service_googleme"};

    /* renamed from: DA */
    protected AtomicInteger f6289DA;

    /* renamed from: Dj */
    private int f6290Dj;

    /* renamed from: Dk */
    private long f6291Dk;

    /* renamed from: Dl */
    private long f6292Dl;

    /* renamed from: Dm */
    private int f6293Dm;

    /* renamed from: Dn */
    private long f6294Dn;

    /* renamed from: Do */
    private final zzl f6295Do;

    /* renamed from: Dp */
    private final Object f6296Dp;

    /* renamed from: Dq */
    private zzt f6297Dq;

    /* renamed from: Dr */
    protected zzf f6298Dr;

    /* renamed from: Ds */
    private T f6299Ds;

    /* renamed from: Dt */
    private final ArrayList<AbstractC1880zze<?>> f6300Dt;

    /* renamed from: Du */
    private zzh f6301Du;

    /* renamed from: Dv */
    private int f6302Dv;

    /* renamed from: Dw */
    private final zzb f6303Dw;

    /* renamed from: Dx */
    private final zzc f6304Dx;

    /* renamed from: Dy */
    private final int f6305Dy;

    /* renamed from: Dz */
    private final String f6306Dz;
    private final Context mContext;
    final Handler mHandler;

    /* renamed from: zm */
    private final com.google.android.gms.common.zzc f6307zm;
    private final Looper zzajy;
    private final Object zzako;

    private abstract class zza extends AbstractC1880zze<Boolean> {

        /* renamed from: DC */
        public final Bundle f6308DC;
        public final int statusCode;

        @BinderThread
        protected zza(int i, Bundle bundle) {
            super(true);
            this.statusCode = i;
            this.f6308DC = bundle;
        }

        protected abstract boolean zzavj();

        @Override // com.google.android.gms.common.internal.zze.AbstractC1880zze
        protected void zzavk() {
        }

        @Override // com.google.android.gms.common.internal.zze.AbstractC1880zze
        /* renamed from: zzc */
        public void zzv(Boolean bool) {
            if (bool == null) {
                zze.this.zzb(1, null);
                return;
            }
            switch (this.statusCode) {
                case 0:
                    if (zzavj()) {
                        return;
                    }
                    zze.this.zzb(1, null);
                    zzm(new ConnectionResult(8, null));
                    return;
                case 10:
                    zze.this.zzb(1, null);
                    throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
                default:
                    zze.this.zzb(1, null);
                    zzm(new ConnectionResult(this.statusCode, this.f6308DC != null ? (PendingIntent) this.f6308DC.getParcelable("pendingIntent") : null));
                    return;
            }
        }

        protected abstract void zzm(ConnectionResult connectionResult);
    }

    public interface zzb {
        void onConnected(@Nullable Bundle bundle);

        void onConnectionSuspended(int i);
    }

    public interface zzc {
        void onConnectionFailed(@NonNull ConnectionResult connectionResult);
    }

    final class zzd extends Handler {
        public zzd(Looper looper) {
            super(looper);
        }

        private void zza(Message message) {
            AbstractC1880zze abstractC1880zze = (AbstractC1880zze) message.obj;
            abstractC1880zze.zzavk();
            abstractC1880zze.unregister();
        }

        private boolean zzb(Message message) {
            return message.what == 2 || message.what == 1 || message.what == 5;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (zze.this.f6289DA.get() != message.arg1) {
                if (zzb(message)) {
                    zza(message);
                    return;
                }
                return;
            }
            if ((message.what == 1 || message.what == 5) && !zze.this.isConnecting()) {
                zza(message);
                return;
            }
            if (message.what == 3) {
                ConnectionResult connectionResult = new ConnectionResult(message.arg2, message.obj instanceof PendingIntent ? (PendingIntent) message.obj : null);
                zze.this.f6298Dr.zzg(connectionResult);
                zze.this.onConnectionFailed(connectionResult);
                return;
            }
            if (message.what == 4) {
                zze.this.zzb(4, null);
                if (zze.this.f6303Dw != null) {
                    zze.this.f6303Dw.onConnectionSuspended(message.arg2);
                }
                zze.this.onConnectionSuspended(message.arg2);
                zze.this.zza(4, 1, (int) null);
                return;
            }
            if (message.what == 2 && !zze.this.isConnected()) {
                zza(message);
            } else if (zzb(message)) {
                ((AbstractC1880zze) message.obj).zzavl();
            } else {
                Log.wtf("GmsClient", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
            }
        }
    }

    /* renamed from: com.google.android.gms.common.internal.zze$zze */
    protected abstract class AbstractC1880zze<TListener> {

        /* renamed from: DE */
        private boolean f6312DE = false;
        private TListener mListener;

        public AbstractC1880zze(TListener tlistener) {
            this.mListener = tlistener;
        }

        public void unregister() {
            zzavm();
            synchronized (zze.this.f6300Dt) {
                zze.this.f6300Dt.remove(this);
            }
        }

        protected abstract void zzavk();

        public void zzavl() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.mListener;
                if (this.f6312DE) {
                    String valueOf = String.valueOf(this);
                    Log.w("GmsClient", new StringBuilder(String.valueOf(valueOf).length() + 47).append("Callback proxy ").append(valueOf).append(" being reused. This is not safe.").toString());
                }
            }
            if (tlistener != null) {
                try {
                    zzv(tlistener);
                } catch (RuntimeException e) {
                    zzavk();
                    throw e;
                }
            } else {
                zzavk();
            }
            synchronized (this) {
                this.f6312DE = true;
            }
            unregister();
        }

        public void zzavm() {
            synchronized (this) {
                this.mListener = null;
            }
        }

        protected abstract void zzv(TListener tlistener);
    }

    public interface zzf {
        void zzg(@NonNull ConnectionResult connectionResult);
    }

    public static final class zzg extends zzs.zza {

        /* renamed from: DF */
        private zze f6313DF;

        /* renamed from: DG */
        private final int f6314DG;

        public zzg(@NonNull zze zzeVar, int i) {
            this.f6313DF = zzeVar;
            this.f6314DG = i;
        }

        private void zzavn() {
            this.f6313DF = null;
        }

        @Override // com.google.android.gms.common.internal.zzs
        @BinderThread
        public void zza(int i, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
            zzaa.zzb(this.f6313DF, "onPostInitComplete can be called only once per call to getRemoteService");
            this.f6313DF.zza(i, iBinder, bundle, this.f6314DG);
            zzavn();
        }

        @Override // com.google.android.gms.common.internal.zzs
        @BinderThread
        public void zzb(int i, @Nullable Bundle bundle) {
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }
    }

    public final class zzh implements ServiceConnection {

        /* renamed from: DG */
        private final int f6316DG;

        public zzh(int i) {
            this.f6316DG = i;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder == null) {
                zze.this.zzl(new ConnectionResult(8, null, "ServiceBroker IBinder is null"));
                return;
            }
            synchronized (zze.this.f6296Dp) {
                zze.this.f6297Dq = zzt.zza.zzdu(iBinder);
            }
            zze.this.zza(0, (Bundle) null, this.f6316DG);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (zze.this.f6296Dp) {
                zze.this.f6297Dq = null;
            }
            zze.this.mHandler.sendMessage(zze.this.mHandler.obtainMessage(4, this.f6316DG, 1));
        }
    }

    protected class zzi implements zzf {
        public zzi() {
        }

        @Override // com.google.android.gms.common.internal.zze.zzf
        public void zzg(@NonNull ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                zze.this.zza((zzp) null, zze.this.zzavi());
            } else if (zze.this.f6304Dx != null) {
                zze.this.f6304Dx.onConnectionFailed(connectionResult);
            }
        }
    }

    protected final class zzj extends zza {

        /* renamed from: DH */
        public final IBinder f6319DH;

        @BinderThread
        public zzj(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.f6319DH = iBinder;
        }

        @Override // com.google.android.gms.common.internal.zze.zza
        protected boolean zzavj() {
            try {
                String interfaceDescriptor = this.f6319DH.getInterfaceDescriptor();
                if (!zze.this.zzjy().equals(interfaceDescriptor)) {
                    String valueOf = String.valueOf(zze.this.zzjy());
                    Log.e("GmsClient", new StringBuilder(String.valueOf(valueOf).length() + 34 + String.valueOf(interfaceDescriptor).length()).append("service descriptor mismatch: ").append(valueOf).append(" vs. ").append(interfaceDescriptor).toString());
                    return false;
                }
                IInterface zzh = zze.this.zzh(this.f6319DH);
                if (zzh == null || !zze.this.zza(2, 3, (int) zzh)) {
                    return false;
                }
                Bundle zzapn = zze.this.zzapn();
                if (zze.this.f6303Dw != null) {
                    zze.this.f6303Dw.onConnected(zzapn);
                }
                return true;
            } catch (RemoteException e) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }

        @Override // com.google.android.gms.common.internal.zze.zza
        protected void zzm(ConnectionResult connectionResult) {
            if (zze.this.f6304Dx != null) {
                zze.this.f6304Dx.onConnectionFailed(connectionResult);
            }
            zze.this.onConnectionFailed(connectionResult);
        }
    }

    protected final class zzk extends zza {
        @BinderThread
        public zzk(int i, Bundle bundle) {
            super(i, bundle);
        }

        @Override // com.google.android.gms.common.internal.zze.zza
        protected boolean zzavj() {
            zze.this.f6298Dr.zzg(ConnectionResult.f6123wO);
            return true;
        }

        @Override // com.google.android.gms.common.internal.zze.zza
        protected void zzm(ConnectionResult connectionResult) {
            zze.this.f6298Dr.zzg(connectionResult);
            zze.this.onConnectionFailed(connectionResult);
        }
    }

    protected zze(Context context, Looper looper, int i, zzb zzbVar, zzc zzcVar, String str) {
        this(context, looper, zzl.zzcc(context), com.google.android.gms.common.zzc.zzaql(), i, (zzb) zzaa.zzy(zzbVar), (zzc) zzaa.zzy(zzcVar), str);
    }

    protected zze(Context context, Looper looper, zzl zzlVar, com.google.android.gms.common.zzc zzcVar, int i, zzb zzbVar, zzc zzcVar2, String str) {
        this.zzako = new Object();
        this.f6296Dp = new Object();
        this.f6300Dt = new ArrayList<>();
        this.f6302Dv = 1;
        this.f6289DA = new AtomicInteger(0);
        this.mContext = (Context) zzaa.zzb(context, "Context must not be null");
        this.zzajy = (Looper) zzaa.zzb(looper, "Looper must not be null");
        this.f6295Do = (zzl) zzaa.zzb(zzlVar, "Supervisor must not be null");
        this.f6307zm = (com.google.android.gms.common.zzc) zzaa.zzb(zzcVar, "API availability must not be null");
        this.mHandler = new zzd(looper);
        this.f6305Dy = i;
        this.f6303Dw = zzbVar;
        this.f6304Dx = zzcVar2;
        this.f6306Dz = str;
    }

    public boolean zza(int i, int i2, T t) {
        boolean z;
        synchronized (this.zzako) {
            if (this.f6302Dv != i) {
                z = false;
            } else {
                zzb(i2, t);
                z = true;
            }
        }
        return z;
    }

    private void zzavb() {
        if (this.f6301Du != null) {
            String valueOf = String.valueOf(zzjx());
            String valueOf2 = String.valueOf(zzauz());
            Log.e("GmsClient", new StringBuilder(String.valueOf(valueOf).length() + 70 + String.valueOf(valueOf2).length()).append("Calling connect() while still connected, missing disconnect() for ").append(valueOf).append(" on ").append(valueOf2).toString());
            this.f6295Do.zzb(zzjx(), zzauz(), this.f6301Du, zzava());
            this.f6289DA.incrementAndGet();
        }
        this.f6301Du = new zzh(this.f6289DA.get());
        if (this.f6295Do.zza(zzjx(), zzauz(), this.f6301Du, zzava())) {
            return;
        }
        String valueOf3 = String.valueOf(zzjx());
        String valueOf4 = String.valueOf(zzauz());
        Log.e("GmsClient", new StringBuilder(String.valueOf(valueOf3).length() + 34 + String.valueOf(valueOf4).length()).append("unable to connect to service: ").append(valueOf3).append(" on ").append(valueOf4).toString());
        zza(16, (Bundle) null, this.f6289DA.get());
    }

    private void zzavc() {
        if (this.f6301Du != null) {
            this.f6295Do.zzb(zzjx(), zzauz(), this.f6301Du, zzava());
            this.f6301Du = null;
        }
    }

    public void zzb(int i, T t) {
        zzaa.zzbt((i == 3) == (t != null));
        synchronized (this.zzako) {
            this.f6302Dv = i;
            this.f6299Ds = t;
            zzc(i, t);
            switch (i) {
                case 1:
                    zzavc();
                    break;
                case 2:
                    zzavb();
                    break;
                case 3:
                    zza((zze<T>) t);
                    break;
            }
        }
    }

    public void zzl(ConnectionResult connectionResult) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.f6289DA.get(), connectionResult.getErrorCode(), connectionResult.getResolution()));
    }

    public void disconnect() {
        this.f6289DA.incrementAndGet();
        synchronized (this.f6300Dt) {
            int size = this.f6300Dt.size();
            for (int i = 0; i < size; i++) {
                this.f6300Dt.get(i).zzavm();
            }
            this.f6300Dt.clear();
        }
        synchronized (this.f6296Dp) {
            this.f6297Dq = null;
        }
        zzb(1, null);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        T t;
        synchronized (this.zzako) {
            i = this.f6302Dv;
            t = this.f6299Ds;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        switch (i) {
            case 1:
                printWriter.print("DISCONNECTED");
                break;
            case 2:
                printWriter.print("CONNECTING");
                break;
            case 3:
                printWriter.print("CONNECTED");
                break;
            case 4:
                printWriter.print("DISCONNECTING");
                break;
            default:
                printWriter.print("UNKNOWN");
                break;
        }
        printWriter.append(" mService=");
        if (t == null) {
            printWriter.println("null");
        } else {
            printWriter.append((CharSequence) zzjy()).append("@").println(Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.f6292Dl > 0) {
            PrintWriter append = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j = this.f6292Dl;
            String valueOf = String.valueOf(simpleDateFormat.format(new Date(this.f6292Dl)));
            append.println(new StringBuilder(String.valueOf(valueOf).length() + 21).append(j).append(" ").append(valueOf).toString());
        }
        if (this.f6291Dk > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            switch (this.f6290Dj) {
                case 1:
                    printWriter.append("CAUSE_SERVICE_DISCONNECTED");
                    break;
                case 2:
                    printWriter.append("CAUSE_NETWORK_LOST");
                    break;
                default:
                    printWriter.append((CharSequence) String.valueOf(this.f6290Dj));
                    break;
            }
            PrintWriter append2 = printWriter.append(" lastSuspendedTime=");
            long j2 = this.f6291Dk;
            String valueOf2 = String.valueOf(simpleDateFormat.format(new Date(this.f6291Dk)));
            append2.println(new StringBuilder(String.valueOf(valueOf2).length() + 21).append(j2).append(" ").append(valueOf2).toString());
        }
        if (this.f6294Dn > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) CommonStatusCodes.getStatusCodeString(this.f6293Dm));
            PrintWriter append3 = printWriter.append(" lastFailedTime=");
            long j3 = this.f6294Dn;
            String valueOf3 = String.valueOf(simpleDateFormat.format(new Date(this.f6294Dn)));
            append3.println(new StringBuilder(String.valueOf(valueOf3).length() + 21).append(j3).append(" ").append(valueOf3).toString());
        }
    }

    public Account getAccount() {
        return null;
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final Looper getLooper() {
        return this.zzajy;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.zzako) {
            z = this.f6302Dv == 3;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.zzako) {
            z = this.f6302Dv == 2;
        }
        return z;
    }

    @CallSuper
    protected void onConnectionFailed(ConnectionResult connectionResult) {
        this.f6293Dm = connectionResult.getErrorCode();
        this.f6294Dn = System.currentTimeMillis();
    }

    @CallSuper
    protected void onConnectionSuspended(int i) {
        this.f6290Dj = i;
        this.f6291Dk = System.currentTimeMillis();
    }

    protected void zza(int i, @Nullable Bundle bundle, int i2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(5, i2, -1, new zzk(i, bundle)));
    }

    @BinderThread
    protected void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, i2, -1, new zzj(i, iBinder, bundle)));
    }

    @CallSuper
    protected void zza(@NonNull T t) {
        this.f6292Dl = System.currentTimeMillis();
    }

    public void zza(@NonNull zzf zzfVar) {
        this.f6298Dr = (zzf) zzaa.zzb(zzfVar, "Connection progress callbacks cannot be null.");
        zzb(2, null);
    }

    public void zza(zzf zzfVar, ConnectionResult connectionResult) {
        this.f6298Dr = (zzf) zzaa.zzb(zzfVar, "Connection progress callbacks cannot be null.");
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.f6289DA.get(), connectionResult.getErrorCode(), connectionResult.getResolution()));
    }

    @WorkerThread
    public void zza(zzp zzpVar, Set<Scope> set) {
        GetServiceRequest zzo = new GetServiceRequest(this.f6305Dy).zzhv(this.mContext.getPackageName()).zzo(zzahv());
        if (set != null) {
            zzo.zzf(set);
        }
        if (zzain()) {
            zzo.zze(zzave()).zzb(zzpVar);
        } else if (zzavh()) {
            zzo.zze(getAccount());
        }
        try {
            synchronized (this.f6296Dp) {
                if (this.f6297Dq != null) {
                    this.f6297Dq.zza(new zzg(this, this.f6289DA.get()), zzo);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "service died");
            zzgk(1);
        } catch (RemoteException e2) {
            Log.w("GmsClient", "Remote exception occurred", e2);
        } catch (SecurityException e3) {
            throw e3;
        } catch (RuntimeException e4) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e4);
            zzl(new ConnectionResult(8, null, "IGmsServiceBroker.getService failed."));
        }
    }

    protected Bundle zzahv() {
        return new Bundle();
    }

    public boolean zzain() {
        return false;
    }

    public boolean zzajc() {
        return false;
    }

    public Intent zzajd() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    public Bundle zzapn() {
        return null;
    }

    public boolean zzaqx() {
        return true;
    }

    @Nullable
    public IBinder zzaqy() {
        IBinder asBinder;
        synchronized (this.f6296Dp) {
            asBinder = this.f6297Dq == null ? null : this.f6297Dq.asBinder();
        }
        return asBinder;
    }

    protected String zzauz() {
        return "com.google.android.gms";
    }

    @Nullable
    protected final String zzava() {
        return this.f6306Dz == null ? this.mContext.getClass().getName() : this.f6306Dz;
    }

    public void zzavd() {
        int isGooglePlayServicesAvailable = this.f6307zm.isGooglePlayServicesAvailable(this.mContext);
        if (isGooglePlayServicesAvailable == 0) {
            zza(new zzi());
            return;
        }
        zzb(1, null);
        this.f6298Dr = new zzi();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.f6289DA.get(), isGooglePlayServicesAvailable));
    }

    public final Account zzave() {
        return getAccount() != null ? getAccount() : new Account("<<default account>>", "com.google");
    }

    protected final void zzavf() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public final T zzavg() {
        T t;
        synchronized (this.zzako) {
            if (this.f6302Dv == 4) {
                throw new DeadObjectException();
            }
            zzavf();
            zzaa.zza(this.f6299Ds != null, "Client is connected but service is null");
            t = this.f6299Ds;
        }
        return t;
    }

    public boolean zzavh() {
        return false;
    }

    protected Set<Scope> zzavi() {
        return Collections.EMPTY_SET;
    }

    void zzc(int i, T t) {
    }

    public void zzgk(int i) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, this.f6289DA.get(), i));
    }

    @Nullable
    protected abstract T zzh(IBinder iBinder);

    @NonNull
    protected abstract String zzjx();

    @NonNull
    protected abstract String zzjy();
}
