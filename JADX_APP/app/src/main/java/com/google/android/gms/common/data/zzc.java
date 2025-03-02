package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzz;

/* loaded from: classes.dex */
public abstract class zzc {

    /* renamed from: BU */
    protected int f6214BU;

    /* renamed from: BV */
    private int f6215BV;

    /* renamed from: zy */
    protected final DataHolder f6216zy;

    public zzc(DataHolder dataHolder, int i) {
        this.f6216zy = (DataHolder) zzaa.zzy(dataHolder);
        zzfy(i);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzc)) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        return zzz.equal(Integer.valueOf(zzcVar.f6214BU), Integer.valueOf(this.f6214BU)) && zzz.equal(Integer.valueOf(zzcVar.f6215BV), Integer.valueOf(this.f6215BV)) && zzcVar.f6216zy == this.f6216zy;
    }

    protected boolean getBoolean(String str) {
        return this.f6216zy.zze(str, this.f6214BU, this.f6215BV);
    }

    protected byte[] getByteArray(String str) {
        return this.f6216zy.zzg(str, this.f6214BU, this.f6215BV);
    }

    protected float getFloat(String str) {
        return this.f6216zy.zzf(str, this.f6214BU, this.f6215BV);
    }

    protected int getInteger(String str) {
        return this.f6216zy.zzc(str, this.f6214BU, this.f6215BV);
    }

    protected long getLong(String str) {
        return this.f6216zy.zzb(str, this.f6214BU, this.f6215BV);
    }

    protected String getString(String str) {
        return this.f6216zy.zzd(str, this.f6214BU, this.f6215BV);
    }

    public int hashCode() {
        return zzz.hashCode(Integer.valueOf(this.f6214BU), Integer.valueOf(this.f6215BV), this.f6216zy);
    }

    public boolean isDataValid() {
        return !this.f6216zy.isClosed();
    }

    protected void zza(String str, CharArrayBuffer charArrayBuffer) {
        this.f6216zy.zza(str, this.f6214BU, this.f6215BV, charArrayBuffer);
    }

    protected int zzaul() {
        return this.f6214BU;
    }

    protected void zzfy(int i) {
        zzaa.zzbs(i >= 0 && i < this.f6216zy.getCount());
        this.f6214BU = i;
        this.f6215BV = this.f6216zy.zzga(this.f6214BU);
    }

    public boolean zzho(String str) {
        return this.f6216zy.zzho(str);
    }

    protected Uri zzhp(String str) {
        return this.f6216zy.zzh(str, this.f6214BU, this.f6215BV);
    }

    protected boolean zzhq(String str) {
        return this.f6216zy.zzi(str, this.f6214BU, this.f6215BV);
    }
}
