package com.google.android.gms.common.util;

import android.support.v4.util.ArrayMap;
import android.support.v4.util.SimpleArrayMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public class zza<E> extends AbstractSet<E> {

    /* renamed from: Gp */
    private final ArrayMap<E, E> f6445Gp;

    public zza() {
        this.f6445Gp = new ArrayMap<>();
    }

    public zza(int i) {
        this.f6445Gp = new ArrayMap<>(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zza(Collection<E> collection) {
        this(collection.size());
        addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e) {
        if (this.f6445Gp.containsKey(e)) {
            return false;
        }
        this.f6445Gp.put(e, e);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        return collection instanceof zza ? zza((zza) collection) : super.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f6445Gp.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f6445Gp.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return this.f6445Gp.keySet().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        if (!this.f6445Gp.containsKey(obj)) {
            return false;
        }
        this.f6445Gp.remove(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f6445Gp.size();
    }

    public boolean zza(zza<? extends E> zzaVar) {
        int size = size();
        this.f6445Gp.putAll((SimpleArrayMap<? extends E, ? extends E>) zzaVar.f6445Gp);
        return size() > size;
    }
}
