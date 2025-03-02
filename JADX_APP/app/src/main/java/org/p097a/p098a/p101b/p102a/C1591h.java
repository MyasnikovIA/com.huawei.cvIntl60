package org.p097a.p098a.p101b.p102a;

import java.lang.reflect.Modifier;

/* renamed from: org.a.a.b.a.h */
/* loaded from: classes.dex */
class C1591h {

    /* renamed from: j */
    static C1591h f7176j = new C1591h();

    /* renamed from: k */
    static C1591h f7177k;

    /* renamed from: l */
    static C1591h f7178l;

    /* renamed from: a */
    boolean f7179a = true;

    /* renamed from: b */
    boolean f7180b = true;

    /* renamed from: c */
    boolean f7181c = false;

    /* renamed from: d */
    boolean f7182d = false;

    /* renamed from: e */
    boolean f7183e = false;

    /* renamed from: f */
    boolean f7184f = true;

    /* renamed from: g */
    boolean f7185g = true;

    /* renamed from: h */
    boolean f7186h = true;

    /* renamed from: i */
    int f7187i;

    C1591h() {
    }

    static {
        f7176j.f7179a = true;
        f7176j.f7180b = false;
        f7176j.f7181c = false;
        f7176j.f7182d = false;
        f7176j.f7183e = true;
        f7176j.f7184f = false;
        f7176j.f7185g = false;
        f7176j.f7187i = 0;
        f7177k = new C1591h();
        f7177k.f7179a = true;
        f7177k.f7180b = true;
        f7177k.f7181c = false;
        f7177k.f7182d = false;
        f7177k.f7183e = false;
        f7176j.f7187i = 1;
        f7178l = new C1591h();
        f7178l.f7179a = false;
        f7178l.f7180b = true;
        f7178l.f7181c = false;
        f7178l.f7182d = true;
        f7178l.f7183e = false;
        f7178l.f7186h = false;
        f7178l.f7187i = 2;
    }

    /* renamed from: a */
    String m6767a(String str) {
        int lastIndexOf = str.lastIndexOf(45);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    /* renamed from: a */
    String m6763a(int i) {
        if (!this.f7182d) {
            return "";
        }
        String modifier = Modifier.toString(i);
        return modifier.length() == 0 ? "" : new StringBuffer().append(modifier).append(" ").toString();
    }

    /* renamed from: b */
    String m6769b(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    /* renamed from: a */
    String m6766a(Class cls, String str, boolean z) {
        if (cls == null) {
            return "ANONYMOUS";
        }
        if (cls.isArray()) {
            Class<?> componentType = cls.getComponentType();
            return new StringBuffer().append(m6766a(componentType, componentType.getName(), z)).append("[]").toString();
        }
        if (z) {
            return m6769b(str).replace('$', '.');
        }
        return str.replace('$', '.');
    }

    /* renamed from: a */
    public String m6764a(Class cls) {
        return m6766a(cls, cls.getName(), this.f7179a);
    }

    /* renamed from: a */
    public String m6765a(Class cls, String str) {
        return m6766a(cls, str, this.f7183e);
    }

    /* renamed from: a */
    public void m6768a(StringBuffer stringBuffer, Class[] clsArr) {
        for (int i = 0; i < clsArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(m6764a(clsArr[i]));
        }
    }

    /* renamed from: b */
    public void m6770b(StringBuffer stringBuffer, Class[] clsArr) {
        if (clsArr != null) {
            if (!this.f7180b) {
                if (clsArr.length == 0) {
                    stringBuffer.append("()");
                    return;
                } else {
                    stringBuffer.append("(..)");
                    return;
                }
            }
            stringBuffer.append("(");
            m6768a(stringBuffer, clsArr);
            stringBuffer.append(")");
        }
    }

    /* renamed from: c */
    public void m6771c(StringBuffer stringBuffer, Class[] clsArr) {
        if (this.f7181c && clsArr != null && clsArr.length != 0) {
            stringBuffer.append(" throws ");
            m6768a(stringBuffer, clsArr);
        }
    }
}
