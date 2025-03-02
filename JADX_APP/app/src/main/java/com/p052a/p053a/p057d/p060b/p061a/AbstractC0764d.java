package com.p052a.p053a.p057d.p060b.p061a;

import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0773m;
import com.p052a.p053a.p081j.C0955i;
import java.util.Queue;

/* renamed from: com.a.a.d.b.a.d */
/* loaded from: classes.dex */
abstract class AbstractC0764d<T extends InterfaceC0773m> {

    /* renamed from: a */
    private final Queue<T> f4214a = C0955i.m5424a(20);

    /* renamed from: b */
    protected abstract T mo4673b();

    AbstractC0764d() {
    }

    /* renamed from: c */
    protected T m4675c() {
        T poll = this.f4214a.poll();
        if (poll == null) {
            return mo4673b();
        }
        return poll;
    }

    /* renamed from: a */
    public void m4674a(T t) {
        if (this.f4214a.size() < 20) {
            this.f4214a.offer(t);
        }
    }
}
