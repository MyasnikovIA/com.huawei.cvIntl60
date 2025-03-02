package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.support.v4.content.AsyncTaskLoader;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzsa;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class zzb extends AsyncTaskLoader<Void> implements zzsa {

    /* renamed from: jA */
    private Set<GoogleApiClient> f6091jA;

    /* renamed from: jz */
    private Semaphore f6092jz;

    public zzb(Context context, Set<GoogleApiClient> set) {
        super(context);
        this.f6092jz = new Semaphore(0);
        this.f6091jA = set;
    }

    @Override // android.support.v4.content.Loader
    protected void onStartLoading() {
        this.f6092jz.drainPermits();
        forceLoad();
    }

    @Override // android.support.v4.content.AsyncTaskLoader
    /* renamed from: zzaja */
    public Void loadInBackground() {
        int i = 0;
        Iterator<GoogleApiClient> it = this.f6091jA.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                try {
                    this.f6092jz.tryAcquire(i2, 5L, TimeUnit.SECONDS);
                    return null;
                } catch (InterruptedException e) {
                    Log.i("GACSignInLoader", "Unexpected InterruptedException", e);
                    Thread.currentThread().interrupt();
                    return null;
                }
            }
            i = it.next().zza(this) ? i2 + 1 : i2;
        }
    }

    @Override // com.google.android.gms.internal.zzsa
    public void zzajb() {
        this.f6092jz.release();
    }
}
