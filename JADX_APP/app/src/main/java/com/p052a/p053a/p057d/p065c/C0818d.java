package com.p052a.p053a.p057d.p065c;

import android.support.annotation.NonNull;
import android.util.Log;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p080i.C0943b;
import com.p052a.p053a.p081j.C0945a;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: com.a.a.d.c.d */
/* loaded from: classes.dex */
public class C0818d implements InterfaceC0828n<File, ByteBuffer> {
    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<ByteBuffer> mo4909a(File file, int i, int i2, C0886j c0886j) {
        return new InterfaceC0828n.a<>(new C0943b(file), new a(file));
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(File file) {
        return true;
    }

    /* renamed from: com.a.a.d.c.d$b */
    public static class b implements InterfaceC0829o<File, ByteBuffer> {
        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<File, ByteBuffer> mo4912a(C0832r c0832r) {
            return new C0818d();
        }
    }

    /* renamed from: com.a.a.d.c.d$a */
    private static class a implements InterfaceC0748b<ByteBuffer> {

        /* renamed from: a */
        private final File f4517a;

        public a(File file) {
            this.f4517a = file;
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: a */
        public void mo4610a(EnumC0914g enumC0914g, InterfaceC0748b.a<? super ByteBuffer> aVar) {
            try {
                aVar.mo4631a((InterfaceC0748b.a<? super ByteBuffer>) C0945a.m5372a(this.f4517a));
            } catch (IOException e) {
                if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                    Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e);
                }
                aVar.mo4630a((Exception) e);
            }
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
        public Class<ByteBuffer> mo4626d() {
            return ByteBuffer.class;
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        @NonNull
        /* renamed from: c */
        public EnumC0741a mo4613c() {
            return EnumC0741a.LOCAL;
        }
    }
}
