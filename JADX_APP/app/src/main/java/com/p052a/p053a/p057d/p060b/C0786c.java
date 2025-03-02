package com.p052a.p053a.p057d.p060b;

import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0839d;
import com.p052a.p053a.p057d.p060b.p062b.InterfaceC0776a;
import java.io.File;

/* renamed from: com.a.a.d.b.c */
/* loaded from: classes.dex */
class C0786c<DataType> implements InterfaceC0776a.b {

    /* renamed from: a */
    private final InterfaceC0839d<DataType> f4289a;

    /* renamed from: b */
    private final DataType f4290b;

    /* renamed from: c */
    private final C0886j f4291c;

    C0786c(InterfaceC0839d<DataType> interfaceC0839d, DataType datatype, C0886j c0886j) {
        this.f4289a = interfaceC0839d;
        this.f4290b = datatype;
        this.f4291c = c0886j;
    }

    @Override // com.p052a.p053a.p057d.p060b.p062b.InterfaceC0776a.b
    /* renamed from: a */
    public boolean mo4730a(File file) {
        return this.f4289a.mo4918a(this.f4290b, file, this.f4291c);
    }
}
