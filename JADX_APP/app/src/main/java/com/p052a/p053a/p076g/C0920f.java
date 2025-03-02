package com.p052a.p053a.p076g;

import com.p052a.p053a.p057d.InterfaceC0888l;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.a.a.g.f */
/* loaded from: classes.dex */
public class C0920f {

    /* renamed from: a */
    final List<a<?>> f4814a = new ArrayList();

    /* renamed from: a */
    public synchronized <Z> void m5199a(Class<Z> cls, InterfaceC0888l<Z> interfaceC0888l) {
        this.f4814a.add(new a<>(cls, interfaceC0888l));
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
    
        r0 = (com.p052a.p053a.p057d.InterfaceC0888l<Z>) r0.f4815a;
     */
    @android.support.annotation.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized <Z> com.p052a.p053a.p057d.InterfaceC0888l<Z> m5198a(java.lang.Class<Z> r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            java.util.List<com.a.a.g.f$a<?>> r0 = r4.f4814a     // Catch: java.lang.Throwable -> L23
            int r2 = r0.size()     // Catch: java.lang.Throwable -> L23
            r0 = 0
            r1 = r0
        L9:
            if (r1 >= r2) goto L21
            java.util.List<com.a.a.g.f$a<?>> r0 = r4.f4814a     // Catch: java.lang.Throwable -> L23
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L23
            com.a.a.g.f$a r0 = (com.p052a.p053a.p076g.C0920f.a) r0     // Catch: java.lang.Throwable -> L23
            boolean r3 = r0.m5200a(r5)     // Catch: java.lang.Throwable -> L23
            if (r3 == 0) goto L1d
            com.a.a.d.l<T> r0 = r0.f4815a     // Catch: java.lang.Throwable -> L23
        L1b:
            monitor-exit(r4)
            return r0
        L1d:
            int r0 = r1 + 1
            r1 = r0
            goto L9
        L21:
            r0 = 0
            goto L1b
        L23:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p052a.p053a.p076g.C0920f.m5198a(java.lang.Class):com.a.a.d.l");
    }

    /* renamed from: com.a.a.g.f$a */
    private static final class a<T> {

        /* renamed from: a */
        final InterfaceC0888l<T> f4815a;

        /* renamed from: b */
        private final Class<T> f4816b;

        a(Class<T> cls, InterfaceC0888l<T> interfaceC0888l) {
            this.f4816b = cls;
            this.f4815a = interfaceC0888l;
        }

        /* renamed from: a */
        boolean m5200a(Class<?> cls) {
            return this.f4816b.isAssignableFrom(cls);
        }
    }
}
