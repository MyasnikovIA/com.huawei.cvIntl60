package com.google.android.gms.common.data;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class zzg<T> extends zzb<T> {

    /* renamed from: Cn */
    private T f6221Cn;

    public zzg(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.google.android.gms.common.data.zzb, java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException(new StringBuilder(46).append("Cannot advance the iterator beyond ").append(this.f6213BS).toString());
        }
        this.f6213BS++;
        if (this.f6213BS == 0) {
            this.f6221Cn = this.f6212BR.get(0);
            if (!(this.f6221Cn instanceof zzc)) {
                String valueOf = String.valueOf(this.f6221Cn.getClass());
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 44).append("DataBuffer reference of type ").append(valueOf).append(" is not movable").toString());
            }
        } else {
            ((zzc) this.f6221Cn).zzfy(this.f6213BS);
        }
        return this.f6221Cn;
    }
}
