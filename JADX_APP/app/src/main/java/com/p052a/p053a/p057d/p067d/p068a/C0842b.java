package com.p052a.p053a.p057d.p067d.p068a;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.EnumC0809c;
import com.p052a.p053a.p057d.InterfaceC0888l;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import java.io.File;

/* renamed from: com.a.a.d.d.a.b */
/* loaded from: classes.dex */
public class C0842b implements InterfaceC0888l<BitmapDrawable> {

    /* renamed from: a */
    private final InterfaceC0765e f4598a;

    /* renamed from: b */
    private final InterfaceC0888l<Bitmap> f4599b;

    public C0842b(InterfaceC0765e interfaceC0765e, InterfaceC0888l<Bitmap> interfaceC0888l) {
        this.f4598a = interfaceC0765e;
        this.f4599b = interfaceC0888l;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0839d
    /* renamed from: a */
    public boolean mo4918a(InterfaceC0804s<BitmapDrawable> interfaceC0804s, File file, C0886j c0886j) {
        return this.f4599b.mo4918a(new C0845e(interfaceC0804s.mo4880c().getBitmap(), this.f4598a), file, c0886j);
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0888l
    /* renamed from: a */
    public EnumC0809c mo4971a(C0886j c0886j) {
        return this.f4599b.mo4971a(c0886j);
    }
}
