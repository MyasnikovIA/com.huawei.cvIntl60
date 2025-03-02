package com.p052a.p053a.p057d.p065c;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.p058a.C0753g;
import com.p052a.p053a.p057d.p058a.C0758l;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p080i.C0943b;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: com.a.a.d.c.w */
/* loaded from: classes.dex */
public class C0837w<Data> implements InterfaceC0828n<Uri, Data> {

    /* renamed from: a */
    private static final Set<String> f4588a = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "android.resource", "content")));

    /* renamed from: b */
    private final b<Data> f4589b;

    /* renamed from: com.a.a.d.c.w$b */
    public interface b<Data> {
        /* renamed from: a */
        InterfaceC0748b<Data> mo4968a(Uri uri);
    }

    public C0837w(b<Data> bVar) {
        this.f4589b = bVar;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<Data> mo4909a(Uri uri, int i, int i2, C0886j c0886j) {
        return new InterfaceC0828n.a<>(new C0943b(uri), this.f4589b.mo4968a(uri));
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(Uri uri) {
        return f4588a.contains(uri.getScheme());
    }

    /* renamed from: com.a.a.d.c.w$c */
    public static class c implements InterfaceC0829o<Uri, InputStream>, b<InputStream> {

        /* renamed from: a */
        private final ContentResolver f4591a;

        public c(ContentResolver contentResolver) {
            this.f4591a = contentResolver;
        }

        @Override // com.p052a.p053a.p057d.p065c.C0837w.b
        /* renamed from: a */
        public InterfaceC0748b<InputStream> mo4968a(Uri uri) {
            return new C0758l(this.f4591a, uri);
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<Uri, InputStream> mo4912a(C0832r c0832r) {
            return new C0837w(this);
        }
    }

    /* renamed from: com.a.a.d.c.w$a */
    public static class a implements InterfaceC0829o<Uri, ParcelFileDescriptor>, b<ParcelFileDescriptor> {

        /* renamed from: a */
        private final ContentResolver f4590a;

        public a(ContentResolver contentResolver) {
            this.f4590a = contentResolver;
        }

        @Override // com.p052a.p053a.p057d.p065c.C0837w.b
        /* renamed from: a */
        public InterfaceC0748b<ParcelFileDescriptor> mo4968a(Uri uri) {
            return new C0753g(this.f4590a, uri);
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<Uri, ParcelFileDescriptor> mo4912a(C0832r c0832r) {
            return new C0837w(this);
        }
    }
}
