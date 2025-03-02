package com.p052a.p053a.p057d.p065c;

import android.support.annotation.NonNull;
import android.util.Base64;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p080i.C0943b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.a.a.d.c.e */
/* loaded from: classes.dex */
public final class C0819e<Data> implements InterfaceC0828n<String, Data> {

    /* renamed from: a */
    private final a<Data> f4518a;

    /* renamed from: com.a.a.d.c.e$a */
    public interface a<Data> {
        /* renamed from: a */
        Class<Data> mo4919a();

        /* renamed from: a */
        Data mo4920a(String str);

        /* renamed from: a */
        void mo4921a(Data data);
    }

    public C0819e(a<Data> aVar) {
        this.f4518a = aVar;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<Data> mo4909a(String str, int i, int i2, C0886j c0886j) {
        return new InterfaceC0828n.a<>(new C0943b(str), new b(str, this.f4518a));
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(String str) {
        return str.startsWith("data:image");
    }

    /* renamed from: com.a.a.d.c.e$b */
    private static final class b<Data> implements InterfaceC0748b<Data> {

        /* renamed from: a */
        private final String f4519a;

        /* renamed from: b */
        private final a<Data> f4520b;

        /* renamed from: c */
        private Data f4521c;

        public b(String str, a<Data> aVar) {
            this.f4519a = str;
            this.f4520b = aVar;
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: a */
        public void mo4610a(EnumC0914g enumC0914g, InterfaceC0748b.a<? super Data> aVar) {
            try {
                this.f4521c = this.f4520b.mo4920a(this.f4519a);
                aVar.mo4631a((InterfaceC0748b.a<? super Data>) this.f4521c);
            } catch (IllegalArgumentException e) {
                aVar.mo4630a((Exception) e);
            }
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: a */
        public void mo4609a() {
            try {
                this.f4520b.mo4921a((a<Data>) this.f4521c);
            } catch (IOException e) {
            }
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: b */
        public void mo4612b() {
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        @NonNull
        /* renamed from: d */
        public Class<Data> mo4626d() {
            return this.f4520b.mo4919a();
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        @NonNull
        /* renamed from: c */
        public EnumC0741a mo4613c() {
            return EnumC0741a.LOCAL;
        }
    }

    /* renamed from: com.a.a.d.c.e$c */
    public static final class c implements InterfaceC0829o<String, InputStream> {

        /* renamed from: a */
        private final a<InputStream> f4522a = new a<InputStream>() { // from class: com.a.a.d.c.e.c.1
            AnonymousClass1() {
            }

            @Override // com.p052a.p053a.p057d.p065c.C0819e.a
            /* renamed from: b */
            public InputStream mo4920a(String str) {
                if (!str.startsWith("data:image")) {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
                int indexOf = str.indexOf(44);
                if (indexOf == -1) {
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                if (!str.substring(0, indexOf).endsWith(";base64")) {
                    throw new IllegalArgumentException("Not a base64 image data URL.");
                }
                return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
            }

            @Override // com.p052a.p053a.p057d.p065c.C0819e.a
            /* renamed from: a */
            public void mo4921a(InputStream inputStream) {
                inputStream.close();
            }

            @Override // com.p052a.p053a.p057d.p065c.C0819e.a
            /* renamed from: a */
            public Class<InputStream> mo4919a() {
                return InputStream.class;
            }
        };

        /* renamed from: com.a.a.d.c.e$c$1 */
        class AnonymousClass1 implements a<InputStream> {
            AnonymousClass1() {
            }

            @Override // com.p052a.p053a.p057d.p065c.C0819e.a
            /* renamed from: b */
            public InputStream mo4920a(String str) {
                if (!str.startsWith("data:image")) {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
                int indexOf = str.indexOf(44);
                if (indexOf == -1) {
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                if (!str.substring(0, indexOf).endsWith(";base64")) {
                    throw new IllegalArgumentException("Not a base64 image data URL.");
                }
                return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
            }

            @Override // com.p052a.p053a.p057d.p065c.C0819e.a
            /* renamed from: a */
            public void mo4921a(InputStream inputStream) {
                inputStream.close();
            }

            @Override // com.p052a.p053a.p057d.p065c.C0819e.a
            /* renamed from: a */
            public Class<InputStream> mo4919a() {
                return InputStream.class;
            }
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public final InterfaceC0828n<String, InputStream> mo4912a(C0832r c0832r) {
            return new C0819e(this.f4522a);
        }
    }
}
