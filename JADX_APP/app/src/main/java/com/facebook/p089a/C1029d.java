package com.facebook.p089a;

import android.content.Context;
import com.facebook.C1074k;
import com.facebook.internal.C1050a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* renamed from: com.facebook.a.d */
/* loaded from: classes.dex */
class C1029d {

    /* renamed from: a */
    private final HashMap<C1003a, C1037l> f5305a = new HashMap<>();

    /* renamed from: a */
    public synchronized void m5816a(C1036k c1036k) {
        if (c1036k != null) {
            for (C1003a c1003a : c1036k.m5859a()) {
                C1037l m5812b = m5812b(c1003a);
                Iterator<C1028c> it = c1036k.m5858a(c1003a).iterator();
                while (it.hasNext()) {
                    m5812b.m5865a(it.next());
                }
            }
        }
    }

    /* renamed from: a */
    public synchronized void m5815a(C1003a c1003a, C1028c c1028c) {
        m5812b(c1003a).m5865a(c1028c);
    }

    /* renamed from: a */
    public synchronized Set<C1003a> m5814a() {
        return this.f5305a.keySet();
    }

    /* renamed from: a */
    public synchronized C1037l m5813a(C1003a c1003a) {
        return this.f5305a.get(c1003a);
    }

    /* renamed from: b */
    public synchronized int m5817b() {
        int i;
        int i2 = 0;
        Iterator<C1037l> it = this.f5305a.values().iterator();
        while (true) {
            i = i2;
            if (it.hasNext()) {
                i2 = it.next().m5863a() + i;
            }
        }
        return i;
    }

    /* renamed from: b */
    private synchronized C1037l m5812b(C1003a c1003a) {
        C1037l c1037l;
        c1037l = this.f5305a.get(c1003a);
        if (c1037l == null) {
            Context m6181f = C1074k.m6181f();
            c1037l = new C1037l(C1050a.m5919a(m6181f), C1032g.m5846b(m6181f));
        }
        this.f5305a.put(c1003a, c1037l);
        return c1037l;
    }
}
