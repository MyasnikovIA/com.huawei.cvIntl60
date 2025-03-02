package android.arch.lifecycle;

import android.arch.lifecycle.AbstractC0136c;
import android.support.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: android.arch.lifecycle.a */
/* loaded from: classes.dex */
class C0134a {

    /* renamed from: a */
    static C0134a f990a = new C0134a();

    /* renamed from: b */
    private final Map<Class, a> f991b = new HashMap();

    /* renamed from: c */
    private final Map<Class, Boolean> f992c = new HashMap();

    C0134a() {
    }

    /* renamed from: a */
    boolean m1305a(Class cls) {
        if (this.f992c.containsKey(cls)) {
            return this.f992c.get(cls).booleanValue();
        }
        Method[] m1304c = m1304c(cls);
        for (Method method : m1304c) {
            if (((InterfaceC0145l) method.getAnnotation(InterfaceC0145l.class)) != null) {
                m1302a(cls, m1304c);
                return true;
            }
        }
        this.f992c.put(cls, false);
        return false;
    }

    /* renamed from: c */
    private Method[] m1304c(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* renamed from: b */
    a m1306b(Class cls) {
        a aVar = this.f991b.get(cls);
        if (aVar == null) {
            return m1302a(cls, null);
        }
        return aVar;
    }

    /* renamed from: a */
    private void m1303a(Map<b, AbstractC0136c.a> map, b bVar, AbstractC0136c.a aVar, Class cls) {
        AbstractC0136c.a aVar2 = map.get(bVar);
        if (aVar2 != null && aVar != aVar2) {
            throw new IllegalArgumentException("Method " + bVar.f996b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + aVar2 + ", new value " + aVar);
        }
        if (aVar2 == null) {
            map.put(bVar, aVar);
        }
    }

    /* renamed from: a */
    private a m1302a(Class cls, @Nullable Method[] methodArr) {
        int i;
        boolean z;
        a m1306b;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (m1306b = m1306b(superclass)) != null) {
            hashMap.putAll(m1306b.f994b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<b, AbstractC0136c.a> entry : m1306b(cls2).f994b.entrySet()) {
                m1303a(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = m1304c(cls);
        }
        int length = methodArr.length;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < length) {
            Method method = methodArr[i2];
            InterfaceC0145l interfaceC0145l = (InterfaceC0145l) method.getAnnotation(InterfaceC0145l.class);
            if (interfaceC0145l == null) {
                z = z2;
            } else {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(InterfaceC0138e.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                AbstractC0136c.a m1338a = interfaceC0145l.m1338a();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(AbstractC0136c.a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (m1338a != AbstractC0136c.a.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                m1303a(hashMap, new b(i, method), m1338a, cls);
                z = true;
            }
            i2++;
            z2 = z;
        }
        a aVar = new a(hashMap);
        this.f991b.put(cls, aVar);
        this.f992c.put(cls, Boolean.valueOf(z2));
        return aVar;
    }

    /* renamed from: android.arch.lifecycle.a$a */
    static class a {

        /* renamed from: a */
        final Map<AbstractC0136c.a, List<b>> f993a = new HashMap();

        /* renamed from: b */
        final Map<b, AbstractC0136c.a> f994b;

        a(Map<b, AbstractC0136c.a> map) {
            this.f994b = map;
            for (Map.Entry<b, AbstractC0136c.a> entry : map.entrySet()) {
                AbstractC0136c.a value = entry.getValue();
                List<b> list = this.f993a.get(value);
                if (list == null) {
                    list = new ArrayList<>();
                    this.f993a.put(value, list);
                }
                list.add(entry.getKey());
            }
        }

        /* renamed from: a */
        void m1308a(InterfaceC0138e interfaceC0138e, AbstractC0136c.a aVar, Object obj) {
            m1307a(this.f993a.get(aVar), interfaceC0138e, aVar, obj);
            m1307a(this.f993a.get(AbstractC0136c.a.ON_ANY), interfaceC0138e, aVar, obj);
        }

        /* renamed from: a */
        private static void m1307a(List<b> list, InterfaceC0138e interfaceC0138e, AbstractC0136c.a aVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).m1309a(interfaceC0138e, aVar, obj);
                }
            }
        }
    }

    /* renamed from: android.arch.lifecycle.a$b */
    static class b {

        /* renamed from: a */
        final int f995a;

        /* renamed from: b */
        final Method f996b;

        b(int i, Method method) {
            this.f995a = i;
            this.f996b = method;
            this.f996b.setAccessible(true);
        }

        /* renamed from: a */
        void m1309a(InterfaceC0138e interfaceC0138e, AbstractC0136c.a aVar, Object obj) {
            try {
                switch (this.f995a) {
                    case 0:
                        this.f996b.invoke(obj, new Object[0]);
                        return;
                    case 1:
                        this.f996b.invoke(obj, interfaceC0138e);
                        return;
                    case 2:
                        this.f996b.invoke(obj, interfaceC0138e, aVar);
                        return;
                    default:
                        return;
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to call observer method", e2.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f995a == bVar.f995a && this.f996b.getName().equals(bVar.f996b.getName());
        }

        public int hashCode() {
            return (this.f995a * 31) + this.f996b.getName().hashCode();
        }
    }
}
