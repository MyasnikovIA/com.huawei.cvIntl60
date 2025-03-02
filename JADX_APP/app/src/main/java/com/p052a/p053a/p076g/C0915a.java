package com.p052a.p053a.p076g;

import com.p052a.p053a.p057d.InterfaceC0839d;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.a.a.g.a */
/* loaded from: classes.dex */
public class C0915a {

    /* renamed from: a */
    private final List<a<?>> f4801a = new ArrayList();

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
    
        r0 = (com.p052a.p053a.p057d.InterfaceC0839d<T>) r0.f4802a;
     */
    @android.support.annotation.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized <T> com.p052a.p053a.p057d.InterfaceC0839d<T> m5181a(java.lang.Class<T> r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            java.util.List<com.a.a.g.a$a<?>> r0 = r3.f4801a     // Catch: java.lang.Throwable -> L1f
            java.util.Iterator r1 = r0.iterator()     // Catch: java.lang.Throwable -> L1f
        L7:
            boolean r0 = r1.hasNext()     // Catch: java.lang.Throwable -> L1f
            if (r0 == 0) goto L1d
            java.lang.Object r0 = r1.next()     // Catch: java.lang.Throwable -> L1f
            com.a.a.g.a$a r0 = (com.p052a.p053a.p076g.C0915a.a) r0     // Catch: java.lang.Throwable -> L1f
            boolean r2 = r0.m5183a(r4)     // Catch: java.lang.Throwable -> L1f
            if (r2 == 0) goto L7
            com.a.a.d.d<T> r0 = r0.f4802a     // Catch: java.lang.Throwable -> L1f
        L1b:
            monitor-exit(r3)
            return r0
        L1d:
            r0 = 0
            goto L1b
        L1f:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p052a.p053a.p076g.C0915a.m5181a(java.lang.Class):com.a.a.d.d");
    }

    /* renamed from: a */
    public synchronized <T> void m5182a(Class<T> cls, InterfaceC0839d<T> interfaceC0839d) {
        this.f4801a.add(new a<>(cls, interfaceC0839d));
    }

    /* renamed from: com.a.a.g.a$a */
    private static final class a<T> {

        /* renamed from: a */
        final InterfaceC0839d<T> f4802a;

        /* renamed from: b */
        private final Class<T> f4803b;

        public a(Class<T> cls, InterfaceC0839d<T> interfaceC0839d) {
            this.f4803b = cls;
            this.f4802a = interfaceC0839d;
        }

        /* renamed from: a */
        public boolean m5183a(Class<?> cls) {
            return this.f4803b.isAssignableFrom(cls);
        }
    }
}
