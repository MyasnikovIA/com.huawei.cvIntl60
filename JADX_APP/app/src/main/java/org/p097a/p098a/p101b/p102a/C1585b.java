package org.p097a.p098a.p101b.p102a;

import java.util.Hashtable;
import java.util.StringTokenizer;
import org.p097a.p098a.p099a.InterfaceC1576a;
import org.p097a.p098a.p099a.InterfaceC1583d;
import org.p097a.p098a.p099a.p100a.InterfaceC1579c;
import org.p097a.p098a.p099a.p100a.InterfaceC1580d;
import org.p097a.p098a.p101b.p102a.C1586c;

/* renamed from: org.a.a.b.a.b */
/* loaded from: classes.dex */
public final class C1585b {

    /* renamed from: e */
    static Hashtable f7146e = new Hashtable();

    /* renamed from: f */
    static Class f7147f;

    /* renamed from: g */
    private static Object[] f7148g;

    /* renamed from: a */
    Class f7149a;

    /* renamed from: b */
    ClassLoader f7150b;

    /* renamed from: c */
    String f7151c;

    /* renamed from: d */
    int f7152d = 0;

    static {
        f7146e.put("void", Void.TYPE);
        f7146e.put("boolean", Boolean.TYPE);
        f7146e.put("byte", Byte.TYPE);
        f7146e.put("char", Character.TYPE);
        f7146e.put("short", Short.TYPE);
        f7146e.put("int", Integer.TYPE);
        f7146e.put("long", Long.TYPE);
        f7146e.put("float", Float.TYPE);
        f7146e.put("double", Double.TYPE);
        f7148g = new Object[0];
    }

    /* renamed from: a */
    static Class m6736a(String str, ClassLoader classLoader) {
        Class<?> cls;
        if (str.equals("*")) {
            return null;
        }
        Class cls2 = (Class) f7146e.get(str);
        if (cls2 == null) {
            try {
                if (classLoader == null) {
                    cls = Class.forName(str);
                } else {
                    cls = Class.forName(str, false, classLoader);
                }
                return cls;
            } catch (ClassNotFoundException e) {
                if (f7147f != null) {
                    return f7147f;
                }
                Class m6735a = m6735a("java.lang.ClassNotFoundException");
                f7147f = m6735a;
                return m6735a;
            }
        }
        return cls2;
    }

    /* renamed from: a */
    static Class m6735a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public C1585b(String str, Class cls) {
        this.f7151c = str;
        this.f7149a = cls;
        this.f7150b = cls.getClassLoader();
    }

    /* renamed from: a */
    public InterfaceC1576a.a m6739a(String str, InterfaceC1583d interfaceC1583d, int i) {
        int i2 = this.f7152d;
        this.f7152d = i2 + 1;
        return new C1586c.a(i2, str, interfaceC1583d, m6741a(i, -1));
    }

    /* renamed from: a */
    public static InterfaceC1576a m6737a(InterfaceC1576a.a aVar, Object obj, Object obj2) {
        return new C1586c(aVar, obj, obj2, f7148g);
    }

    /* renamed from: a */
    public static InterfaceC1576a m6738a(InterfaceC1576a.a aVar, Object obj, Object obj2, Object obj3) {
        return new C1586c(aVar, obj, obj2, new Object[]{obj3});
    }

    /* renamed from: a */
    public InterfaceC1579c m6740a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        int parseInt = Integer.parseInt(str, 16);
        Class m6736a = m6736a(str3, this.f7150b);
        StringTokenizer stringTokenizer = new StringTokenizer(str4, ":");
        int countTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[countTokens];
        for (int i = 0; i < countTokens; i++) {
            clsArr[i] = m6736a(stringTokenizer.nextToken(), this.f7150b);
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(str5, ":");
        int countTokens2 = stringTokenizer2.countTokens();
        String[] strArr = new String[countTokens2];
        for (int i2 = 0; i2 < countTokens2; i2++) {
            strArr[i2] = stringTokenizer2.nextToken();
        }
        StringTokenizer stringTokenizer3 = new StringTokenizer(str6, ":");
        int countTokens3 = stringTokenizer3.countTokens();
        Class[] clsArr2 = new Class[countTokens3];
        for (int i3 = 0; i3 < countTokens3; i3++) {
            clsArr2[i3] = m6736a(stringTokenizer3.nextToken(), this.f7150b);
        }
        return new C1588e(parseInt, str2, m6736a, clsArr, strArr, clsArr2, m6736a(str7, this.f7150b));
    }

    /* renamed from: a */
    public InterfaceC1580d m6741a(int i, int i2) {
        return new C1590g(this.f7149a, this.f7151c, i);
    }
}
