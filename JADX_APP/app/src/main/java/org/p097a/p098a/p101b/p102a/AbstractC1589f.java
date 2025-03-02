package org.p097a.p098a.p101b.p102a;

import java.lang.ref.SoftReference;
import java.util.StringTokenizer;
import org.p097a.p098a.p099a.InterfaceC1583d;

/* renamed from: org.a.a.b.a.f */
/* loaded from: classes.dex */
abstract class AbstractC1589f implements InterfaceC1583d {

    /* renamed from: a */
    private static boolean f7162a = true;

    /* renamed from: k */
    static String[] f7163k = new String[0];

    /* renamed from: l */
    static Class[] f7164l = new Class[0];

    /* renamed from: b */
    private String f7165b;

    /* renamed from: e */
    int f7166e;

    /* renamed from: f */
    String f7167f;

    /* renamed from: g */
    String f7168g;

    /* renamed from: h */
    Class f7169h;

    /* renamed from: i */
    a f7170i;

    /* renamed from: j */
    ClassLoader f7171j = null;

    /* renamed from: org.a.a.b.a.f$a */
    private interface a {
        /* renamed from: a */
        String mo6757a(int i);

        /* renamed from: a */
        void mo6758a(int i, String str);
    }

    /* renamed from: a */
    protected abstract String mo6745a(C1591h c1591h);

    AbstractC1589f(int i, String str, Class cls) {
        this.f7166e = -1;
        this.f7166e = i;
        this.f7167f = str;
        this.f7169h = cls;
    }

    /* renamed from: b */
    String m6750b(C1591h c1591h) {
        String str = null;
        if (f7162a) {
            if (this.f7170i == null) {
                try {
                    this.f7170i = new b();
                } catch (Throwable th) {
                    f7162a = false;
                }
            } else {
                str = this.f7170i.mo6757a(c1591h.f7187i);
            }
        }
        if (str == null) {
            str = mo6745a(c1591h);
        }
        if (f7162a) {
            this.f7170i.mo6758a(c1591h.f7187i, str);
        }
        return str;
    }

    public final String toString() {
        return m6750b(C1591h.f7177k);
    }

    /* renamed from: d */
    public int m6752d() {
        if (this.f7166e == -1) {
            this.f7166e = m6749b(0);
        }
        return this.f7166e;
    }

    /* renamed from: e */
    public String m6754e() {
        if (this.f7167f == null) {
            this.f7167f = m6748a(1);
        }
        return this.f7167f;
    }

    /* renamed from: f */
    public Class m6755f() {
        if (this.f7169h == null) {
            this.f7169h = m6751c(2);
        }
        return this.f7169h;
    }

    /* renamed from: g */
    public String m6756g() {
        if (this.f7168g == null) {
            this.f7168g = m6755f().getName();
        }
        return this.f7168g;
    }

    /* renamed from: a */
    private ClassLoader m6747a() {
        if (this.f7171j == null) {
            this.f7171j = getClass().getClassLoader();
        }
        return this.f7171j;
    }

    /* renamed from: a */
    String m6748a(int i) {
        int i2 = 0;
        int indexOf = this.f7165b.indexOf(45);
        while (true) {
            int i3 = i - 1;
            if (i <= 0) {
                break;
            }
            i2 = indexOf + 1;
            indexOf = this.f7165b.indexOf(45, i2);
            i = i3;
        }
        if (indexOf == -1) {
            indexOf = this.f7165b.length();
        }
        return this.f7165b.substring(i2, indexOf);
    }

    /* renamed from: b */
    int m6749b(int i) {
        return Integer.parseInt(m6748a(i), 16);
    }

    /* renamed from: c */
    Class m6751c(int i) {
        return C1585b.m6736a(m6748a(i), m6747a());
    }

    /* renamed from: d */
    Class[] m6753d(int i) {
        StringTokenizer stringTokenizer = new StringTokenizer(m6748a(i), ":");
        int countTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[countTokens];
        for (int i2 = 0; i2 < countTokens; i2++) {
            clsArr[i2] = C1585b.m6736a(stringTokenizer.nextToken(), m6747a());
        }
        return clsArr;
    }

    /* renamed from: org.a.a.b.a.f$b */
    private static final class b implements a {

        /* renamed from: a */
        private SoftReference f7172a;

        public b() {
            m6760b();
        }

        @Override // org.p097a.p098a.p101b.p102a.AbstractC1589f.a
        /* renamed from: a */
        public String mo6757a(int i) {
            String[] m6759a = m6759a();
            if (m6759a == null) {
                return null;
            }
            return m6759a[i];
        }

        @Override // org.p097a.p098a.p101b.p102a.AbstractC1589f.a
        /* renamed from: a */
        public void mo6758a(int i, String str) {
            String[] m6759a = m6759a();
            if (m6759a == null) {
                m6759a = m6760b();
            }
            m6759a[i] = str;
        }

        /* renamed from: a */
        private String[] m6759a() {
            return (String[]) this.f7172a.get();
        }

        /* renamed from: b */
        private String[] m6760b() {
            String[] strArr = new String[3];
            this.f7172a = new SoftReference(strArr);
            return strArr;
        }
    }
}
