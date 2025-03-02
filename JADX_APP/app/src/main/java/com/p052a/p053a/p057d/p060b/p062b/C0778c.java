package com.p052a.p053a.p057d.p060b.p062b;

import com.p052a.p053a.p081j.C0954h;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: com.a.a.d.b.b.c */
/* loaded from: classes.dex */
final class C0778c {

    /* renamed from: a */
    private final Map<String, a> f4254a = new HashMap();

    /* renamed from: b */
    private final b f4255b = new b();

    C0778c() {
    }

    /* renamed from: a */
    void m4731a(String str) {
        a aVar;
        synchronized (this) {
            aVar = this.f4254a.get(str);
            if (aVar == null) {
                aVar = this.f4255b.m4733a();
                this.f4254a.put(str, aVar);
            }
            aVar.f4257b++;
        }
        aVar.f4256a.lock();
    }

    /* renamed from: b */
    void m4732b(String str) {
        a aVar;
        synchronized (this) {
            aVar = (a) C0954h.m5409a(this.f4254a.get(str));
            if (aVar.f4257b < 1) {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.f4257b);
            }
            aVar.f4257b--;
            if (aVar.f4257b == 0) {
                a remove = this.f4254a.remove(str);
                if (!remove.equals(aVar)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + remove + ", safeKey: " + str);
                }
                this.f4255b.m4734a(remove);
            }
        }
        aVar.f4256a.unlock();
    }

    /* renamed from: com.a.a.d.b.b.c$a */
    private static class a {

        /* renamed from: a */
        final Lock f4256a = new ReentrantLock();

        /* renamed from: b */
        int f4257b;

        a() {
        }
    }

    /* renamed from: com.a.a.d.b.b.c$b */
    private static class b {

        /* renamed from: a */
        private final Queue<a> f4258a = new ArrayDeque();

        b() {
        }

        /* renamed from: a */
        a m4733a() {
            a poll;
            synchronized (this.f4258a) {
                poll = this.f4258a.poll();
            }
            if (poll == null) {
                return new a();
            }
            return poll;
        }

        /* renamed from: a */
        void m4734a(a aVar) {
            synchronized (this.f4258a) {
                if (this.f4258a.size() < 10) {
                    this.f4258a.offer(aVar);
                }
            }
        }
    }
}
