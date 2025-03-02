package com.p052a.p053a;

import com.p052a.p053a.AbstractC0956k;
import com.p052a.p053a.p077h.p079b.C0933a;
import com.p052a.p053a.p077h.p079b.InterfaceC0935c;

/* renamed from: com.a.a.k */
/* loaded from: classes.dex */
public abstract class AbstractC0956k<CHILD extends AbstractC0956k<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: a */
    private InterfaceC0935c<? super TranscodeType> f4970a = C0933a.m5259a();

    /* renamed from: a */
    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    final InterfaceC0935c<? super TranscodeType> m5434b() {
        return this.f4970a;
    }
}
