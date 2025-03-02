package com.p052a.p053a.p057d.p065c;

import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.Nullable;
import android.util.Log;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import java.io.InputStream;

/* renamed from: com.a.a.d.c.s */
/* loaded from: classes.dex */
public class C0833s<Data> implements InterfaceC0828n<Integer, Data> {

    /* renamed from: a */
    private final InterfaceC0828n<Uri, Data> f4581a;

    /* renamed from: b */
    private final Resources f4582b;

    public C0833s(Resources resources, InterfaceC0828n<Uri, Data> interfaceC0828n) {
        this.f4582b = resources;
        this.f4581a = interfaceC0828n;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<Data> mo4909a(Integer num, int i, int i2, C0886j c0886j) {
        Uri m4965b = m4965b(num);
        if (m4965b == null) {
            return null;
        }
        return this.f4581a.mo4909a(m4965b, i, i2, c0886j);
    }

    @Nullable
    /* renamed from: b */
    private Uri m4965b(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.f4582b.getResourcePackageName(num.intValue()) + '/' + this.f4582b.getResourceTypeName(num.intValue()) + '/' + this.f4582b.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: " + num, e);
            }
            return null;
        }
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(Integer num) {
        return true;
    }

    /* renamed from: com.a.a.d.c.s$b */
    public static class b implements InterfaceC0829o<Integer, InputStream> {

        /* renamed from: a */
        private final Resources f4584a;

        public b(Resources resources) {
            this.f4584a = resources;
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<Integer, InputStream> mo4912a(C0832r c0832r) {
            return new C0833s(this.f4584a, c0832r.m4958a(Uri.class, InputStream.class));
        }
    }

    /* renamed from: com.a.a.d.c.s$a */
    public static class a implements InterfaceC0829o<Integer, ParcelFileDescriptor> {

        /* renamed from: a */
        private final Resources f4583a;

        public a(Resources resources) {
            this.f4583a = resources;
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<Integer, ParcelFileDescriptor> mo4912a(C0832r c0832r) {
            return new C0833s(this.f4583a, c0832r.m4958a(Uri.class, ParcelFileDescriptor.class));
        }
    }
}
