package com.p052a.p053a.p057d.p065c;

import android.net.Uri;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: com.a.a.d.c.x */
/* loaded from: classes.dex */
public class C0838x<Data> implements InterfaceC0828n<Uri, Data> {

    /* renamed from: a */
    private static final Set<String> f4592a = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* renamed from: b */
    private final InterfaceC0828n<C0821g, Data> f4593b;

    public C0838x(InterfaceC0828n<C0821g, Data> interfaceC0828n) {
        this.f4593b = interfaceC0828n;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<Data> mo4909a(Uri uri, int i, int i2, C0886j c0886j) {
        return this.f4593b.mo4909a(new C0821g(uri.toString()), i, i2, c0886j);
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(Uri uri) {
        return f4592a.contains(uri.getScheme());
    }

    /* renamed from: com.a.a.d.c.x$a */
    public static class a implements InterfaceC0829o<Uri, InputStream> {
        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<Uri, InputStream> mo4912a(C0832r c0832r) {
            return new C0838x(c0832r.m4958a(C0821g.class, InputStream.class));
        }
    }
}
