package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.internal.zzaa;

/* loaded from: classes.dex */
public abstract class zzg<T> {

    /* renamed from: Qe */
    private final String f6501Qe;

    /* renamed from: Qf */
    private T f6502Qf;

    public static class zza extends Exception {
        public zza(String str) {
            super(str);
        }

        public zza(String str, Throwable th) {
            super(str, th);
        }
    }

    protected zzg(String str) {
        this.f6501Qe = str;
    }

    protected abstract T zzc(IBinder iBinder);

    protected final T zzcr(Context context) {
        if (this.f6502Qf == null) {
            zzaa.zzy(context);
            Context remoteContext = com.google.android.gms.common.zze.getRemoteContext(context);
            if (remoteContext == null) {
                throw new zza("Could not get remote context.");
            }
            try {
                this.f6502Qf = zzc((IBinder) remoteContext.getClassLoader().loadClass(this.f6501Qe).newInstance());
            } catch (ClassNotFoundException e) {
                throw new zza("Could not load creator class.", e);
            } catch (IllegalAccessException e2) {
                throw new zza("Could not access creator.", e2);
            } catch (InstantiationException e3) {
                throw new zza("Could not instantiate creator.", e3);
            }
        }
        return this.f6502Qf;
    }
}
