package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class zzk implements Handler.Callback {

    /* renamed from: Ee */
    private final zza f6340Ee;
    private final Handler mHandler;

    /* renamed from: Ef */
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> f6341Ef = new ArrayList<>();

    /* renamed from: Eg */
    final ArrayList<GoogleApiClient.ConnectionCallbacks> f6342Eg = new ArrayList<>();

    /* renamed from: Eh */
    private final ArrayList<GoogleApiClient.OnConnectionFailedListener> f6343Eh = new ArrayList<>();

    /* renamed from: Ei */
    private volatile boolean f6344Ei = false;

    /* renamed from: Ej */
    private final AtomicInteger f6345Ej = new AtomicInteger(0);

    /* renamed from: Ek */
    private boolean f6346Ek = false;
    private final Object zzako = new Object();

    public interface zza {
        boolean isConnected();

        Bundle zzapn();
    }

    public zzk(Looper looper, zza zzaVar) {
        this.f6340Ee = zzaVar;
        this.mHandler = new Handler(looper, this);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            Log.wtf("GmsClientEvents", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
            return false;
        }
        GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
        synchronized (this.zzako) {
            if (this.f6344Ei && this.f6340Ee.isConnected() && this.f6341Ef.contains(connectionCallbacks)) {
                connectionCallbacks.onConnected(this.f6340Ee.zzapn());
            }
        }
        return true;
    }

    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        boolean contains;
        zzaa.zzy(connectionCallbacks);
        synchronized (this.zzako) {
            contains = this.f6341Ef.contains(connectionCallbacks);
        }
        return contains;
    }

    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean contains;
        zzaa.zzy(onConnectionFailedListener);
        synchronized (this.zzako) {
            contains = this.f6343Eh.contains(onConnectionFailedListener);
        }
        return contains;
    }

    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        zzaa.zzy(connectionCallbacks);
        synchronized (this.zzako) {
            if (this.f6341Ef.contains(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(valueOf).length() + 62).append("registerConnectionCallbacks(): listener ").append(valueOf).append(" is already registered").toString());
            } else {
                this.f6341Ef.add(connectionCallbacks);
            }
        }
        if (this.f6340Ee.isConnected()) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, connectionCallbacks));
        }
    }

    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzaa.zzy(onConnectionFailedListener);
        synchronized (this.zzako) {
            if (this.f6343Eh.contains(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(valueOf).length() + 67).append("registerConnectionFailedListener(): listener ").append(valueOf).append(" is already registered").toString());
            } else {
                this.f6343Eh.add(onConnectionFailedListener);
            }
        }
    }

    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        zzaa.zzy(connectionCallbacks);
        synchronized (this.zzako) {
            if (!this.f6341Ef.remove(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(valueOf).length() + 52).append("unregisterConnectionCallbacks(): listener ").append(valueOf).append(" not found").toString());
            } else if (this.f6346Ek) {
                this.f6342Eg.add(connectionCallbacks);
            }
        }
    }

    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzaa.zzy(onConnectionFailedListener);
        synchronized (this.zzako) {
            if (!this.f6343Eh.remove(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(valueOf).length() + 57).append("unregisterConnectionFailedListener(): listener ").append(valueOf).append(" not found").toString());
            }
        }
    }

    public void zzawc() {
        this.f6344Ei = false;
        this.f6345Ej.incrementAndGet();
    }

    public void zzawd() {
        this.f6344Ei = true;
    }

    public void zzgn(int i) {
        zzaa.zza(Looper.myLooper() == this.mHandler.getLooper(), "onUnintentionalDisconnection must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.zzako) {
            this.f6346Ek = true;
            ArrayList arrayList = new ArrayList(this.f6341Ef);
            int i2 = this.f6345Ej.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) it.next();
                if (!this.f6344Ei || this.f6345Ej.get() != i2) {
                    break;
                } else if (this.f6341Ef.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnectionSuspended(i);
                }
            }
            this.f6342Eg.clear();
            this.f6346Ek = false;
        }
    }

    public void zzn(ConnectionResult connectionResult) {
        zzaa.zza(Looper.myLooper() == this.mHandler.getLooper(), "onConnectionFailure must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.zzako) {
            ArrayList arrayList = new ArrayList(this.f6343Eh);
            int i = this.f6345Ej.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener) it.next();
                if (!this.f6344Ei || this.f6345Ej.get() != i) {
                    return;
                }
                if (this.f6343Eh.contains(onConnectionFailedListener)) {
                    onConnectionFailedListener.onConnectionFailed(connectionResult);
                }
            }
        }
    }

    public void zzp(Bundle bundle) {
        zzaa.zza(Looper.myLooper() == this.mHandler.getLooper(), "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.zzako) {
            zzaa.zzbs(!this.f6346Ek);
            this.mHandler.removeMessages(1);
            this.f6346Ek = true;
            zzaa.zzbs(this.f6342Eg.size() == 0);
            ArrayList arrayList = new ArrayList(this.f6341Ef);
            int i = this.f6345Ej.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) it.next();
                if (!this.f6344Ei || !this.f6340Ee.isConnected() || this.f6345Ej.get() != i) {
                    break;
                } else if (!this.f6342Eg.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(bundle);
                }
            }
            this.f6342Eg.clear();
            this.f6346Ek = false;
        }
    }
}
