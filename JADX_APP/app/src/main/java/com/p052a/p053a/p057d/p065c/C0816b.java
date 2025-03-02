package com.p052a.p053a.p057d.p065c;

import android.support.annotation.NonNull;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p080i.C0942a;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* renamed from: com.a.a.d.c.b */
/* loaded from: classes.dex */
public class C0816b<Data> implements InterfaceC0828n<byte[], Data> {

    /* renamed from: a */
    private final b<Data> f4512a;

    /* renamed from: com.a.a.d.c.b$b */
    public interface b<Data> {
        /* renamed from: a */
        Class<Data> mo4914a();

        /* renamed from: b */
        Data mo4916b(byte[] bArr);
    }

    public C0816b(b<Data> bVar) {
        this.f4512a = bVar;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<Data> mo4909a(byte[] bArr, int i, int i2, C0886j c0886j) {
        return new InterfaceC0828n.a<>(C0942a.m5357a(), new c(bArr, this.f4512a));
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(byte[] bArr) {
        return true;
    }

    /* renamed from: com.a.a.d.c.b$c */
    private static class c<Data> implements InterfaceC0748b<Data> {

        /* renamed from: a */
        private final byte[] f4514a;

        /* renamed from: b */
        private final b<Data> f4515b;

        public c(byte[] bArr, b<Data> bVar) {
            this.f4514a = bArr;
            this.f4515b = bVar;
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: a */
        public void mo4610a(EnumC0914g enumC0914g, InterfaceC0748b.a<? super Data> aVar) {
            aVar.mo4631a((InterfaceC0748b.a<? super Data>) this.f4515b.mo4916b(this.f4514a));
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: a */
        public void mo4609a() {
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: b */
        public void mo4612b() {
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        @NonNull
        /* renamed from: d */
        public Class<Data> mo4626d() {
            return this.f4515b.mo4914a();
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        @NonNull
        /* renamed from: c */
        public EnumC0741a mo4613c() {
            return EnumC0741a.LOCAL;
        }
    }

    /* renamed from: com.a.a.d.c.b$a */
    public static class a implements InterfaceC0829o<byte[], ByteBuffer> {

        /* renamed from: com.a.a.d.c.b$a$1 */
        class AnonymousClass1 implements b<ByteBuffer> {
            AnonymousClass1() {
            }

            @Override // com.p052a.p053a.p057d.p065c.C0816b.b
            /* renamed from: a */
            public ByteBuffer mo4916b(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }

            @Override // com.p052a.p053a.p057d.p065c.C0816b.b
            /* renamed from: a */
            public Class<ByteBuffer> mo4914a() {
                return ByteBuffer.class;
            }
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<byte[], ByteBuffer> mo4912a(C0832r c0832r) {
            return new C0816b(new b<ByteBuffer>() { // from class: com.a.a.d.c.b.a.1
                AnonymousClass1() {
                }

                @Override // com.p052a.p053a.p057d.p065c.C0816b.b
                /* renamed from: a */
                public ByteBuffer mo4916b(byte[] bArr) {
                    return ByteBuffer.wrap(bArr);
                }

                @Override // com.p052a.p053a.p057d.p065c.C0816b.b
                /* renamed from: a */
                public Class<ByteBuffer> mo4914a() {
                    return ByteBuffer.class;
                }
            });
        }
    }

    /* renamed from: com.a.a.d.c.b$d */
    public static class d implements InterfaceC0829o<byte[], InputStream> {

        /* renamed from: com.a.a.d.c.b$d$1 */
        class AnonymousClass1 implements b<InputStream> {
            AnonymousClass1() {
            }

            @Override // com.p052a.p053a.p057d.p065c.C0816b.b
            /* renamed from: a */
            public InputStream mo4916b(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }

            @Override // com.p052a.p053a.p057d.p065c.C0816b.b
            /* renamed from: a */
            public Class<InputStream> mo4914a() {
                return InputStream.class;
            }
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<byte[], InputStream> mo4912a(C0832r c0832r) {
            return new C0816b(new b<InputStream>() { // from class: com.a.a.d.c.b.d.1
                AnonymousClass1() {
                }

                @Override // com.p052a.p053a.p057d.p065c.C0816b.b
                /* renamed from: a */
                public InputStream mo4916b(byte[] bArr) {
                    return new ByteArrayInputStream(bArr);
                }

                @Override // com.p052a.p053a.p057d.p065c.C0816b.b
                /* renamed from: a */
                public Class<InputStream> mo4914a() {
                    return InputStream.class;
                }
            });
        }
    }
}
