package com.google.android.gms.internal;

import com.google.android.exoplayer.ExoPlayer;

/* loaded from: classes.dex */
public class zzd implements zzo {
    private int zzn;
    private int zzo;
    private final int zzp;
    private final float zzq;

    public zzd() {
        this(ExoPlayer.Factory.DEFAULT_MIN_BUFFER_MS, 1, 1.0f);
    }

    public zzd(int i, int i2, float f) {
        this.zzn = i;
        this.zzp = i2;
        this.zzq = f;
    }

    @Override // com.google.android.gms.internal.zzo
    public void zza(zzr zzrVar) {
        this.zzo++;
        this.zzn = (int) (this.zzn + (this.zzn * this.zzq));
        if (!zze()) {
            throw zzrVar;
        }
    }

    @Override // com.google.android.gms.internal.zzo
    public int zzc() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.zzo
    public int zzd() {
        return this.zzo;
    }

    protected boolean zze() {
        return this.zzo <= this.zzp;
    }
}
