package com.p052a.p053a.p076g;

import com.p052a.p053a.p057d.InterfaceC0887k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.a.a.g.e */
/* loaded from: classes.dex */
public class C0919e {

    /* renamed from: a */
    private final List<String> f4809a = new ArrayList();

    /* renamed from: b */
    private final Map<String, List<a<?, ?>>> f4810b = new HashMap();

    /* renamed from: a */
    public synchronized void m5195a(List<String> list) {
        ArrayList<String> arrayList = new ArrayList(this.f4809a);
        this.f4809a.clear();
        this.f4809a.addAll(list);
        for (String str : arrayList) {
            if (!list.contains(str)) {
                this.f4809a.add(str);
            }
        }
    }

    /* renamed from: a */
    public synchronized <T, R> List<InterfaceC0887k<T, R>> m5193a(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.f4809a.iterator();
        while (it.hasNext()) {
            List<a<?, ?>> list = this.f4810b.get(it.next());
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.m5197a(cls, cls2)) {
                        arrayList.add(aVar.f4812b);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public synchronized <T, R> List<Class<R>> m5196b(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.f4809a.iterator();
        while (it.hasNext()) {
            List<a<?, ?>> list = this.f4810b.get(it.next());
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.m5197a(cls, cls2)) {
                        arrayList.add(aVar.f4811a);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public synchronized <T, R> void m5194a(String str, InterfaceC0887k<T, R> interfaceC0887k, Class<T> cls, Class<R> cls2) {
        m5192a(str).add(new a<>(cls, cls2, interfaceC0887k));
    }

    /* renamed from: a */
    private synchronized List<a<?, ?>> m5192a(String str) {
        List<a<?, ?>> list;
        if (!this.f4809a.contains(str)) {
            this.f4809a.add(str);
        }
        list = this.f4810b.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.f4810b.put(str, list);
        }
        return list;
    }

    /* renamed from: com.a.a.g.e$a */
    private static class a<T, R> {

        /* renamed from: a */
        final Class<R> f4811a;

        /* renamed from: b */
        final InterfaceC0887k<T, R> f4812b;

        /* renamed from: c */
        private final Class<T> f4813c;

        public a(Class<T> cls, Class<R> cls2, InterfaceC0887k<T, R> interfaceC0887k) {
            this.f4813c = cls;
            this.f4811a = cls2;
            this.f4812b = interfaceC0887k;
        }

        /* renamed from: a */
        public boolean m5197a(Class<?> cls, Class<?> cls2) {
            return this.f4813c.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f4811a);
        }
    }
}
