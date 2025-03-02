package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.internal.zzaa;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class zza implements ServiceConnection {

    /* renamed from: wM */
    boolean f6468wM = false;

    /* renamed from: wN */
    private final BlockingQueue<IBinder> f6469wN = new LinkedBlockingQueue();

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f6469wN.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }

    public IBinder zza(long j, TimeUnit timeUnit) {
        zzaa.zzht("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.f6468wM) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.f6468wM = true;
        IBinder poll = this.f6469wN.poll(j, timeUnit);
        if (poll == null) {
            throw new TimeoutException("Timed out waiting for the service connection");
        }
        return poll;
    }

    public IBinder zzaqk() {
        zzaa.zzht("BlockingServiceConnection.getService() called on main thread");
        if (this.f6468wM) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.f6468wM = true;
        return this.f6469wN.take();
    }
}
