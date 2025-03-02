package com.google.android.gms.internal;

import java.util.Arrays;

/* loaded from: classes.dex */
final class zzasc {
    final byte[] btQ;
    final int tag;

    zzasc(int i, byte[] bArr) {
        this.tag = i;
        this.btQ = bArr;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzasc)) {
            return false;
        }
        zzasc zzascVar = (zzasc) obj;
        return this.tag == zzascVar.tag && Arrays.equals(this.btQ, zzascVar.btQ);
    }

    public int hashCode() {
        return ((this.tag + 527) * 31) + Arrays.hashCode(this.btQ);
    }

    void zza(zzart zzartVar) {
        zzartVar.zzahd(this.tag);
        zzartVar.zzbh(this.btQ);
    }

    int zzx() {
        return zzart.zzahe(this.tag) + 0 + this.btQ.length;
    }
}
