package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class zzasa {
    protected volatile int btP = -1;

    public static final <T extends zzasa> T zza(T t, byte[] bArr) {
        return (T) zzb(t, bArr, 0, bArr.length);
    }

    public static final void zza(zzasa zzasaVar, byte[] bArr, int i, int i2) {
        try {
            zzart zzc = zzart.zzc(bArr, i, i2);
            zzasaVar.zza(zzc);
            zzc.m6663cm();
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public static final <T extends zzasa> T zzb(T t, byte[] bArr, int i, int i2) {
        try {
            zzars zzb = zzars.zzb(bArr, i, i2);
            t.zzb(zzb);
            zzb.zzagq(0);
            return t;
        } catch (zzarz e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    public static final byte[] zzf(zzasa zzasaVar) {
        byte[] bArr = new byte[zzasaVar.m6676cz()];
        zza(zzasaVar, bArr, 0, bArr.length);
        return bArr;
    }

    @Override // 
    /* renamed from: co */
    public zzasa clone() {
        return (zzasa) super.clone();
    }

    /* renamed from: cy */
    public int m6675cy() {
        if (this.btP < 0) {
            m6676cz();
        }
        return this.btP;
    }

    /* renamed from: cz */
    public int m6676cz() {
        int zzx = zzx();
        this.btP = zzx;
        return zzx;
    }

    public String toString() {
        return zzasb.zzg(this);
    }

    public void zza(zzart zzartVar) {
    }

    public abstract zzasa zzb(zzars zzarsVar);

    protected int zzx() {
        return 0;
    }
}
