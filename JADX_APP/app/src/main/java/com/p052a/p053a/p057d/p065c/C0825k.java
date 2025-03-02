package com.p052a.p053a.p057d.p065c;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p057d.p058a.p059a.C0744b;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p080i.C0943b;
import java.io.File;
import java.io.FileNotFoundException;

/* renamed from: com.a.a.d.c.k */
/* loaded from: classes.dex */
public final class C0825k implements InterfaceC0828n<Uri, File> {

    /* renamed from: a */
    private final Context f4546a;

    C0825k(Context context) {
        this.f4546a = context;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<File> mo4909a(Uri uri, int i, int i2, C0886j c0886j) {
        return new InterfaceC0828n.a<>(new C0943b(uri), new b(this.f4546a, uri));
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(Uri uri) {
        return C0744b.m4618a(uri);
    }

    /* renamed from: com.a.a.d.c.k$b */
    private static class b implements InterfaceC0748b<File> {

        /* renamed from: a */
        private static final String[] f4548a = {"_data"};

        /* renamed from: b */
        private final Context f4549b;

        /* renamed from: c */
        private final Uri f4550c;

        b(Context context, Uri uri) {
            this.f4549b = context;
            this.f4550c = uri;
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: a */
        public void mo4610a(EnumC0914g enumC0914g, InterfaceC0748b.a<? super File> aVar) {
            Cursor query = this.f4549b.getContentResolver().query(this.f4550c, f4548a, null, null, null);
            if (query != null) {
                try {
                    r3 = query.moveToFirst() ? query.getString(query.getColumnIndexOrThrow("_data")) : null;
                } finally {
                    query.close();
                }
            }
            if (TextUtils.isEmpty(r3)) {
                aVar.mo4630a((Exception) new FileNotFoundException("Failed to find file path for: " + this.f4550c));
            } else {
                aVar.mo4631a((InterfaceC0748b.a<? super File>) new File(r3));
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
        public Class<File> mo4626d() {
            return File.class;
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        @NonNull
        /* renamed from: c */
        public EnumC0741a mo4613c() {
            return EnumC0741a.LOCAL;
        }
    }

    /* renamed from: com.a.a.d.c.k$a */
    public static final class a implements InterfaceC0829o<Uri, File> {

        /* renamed from: a */
        private final Context f4547a;

        public a(Context context) {
            this.f4547a = context;
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<Uri, File> mo4912a(C0832r c0832r) {
            return new C0825k(this.f4547a);
        }
    }
}
