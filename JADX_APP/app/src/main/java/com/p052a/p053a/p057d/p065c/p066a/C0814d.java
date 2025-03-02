package com.p052a.p053a.p057d.p065c.p066a;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.Nullable;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.p058a.p059a.C0744b;
import com.p052a.p053a.p057d.p058a.p059a.C0745c;
import com.p052a.p053a.p057d.p065c.C0832r;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p057d.p065c.InterfaceC0829o;
import com.p052a.p053a.p057d.p067d.p068a.C0859s;
import com.p052a.p053a.p080i.C0943b;
import java.io.InputStream;

/* renamed from: com.a.a.d.c.a.d */
/* loaded from: classes.dex */
public class C0814d implements InterfaceC0828n<Uri, InputStream> {

    /* renamed from: a */
    private final Context f4509a;

    C0814d(Context context) {
        this.f4509a = context.getApplicationContext();
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    @Nullable
    /* renamed from: a */
    public InterfaceC0828n.a<InputStream> mo4909a(Uri uri, int i, int i2, C0886j c0886j) {
        if (C0744b.m4617a(i, i2) && m4913a(c0886j)) {
            return new InterfaceC0828n.a<>(new C0943b(uri), C0745c.m4624b(this.f4509a, uri));
        }
        return null;
    }

    /* renamed from: a */
    private boolean m4913a(C0886j c0886j) {
        Long l = (Long) c0886j.m5115a(C0859s.f4659a);
        return l != null && l.longValue() == -1;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(Uri uri) {
        return C0744b.m4619b(uri);
    }

    /* renamed from: com.a.a.d.c.a.d$a */
    public static class a implements InterfaceC0829o<Uri, InputStream> {

        /* renamed from: a */
        private final Context f4510a;

        public a(Context context) {
            this.f4510a = context;
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<Uri, InputStream> mo4912a(C0832r c0832r) {
            return new C0814d(this.f4510a);
        }
    }
}
