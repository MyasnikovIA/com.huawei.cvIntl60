package com.p052a.p053a.p057d.p067d.p069b;

import com.p052a.p053a.p057d.p058a.InterfaceC0749c;
import java.nio.ByteBuffer;

/* renamed from: com.a.a.d.d.b.a */
/* loaded from: classes.dex */
public class C0861a implements InterfaceC0749c<ByteBuffer> {

    /* renamed from: a */
    private final ByteBuffer f4667a;

    public C0861a(ByteBuffer byteBuffer) {
        this.f4667a = byteBuffer;
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0749c
    /* renamed from: c */
    public ByteBuffer mo4632a() {
        this.f4667a.position(0);
        return this.f4667a;
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0749c
    /* renamed from: b */
    public void mo4633b() {
    }

    /* renamed from: com.a.a.d.d.b.a$a */
    public static class a implements InterfaceC0749c.a<ByteBuffer> {
        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0749c.a
        /* renamed from: a */
        public InterfaceC0749c<ByteBuffer> mo4634a(ByteBuffer byteBuffer) {
            return new C0861a(byteBuffer);
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0749c.a
        /* renamed from: a */
        public Class<ByteBuffer> mo4635a() {
            return ByteBuffer.class;
        }
    }
}
