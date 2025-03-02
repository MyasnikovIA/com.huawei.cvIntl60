package com.p052a.p053a.p057d.p065c.p066a;

import android.content.Context;
import android.net.Uri;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.p058a.p059a.C0744b;
import com.p052a.p053a.p057d.p058a.p059a.C0745c;
import com.p052a.p053a.p057d.p065c.C0832r;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p057d.p065c.InterfaceC0829o;
import com.p052a.p053a.p080i.C0943b;
import java.io.InputStream;

/* renamed from: com.a.a.d.c.a.c */
/* loaded from: classes.dex */
public class C0813c implements InterfaceC0828n<Uri, InputStream> {

    /* renamed from: a */
    public final Context f4507a;

    public C0813c(Context context) {
        this.f4507a = context.getApplicationContext();
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<InputStream> mo4909a(Uri uri, int i, int i2, C0886j c0886j) {
        if (C0744b.m4617a(i, i2)) {
            return new InterfaceC0828n.a<>(new C0943b(uri), C0745c.m4622a(this.f4507a, uri));
        }
        return null;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(Uri uri) {
        return C0744b.m4620c(uri);
    }

    /* renamed from: com.a.a.d.c.a.c$a */
    public static class a implements InterfaceC0829o<Uri, InputStream> {

        /* renamed from: a */
        private final Context f4508a;

        public a(Context context) {
            this.f4508a = context;
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<Uri, InputStream> mo4912a(C0832r c0832r) {
            return new C0813c(this.f4508a);
        }
    }
}
