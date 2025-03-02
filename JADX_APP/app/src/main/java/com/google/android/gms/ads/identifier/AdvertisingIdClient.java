package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.zzc;
import com.google.android.gms.common.zze;
import com.google.android.gms.internal.zzcl;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes.dex */
public class AdvertisingIdClient {
    private final Context mContext;
    com.google.android.gms.common.zza zzalf;
    zzcl zzalg;
    boolean zzalh;
    Object zzali;
    zza zzalj;
    final long zzalk;

    /* renamed from: com.google.android.gms.ads.identifier.AdvertisingIdClient$1 */
    class C12291 extends Thread {
        final /* synthetic */ String zzall;

        C12291(String str) {
            uri = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            new com.google.android.gms.ads.identifier.zza().zzv(uri);
        }
    }

    public static final class Info {
        private final String zzalr;
        private final boolean zzals;

        public Info(String str, boolean z) {
            this.zzalr = str;
            this.zzals = z;
        }

        public String getId() {
            return this.zzalr;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.zzals;
        }

        public String toString() {
            String str = this.zzalr;
            return new StringBuilder(String.valueOf(str).length() + 7).append("{").append(str).append("}").append(this.zzals).toString();
        }
    }

    static class zza extends Thread {
        private WeakReference<AdvertisingIdClient> zzaln;
        private long zzalo;
        CountDownLatch zzalp = new CountDownLatch(1);
        boolean zzalq = false;

        public zza(AdvertisingIdClient advertisingIdClient, long j) {
            this.zzaln = new WeakReference<>(advertisingIdClient);
            this.zzalo = j;
            start();
        }

        private void disconnect() {
            AdvertisingIdClient advertisingIdClient = this.zzaln.get();
            if (advertisingIdClient != null) {
                advertisingIdClient.finish();
                this.zzalq = true;
            }
        }

        public void cancel() {
            this.zzalp.countDown();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                if (this.zzalp.await(this.zzalo, TimeUnit.MILLISECONDS)) {
                    return;
                }
                disconnect();
            } catch (InterruptedException e) {
                disconnect();
            }
        }

        public boolean zzeb() {
            return this.zzalq;
        }
    }

    public AdvertisingIdClient(Context context) {
        this(context, 30000L, false);
    }

    public AdvertisingIdClient(Context context, long j, boolean z) {
        this.zzali = new Object();
        zzaa.zzy(context);
        if (z) {
            Context applicationContext = context.getApplicationContext();
            this.mContext = applicationContext != null ? applicationContext : context;
        } else {
            this.mContext = context;
        }
        this.zzalh = false;
        this.zzalk = j;
    }

    public static Info getAdvertisingIdInfo(Context context) {
        float f = 0.0f;
        boolean z = false;
        try {
            Context remoteContext = zze.getRemoteContext(context);
            if (remoteContext != null) {
                SharedPreferences sharedPreferences = remoteContext.getSharedPreferences("google_ads_flags", 1);
                z = sharedPreferences.getBoolean("gads:ad_id_app_context:enabled", false);
                f = sharedPreferences.getFloat("gads:ad_id_app_context:ping_ratio", 0.0f);
            }
        } catch (Exception e) {
            Log.w("AdvertisingIdClient", "Error while reading from SharedPreferences ", e);
        }
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, z);
        try {
            advertisingIdClient.zze(false);
            Info info = advertisingIdClient.getInfo();
            advertisingIdClient.zza(info, z, f, null);
            return info;
        } catch (Throwable th) {
            advertisingIdClient.zza(null, z, f, th);
            return null;
        } finally {
            advertisingIdClient.finish();
        }
    }

    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
    }

    static zzcl zza(Context context, com.google.android.gms.common.zza zzaVar) {
        try {
            return zzcl.zza.zzf(zzaVar.zza(10000L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException e) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    private void zza(Info info, boolean z, float f, Throwable th) {
        if (Math.random() > f) {
            return;
        }
        new Thread() { // from class: com.google.android.gms.ads.identifier.AdvertisingIdClient.1
            final /* synthetic */ String zzall;

            C12291(String str) {
                uri = str;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                new com.google.android.gms.ads.identifier.zza().zzv(uri);
            }
        }.start();
    }

    private void zzea() {
        synchronized (this.zzali) {
            if (this.zzalj != null) {
                this.zzalj.cancel();
                try {
                    this.zzalj.join();
                } catch (InterruptedException e) {
                }
            }
            if (this.zzalk > 0) {
                this.zzalj = new zza(this, this.zzalk);
            }
        }
    }

    static com.google.android.gms.common.zza zzf(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            switch (zzc.zzaql().isGooglePlayServicesAvailable(context)) {
                case 0:
                case 2:
                    com.google.android.gms.common.zza zzaVar = new com.google.android.gms.common.zza();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (com.google.android.gms.common.stats.zza.zzaxr().zza(context, intent, zzaVar, 1)) {
                            return zzaVar;
                        }
                        throw new IOException("Connection failure");
                    } catch (Throwable th) {
                        throw new IOException(th);
                    }
                case 1:
                default:
                    throw new IOException("Google Play services not available");
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new GooglePlayServicesNotAvailableException(9);
        }
    }

    protected void finalize() {
        finish();
        super.finalize();
    }

    public void finish() {
        zzaa.zzht("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.mContext == null || this.zzalf == null) {
                return;
            }
            try {
                try {
                    if (this.zzalh) {
                        com.google.android.gms.common.stats.zza.zzaxr().zza(this.mContext, this.zzalf);
                    }
                } catch (Throwable th) {
                    Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th);
                }
            } catch (IllegalArgumentException e) {
                Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", e);
            }
            this.zzalh = false;
            this.zzalg = null;
            this.zzalf = null;
        }
    }

    public Info getInfo() {
        Info info;
        zzaa.zzht("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.zzalh) {
                synchronized (this.zzali) {
                    if (this.zzalj == null || !this.zzalj.zzeb()) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    zze(false);
                    if (!this.zzalh) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            zzaa.zzy(this.zzalf);
            zzaa.zzy(this.zzalg);
            try {
                info = new Info(this.zzalg.getId(), this.zzalg.zzf(true));
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        zzea();
        return info;
    }

    public void start() {
        zze(true);
    }

    Uri zza(Info info, boolean z, Throwable th) {
        Bundle bundle = new Bundle();
        bundle.putString("app_context", z ? "1" : "0");
        if (info != null) {
            bundle.putString("limit_ad_tracking", info.isLimitAdTrackingEnabled() ? "1" : "0");
        }
        if (info != null && info.getId() != null) {
            bundle.putString("ad_id_size", Integer.toString(info.getId().length()));
        }
        if (th != null) {
            bundle.putString(IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR, th.getClass().getName());
        }
        Uri.Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        for (String str : bundle.keySet()) {
            buildUpon.appendQueryParameter(str, bundle.getString(str));
        }
        return buildUpon.build();
    }

    protected void zze(boolean z) {
        zzaa.zzht("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.zzalh) {
                finish();
            }
            this.zzalf = zzf(this.mContext);
            this.zzalg = zza(this.mContext, this.zzalf);
            this.zzalh = true;
            if (z) {
                zzea();
            }
        }
    }
}
