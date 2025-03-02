package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaru;

/* loaded from: classes.dex */
public abstract class zzaru<M extends zzaru<M>> extends zzasa {
    protected zzarw btG;

    @Override // com.google.android.gms.internal.zzasa
    /* renamed from: cn */
    public M clone() {
        M m = (M) super.clone();
        zzary.zza(this, m);
        return m;
    }

    @Override // com.google.android.gms.internal.zzasa
    /* renamed from: co */
    public /* synthetic */ zzasa clone() {
        return (zzaru) clone();
    }

    public final <T> T zza(zzarv<M, T> zzarvVar) {
        zzarx zzahh;
        if (this.btG == null || (zzahh = this.btG.zzahh(zzasd.zzahl(zzarvVar.tag))) == null) {
            return null;
        }
        return (T) zzahh.zzb(zzarvVar);
    }

    @Override // com.google.android.gms.internal.zzasa
    public void zza(zzart zzartVar) {
        if (this.btG == null) {
            return;
        }
        for (int i = 0; i < this.btG.size(); i++) {
            this.btG.zzahi(i).zza(zzartVar);
        }
    }

    protected final boolean zza(zzars zzarsVar, int i) {
        int position = zzarsVar.getPosition();
        if (!zzarsVar.zzagr(i)) {
            return false;
        }
        int zzahl = zzasd.zzahl(i);
        zzasc zzascVar = new zzasc(i, zzarsVar.zzae(position, zzarsVar.getPosition() - position));
        zzarx zzarxVar = null;
        if (this.btG == null) {
            this.btG = new zzarw();
        } else {
            zzarxVar = this.btG.zzahh(zzahl);
        }
        if (zzarxVar == null) {
            zzarxVar = new zzarx();
            this.btG.zza(zzahl, zzarxVar);
        }
        zzarxVar.zza(zzascVar);
        return true;
    }

    @Override // com.google.android.gms.internal.zzasa
    protected int zzx() {
        int i = 0;
        if (this.btG == null) {
            return 0;
        }
        int i2 = 0;
        while (true) {
            int i3 = i;
            if (i2 >= this.btG.size()) {
                return i3;
            }
            i = this.btG.zzahi(i2).zzx() + i3;
            i2++;
        }
    }
}
