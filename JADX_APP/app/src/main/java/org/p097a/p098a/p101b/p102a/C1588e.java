package org.p097a.p098a.p101b.p102a;

import org.p097a.p098a.p099a.p100a.InterfaceC1579c;

/* renamed from: org.a.a.b.a.e */
/* loaded from: classes.dex */
class C1588e extends AbstractC1584a implements InterfaceC1579c {

    /* renamed from: d */
    Class f7161d;

    C1588e(int i, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        super(i, str, cls, clsArr, strArr, clsArr2);
        this.f7161d = cls2;
    }

    /* renamed from: c */
    public Class m6746c() {
        if (this.f7161d == null) {
            this.f7161d = m6751c(6);
        }
        return this.f7161d;
    }

    @Override // org.p097a.p098a.p101b.p102a.AbstractC1589f
    /* renamed from: a */
    protected String mo6745a(C1591h c1591h) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(c1591h.m6763a(m6752d()));
        if (c1591h.f7180b) {
            stringBuffer.append(c1591h.m6764a(m6746c()));
        }
        if (c1591h.f7180b) {
            stringBuffer.append(" ");
        }
        stringBuffer.append(c1591h.m6765a(m6755f(), m6756g()));
        stringBuffer.append(".");
        stringBuffer.append(m6754e());
        c1591h.m6770b(stringBuffer, m6733a());
        c1591h.m6771c(stringBuffer, m6734b());
        return stringBuffer.toString();
    }
}
