package com.facebook.p089a;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/* renamed from: com.facebook.a.k */
/* loaded from: classes.dex */
class C1036k implements Serializable {
    private static final long serialVersionUID = 20160629001L;

    /* renamed from: a */
    private HashMap<C1003a, List<C1028c>> f5348a = new HashMap<>();

    public C1036k() {
    }

    public C1036k(HashMap<C1003a, List<C1028c>> hashMap) {
        this.f5348a.putAll(hashMap);
    }

    /* renamed from: a */
    public Set<C1003a> m5859a() {
        return this.f5348a.keySet();
    }

    /* renamed from: a */
    public List<C1028c> m5858a(C1003a c1003a) {
        return this.f5348a.get(c1003a);
    }

    /* renamed from: b */
    public boolean m5861b(C1003a c1003a) {
        return this.f5348a.containsKey(c1003a);
    }

    /* renamed from: a */
    public void m5860a(C1003a c1003a, List<C1028c> list) {
        if (!this.f5348a.containsKey(c1003a)) {
            this.f5348a.put(c1003a, list);
        } else {
            this.f5348a.get(c1003a).addAll(list);
        }
    }

    /* renamed from: com.facebook.a.k$a */
    static class a implements Serializable {
        private static final long serialVersionUID = 20160629001L;

        /* renamed from: a */
        private final HashMap<C1003a, List<C1028c>> f5349a;

        /* synthetic */ a(HashMap hashMap, AnonymousClass1 anonymousClass1) {
            this(hashMap);
        }

        private a(HashMap<C1003a, List<C1028c>> hashMap) {
            this.f5349a = hashMap;
        }

        private Object readResolve() {
            return new C1036k(this.f5349a);
        }
    }

    private Object writeReplace() {
        return new a(this.f5348a);
    }
}
