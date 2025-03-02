package com.p052a.p053a.p057d.p058a;

import com.p052a.p053a.p057d.p058a.InterfaceC0749c;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b;
import com.p052a.p053a.p057d.p067d.p068a.C0856p;
import java.io.InputStream;

/* renamed from: com.a.a.d.a.i */
/* loaded from: classes.dex */
public final class C0755i implements InterfaceC0749c<InputStream> {

    /* renamed from: a */
    private final C0856p f4188a;

    C0755i(InputStream inputStream, InterfaceC0762b interfaceC0762b) {
        this.f4188a = new C0856p(inputStream, interfaceC0762b);
        this.f4188a.mark(5242880);
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0749c
    /* renamed from: c */
    public InputStream mo4632a() {
        this.f4188a.reset();
        return this.f4188a;
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0749c
    /* renamed from: b */
    public void mo4633b() {
        this.f4188a.m5034b();
    }

    /* renamed from: com.a.a.d.a.i$a */
    public static final class a implements InterfaceC0749c.a<InputStream> {

        /* renamed from: a */
        private final InterfaceC0762b f4189a;

        public a(InterfaceC0762b interfaceC0762b) {
            this.f4189a = interfaceC0762b;
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0749c.a
        /* renamed from: a */
        public InterfaceC0749c<InputStream> mo4634a(InputStream inputStream) {
            return new C0755i(inputStream, this.f4189a);
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0749c.a
        /* renamed from: a */
        public Class<InputStream> mo4635a() {
            return InputStream.class;
        }
    }
}
