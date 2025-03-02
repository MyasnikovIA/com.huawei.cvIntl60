package com.p052a.p053a.p057d.p060b.p061a;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.p052a.p053a.p081j.C0954h;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* renamed from: com.a.a.d.b.a.j */
/* loaded from: classes.dex */
public final class C0770j implements InterfaceC0762b {

    /* renamed from: a */
    private final C0768h<a, Object> f4221a;

    /* renamed from: b */
    private final b f4222b;

    /* renamed from: c */
    private final Map<Class<?>, NavigableMap<Integer, Integer>> f4223c;

    /* renamed from: d */
    private final Map<Class<?>, InterfaceC0761a<?>> f4224d;

    /* renamed from: e */
    private final int f4225e;

    /* renamed from: f */
    private int f4226f;

    @VisibleForTesting
    public C0770j() {
        this.f4221a = new C0768h<>();
        this.f4222b = new b();
        this.f4223c = new HashMap();
        this.f4224d = new HashMap();
        this.f4225e = 4194304;
    }

    public C0770j(int i) {
        this.f4221a = new C0768h<>();
        this.f4222b = new b();
        this.f4223c = new HashMap();
        this.f4224d = new HashMap();
        this.f4225e = i;
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b
    /* renamed from: a */
    public synchronized <T> void mo4660a(T t, Class<T> cls) {
        InterfaceC0761a<T> m4697b = m4697b(cls);
        int mo4653a = m4697b.mo4653a((InterfaceC0761a<T>) t);
        int mo4656b = mo4653a * m4697b.mo4656b();
        if (m4700b(mo4656b)) {
            a m4705a = this.f4222b.m4705a(mo4653a, cls);
            this.f4221a.m4688a(m4705a, t);
            NavigableMap<Integer, Integer> m4695a = m4695a((Class<?>) cls);
            Integer num = (Integer) m4695a.get(Integer.valueOf(m4705a.f4227a));
            m4695a.put(Integer.valueOf(m4705a.f4227a), Integer.valueOf(num == null ? 1 : num.intValue() + 1));
            this.f4226f += mo4656b;
            m4701c();
        }
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b
    /* renamed from: a */
    public <T> T mo4657a(int i, Class<T> cls) {
        a m4705a;
        T t;
        InterfaceC0761a<T> m4697b = m4697b(cls);
        synchronized (this) {
            Integer ceilingKey = m4695a((Class<?>) cls).ceilingKey(Integer.valueOf(i));
            if (m4696a(i, ceilingKey)) {
                m4705a = this.f4222b.m4705a(ceilingKey.intValue(), cls);
            } else {
                m4705a = this.f4222b.m4705a(i, cls);
            }
            t = (T) m4694a(m4705a);
            if (t != null) {
                this.f4226f -= m4697b.mo4653a((InterfaceC0761a<T>) t) * m4697b.mo4656b();
                m4698b(m4697b.mo4653a((InterfaceC0761a<T>) t), cls);
            }
        }
        if (t == null) {
            if (Log.isLoggable(m4697b.mo4655a(), 2)) {
                Log.v(m4697b.mo4655a(), "Allocated " + i + " bytes");
            }
            return m4697b.mo4654a(i);
        }
        return t;
    }

    @Nullable
    /* renamed from: a */
    private <T> T m4694a(a aVar) {
        return (T) this.f4221a.m4687a((C0768h<a, Object>) aVar);
    }

    /* renamed from: b */
    private boolean m4700b(int i) {
        return i <= this.f4225e / 2;
    }

    /* renamed from: a */
    private boolean m4696a(int i, Integer num) {
        return num != null && (m4699b() || num.intValue() <= i * 8);
    }

    /* renamed from: b */
    private boolean m4699b() {
        return this.f4226f == 0 || this.f4225e / this.f4226f >= 2;
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b
    /* renamed from: a */
    public synchronized void mo4658a() {
        m4702c(0);
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b
    /* renamed from: a */
    public synchronized void mo4659a(int i) {
        if (i >= 40) {
            mo4658a();
        } else if (i >= 20) {
            m4702c(this.f4225e / 2);
        }
    }

    /* renamed from: c */
    private void m4701c() {
        m4702c(this.f4225e);
    }

    /* renamed from: c */
    private void m4702c(int i) {
        while (this.f4226f > i) {
            Object m4686a = this.f4221a.m4686a();
            C0954h.m5409a(m4686a);
            InterfaceC0761a m4693a = m4693a((C0770j) m4686a);
            this.f4226f -= m4693a.mo4653a((InterfaceC0761a) m4686a) * m4693a.mo4656b();
            m4698b(m4693a.mo4653a((InterfaceC0761a) m4686a), m4686a.getClass());
            if (Log.isLoggable(m4693a.mo4655a(), 2)) {
                Log.v(m4693a.mo4655a(), "evicted: " + m4693a.mo4653a((InterfaceC0761a) m4686a));
            }
        }
    }

    /* renamed from: b */
    private void m4698b(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> m4695a = m4695a(cls);
        Integer num = (Integer) m4695a.get(Integer.valueOf(i));
        if (num == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
        }
        if (num.intValue() == 1) {
            m4695a.remove(Integer.valueOf(i));
        } else {
            m4695a.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
        }
    }

    /* renamed from: a */
    private NavigableMap<Integer, Integer> m4695a(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f4223c.get(cls);
        if (navigableMap == null) {
            TreeMap treeMap = new TreeMap();
            this.f4223c.put(cls, treeMap);
            return treeMap;
        }
        return navigableMap;
    }

    /* renamed from: a */
    private <T> InterfaceC0761a<T> m4693a(T t) {
        return m4697b(t.getClass());
    }

    /* renamed from: b */
    private <T> InterfaceC0761a<T> m4697b(Class<T> cls) {
        InterfaceC0761a<T> interfaceC0761a = (InterfaceC0761a) this.f4224d.get(cls);
        if (interfaceC0761a == null) {
            if (cls.equals(int[].class)) {
                interfaceC0761a = new C0769i();
            } else if (cls.equals(byte[].class)) {
                interfaceC0761a = new C0767g();
            } else {
                throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
            }
            this.f4224d.put(cls, interfaceC0761a);
        }
        return interfaceC0761a;
    }

    /* renamed from: com.a.a.d.b.a.j$b */
    private static final class b extends AbstractC0764d<a> {
        b() {
        }

        /* renamed from: a */
        a m4705a(int i, Class<?> cls) {
            a c = m4675c();
            c.m4703a(i, cls);
            return c;
        }

        @Override // com.p052a.p053a.p057d.p060b.p061a.AbstractC0764d
        /* renamed from: a */
        public a mo4673b() {
            return new a(this);
        }
    }

    /* renamed from: com.a.a.d.b.a.j$a */
    private static final class a implements InterfaceC0773m {

        /* renamed from: a */
        int f4227a;

        /* renamed from: b */
        private final b f4228b;

        /* renamed from: c */
        private Class<?> f4229c;

        a(b bVar) {
            this.f4228b = bVar;
        }

        /* renamed from: a */
        void m4703a(int i, Class<?> cls) {
            this.f4227a = i;
            this.f4229c = cls;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f4227a == aVar.f4227a && this.f4229c == aVar.f4229c;
        }

        public String toString() {
            return "Key{size=" + this.f4227a + "array=" + this.f4229c + '}';
        }

        @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0773m
        /* renamed from: a */
        public void mo4669a() {
            this.f4228b.m4674a(this);
        }

        public int hashCode() {
            return (this.f4229c != null ? this.f4229c.hashCode() : 0) + (this.f4227a * 31);
        }
    }
}
