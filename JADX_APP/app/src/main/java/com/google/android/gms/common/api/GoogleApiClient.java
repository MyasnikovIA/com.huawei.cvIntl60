package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzag;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzqm;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzqr;
import com.google.android.gms.internal.zzrd;
import com.google.android.gms.internal.zzrn;
import com.google.android.gms.internal.zzrr;
import com.google.android.gms.internal.zzsa;
import com.google.android.gms.internal.zzsf;
import com.google.android.gms.internal.zzxo;
import com.google.android.gms.internal.zzxp;
import com.google.android.gms.internal.zzxq;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public abstract class GoogleApiClient {
    public static final int SIGN_IN_MODE_OPTIONAL = 2;
    public static final int SIGN_IN_MODE_REQUIRED = 1;

    /* renamed from: xE */
    private static final Set<GoogleApiClient> f6149xE = Collections.newSetFromMap(new WeakHashMap());

    public static final class Builder {

        /* renamed from: gj */
        private Account f6150gj;

        /* renamed from: hu */
        private String f6151hu;
        private final Context mContext;

        /* renamed from: xF */
        private final Set<Scope> f6152xF;

        /* renamed from: xG */
        private final Set<Scope> f6153xG;

        /* renamed from: xH */
        private int f6154xH;

        /* renamed from: xI */
        private View f6155xI;

        /* renamed from: xJ */
        private String f6156xJ;

        /* renamed from: xK */
        private final Map<Api<?>, zzf.zza> f6157xK;

        /* renamed from: xL */
        private final Map<Api<?>, Api.ApiOptions> f6158xL;

        /* renamed from: xM */
        private zzrn f6159xM;

        /* renamed from: xN */
        private int f6160xN;

        /* renamed from: xO */
        private OnConnectionFailedListener f6161xO;

        /* renamed from: xP */
        private GoogleApiAvailability f6162xP;

        /* renamed from: xQ */
        private Api.zza<? extends zzxp, zzxq> f6163xQ;

        /* renamed from: xR */
        private final ArrayList<ConnectionCallbacks> f6164xR;

        /* renamed from: xS */
        private final ArrayList<OnConnectionFailedListener> f6165xS;

        /* renamed from: xT */
        private boolean f6166xT;
        private Looper zzajy;

        public Builder(@NonNull Context context) {
            this.f6152xF = new HashSet();
            this.f6153xG = new HashSet();
            this.f6157xK = new ArrayMap();
            this.f6158xL = new ArrayMap();
            this.f6160xN = -1;
            this.f6162xP = GoogleApiAvailability.getInstance();
            this.f6163xQ = zzxo.f6920hh;
            this.f6164xR = new ArrayList<>();
            this.f6165xS = new ArrayList<>();
            this.f6166xT = false;
            this.mContext = context;
            this.zzajy = context.getMainLooper();
            this.f6151hu = context.getPackageName();
            this.f6156xJ = context.getClass().getName();
        }

        public Builder(@NonNull Context context, @NonNull ConnectionCallbacks connectionCallbacks, @NonNull OnConnectionFailedListener onConnectionFailedListener) {
            this(context);
            zzaa.zzb(connectionCallbacks, "Must provide a connected listener");
            this.f6164xR.add(connectionCallbacks);
            zzaa.zzb(onConnectionFailedListener, "Must provide a connection failed listener");
            this.f6165xS.add(onConnectionFailedListener);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static <C extends Api.zze, O> C zza(Api.zza<C, O> zzaVar, Object obj, Context context, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return zzaVar.zza(context, looper, zzfVar, obj, connectionCallbacks, onConnectionFailedListener);
        }

        private Builder zza(@NonNull zzrn zzrnVar, int i, @Nullable OnConnectionFailedListener onConnectionFailedListener) {
            zzaa.zzb(i >= 0, "clientId must be non-negative");
            this.f6160xN = i;
            this.f6161xO = onConnectionFailedListener;
            this.f6159xM = zzrnVar;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static <C extends Api.zzg, O> zzag zza(Api.zzh<C, O> zzhVar, Object obj, Context context, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzag(context, looper, zzhVar.zzaqz(), connectionCallbacks, onConnectionFailedListener, zzfVar, zzhVar.zzr(obj));
        }

        private <O extends Api.ApiOptions> void zza(Api<O> api, O o, int i, Scope... scopeArr) {
            boolean z = true;
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalArgumentException(new StringBuilder(90).append("Invalid resolution mode: '").append(i).append("', use a constant from GoogleApiClient.ResolutionMode").toString());
                }
                z = false;
            }
            HashSet hashSet = new HashSet(api.zzaqs().zzp(o));
            for (Scope scope : scopeArr) {
                hashSet.add(scope);
            }
            this.f6157xK.put(api, new zzf.zza(hashSet, z));
        }

        private GoogleApiClient zzarg() {
            Api.zze zza;
            Api<?> api;
            com.google.android.gms.common.internal.zzf zzarf = zzarf();
            Api<?> api2 = null;
            Map<Api<?>, zzf.zza> zzavr = zzarf.zzavr();
            ArrayMap arrayMap = new ArrayMap();
            ArrayMap arrayMap2 = new ArrayMap();
            ArrayList arrayList = new ArrayList();
            Api<?> api3 = null;
            for (Api<?> api4 : this.f6158xL.keySet()) {
                Api.ApiOptions apiOptions = this.f6158xL.get(api4);
                int i = zzavr.get(api4) != null ? zzavr.get(api4).f6331DN ? 1 : 2 : 0;
                arrayMap.put(api4, Integer.valueOf(i));
                zzqr zzqrVar = new zzqr(api4, i);
                arrayList.add(zzqrVar);
                if (api4.zzaqw()) {
                    Api.zzh<?, ?> zzaqu = api4.zzaqu();
                    Api<?> api5 = zzaqu.getPriority() == 1 ? api4 : api3;
                    zza = zza(zzaqu, apiOptions, this.mContext, this.zzajy, zzarf, zzqrVar, zzqrVar);
                    api = api5;
                } else {
                    Api.zza<?, ?> zzaqt = api4.zzaqt();
                    Api<?> api6 = zzaqt.getPriority() == 1 ? api4 : api3;
                    zza = zza((Api.zza<Api.zze, O>) zzaqt, (Object) apiOptions, this.mContext, this.zzajy, zzarf, (ConnectionCallbacks) zzqrVar, (OnConnectionFailedListener) zzqrVar);
                    api = api6;
                }
                arrayMap2.put(api4.zzaqv(), zza);
                if (!zza.zzajc()) {
                    api4 = api2;
                } else if (api2 != null) {
                    String valueOf = String.valueOf(api4.getName());
                    String valueOf2 = String.valueOf(api2.getName());
                    throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 21 + String.valueOf(valueOf2).length()).append(valueOf).append(" cannot be used with ").append(valueOf2).toString());
                }
                api3 = api;
                api2 = api4;
            }
            if (api2 != null) {
                if (api3 != null) {
                    String valueOf3 = String.valueOf(api2.getName());
                    String valueOf4 = String.valueOf(api3.getName());
                    throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf3).length() + 21 + String.valueOf(valueOf4).length()).append(valueOf3).append(" cannot be used with ").append(valueOf4).toString());
                }
                zzaa.zza(this.f6150gj == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", api2.getName());
                zzaa.zza(this.f6152xF.equals(this.f6153xG), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", api2.getName());
            }
            return new zzrd(this.mContext, new ReentrantLock(), this.zzajy, zzarf, this.f6162xP, this.f6163xQ, arrayMap, this.f6164xR, this.f6165xS, arrayMap2, this.f6160xN, zzrd.zza(arrayMap2.values(), true), arrayList, false);
        }

        private void zzf(GoogleApiClient googleApiClient) {
            zzqm.zza(this.f6159xM).zza(this.f6160xN, googleApiClient, this.f6161xO);
        }

        public Builder addApi(@NonNull Api<? extends Api.ApiOptions.NotRequiredOptions> api) {
            zzaa.zzb(api, "Api must not be null");
            this.f6158xL.put(api, null);
            List<Scope> zzp = api.zzaqs().zzp(null);
            this.f6153xG.addAll(zzp);
            this.f6152xF.addAll(zzp);
            return this;
        }

        public <O extends Api.ApiOptions.HasOptions> Builder addApi(@NonNull Api<O> api, @NonNull O o) {
            zzaa.zzb(api, "Api must not be null");
            zzaa.zzb(o, "Null options are not permitted for this Api");
            this.f6158xL.put(api, o);
            List<Scope> zzp = api.zzaqs().zzp(o);
            this.f6153xG.addAll(zzp);
            this.f6152xF.addAll(zzp);
            return this;
        }

        public <O extends Api.ApiOptions.HasOptions> Builder addApiIfAvailable(@NonNull Api<O> api, @NonNull O o, Scope... scopeArr) {
            zzaa.zzb(api, "Api must not be null");
            zzaa.zzb(o, "Null options are not permitted for this Api");
            this.f6158xL.put(api, o);
            zza(api, o, 1, scopeArr);
            return this;
        }

        public Builder addApiIfAvailable(@NonNull Api<? extends Api.ApiOptions.NotRequiredOptions> api, Scope... scopeArr) {
            zzaa.zzb(api, "Api must not be null");
            this.f6158xL.put(api, null);
            zza(api, null, 1, scopeArr);
            return this;
        }

        public Builder addConnectionCallbacks(@NonNull ConnectionCallbacks connectionCallbacks) {
            zzaa.zzb(connectionCallbacks, "Listener must not be null");
            this.f6164xR.add(connectionCallbacks);
            return this;
        }

        public Builder addOnConnectionFailedListener(@NonNull OnConnectionFailedListener onConnectionFailedListener) {
            zzaa.zzb(onConnectionFailedListener, "Listener must not be null");
            this.f6165xS.add(onConnectionFailedListener);
            return this;
        }

        public Builder addScope(@NonNull Scope scope) {
            zzaa.zzb(scope, "Scope must not be null");
            this.f6152xF.add(scope);
            return this;
        }

        public GoogleApiClient build() {
            zzaa.zzb(!this.f6158xL.isEmpty(), "must call addApi() to add at least one API");
            GoogleApiClient zzarg = zzarg();
            synchronized (GoogleApiClient.f6149xE) {
                GoogleApiClient.f6149xE.add(zzarg);
            }
            if (this.f6160xN >= 0) {
                zzf(zzarg);
            }
            return zzarg;
        }

        public Builder enableAutoManage(@NonNull FragmentActivity fragmentActivity, int i, @Nullable OnConnectionFailedListener onConnectionFailedListener) {
            return zza(new zzrn(fragmentActivity), i, onConnectionFailedListener);
        }

        public Builder enableAutoManage(@NonNull FragmentActivity fragmentActivity, @Nullable OnConnectionFailedListener onConnectionFailedListener) {
            return enableAutoManage(fragmentActivity, 0, onConnectionFailedListener);
        }

        public Builder setAccountName(String str) {
            this.f6150gj = str == null ? null : new Account(str, "com.google");
            return this;
        }

        public Builder setGravityForPopups(int i) {
            this.f6154xH = i;
            return this;
        }

        public Builder setHandler(@NonNull Handler handler) {
            zzaa.zzb(handler, "Handler must not be null");
            this.zzajy = handler.getLooper();
            return this;
        }

        public Builder setViewForPopups(@NonNull View view) {
            zzaa.zzb(view, "View must not be null");
            this.f6155xI = view;
            return this;
        }

        public Builder useDefaultAccount() {
            return setAccountName("<<default account>>");
        }

        public com.google.android.gms.common.internal.zzf zzarf() {
            zzxq zzxqVar = zzxq.aDl;
            if (this.f6158xL.containsKey(zzxo.API)) {
                zzxqVar = (zzxq) this.f6158xL.get(zzxo.API);
            }
            return new com.google.android.gms.common.internal.zzf(this.f6150gj, this.f6152xF, this.f6157xK, this.f6154xH, this.f6155xI, this.f6151hu, this.f6156xJ, zzxqVar);
        }
    }

    public interface ConnectionCallbacks {
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        void onConnected(@Nullable Bundle bundle);

        void onConnectionSuspended(int i);
    }

    public interface OnConnectionFailedListener {
        void onConnectionFailed(@NonNull ConnectionResult connectionResult);
    }

    public static void dumpAll(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        synchronized (f6149xE) {
            String concat = String.valueOf(str).concat("  ");
            int i = 0;
            for (GoogleApiClient googleApiClient : f6149xE) {
                printWriter.append((CharSequence) str).append("GoogleApiClient#").println(i);
                googleApiClient.dump(concat, fileDescriptor, printWriter, strArr);
                i++;
            }
        }
    }

    public static Set<GoogleApiClient> zzarc() {
        Set<GoogleApiClient> set;
        synchronized (f6149xE) {
            set = f6149xE;
        }
        return set;
    }

    public abstract ConnectionResult blockingConnect();

    public abstract ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit);

    public abstract PendingResult<Status> clearDefaultAccountAndReconnect();

    public abstract void connect();

    public void connect(int i) {
        throw new UnsupportedOperationException();
    }

    public abstract void disconnect();

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    @NonNull
    public abstract ConnectionResult getConnectionResult(@NonNull Api<?> api);

    public Context getContext() {
        throw new UnsupportedOperationException();
    }

    public Looper getLooper() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean hasConnectedApi(@NonNull Api<?> api);

    public abstract boolean isConnected();

    public abstract boolean isConnecting();

    public abstract boolean isConnectionCallbacksRegistered(@NonNull ConnectionCallbacks connectionCallbacks);

    public abstract boolean isConnectionFailedListenerRegistered(@NonNull OnConnectionFailedListener onConnectionFailedListener);

    public abstract void reconnect();

    public abstract void registerConnectionCallbacks(@NonNull ConnectionCallbacks connectionCallbacks);

    public abstract void registerConnectionFailedListener(@NonNull OnConnectionFailedListener onConnectionFailedListener);

    public abstract void stopAutoManage(@NonNull FragmentActivity fragmentActivity);

    public abstract void unregisterConnectionCallbacks(@NonNull ConnectionCallbacks connectionCallbacks);

    public abstract void unregisterConnectionFailedListener(@NonNull OnConnectionFailedListener onConnectionFailedListener);

    @NonNull
    public <C extends Api.zze> C zza(@NonNull Api.zzc<C> zzcVar) {
        throw new UnsupportedOperationException();
    }

    public <A extends Api.zzb, R extends Result, T extends zzqo.zza<R, A>> T zza(@NonNull T t) {
        throw new UnsupportedOperationException();
    }

    public void zza(zzsf zzsfVar) {
        throw new UnsupportedOperationException();
    }

    public boolean zza(@NonNull Api<?> api) {
        throw new UnsupportedOperationException();
    }

    public boolean zza(zzsa zzsaVar) {
        throw new UnsupportedOperationException();
    }

    public void zzard() {
        throw new UnsupportedOperationException();
    }

    public <A extends Api.zzb, T extends zzqo.zza<? extends Result, A>> T zzb(@NonNull T t) {
        throw new UnsupportedOperationException();
    }

    public void zzb(zzsf zzsfVar) {
        throw new UnsupportedOperationException();
    }

    public <L> zzrr<L> zzs(@NonNull L l) {
        throw new UnsupportedOperationException();
    }
}
