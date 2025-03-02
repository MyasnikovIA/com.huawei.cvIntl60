package com.p052a.p053a.p057d.p065c.p066a;

import android.net.Uri;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.p065c.C0821g;
import com.p052a.p053a.p057d.p065c.C0832r;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p057d.p065c.InterfaceC0829o;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: com.a.a.d.c.a.b */
/* loaded from: classes.dex */
public class C0812b implements InterfaceC0828n<Uri, InputStream> {

    /* renamed from: a */
    private static final Set<String> f4504a = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* renamed from: b */
    private final InterfaceC0828n<C0821g, InputStream> f4505b;

    public C0812b(InterfaceC0828n<C0821g, InputStream> interfaceC0828n) {
        this.f4505b = interfaceC0828n;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<InputStream> mo4909a(Uri uri, int i, int i2, C0886j c0886j) {
        return this.f4505b.mo4909a(new C0821g(uri.toString()), i, i2, c0886j);
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(Uri uri) {
        return f4504a.contains(uri.getScheme());
    }

    /* renamed from: com.a.a.d.c.a.b$a */
    public static class a implements InterfaceC0829o<Uri, InputStream> {
        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<Uri, InputStream> mo4912a(C0832r c0832r) {
            return new C0812b(c0832r.m4958a(C0821g.class, InputStream.class));
        }
    }
}
