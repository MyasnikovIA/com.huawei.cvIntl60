package com.google.android.gms.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzapw<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final Comparator<Comparable> bpi;
    Comparator<? super K> bab;
    zzd<K, V> bpj;
    final zzd<K, V> bpk;
    private zza bpl;
    private zzb bpm;
    int modCount;
    int size;

    /* renamed from: com.google.android.gms.internal.zzapw$1 */
    static class C13101 implements Comparator<Comparable> {
        C13101() {
        }

        @Override // java.util.Comparator
        /* renamed from: zza */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    class zza extends AbstractSet<Map.Entry<K, V>> {

        /* renamed from: com.google.android.gms.internal.zzapw$zza$1 */
        class C13111 extends zzc<Map.Entry<K, V>> {
            C13111() {
                zzapw zzapwVar = zzapw.this;
            }

            @Override // java.util.Iterator
            public Map.Entry<K, V> next() {
                return m6612bl();
            }
        }

        zza() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            zzapw.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && zzapw.this.zzc((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new zzc<Map.Entry<K, V>>() { // from class: com.google.android.gms.internal.zzapw.zza.1
                C13111() {
                    zzapw zzapwVar = zzapw.this;
                }

                @Override // java.util.Iterator
                public Map.Entry<K, V> next() {
                    return m6612bl();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            zzd<K, V> zzc;
            if (!(obj instanceof Map.Entry) || (zzc = zzapw.this.zzc((Map.Entry) obj)) == null) {
                return false;
            }
            zzapw.this.zza((zzd) zzc, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return zzapw.this.size;
        }
    }

    final class zzb extends AbstractSet<K> {

        /* renamed from: com.google.android.gms.internal.zzapw$zzb$1 */
        class C13121 extends zzc<K> {
            C13121() {
                zzapw zzapwVar = zzapw.this;
            }

            @Override // java.util.Iterator
            public K next() {
                return m6612bl().bap;
            }
        }

        zzb() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            zzapw.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return zzapw.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new zzc<K>() { // from class: com.google.android.gms.internal.zzapw.zzb.1
                C13121() {
                    zzapw zzapwVar = zzapw.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return m6612bl().bap;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return zzapw.this.zzcr(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return zzapw.this.size;
        }
    }

    private abstract class zzc<T> implements Iterator<T> {
        zzd<K, V> bpq;
        zzd<K, V> bpr;
        int bps;

        private zzc() {
            this.bpq = zzapw.this.bpk.bpq;
            this.bpr = null;
            this.bps = zzapw.this.modCount;
        }

        /* synthetic */ zzc(zzapw zzapwVar, C13101 c13101) {
            this();
        }

        /* renamed from: bl */
        final zzd<K, V> m6612bl() {
            zzd<K, V> zzdVar = this.bpq;
            if (zzdVar == zzapw.this.bpk) {
                throw new NoSuchElementException();
            }
            if (zzapw.this.modCount != this.bps) {
                throw new ConcurrentModificationException();
            }
            this.bpq = zzdVar.bpq;
            this.bpr = zzdVar;
            return zzdVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.bpq != zzapw.this.bpk;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.bpr == null) {
                throw new IllegalStateException();
            }
            zzapw.this.zza((zzd) this.bpr, true);
            this.bpr = null;
            this.bps = zzapw.this.modCount;
        }
    }

    static final class zzd<K, V> implements Map.Entry<K, V> {
        final K bap;
        zzd<K, V> bpq;
        zzd<K, V> bpt;
        zzd<K, V> bpu;
        zzd<K, V> bpv;
        zzd<K, V> bpw;
        int height;
        V value;

        zzd() {
            this.bap = null;
            this.bpw = this;
            this.bpq = this;
        }

        zzd(zzd<K, V> zzdVar, K k, zzd<K, V> zzdVar2, zzd<K, V> zzdVar3) {
            this.bpt = zzdVar;
            this.bap = k;
            this.height = 1;
            this.bpq = zzdVar2;
            this.bpw = zzdVar3;
            zzdVar3.bpq = this;
            zzdVar2.bpw = this;
        }

        /* renamed from: bm */
        public zzd<K, V> m6613bm() {
            for (zzd<K, V> zzdVar = this.bpu; zzdVar != null; zzdVar = zzdVar.bpu) {
                this = zzdVar;
            }
            return this;
        }

        /* renamed from: bn */
        public zzd<K, V> m6614bn() {
            for (zzd<K, V> zzdVar = this.bpv; zzdVar != null; zzdVar = zzdVar.bpv) {
                this = zzdVar;
            }
            return this;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (this.bap == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!this.bap.equals(entry.getKey())) {
                return false;
            }
            if (this.value == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!this.value.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.bap;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return (this.bap == null ? 0 : this.bap.hashCode()) ^ (this.value != null ? this.value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.value;
            this.value = v;
            return v2;
        }

        public String toString() {
            String valueOf = String.valueOf(this.bap);
            String valueOf2 = String.valueOf(this.value);
            return new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append("=").append(valueOf2).toString();
        }
    }

    static {
        $assertionsDisabled = !zzapw.class.desiredAssertionStatus();
        bpi = new Comparator<Comparable>() { // from class: com.google.android.gms.internal.zzapw.1
            C13101() {
            }

            @Override // java.util.Comparator
            /* renamed from: zza */
            public int compare(Comparable comparable, Comparable comparable2) {
                return comparable.compareTo(comparable2);
            }
        };
    }

    public zzapw() {
        this(bpi);
    }

    public zzapw(Comparator<? super K> comparator) {
        this.size = 0;
        this.modCount = 0;
        this.bpk = new zzd<>();
        this.bab = comparator == null ? bpi : comparator;
    }

    private boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private void zza(zzd<K, V> zzdVar) {
        zzd<K, V> zzdVar2 = zzdVar.bpu;
        zzd<K, V> zzdVar3 = zzdVar.bpv;
        zzd<K, V> zzdVar4 = zzdVar3.bpu;
        zzd<K, V> zzdVar5 = zzdVar3.bpv;
        zzdVar.bpv = zzdVar4;
        if (zzdVar4 != null) {
            zzdVar4.bpt = zzdVar;
        }
        zza(zzdVar, zzdVar3);
        zzdVar3.bpu = zzdVar;
        zzdVar.bpt = zzdVar3;
        zzdVar.height = Math.max(zzdVar2 != null ? zzdVar2.height : 0, zzdVar4 != null ? zzdVar4.height : 0) + 1;
        zzdVar3.height = Math.max(zzdVar.height, zzdVar5 != null ? zzdVar5.height : 0) + 1;
    }

    private void zza(zzd<K, V> zzdVar, zzd<K, V> zzdVar2) {
        zzd<K, V> zzdVar3 = zzdVar.bpt;
        zzdVar.bpt = null;
        if (zzdVar2 != null) {
            zzdVar2.bpt = zzdVar3;
        }
        if (zzdVar3 == null) {
            this.bpj = zzdVar2;
            return;
        }
        if (zzdVar3.bpu == zzdVar) {
            zzdVar3.bpu = zzdVar2;
        } else {
            if (!$assertionsDisabled && zzdVar3.bpv != zzdVar) {
                throw new AssertionError();
            }
            zzdVar3.bpv = zzdVar2;
        }
    }

    private void zzb(zzd<K, V> zzdVar) {
        zzd<K, V> zzdVar2 = zzdVar.bpu;
        zzd<K, V> zzdVar3 = zzdVar.bpv;
        zzd<K, V> zzdVar4 = zzdVar2.bpu;
        zzd<K, V> zzdVar5 = zzdVar2.bpv;
        zzdVar.bpu = zzdVar5;
        if (zzdVar5 != null) {
            zzdVar5.bpt = zzdVar;
        }
        zza(zzdVar, zzdVar2);
        zzdVar2.bpv = zzdVar;
        zzdVar.bpt = zzdVar2;
        zzdVar.height = Math.max(zzdVar3 != null ? zzdVar3.height : 0, zzdVar5 != null ? zzdVar5.height : 0) + 1;
        zzdVar2.height = Math.max(zzdVar.height, zzdVar4 != null ? zzdVar4.height : 0) + 1;
    }

    private void zzb(zzd<K, V> zzdVar, boolean z) {
        while (zzdVar != null) {
            zzd<K, V> zzdVar2 = zzdVar.bpu;
            zzd<K, V> zzdVar3 = zzdVar.bpv;
            int i = zzdVar2 != null ? zzdVar2.height : 0;
            int i2 = zzdVar3 != null ? zzdVar3.height : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                zzd<K, V> zzdVar4 = zzdVar3.bpu;
                zzd<K, V> zzdVar5 = zzdVar3.bpv;
                int i4 = (zzdVar4 != null ? zzdVar4.height : 0) - (zzdVar5 != null ? zzdVar5.height : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    zza(zzdVar);
                } else {
                    if (!$assertionsDisabled && i4 != 1) {
                        throw new AssertionError();
                    }
                    zzb(zzdVar3);
                    zza(zzdVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                zzd<K, V> zzdVar6 = zzdVar2.bpu;
                zzd<K, V> zzdVar7 = zzdVar2.bpv;
                int i5 = (zzdVar6 != null ? zzdVar6.height : 0) - (zzdVar7 != null ? zzdVar7.height : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    zzb(zzdVar);
                } else {
                    if (!$assertionsDisabled && i5 != -1) {
                        throw new AssertionError();
                    }
                    zza(zzdVar2);
                    zzb(zzdVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                zzdVar.height = i + 1;
                if (z) {
                    return;
                }
            } else {
                if (!$assertionsDisabled && i3 != -1 && i3 != 1) {
                    throw new AssertionError();
                }
                zzdVar.height = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            zzdVar = zzdVar.bpt;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.bpj = null;
        this.size = 0;
        this.modCount++;
        zzd<K, V> zzdVar = this.bpk;
        zzdVar.bpw = zzdVar;
        zzdVar.bpq = zzdVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return zzcq(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        zza zzaVar = this.bpl;
        if (zzaVar != null) {
            return zzaVar;
        }
        zza zzaVar2 = new zza();
        this.bpl = zzaVar2;
        return zzaVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        zzd<K, V> zzcq = zzcq(obj);
        if (zzcq != null) {
            return zzcq.value;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        zzb zzbVar = this.bpm;
        if (zzbVar != null) {
            return zzbVar;
        }
        zzb zzbVar2 = new zzb();
        this.bpm = zzbVar2;
        return zzbVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        zzd<K, V> zza2 = zza((zzapw<K, V>) k, true);
        V v2 = zza2.value;
        zza2.value = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzd<K, V> zzcr = zzcr(obj);
        if (zzcr != null) {
            return zzcr.value;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    zzd<K, V> zza(K k, boolean z) {
        int i;
        zzd<K, V> zzdVar;
        Comparator<? super K> comparator = this.bab;
        zzd<K, V> zzdVar2 = this.bpj;
        if (zzdVar2 != null) {
            Comparable comparable = comparator == bpi ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(zzdVar2.bap) : comparator.compare(k, zzdVar2.bap);
                if (i == 0) {
                    return zzdVar2;
                }
                zzd<K, V> zzdVar3 = i < 0 ? zzdVar2.bpu : zzdVar2.bpv;
                if (zzdVar3 == null) {
                    break;
                }
                zzdVar2 = zzdVar3;
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        zzd<K, V> zzdVar4 = this.bpk;
        if (zzdVar2 != null) {
            zzdVar = new zzd<>(zzdVar2, k, zzdVar4, zzdVar4.bpw);
            if (i < 0) {
                zzdVar2.bpu = zzdVar;
            } else {
                zzdVar2.bpv = zzdVar;
            }
            zzb(zzdVar2, true);
        } else {
            if (comparator == bpi && !(k instanceof Comparable)) {
                throw new ClassCastException(String.valueOf(k.getClass().getName()).concat(" is not Comparable"));
            }
            zzdVar = new zzd<>(zzdVar2, k, zzdVar4, zzdVar4.bpw);
            this.bpj = zzdVar;
        }
        this.size++;
        this.modCount++;
        return zzdVar;
    }

    void zza(zzd<K, V> zzdVar, boolean z) {
        int i;
        int i2 = 0;
        if (z) {
            zzdVar.bpw.bpq = zzdVar.bpq;
            zzdVar.bpq.bpw = zzdVar.bpw;
        }
        zzd<K, V> zzdVar2 = zzdVar.bpu;
        zzd<K, V> zzdVar3 = zzdVar.bpv;
        zzd<K, V> zzdVar4 = zzdVar.bpt;
        if (zzdVar2 == null || zzdVar3 == null) {
            if (zzdVar2 != null) {
                zza(zzdVar, zzdVar2);
                zzdVar.bpu = null;
            } else if (zzdVar3 != null) {
                zza(zzdVar, zzdVar3);
                zzdVar.bpv = null;
            } else {
                zza(zzdVar, (zzd) null);
            }
            zzb(zzdVar4, false);
            this.size--;
            this.modCount++;
            return;
        }
        zzd<K, V> m6614bn = zzdVar2.height > zzdVar3.height ? zzdVar2.m6614bn() : zzdVar3.m6613bm();
        zza((zzd) m6614bn, false);
        zzd<K, V> zzdVar5 = zzdVar.bpu;
        if (zzdVar5 != null) {
            i = zzdVar5.height;
            m6614bn.bpu = zzdVar5;
            zzdVar5.bpt = m6614bn;
            zzdVar.bpu = null;
        } else {
            i = 0;
        }
        zzd<K, V> zzdVar6 = zzdVar.bpv;
        if (zzdVar6 != null) {
            i2 = zzdVar6.height;
            m6614bn.bpv = zzdVar6;
            zzdVar6.bpt = m6614bn;
            zzdVar.bpv = null;
        }
        m6614bn.height = Math.max(i, i2) + 1;
        zza(zzdVar, m6614bn);
    }

    zzd<K, V> zzc(Map.Entry<?, ?> entry) {
        zzd<K, V> zzcq = zzcq(entry.getKey());
        if (zzcq != null && equal(zzcq.value, entry.getValue())) {
            return zzcq;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    zzd<K, V> zzcq(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return zza((zzapw<K, V>) obj, false);
        } catch (ClassCastException e) {
            return null;
        }
    }

    zzd<K, V> zzcr(Object obj) {
        zzd<K, V> zzcq = zzcq(obj);
        if (zzcq != null) {
            zza((zzd) zzcq, true);
        }
        return zzcq;
    }
}
