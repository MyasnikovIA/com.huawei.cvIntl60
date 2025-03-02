package com.p052a.p053a.p057d.p065c;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import java.io.File;
import java.io.InputStream;

/* renamed from: com.a.a.d.c.u */
/* loaded from: classes.dex */
public class C0835u<Data> implements InterfaceC0828n<String, Data> {

    /* renamed from: a */
    private final InterfaceC0828n<Uri, Data> f4586a;

    public C0835u(InterfaceC0828n<Uri, Data> interfaceC0828n) {
        this.f4586a = interfaceC0828n;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<Data> mo4909a(String str, int i, int i2, C0886j c0886j) {
        Uri m4966b = m4966b(str);
        if (m4966b == null) {
            return null;
        }
        return this.f4586a.mo4909a(m4966b, i, i2, c0886j);
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(String str) {
        return true;
    }

    @Nullable
    /* renamed from: b */
    private static Uri m4966b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith("/")) {
            return m4967c(str);
        }
        Uri parse = Uri.parse(str);
        if (parse.getScheme() == null) {
            return m4967c(str);
        }
        return parse;
    }

    /* renamed from: c */
    private static Uri m4967c(String str) {
        return Uri.fromFile(new File(str));
    }

    /* renamed from: com.a.a.d.c.u$b */
    public static class b implements InterfaceC0829o<String, InputStream> {
        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<String, InputStream> mo4912a(C0832r c0832r) {
            return new C0835u(c0832r.m4958a(Uri.class, InputStream.class));
        }
    }

    /* renamed from: com.a.a.d.c.u$a */
    public static class a implements InterfaceC0829o<String, ParcelFileDescriptor> {
        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<String, ParcelFileDescriptor> mo4912a(C0832r c0832r) {
            return new C0835u(c0832r.m4958a(Uri.class, ParcelFileDescriptor.class));
        }
    }
}
