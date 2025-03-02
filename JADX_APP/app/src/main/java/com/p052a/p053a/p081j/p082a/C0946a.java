package com.p052a.p053a.p081j.p082a;

import android.support.v4.util.Pools;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.a.a.j.a.a */
/* loaded from: classes.dex */
public final class C0946a {

    /* renamed from: a */
    private static final d<Object> f4944a = new d<Object>() { // from class: com.a.a.j.a.a.1
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p081j.p082a.C0946a.d
        /* renamed from: a */
        public void mo5384a(Object obj) {
        }
    };

    /* renamed from: com.a.a.j.a.a$a */
    public interface a<T> {
        /* renamed from: b */
        T mo4767b();
    }

    /* renamed from: com.a.a.j.a.a$c */
    public interface c {
        /* renamed from: a_ */
        AbstractC0947b mo4768a_();
    }

    /* renamed from: com.a.a.j.a.a$d */
    public interface d<T> {
        /* renamed from: a */
        void mo5384a(T t);
    }

    /* renamed from: com.a.a.j.a.a$1 */
    static class AnonymousClass1 implements d<Object> {
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p081j.p082a.C0946a.d
        /* renamed from: a */
        public void mo5384a(Object obj) {
        }
    }

    /* renamed from: a */
    public static <T extends c> Pools.Pool<T> m5379a(int i, a<T> aVar) {
        return m5380a(new Pools.SimplePool(i), aVar);
    }

    /* renamed from: b */
    public static <T extends c> Pools.Pool<T> m5382b(int i, a<T> aVar) {
        return m5380a(new Pools.SynchronizedPool(i), aVar);
    }

    /* renamed from: a */
    public static <T> Pools.Pool<List<T>> m5377a() {
        return m5378a(20);
    }

    /* renamed from: com.a.a.j.a.a$2 */
    static class AnonymousClass2<T> implements a<List<T>> {
        AnonymousClass2() {
        }

        @Override // com.p052a.p053a.p081j.p082a.C0946a.a
        /* renamed from: a */
        public List<T> mo4767b() {
            return new ArrayList();
        }
    }

    /* renamed from: a */
    public static <T> Pools.Pool<List<T>> m5378a(int i) {
        return m5381a(new Pools.SynchronizedPool(i), new a<List<T>>() { // from class: com.a.a.j.a.a.2
            AnonymousClass2() {
            }

            @Override // com.p052a.p053a.p081j.p082a.C0946a.a
            /* renamed from: a */
            public List<T> mo4767b() {
                return new ArrayList();
            }
        }, new d<List<T>>() { // from class: com.a.a.j.a.a.3
            AnonymousClass3() {
            }

            @Override // com.p052a.p053a.p081j.p082a.C0946a.d
            /* renamed from: a */
            public void mo5384a(List<T> list) {
                list.clear();
            }
        });
    }

    /* renamed from: com.a.a.j.a.a$3 */
    static class AnonymousClass3<T> implements d<List<T>> {
        AnonymousClass3() {
        }

        @Override // com.p052a.p053a.p081j.p082a.C0946a.d
        /* renamed from: a */
        public void mo5384a(List<T> list) {
            list.clear();
        }
    }

    /* renamed from: a */
    private static <T extends c> Pools.Pool<T> m5380a(Pools.Pool<T> pool, a<T> aVar) {
        return m5381a(pool, aVar, m5383b());
    }

    /* renamed from: a */
    private static <T> Pools.Pool<T> m5381a(Pools.Pool<T> pool, a<T> aVar, d<T> dVar) {
        return new b(pool, aVar, dVar);
    }

    /* renamed from: b */
    private static <T> d<T> m5383b() {
        return (d<T>) f4944a;
    }

    /* renamed from: com.a.a.j.a.a$b */
    private static final class b<T> implements Pools.Pool<T> {

        /* renamed from: a */
        private final a<T> f4945a;

        /* renamed from: b */
        private final d<T> f4946b;

        /* renamed from: c */
        private final Pools.Pool<T> f4947c;

        b(Pools.Pool<T> pool, a<T> aVar, d<T> dVar) {
            this.f4947c = pool;
            this.f4945a = aVar;
            this.f4946b = dVar;
        }

        @Override // android.support.v4.util.Pools.Pool
        public T acquire() {
            T acquire = this.f4947c.acquire();
            if (acquire == null) {
                acquire = this.f4945a.mo4767b();
                if (Log.isLoggable("FactoryPools", 2)) {
                    Log.v("FactoryPools", "Created new " + acquire.getClass());
                }
            }
            if (acquire instanceof c) {
                acquire.mo4768a_().mo5388a(false);
            }
            return (T) acquire;
        }

        @Override // android.support.v4.util.Pools.Pool
        public boolean release(T t) {
            if (t instanceof c) {
                ((c) t).mo4768a_().mo5388a(true);
            }
            this.f4946b.mo5384a(t);
            return this.f4947c.release(t);
        }
    }
}
