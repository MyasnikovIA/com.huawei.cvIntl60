package com.p052a.p053a.p076g;

import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.p052a.p053a.p081j.C0953g;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.a.a.g.d */
/* loaded from: classes.dex */
public class C0918d {

    /* renamed from: a */
    private final AtomicReference<C0953g> f4807a = new AtomicReference<>();

    /* renamed from: b */
    private final ArrayMap<C0953g, List<Class<?>>> f4808b = new ArrayMap<>();

    @Nullable
    /* renamed from: a */
    public List<Class<?>> m5190a(Class<?> cls, Class<?> cls2) {
        C0953g c0953g;
        List<Class<?>> list;
        C0953g andSet = this.f4807a.getAndSet(null);
        if (andSet == null) {
            c0953g = new C0953g(cls, cls2);
        } else {
            andSet.m5407a(cls, cls2);
            c0953g = andSet;
        }
        synchronized (this.f4808b) {
            list = this.f4808b.get(c0953g);
        }
        this.f4807a.set(c0953g);
        return list;
    }

    /* renamed from: a */
    public void m5191a(Class<?> cls, Class<?> cls2, List<Class<?>> list) {
        synchronized (this.f4808b) {
            this.f4808b.put(new C0953g(cls, cls2), list);
        }
    }
}
