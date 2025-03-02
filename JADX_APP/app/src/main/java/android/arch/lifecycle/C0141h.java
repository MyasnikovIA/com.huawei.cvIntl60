package android.arch.lifecycle;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.arch.lifecycle.h */
/* loaded from: classes.dex */
public class C0141h {

    /* renamed from: a */
    private static Map<Class, Integer> f1014a = new HashMap();

    /* renamed from: b */
    private static Map<Class, List<Constructor<? extends InterfaceC0135b>>> f1015b = new HashMap();

    @NonNull
    /* renamed from: a */
    static GenericLifecycleObserver m1331a(Object obj) {
        int i = 0;
        if (obj instanceof FullLifecycleObserver) {
            return new FullLifecycleObserverAdapter((FullLifecycleObserver) obj);
        }
        if (obj instanceof GenericLifecycleObserver) {
            return (GenericLifecycleObserver) obj;
        }
        Class<?> cls = obj.getClass();
        if (m1335b(cls) == 2) {
            List<Constructor<? extends InterfaceC0135b>> list = f1015b.get(cls);
            if (list.size() == 1) {
                return new SingleGeneratedAdapterObserver(m1332a(list.get(0), obj));
            }
            InterfaceC0135b[] interfaceC0135bArr = new InterfaceC0135b[list.size()];
            while (true) {
                int i2 = i;
                if (i2 < list.size()) {
                    interfaceC0135bArr[i2] = m1332a(list.get(i2), obj);
                    i = i2 + 1;
                } else {
                    return new CompositeGeneratedAdaptersObserver(interfaceC0135bArr);
                }
            }
        } else {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
    }

    /* renamed from: a */
    private static InterfaceC0135b m1332a(Constructor<? extends InterfaceC0135b> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    @Nullable
    /* renamed from: a */
    private static Constructor<? extends InterfaceC0135b> m1334a(Class<?> cls) {
        try {
            Package r1 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r1 != null ? r1.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String m1333a = m1333a(canonicalName);
            if (!name.isEmpty()) {
                m1333a = name + "." + m1333a;
            }
            Constructor declaredConstructor = Class.forName(m1333a).getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
                return declaredConstructor;
            }
            return declaredConstructor;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: b */
    private static int m1335b(Class<?> cls) {
        if (f1014a.containsKey(cls)) {
            return f1014a.get(cls).intValue();
        }
        int m1336c = m1336c(cls);
        f1014a.put(cls, Integer.valueOf(m1336c));
        return m1336c;
    }

    /* renamed from: c */
    private static int m1336c(Class<?> cls) {
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends InterfaceC0135b> m1334a = m1334a(cls);
        if (m1334a != null) {
            f1015b.put(cls, Collections.singletonList(m1334a));
            return 2;
        }
        if (C0134a.f990a.m1305a(cls)) {
            return 1;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        ArrayList arrayList = null;
        if (m1337d(superclass)) {
            if (m1335b(superclass) == 1) {
                return 1;
            }
            arrayList = new ArrayList(f1015b.get(superclass));
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            if (m1337d(cls2)) {
                if (m1335b(cls2) == 1) {
                    return 1;
                }
                ArrayList arrayList2 = arrayList == null ? new ArrayList() : arrayList;
                arrayList2.addAll(f1015b.get(cls2));
                arrayList = arrayList2;
            }
        }
        if (arrayList == null) {
            return 1;
        }
        f1015b.put(cls, arrayList);
        return 2;
    }

    /* renamed from: d */
    private static boolean m1337d(Class<?> cls) {
        return cls != null && InterfaceC0137d.class.isAssignableFrom(cls);
    }

    /* renamed from: a */
    public static String m1333a(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }
}
