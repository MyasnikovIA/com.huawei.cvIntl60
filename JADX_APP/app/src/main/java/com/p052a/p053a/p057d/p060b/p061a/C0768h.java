package com.p052a.p053a.p057d.p060b.p061a;

import android.support.annotation.Nullable;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0773m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: com.a.a.d.b.a.h */
/* loaded from: classes.dex */
class C0768h<K extends InterfaceC0773m, V> {

    /* renamed from: a */
    private final a<K, V> f4215a = new a<>();

    /* renamed from: b */
    private final Map<K, a<K, V>> f4216b = new HashMap();

    C0768h() {
    }

    /* renamed from: a */
    public void m4688a(K k, V v) {
        a<K, V> aVar = this.f4216b.get(k);
        if (aVar == null) {
            aVar = new a<>(k);
            m4683b(aVar);
            this.f4216b.put(k, aVar);
        } else {
            k.mo4669a();
        }
        aVar.m4690a(v);
    }

    @Nullable
    /* renamed from: a */
    public V m4687a(K k) {
        a<K, V> aVar = this.f4216b.get(k);
        if (aVar == null) {
            aVar = new a<>(k);
            this.f4216b.put(k, aVar);
        } else {
            k.mo4669a();
        }
        m4682a(aVar);
        return aVar.m4689a();
    }

    @Nullable
    /* renamed from: a */
    public V m4686a() {
        a aVar = this.f4215a.f4219c;
        while (true) {
            a aVar2 = aVar;
            if (!aVar2.equals(this.f4215a)) {
                V v = (V) aVar2.m4689a();
                if (v == null) {
                    m4685d(aVar2);
                    this.f4216b.remove(aVar2.f4217a);
                    ((InterfaceC0773m) aVar2.f4217a).mo4669a();
                    aVar = aVar2.f4219c;
                } else {
                    return v;
                }
            } else {
                return null;
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (a aVar = this.f4215a.f4218b; !aVar.equals(this.f4215a); aVar = aVar.f4218b) {
            z = true;
            sb.append('{').append(aVar.f4217a).append(':').append(aVar.m4691b()).append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        return sb.append(" )").toString();
    }

    /* renamed from: a */
    private void m4682a(a<K, V> aVar) {
        m4685d(aVar);
        aVar.f4219c = this.f4215a;
        aVar.f4218b = this.f4215a.f4218b;
        m4684c(aVar);
    }

    /* renamed from: b */
    private void m4683b(a<K, V> aVar) {
        m4685d(aVar);
        aVar.f4219c = this.f4215a.f4219c;
        aVar.f4218b = this.f4215a;
        m4684c(aVar);
    }

    /* renamed from: c */
    private static <K, V> void m4684c(a<K, V> aVar) {
        aVar.f4218b.f4219c = aVar;
        aVar.f4219c.f4218b = aVar;
    }

    /* renamed from: d */
    private static <K, V> void m4685d(a<K, V> aVar) {
        aVar.f4219c.f4218b = aVar.f4218b;
        aVar.f4218b.f4219c = aVar.f4219c;
    }

    /* renamed from: com.a.a.d.b.a.h$a */
    private static class a<K, V> {

        /* renamed from: a */
        final K f4217a;

        /* renamed from: b */
        a<K, V> f4218b;

        /* renamed from: c */
        a<K, V> f4219c;

        /* renamed from: d */
        private List<V> f4220d;

        public a() {
            this(null);
        }

        public a(K k) {
            this.f4219c = this;
            this.f4218b = this;
            this.f4217a = k;
        }

        @Nullable
        /* renamed from: a */
        public V m4689a() {
            int m4691b = m4691b();
            if (m4691b > 0) {
                return this.f4220d.remove(m4691b - 1);
            }
            return null;
        }

        /* renamed from: b */
        public int m4691b() {
            if (this.f4220d != null) {
                return this.f4220d.size();
            }
            return 0;
        }

        /* renamed from: a */
        public void m4690a(V v) {
            if (this.f4220d == null) {
                this.f4220d = new ArrayList();
            }
            this.f4220d.add(v);
        }
    }
}
