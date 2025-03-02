package com.p052a.p053a.p057d.p065c;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.p058a.C0752f;
import com.p052a.p053a.p057d.p058a.C0757k;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p080i.C0943b;
import java.io.InputStream;

/* renamed from: com.a.a.d.c.a */
/* loaded from: classes.dex */
public class C0810a<Data> implements InterfaceC0828n<Uri, Data> {

    /* renamed from: a */
    private static final int f4497a = "file:///android_asset/".length();

    /* renamed from: b */
    private final AssetManager f4498b;

    /* renamed from: c */
    private final a<Data> f4499c;

    /* renamed from: com.a.a.d.c.a$a */
    public interface a<Data> {
        /* renamed from: a */
        InterfaceC0748b<Data> mo4911a(AssetManager assetManager, String str);
    }

    public C0810a(AssetManager assetManager, a<Data> aVar) {
        this.f4498b = assetManager;
        this.f4499c = aVar;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<Data> mo4909a(Uri uri, int i, int i2, C0886j c0886j) {
        return new InterfaceC0828n.a<>(new C0943b(uri), this.f4499c.mo4911a(this.f4498b, uri.toString().substring(f4497a)));
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(Uri uri) {
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    /* renamed from: com.a.a.d.c.a$c */
    public static class c implements a<InputStream>, InterfaceC0829o<Uri, InputStream> {

        /* renamed from: a */
        private final AssetManager f4506a;

        public c(AssetManager assetManager) {
            this.f4506a = assetManager;
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<Uri, InputStream> mo4912a(C0832r c0832r) {
            return new C0810a(this.f4506a, this);
        }

        @Override // com.p052a.p053a.p057d.p065c.C0810a.a
        /* renamed from: a */
        public InterfaceC0748b<InputStream> mo4911a(AssetManager assetManager, String str) {
            return new C0757k(assetManager, str);
        }
    }

    /* renamed from: com.a.a.d.c.a$b */
    public static class b implements a<ParcelFileDescriptor>, InterfaceC0829o<Uri, ParcelFileDescriptor> {

        /* renamed from: a */
        private final AssetManager f4503a;

        public b(AssetManager assetManager) {
            this.f4503a = assetManager;
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<Uri, ParcelFileDescriptor> mo4912a(C0832r c0832r) {
            return new C0810a(this.f4503a, this);
        }

        @Override // com.p052a.p053a.p057d.p065c.C0810a.a
        /* renamed from: a */
        public InterfaceC0748b<ParcelFileDescriptor> mo4911a(AssetManager assetManager, String str) {
            return new C0752f(assetManager, str);
        }
    }
}
