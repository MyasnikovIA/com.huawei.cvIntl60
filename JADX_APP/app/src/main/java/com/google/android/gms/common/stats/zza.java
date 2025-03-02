package com.google.android.gms.common.stats;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.util.Log;
import com.google.android.gms.common.stats.zzb;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class zza {

    /* renamed from: El */
    private static final Object f6413El = new Object();

    /* renamed from: FF */
    private static Integer f6414FF;

    /* renamed from: Fz */
    private static zza f6415Fz;

    /* renamed from: FA */
    private final List<String> f6416FA;

    /* renamed from: FB */
    private final List<String> f6417FB;

    /* renamed from: FC */
    private final List<String> f6418FC;

    /* renamed from: FD */
    private final List<String> f6419FD;

    /* renamed from: FE */
    private zzd f6420FE;

    /* renamed from: FG */
    private zzd f6421FG;

    private zza() {
        if (zzaxs()) {
            this.f6416FA = Collections.EMPTY_LIST;
            this.f6417FB = Collections.EMPTY_LIST;
            this.f6418FC = Collections.EMPTY_LIST;
            this.f6419FD = Collections.EMPTY_LIST;
            return;
        }
        String str = zzb.zza.f6425FK.get();
        this.f6416FA = str == null ? Collections.EMPTY_LIST : Arrays.asList(str.split(","));
        String str2 = zzb.zza.f6426FL.get();
        this.f6417FB = str2 == null ? Collections.EMPTY_LIST : Arrays.asList(str2.split(","));
        String str3 = zzb.zza.f6427FM.get();
        this.f6418FC = str3 == null ? Collections.EMPTY_LIST : Arrays.asList(str3.split(","));
        String str4 = zzb.zza.f6428FN.get();
        this.f6419FD = str4 == null ? Collections.EMPTY_LIST : Arrays.asList(str4.split(","));
        this.f6420FE = new zzd(1024, zzb.zza.f6429FO.get().longValue());
        this.f6421FG = new zzd(1024, zzb.zza.f6429FO.get().longValue());
    }

    private static int getLogLevel() {
        if (f6414FF == null) {
            try {
                f6414FF = Integer.valueOf(com.google.android.gms.common.util.zzd.zzayi() ? zzb.zza.f6424FJ.get().intValue() : zzc.LOG_LEVEL_OFF);
            } catch (SecurityException e) {
                f6414FF = Integer.valueOf(zzc.LOG_LEVEL_OFF);
            }
        }
        return f6414FF.intValue();
    }

    public static zza zzaxr() {
        synchronized (f6413El) {
            if (f6415Fz == null) {
                f6415Fz = new zza();
            }
        }
        return f6415Fz;
    }

    private boolean zzaxs() {
        return getLogLevel() == zzc.LOG_LEVEL_OFF;
    }

    private boolean zzc(Context context, Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            return false;
        }
        return com.google.android.gms.common.util.zzd.zzx(context, component.getPackageName());
    }

    @SuppressLint({"UntrackedBindService"})
    public void zza(Context context, ServiceConnection serviceConnection) {
        context.unbindService(serviceConnection);
    }

    public void zza(Context context, ServiceConnection serviceConnection, String str, Intent intent) {
    }

    public boolean zza(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return zza(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    @SuppressLint({"UntrackedBindService"})
    public boolean zza(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        if (!zzc(context, intent)) {
            return context.bindService(intent, serviceConnection, i);
        }
        Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
        return false;
    }

    public void zzb(Context context, ServiceConnection serviceConnection) {
    }
}
