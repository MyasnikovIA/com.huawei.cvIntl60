package org.p097a.p098a.p101b.p102a;

import org.p097a.p098a.p099a.p100a.InterfaceC1577a;

/* renamed from: org.a.a.b.a.a */
/* loaded from: classes.dex */
abstract class AbstractC1584a extends AbstractC1587d implements InterfaceC1577a {

    /* renamed from: a */
    Class[] f7143a;

    /* renamed from: b */
    String[] f7144b;

    /* renamed from: c */
    Class[] f7145c;

    AbstractC1584a(int i, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2) {
        super(i, str, cls);
        this.f7143a = clsArr;
        this.f7144b = strArr;
        this.f7145c = clsArr2;
    }

    /* renamed from: a */
    public Class[] m6733a() {
        if (this.f7143a == null) {
            this.f7143a = m6753d(3);
        }
        return this.f7143a;
    }

    /* renamed from: b */
    public Class[] m6734b() {
        if (this.f7145c == null) {
            this.f7145c = m6753d(5);
        }
        return this.f7145c;
    }
}
