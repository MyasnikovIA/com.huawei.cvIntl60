package com.google.android.gms.common.data;

import android.os.Bundle;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class AbstractDataBuffer<T> implements DataBuffer<T> {

    /* renamed from: zy */
    protected final DataHolder f6191zy;

    protected AbstractDataBuffer(DataHolder dataHolder) {
        this.f6191zy = dataHolder;
        if (this.f6191zy != null) {
        }
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    @Deprecated
    public final void close() {
        release();
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public abstract T get(int i);

    @Override // com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        if (this.f6191zy == null) {
            return 0;
        }
        return this.f6191zy.getCount();
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    @Deprecated
    public boolean isClosed() {
        return this.f6191zy == null || this.f6191zy.isClosed();
    }

    @Override // com.google.android.gms.common.data.DataBuffer, java.lang.Iterable
    public Iterator<T> iterator() {
        return new zzb(this);
    }

    @Override // com.google.android.gms.common.data.DataBuffer, com.google.android.gms.common.api.Releasable
    public void release() {
        if (this.f6191zy != null) {
            this.f6191zy.close();
        }
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public Iterator<T> singleRefIterator() {
        return new zzg(this);
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public Bundle zzaui() {
        return this.f6191zy.zzaui();
    }
}
