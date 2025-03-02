package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class zzqm extends zzqp {

    /* renamed from: yq */
    private final SparseArray<zza> f6606yq;

    private class zza implements GoogleApiClient.OnConnectionFailedListener {

        /* renamed from: yr */
        public final int f6607yr;

        /* renamed from: ys */
        public final GoogleApiClient f6608ys;

        /* renamed from: yt */
        public final GoogleApiClient.OnConnectionFailedListener f6609yt;

        public zza(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.f6607yr = i;
            this.f6608ys = googleApiClient;
            this.f6609yt = onConnectionFailedListener;
            googleApiClient.registerConnectionFailedListener(this);
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.append((CharSequence) str).append("GoogleApiClient #").print(this.f6607yr);
            printWriter.println(":");
            this.f6608ys.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            String valueOf = String.valueOf(connectionResult);
            Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 27).append("beginFailureResolution for ").append(valueOf).toString());
            zzqm.this.zzb(connectionResult, this.f6607yr);
        }

        public void zzarn() {
            this.f6608ys.unregisterConnectionFailedListener(this);
            this.f6608ys.disconnect();
        }
    }

    private zzqm(zzrp zzrpVar) {
        super(zzrpVar);
        this.f6606yq = new SparseArray<>();
        this.f6812Bf.zza("AutoManageHelper", this);
    }

    public static zzqm zza(zzrn zzrnVar) {
        zzrp zzc = zzc(zzrnVar);
        zzqm zzqmVar = (zzqm) zzc.zza("AutoManageHelper", zzqm.class);
        return zzqmVar != null ? zzqmVar : new zzqm(zzc);
    }

    @Override // com.google.android.gms.internal.zzro
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f6606yq.size()) {
                return;
            }
            this.f6606yq.valueAt(i2).dump(str, fileDescriptor, printWriter, strArr);
            i = i2 + 1;
        }
    }

    @Override // com.google.android.gms.internal.zzqp, com.google.android.gms.internal.zzro
    public void onStart() {
        super.onStart();
        boolean z = this.mStarted;
        String valueOf = String.valueOf(this.f6606yq);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 14).append("onStart ").append(z).append(" ").append(valueOf).toString());
        if (this.f6621yz) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f6606yq.size()) {
                return;
            }
            this.f6606yq.valueAt(i2).f6608ys.connect();
            i = i2 + 1;
        }
    }

    @Override // com.google.android.gms.internal.zzqp, com.google.android.gms.internal.zzro
    public void onStop() {
        super.onStop();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f6606yq.size()) {
                return;
            }
            this.f6606yq.valueAt(i2).f6608ys.disconnect();
            i = i2 + 1;
        }
    }

    public void zza(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        com.google.android.gms.common.internal.zzaa.zzb(googleApiClient, "GoogleApiClient instance cannot be null");
        com.google.android.gms.common.internal.zzaa.zza(this.f6606yq.indexOfKey(i) < 0, new StringBuilder(54).append("Already managing a GoogleApiClient with id ").append(i).toString());
        Log.d("AutoManageHelper", new StringBuilder(54).append("starting AutoManage for client ").append(i).append(" ").append(this.mStarted).append(" ").append(this.f6621yz).toString());
        this.f6606yq.put(i, new zza(i, googleApiClient, onConnectionFailedListener));
        if (!this.mStarted || this.f6621yz) {
            return;
        }
        String valueOf = String.valueOf(googleApiClient);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 11).append("connecting ").append(valueOf).toString());
        googleApiClient.connect();
    }

    @Override // com.google.android.gms.internal.zzqp
    protected void zza(ConnectionResult connectionResult, int i) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        zza zzaVar = this.f6606yq.get(i);
        if (zzaVar != null) {
            zzfs(i);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = zzaVar.f6609yt;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzqp
    protected void zzarm() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f6606yq.size()) {
                return;
            }
            this.f6606yq.valueAt(i2).f6608ys.connect();
            i = i2 + 1;
        }
    }

    public void zzfs(int i) {
        zza zzaVar = this.f6606yq.get(i);
        this.f6606yq.remove(i);
        if (zzaVar != null) {
            zzaVar.zzarn();
        }
    }
}
