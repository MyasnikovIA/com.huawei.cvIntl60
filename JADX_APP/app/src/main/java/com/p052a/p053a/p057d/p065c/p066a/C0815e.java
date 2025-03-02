package com.p052a.p053a.p057d.p065c.p066a;

import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.p065c.C0821g;
import com.p052a.p053a.p057d.p065c.C0832r;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p057d.p065c.InterfaceC0829o;
import java.io.InputStream;
import java.net.URL;

/* renamed from: com.a.a.d.c.a.e */
/* loaded from: classes.dex */
public class C0815e implements InterfaceC0828n<URL, InputStream> {

    /* renamed from: a */
    private final InterfaceC0828n<C0821g, InputStream> f4511a;

    public C0815e(InterfaceC0828n<C0821g, InputStream> interfaceC0828n) {
        this.f4511a = interfaceC0828n;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<InputStream> mo4909a(URL url, int i, int i2, C0886j c0886j) {
        return this.f4511a.mo4909a(new C0821g(url), i, i2, c0886j);
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(URL url) {
        return true;
    }

    /* renamed from: com.a.a.d.c.a.e$a */
    public static class a implements InterfaceC0829o<URL, InputStream> {
        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<URL, InputStream> mo4912a(C0832r c0832r) {
            return new C0815e(c0832r.m4958a(C0821g.class, InputStream.class));
        }
    }
}
