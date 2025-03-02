package com.p052a.p053a.p057d.p067d.p073f;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.a.a.d.d.f.e */
/* loaded from: classes.dex */
public class C0879e {

    /* renamed from: a */
    private final List<a<?, ?>> f4723a = new ArrayList();

    /* renamed from: a */
    public synchronized <Z, R> void m5098a(Class<Z> cls, Class<R> cls2, InterfaceC0878d<Z, R> interfaceC0878d) {
        this.f4723a.add(new a<>(cls, cls2, interfaceC0878d));
    }

    /* renamed from: a */
    public synchronized <Z, R> InterfaceC0878d<Z, R> m5097a(Class<Z> cls, Class<R> cls2) {
        InterfaceC0878d<Z, R> interfaceC0878d;
        if (cls2.isAssignableFrom(cls)) {
            interfaceC0878d = C0880f.m5101a();
        } else {
            for (a<?, ?> aVar : this.f4723a) {
                if (aVar.m5100a(cls, cls2)) {
                    interfaceC0878d = (InterfaceC0878d<Z, R>) aVar.f4724a;
                }
            }
            throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
        }
        return interfaceC0878d;
    }

    /* renamed from: b */
    public synchronized <Z, R> List<Class<R>> m5099b(Class<Z> cls, Class<R> cls2) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList2.add(cls2);
            arrayList = arrayList2;
        } else {
            Iterator<a<?, ?>> it = this.f4723a.iterator();
            while (it.hasNext()) {
                if (it.next().m5100a(cls, cls2)) {
                    arrayList2.add(cls2);
                }
            }
            arrayList = arrayList2;
        }
        return arrayList;
    }

    /* renamed from: com.a.a.d.d.f.e$a */
    private static final class a<Z, R> {

        /* renamed from: a */
        final InterfaceC0878d<Z, R> f4724a;

        /* renamed from: b */
        private final Class<Z> f4725b;

        /* renamed from: c */
        private final Class<R> f4726c;

        a(Class<Z> cls, Class<R> cls2, InterfaceC0878d<Z, R> interfaceC0878d) {
            this.f4725b = cls;
            this.f4726c = cls2;
            this.f4724a = interfaceC0878d;
        }

        /* renamed from: a */
        public boolean m5100a(Class<?> cls, Class<?> cls2) {
            return this.f4725b.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f4726c);
        }
    }
}
