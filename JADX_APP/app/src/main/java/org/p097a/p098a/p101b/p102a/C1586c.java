package org.p097a.p098a.p101b.p102a;

import org.p097a.p098a.p099a.InterfaceC1576a;
import org.p097a.p098a.p099a.InterfaceC1582c;
import org.p097a.p098a.p099a.InterfaceC1583d;
import org.p097a.p098a.p099a.p100a.InterfaceC1580d;

/* renamed from: org.a.a.b.a.c */
/* loaded from: classes.dex */
class C1586c implements InterfaceC1582c {

    /* renamed from: a */
    Object f7153a;

    /* renamed from: b */
    Object f7154b;

    /* renamed from: c */
    Object[] f7155c;

    /* renamed from: d */
    InterfaceC1576a.a f7156d;

    /* renamed from: org.a.a.b.a.c$a */
    static class a implements InterfaceC1576a.a {

        /* renamed from: a */
        String f7157a;

        /* renamed from: b */
        InterfaceC1583d f7158b;

        /* renamed from: c */
        InterfaceC1580d f7159c;

        /* renamed from: d */
        private int f7160d;

        public a(int i, String str, InterfaceC1583d interfaceC1583d, InterfaceC1580d interfaceC1580d) {
            this.f7157a = str;
            this.f7158b = interfaceC1583d;
            this.f7159c = interfaceC1580d;
            this.f7160d = i;
        }

        /* renamed from: a */
        public String m6742a() {
            return this.f7157a;
        }

        /* renamed from: b */
        public InterfaceC1583d m6744b() {
            return this.f7158b;
        }

        /* renamed from: a */
        String m6743a(C1591h c1591h) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(c1591h.m6767a(m6742a()));
            stringBuffer.append("(");
            stringBuffer.append(((AbstractC1589f) m6744b()).m6750b(c1591h));
            stringBuffer.append(")");
            return stringBuffer.toString();
        }

        @Override // org.p097a.p098a.p099a.InterfaceC1576a.a
        public final String toString() {
            return m6743a(C1591h.f7177k);
        }
    }

    public C1586c(InterfaceC1576a.a aVar, Object obj, Object obj2, Object[] objArr) {
        this.f7156d = aVar;
        this.f7153a = obj;
        this.f7154b = obj2;
        this.f7155c = objArr;
    }

    @Override // org.p097a.p098a.p099a.InterfaceC1576a
    /* renamed from: a */
    public Object mo6732a() {
        return this.f7154b;
    }

    public final String toString() {
        return this.f7156d.toString();
    }
}
