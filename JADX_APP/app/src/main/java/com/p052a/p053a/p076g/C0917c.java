package com.p052a.p053a.p076g;

import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.p052a.p053a.p057d.p060b.C0802q;
import com.p052a.p053a.p081j.C0953g;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.a.a.g.c */
/* loaded from: classes.dex */
public class C0917c {

    /* renamed from: a */
    private final ArrayMap<C0953g, C0802q<?, ?, ?>> f4805a = new ArrayMap<>();

    /* renamed from: b */
    private final AtomicReference<C0953g> f4806b = new AtomicReference<>();

    /* renamed from: a */
    public boolean m5188a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        boolean containsKey;
        C0953g m5186c = m5186c(cls, cls2, cls3);
        synchronized (this.f4805a) {
            containsKey = this.f4805a.containsKey(m5186c);
        }
        this.f4806b.set(m5186c);
        return containsKey;
    }

    @Nullable
    /* renamed from: b */
    public <Data, TResource, Transcode> C0802q<Data, TResource, Transcode> m5189b(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        C0802q<Data, TResource, Transcode> c0802q;
        C0953g m5186c = m5186c(cls, cls2, cls3);
        synchronized (this.f4805a) {
            c0802q = (C0802q) this.f4805a.get(m5186c);
        }
        this.f4806b.set(m5186c);
        return c0802q;
    }

    /* renamed from: a */
    public void m5187a(Class<?> cls, Class<?> cls2, Class<?> cls3, C0802q<?, ?, ?> c0802q) {
        synchronized (this.f4805a) {
            this.f4805a.put(new C0953g(cls, cls2, cls3), c0802q);
        }
    }

    /* renamed from: c */
    private C0953g m5186c(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        C0953g andSet = this.f4806b.getAndSet(null);
        if (andSet == null) {
            andSet = new C0953g();
        }
        andSet.m5408a(cls, cls2, cls3);
        return andSet;
    }
}
