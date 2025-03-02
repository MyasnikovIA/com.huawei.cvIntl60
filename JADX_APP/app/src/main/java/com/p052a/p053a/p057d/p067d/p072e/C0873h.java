package com.p052a.p053a.p057d.p067d.p072e;

import android.graphics.Bitmap;
import com.p052a.p053a.p055b.InterfaceC0730a;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0887k;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import com.p052a.p053a.p057d.p067d.p068a.C0845e;

/* renamed from: com.a.a.d.d.e.h */
/* loaded from: classes.dex */
public final class C0873h implements InterfaceC0887k<InterfaceC0730a, Bitmap> {

    /* renamed from: a */
    private final InterfaceC0765e f4714a;

    public C0873h(InterfaceC0765e interfaceC0765e) {
        this.f4714a = interfaceC0765e;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0887k
    /* renamed from: a */
    public boolean mo4970a(InterfaceC0730a interfaceC0730a, C0886j c0886j) {
        return true;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0887k
    /* renamed from: a */
    public InterfaceC0804s<Bitmap> mo4969a(InterfaceC0730a interfaceC0730a, int i, int i2, C0886j c0886j) {
        return C0845e.m4976a(interfaceC0730a.mo4511h(), this.f4714a);
    }
}
