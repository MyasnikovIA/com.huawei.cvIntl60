package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.zztl;
import com.google.android.gms.internal.zzvt;

/* loaded from: classes.dex */
public class zzvs {
    private boolean zzaoz = false;

    /* renamed from: WC */
    private zzvt f6911WC = null;

    public void initialize(Context context) {
        synchronized (this) {
            if (this.zzaoz) {
                return;
            }
            try {
                this.f6911WC = zzvt.zza.asInterface(zztl.zza(context, zztl.f6901Qm, ModuleDescriptor.MODULE_ID).zzjd("com.google.android.gms.flags.impl.FlagProviderImpl"));
                this.f6911WC.init(com.google.android.gms.dynamic.zze.zzac(context));
                this.zzaoz = true;
            } catch (RemoteException | zztl.zza e) {
                Log.w("FlagValueProvider", "Failed to initialize flags module.", e);
            }
        }
    }

    public <T> T zzb(zzvq<T> zzvqVar) {
        synchronized (this) {
            if (this.zzaoz) {
                return zzvqVar.zza(this.f6911WC);
            }
            return zzvqVar.zzlp();
        }
    }
}
