package com.p052a.p053a.p057d.p065c;

import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.util.Log;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p080i.C0943b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.a.a.d.c.f */
/* loaded from: classes.dex */
public class C0820f<Data> implements InterfaceC0828n<File, Data> {

    /* renamed from: a */
    private final d<Data> f4524a;

    /* renamed from: com.a.a.d.c.f$d */
    public interface d<Data> {
        /* renamed from: a */
        Class<Data> mo4924a();

        /* renamed from: a */
        void mo4925a(Data data);

        /* renamed from: b */
        Data mo4926b(File file);
    }

    public C0820f(d<Data> dVar) {
        this.f4524a = dVar;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<Data> mo4909a(File file, int i, int i2, C0886j c0886j) {
        return new InterfaceC0828n.a<>(new C0943b(file), new c(file, this.f4524a));
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(File file) {
        return true;
    }

    /* renamed from: com.a.a.d.c.f$c */
    private static class c<Data> implements InterfaceC0748b<Data> {

        /* renamed from: a */
        private final File f4526a;

        /* renamed from: b */
        private final d<Data> f4527b;

        /* renamed from: c */
        private Data f4528c;

        public c(File file, d<Data> dVar) {
            this.f4526a = file;
            this.f4527b = dVar;
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: a */
        public void mo4610a(EnumC0914g enumC0914g, InterfaceC0748b.a<? super Data> aVar) {
            try {
                this.f4528c = this.f4527b.mo4926b(this.f4526a);
                aVar.mo4631a((InterfaceC0748b.a<? super Data>) this.f4528c);
            } catch (FileNotFoundException e) {
                if (Log.isLoggable("FileLoader", 3)) {
                    Log.d("FileLoader", "Failed to open file", e);
                }
                aVar.mo4630a((Exception) e);
            }
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: a */
        public void mo4609a() {
            if (this.f4528c != null) {
                try {
                    this.f4527b.mo4925a(this.f4528c);
                } catch (IOException e) {
                }
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
            return this.f4527b.mo4924a();
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        @NonNull
        /* renamed from: c */
        public EnumC0741a mo4613c() {
            return EnumC0741a.LOCAL;
        }
    }

    /* renamed from: com.a.a.d.c.f$a */
    public static class a<Data> implements InterfaceC0829o<File, Data> {

        /* renamed from: a */
        private final d<Data> f4525a;

        public a(d<Data> dVar) {
            this.f4525a = dVar;
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public final InterfaceC0828n<File, Data> mo4912a(C0832r c0832r) {
            return new C0820f(this.f4525a);
        }
    }

    /* renamed from: com.a.a.d.c.f$e */
    public static class e extends a<InputStream> {

        /* renamed from: com.a.a.d.c.f$e$1 */
        class AnonymousClass1 implements d<InputStream> {
            AnonymousClass1() {
            }

            @Override // com.p052a.p053a.p057d.p065c.C0820f.d
            /* renamed from: a */
            public InputStream mo4926b(File file) {
                return new FileInputStream(file);
            }

            @Override // com.p052a.p053a.p057d.p065c.C0820f.d
            /* renamed from: a */
            public void mo4925a(InputStream inputStream) {
                inputStream.close();
            }

            @Override // com.p052a.p053a.p057d.p065c.C0820f.d
            /* renamed from: a */
            public Class<InputStream> mo4924a() {
                return InputStream.class;
            }
        }

        public e() {
            super(new d<InputStream>() { // from class: com.a.a.d.c.f.e.1
                AnonymousClass1() {
                }

                @Override // com.p052a.p053a.p057d.p065c.C0820f.d
                /* renamed from: a */
                public InputStream mo4926b(File file) {
                    return new FileInputStream(file);
                }

                @Override // com.p052a.p053a.p057d.p065c.C0820f.d
                /* renamed from: a */
                public void mo4925a(InputStream inputStream) {
                    inputStream.close();
                }

                @Override // com.p052a.p053a.p057d.p065c.C0820f.d
                /* renamed from: a */
                public Class<InputStream> mo4924a() {
                    return InputStream.class;
                }
            });
        }
    }

    /* renamed from: com.a.a.d.c.f$b */
    public static class b extends a<ParcelFileDescriptor> {

        /* renamed from: com.a.a.d.c.f$b$1 */
        class AnonymousClass1 implements d<ParcelFileDescriptor> {
            AnonymousClass1() {
            }

            @Override // com.p052a.p053a.p057d.p065c.C0820f.d
            /* renamed from: a */
            public ParcelFileDescriptor mo4926b(File file) {
                return ParcelFileDescriptor.open(file, 268435456);
            }

            @Override // com.p052a.p053a.p057d.p065c.C0820f.d
            /* renamed from: a */
            public void mo4925a(ParcelFileDescriptor parcelFileDescriptor) {
                parcelFileDescriptor.close();
            }

            @Override // com.p052a.p053a.p057d.p065c.C0820f.d
            /* renamed from: a */
            public Class<ParcelFileDescriptor> mo4924a() {
                return ParcelFileDescriptor.class;
            }
        }

        public b() {
            super(new d<ParcelFileDescriptor>() { // from class: com.a.a.d.c.f.b.1
                AnonymousClass1() {
                }

                @Override // com.p052a.p053a.p057d.p065c.C0820f.d
                /* renamed from: a */
                public ParcelFileDescriptor mo4926b(File file) {
                    return ParcelFileDescriptor.open(file, 268435456);
                }

                @Override // com.p052a.p053a.p057d.p065c.C0820f.d
                /* renamed from: a */
                public void mo4925a(ParcelFileDescriptor parcelFileDescriptor) {
                    parcelFileDescriptor.close();
                }

                @Override // com.p052a.p053a.p057d.p065c.C0820f.d
                /* renamed from: a */
                public Class<ParcelFileDescriptor> mo4924a() {
                    return ParcelFileDescriptor.class;
                }
            });
        }
    }
}
