package com.google.android.gms.internal;

/* loaded from: classes.dex */
public final class zzvu {

    /* renamed from: WD */
    private static zzvu f6912WD;

    /* renamed from: WE */
    private final zzvr f6913WE = new zzvr();

    /* renamed from: WF */
    private final zzvs f6914WF = new zzvs();

    static {
        zza(new zzvu());
    }

    private zzvu() {
    }

    protected static void zza(zzvu zzvuVar) {
        synchronized (zzvu.class) {
            f6912WD = zzvuVar;
        }
    }

    private static zzvu zzbhd() {
        zzvu zzvuVar;
        synchronized (zzvu.class) {
            zzvuVar = f6912WD;
        }
        return zzvuVar;
    }

    public static zzvr zzbhe() {
        return zzbhd().f6913WE;
    }

    public static zzvs zzbhf() {
        return zzbhd().f6914WF;
    }
}
