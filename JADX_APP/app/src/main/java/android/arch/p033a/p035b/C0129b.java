package android.arch.p033a.p035b;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.arch.a.b.b */
/* loaded from: classes.dex */
public class C0129b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a */
    private c<K, V> f963a;

    /* renamed from: b */
    private c<K, V> f964b;

    /* renamed from: c */
    private WeakHashMap<f<K, V>, Boolean> f965c = new WeakHashMap<>();

    /* renamed from: d */
    private int f966d = 0;

    /* renamed from: android.arch.a.b.b$f */
    interface f<K, V> {
        /* renamed from: a_ */
        void mo1288a_(@NonNull c<K, V> cVar);
    }

    /* renamed from: a */
    protected c<K, V> mo1273a(K k) {
        c<K, V> cVar = this.f963a;
        while (cVar != null && !cVar.f967a.equals(k)) {
            cVar = cVar.f969c;
        }
        return cVar;
    }

    /* renamed from: a */
    public V mo1274a(@NonNull K k, @NonNull V v) {
        c<K, V> mo1273a = mo1273a((C0129b<K, V>) k);
        if (mo1273a != null) {
            return mo1273a.f968b;
        }
        m1280b(k, v);
        return null;
    }

    /* renamed from: b */
    protected c<K, V> m1280b(@NonNull K k, @NonNull V v) {
        c<K, V> cVar = new c<>(k, v);
        this.f966d++;
        if (this.f964b == null) {
            this.f963a = cVar;
            this.f964b = this.f963a;
        } else {
            this.f964b.f969c = cVar;
            cVar.f970d = this.f964b;
            this.f964b = cVar;
        }
        return cVar;
    }

    /* renamed from: b */
    public V mo1275b(@NonNull K k) {
        c<K, V> mo1273a = mo1273a((C0129b<K, V>) k);
        if (mo1273a == null) {
            return null;
        }
        this.f966d--;
        if (!this.f965c.isEmpty()) {
            Iterator<f<K, V>> it = this.f965c.keySet().iterator();
            while (it.hasNext()) {
                it.next().mo1288a_(mo1273a);
            }
        }
        if (mo1273a.f970d != null) {
            mo1273a.f970d.f969c = mo1273a.f969c;
        } else {
            this.f963a = mo1273a.f969c;
        }
        if (mo1273a.f969c != null) {
            mo1273a.f969c.f970d = mo1273a.f970d;
        } else {
            this.f964b = mo1273a.f970d;
        }
        mo1273a.f969c = null;
        mo1273a.f970d = null;
        return mo1273a.f968b;
    }

    /* renamed from: a */
    public int m1279a() {
        return this.f966d;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f963a, this.f964b);
        this.f965c.put(aVar, false);
        return aVar;
    }

    /* renamed from: b */
    public Iterator<Map.Entry<K, V>> m1281b() {
        b bVar = new b(this.f964b, this.f963a);
        this.f965c.put(bVar, false);
        return bVar;
    }

    /* renamed from: c */
    public C0129b<K, V>.d m1282c() {
        C0129b<K, V>.d dVar = new d();
        this.f965c.put(dVar, false);
        return dVar;
    }

    /* renamed from: d */
    public Map.Entry<K, V> m1283d() {
        return this.f963a;
    }

    /* renamed from: e */
    public Map.Entry<K, V> m1284e() {
        return this.f964b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0129b)) {
            return false;
        }
        C0129b c0129b = (C0129b) obj;
        if (m1279a() != c0129b.m1279a()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = c0129b.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<K, V> next = it.next();
            Map.Entry<K, V> next2 = it2.next();
            if (next == null && next2 != null) {
                return false;
            }
            if (next != null && !next.equals(next2)) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: android.arch.a.b.b$e */
    private static abstract class e<K, V> implements f<K, V>, Iterator<Map.Entry<K, V>> {

        /* renamed from: a */
        c<K, V> f974a;

        /* renamed from: b */
        c<K, V> f975b;

        /* renamed from: a */
        abstract c<K, V> mo1285a(c<K, V> cVar);

        /* renamed from: b */
        abstract c<K, V> mo1286b(c<K, V> cVar);

        e(c<K, V> cVar, c<K, V> cVar2) {
            this.f974a = cVar2;
            this.f975b = cVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f975b != null;
        }

        @Override // android.arch.p033a.p035b.C0129b.f
        /* renamed from: a_ */
        public void mo1288a_(@NonNull c<K, V> cVar) {
            if (this.f974a == cVar && cVar == this.f975b) {
                this.f975b = null;
                this.f974a = null;
            }
            if (this.f974a == cVar) {
                this.f974a = mo1286b(this.f974a);
            }
            if (this.f975b == cVar) {
                this.f975b = m1289b();
            }
        }

        /* renamed from: b */
        private c<K, V> m1289b() {
            if (this.f975b == this.f974a || this.f974a == null) {
                return null;
            }
            return mo1285a(this.f975b);
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            c<K, V> cVar = this.f975b;
            this.f975b = m1289b();
            return cVar;
        }
    }

    /* renamed from: android.arch.a.b.b$a */
    static class a<K, V> extends e<K, V> {
        a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // android.arch.p033a.p035b.C0129b.e
        /* renamed from: a */
        c<K, V> mo1285a(c<K, V> cVar) {
            return cVar.f969c;
        }

        @Override // android.arch.p033a.p035b.C0129b.e
        /* renamed from: b */
        c<K, V> mo1286b(c<K, V> cVar) {
            return cVar.f970d;
        }
    }

    /* renamed from: android.arch.a.b.b$b */
    private static class b<K, V> extends e<K, V> {
        b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // android.arch.p033a.p035b.C0129b.e
        /* renamed from: a */
        c<K, V> mo1285a(c<K, V> cVar) {
            return cVar.f970d;
        }

        @Override // android.arch.p033a.p035b.C0129b.e
        /* renamed from: b */
        c<K, V> mo1286b(c<K, V> cVar) {
            return cVar.f969c;
        }
    }

    /* renamed from: android.arch.a.b.b$d */
    public class d implements f<K, V>, Iterator<Map.Entry<K, V>> {

        /* renamed from: b */
        private c<K, V> f972b;

        /* renamed from: c */
        private boolean f973c;

        private d() {
            this.f973c = true;
        }

        /* synthetic */ d(C0129b c0129b, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // android.arch.p033a.p035b.C0129b.f
        /* renamed from: a_ */
        public void mo1288a_(@NonNull c<K, V> cVar) {
            if (cVar == this.f972b) {
                this.f972b = this.f972b.f970d;
                this.f973c = this.f972b == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f973c ? C0129b.this.f963a != null : (this.f972b == null || this.f972b.f969c == null) ? false : true;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            if (this.f973c) {
                this.f973c = false;
                this.f972b = C0129b.this.f963a;
            } else {
                this.f972b = this.f972b != null ? this.f972b.f969c : null;
            }
            return this.f972b;
        }
    }

    /* renamed from: android.arch.a.b.b$c */
    static class c<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        @NonNull
        final K f967a;

        /* renamed from: b */
        @NonNull
        final V f968b;

        /* renamed from: c */
        c<K, V> f969c;

        /* renamed from: d */
        c<K, V> f970d;

        c(@NonNull K k, @NonNull V v) {
            this.f967a = k;
            this.f968b = v;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public K getKey() {
            return this.f967a;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public V getValue() {
            return this.f968b;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f967a + "=" + this.f968b;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f967a.equals(cVar.f967a) && this.f968b.equals(cVar.f968b);
        }
    }
}
