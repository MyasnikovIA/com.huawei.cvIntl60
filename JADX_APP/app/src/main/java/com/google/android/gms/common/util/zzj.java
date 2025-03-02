package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;
import com.google.android.exoplayer.hls.HlsChunkSource;

/* loaded from: classes.dex */
public final class zzj {

    /* renamed from: Gw */
    private static long f6452Gw;

    /* renamed from: Gv */
    private static IntentFilter f6451Gv = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* renamed from: Gx */
    private static float f6453Gx = Float.NaN;

    @TargetApi(20)
    public static boolean zzb(PowerManager powerManager) {
        return zzs.zzayv() ? powerManager.isInteractive() : powerManager.isScreenOn();
    }

    @TargetApi(20)
    public static int zzck(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f6451Gv);
        boolean z = ((registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0)) & 7) != 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        return ((zzb(powerManager) ? 1 : 0) << 1) | (z ? 1 : 0);
    }

    public static synchronized float zzcl(Context context) {
        float f;
        synchronized (zzj.class) {
            if (SystemClock.elapsedRealtime() - f6452Gw >= HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS || Float.isNaN(f6453Gx)) {
                if (context.getApplicationContext().registerReceiver(null, f6451Gv) != null) {
                    f6453Gx = r0.getIntExtra("level", -1) / r0.getIntExtra("scale", -1);
                }
                f6452Gw = SystemClock.elapsedRealtime();
                f = f6453Gx;
            } else {
                f = f6453Gx;
            }
        }
        return f;
    }
}
