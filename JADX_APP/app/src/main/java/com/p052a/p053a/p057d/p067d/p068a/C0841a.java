package com.p052a.p053a.p057d.p067d.p068a;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0887k;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import com.p052a.p053a.p081j.C0954h;

/* renamed from: com.a.a.d.d.a.a */
/* loaded from: classes.dex */
public class C0841a<DataType> implements InterfaceC0887k<DataType, BitmapDrawable> {

    /* renamed from: a */
    private final InterfaceC0887k<DataType, Bitmap> f4595a;

    /* renamed from: b */
    private final Resources f4596b;

    /* renamed from: c */
    private final InterfaceC0765e f4597c;

    public C0841a(Resources resources, InterfaceC0765e interfaceC0765e, InterfaceC0887k<DataType, Bitmap> interfaceC0887k) {
        this.f4596b = (Resources) C0954h.m5409a(resources);
        this.f4597c = (InterfaceC0765e) C0954h.m5409a(interfaceC0765e);
        this.f4595a = (InterfaceC0887k) C0954h.m5409a(interfaceC0887k);
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0887k
    /* renamed from: a */
    public boolean mo4970a(DataType datatype, C0886j c0886j) {
        return this.f4595a.mo4970a(datatype, c0886j);
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0887k
    /* renamed from: a */
    public InterfaceC0804s<BitmapDrawable> mo4969a(DataType datatype, int i, int i2, C0886j c0886j) {
        InterfaceC0804s<Bitmap> mo4969a = this.f4595a.mo4969a(datatype, i, i2, c0886j);
        if (mo4969a == null) {
            return null;
        }
        return C0855o.m5029a(this.f4596b, this.f4597c, mo4969a.mo4880c());
    }
}
