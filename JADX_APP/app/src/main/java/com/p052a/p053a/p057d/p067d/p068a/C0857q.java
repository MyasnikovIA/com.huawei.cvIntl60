package com.p052a.p053a.p057d.p067d.p068a;

import android.graphics.Bitmap;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0887k;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import com.p052a.p053a.p057d.p067d.p068a.C0852l;
import com.p052a.p053a.p081j.C0949c;
import com.p052a.p053a.p081j.C0952f;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.a.a.d.d.a.q */
/* loaded from: classes.dex */
public class C0857q implements InterfaceC0887k<InputStream, Bitmap> {

    /* renamed from: a */
    private final C0852l f4650a;

    /* renamed from: b */
    private final InterfaceC0762b f4651b;

    public C0857q(C0852l c0852l, InterfaceC0762b interfaceC0762b) {
        this.f4650a = c0852l;
        this.f4651b = interfaceC0762b;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0887k
    /* renamed from: a */
    public boolean mo4970a(InputStream inputStream, C0886j c0886j) {
        return this.f4650a.m5021a(inputStream);
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0887k
    /* renamed from: a */
    public InterfaceC0804s<Bitmap> mo4969a(InputStream inputStream, int i, int i2, C0886j c0886j) {
        boolean z;
        C0856p c0856p;
        if (inputStream instanceof C0856p) {
            c0856p = (C0856p) inputStream;
            z = false;
        } else {
            z = true;
            c0856p = new C0856p(inputStream, this.f4651b);
        }
        C0949c m5392a = C0949c.m5392a(c0856p);
        try {
            return this.f4650a.m5020a(new C0952f(m5392a), i, i2, c0886j, new a(c0856p, m5392a));
        } finally {
            m5392a.m5394b();
            if (z) {
                c0856p.m5034b();
            }
        }
    }

    /* renamed from: com.a.a.d.d.a.q$a */
    static class a implements C0852l.a {

        /* renamed from: a */
        private final C0856p f4652a;

        /* renamed from: b */
        private final C0949c f4653b;

        public a(C0856p c0856p, C0949c c0949c) {
            this.f4652a = c0856p;
            this.f4653b = c0949c;
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0852l.a
        /* renamed from: a */
        public void mo5023a() {
            this.f4652a.m5033a();
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0852l.a
        /* renamed from: a */
        public void mo5024a(InterfaceC0765e interfaceC0765e, Bitmap bitmap) {
            IOException m5393a = this.f4653b.m5393a();
            if (m5393a != null) {
                if (bitmap != null) {
                    interfaceC0765e.mo4679a(bitmap);
                    throw m5393a;
                }
                throw m5393a;
            }
        }
    }
}
