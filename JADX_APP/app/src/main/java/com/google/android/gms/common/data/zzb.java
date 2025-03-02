package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.zzaa;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class zzb<T> implements Iterator<T> {

    /* renamed from: BR */
    protected final DataBuffer<T> f6212BR;

    /* renamed from: BS */
    protected int f6213BS = -1;

    public zzb(DataBuffer<T> dataBuffer) {
        this.f6212BR = (DataBuffer) zzaa.zzy(dataBuffer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f6213BS < this.f6212BR.getCount() + (-1);
    }

    @Override // java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException(new StringBuilder(46).append("Cannot advance the iterator beyond ").append(this.f6213BS).toString());
        }
        DataBuffer<T> dataBuffer = this.f6212BR;
        int i = this.f6213BS + 1;
        this.f6213BS = i;
        return dataBuffer.get(i);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
