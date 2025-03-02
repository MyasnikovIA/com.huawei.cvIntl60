package com.p052a.p053a.p057d.p067d.p073f;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import com.p052a.p053a.p057d.p067d.p068a.C0855o;
import com.p052a.p053a.p081j.C0954h;

/* renamed from: com.a.a.d.d.f.b */
/* loaded from: classes.dex */
public class C0876b implements InterfaceC0878d<Bitmap, BitmapDrawable> {

    /* renamed from: a */
    private final Resources f4721a;

    /* renamed from: b */
    private final InterfaceC0765e f4722b;

    public C0876b(Resources resources, InterfaceC0765e interfaceC0765e) {
        this.f4721a = (Resources) C0954h.m5409a(resources);
        this.f4722b = (InterfaceC0765e) C0954h.m5409a(interfaceC0765e);
    }

    @Override // com.p052a.p053a.p057d.p067d.p073f.InterfaceC0878d
    /* renamed from: a */
    public InterfaceC0804s<BitmapDrawable> mo5096a(InterfaceC0804s<Bitmap> interfaceC0804s, C0886j c0886j) {
        return C0855o.m5029a(this.f4721a, this.f4722b, interfaceC0804s.mo4880c());
    }
}
