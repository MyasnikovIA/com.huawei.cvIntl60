package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.internal.zzvv;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class zzb {

    /* renamed from: WM */
    private static SharedPreferences f6516WM = null;

    /* renamed from: com.google.android.gms.flags.impl.zzb$1 */
    final class CallableC12771 implements Callable<SharedPreferences> {
        final /* synthetic */ Context zzang;

        CallableC12771(Context context) {
            context = context;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: zzbhi */
        public SharedPreferences call() {
            return context.getSharedPreferences("google_sdk_flags", 1);
        }
    }

    public static SharedPreferences zzm(Context context) {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            if (f6516WM == null) {
                f6516WM = (SharedPreferences) zzvv.zzb(new Callable<SharedPreferences>() { // from class: com.google.android.gms.flags.impl.zzb.1
                    final /* synthetic */ Context zzang;

                    CallableC12771(Context context2) {
                        context = context2;
                    }

                    @Override // java.util.concurrent.Callable
                    /* renamed from: zzbhi */
                    public SharedPreferences call() {
                        return context.getSharedPreferences("google_sdk_flags", 1);
                    }
                });
            }
            sharedPreferences = f6516WM;
        }
        return sharedPreferences;
    }
}
