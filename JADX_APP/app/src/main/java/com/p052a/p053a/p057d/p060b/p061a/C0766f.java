package com.p052a.p053a.p057d.p060b.p061a;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;

/* renamed from: com.a.a.d.b.a.f */
/* loaded from: classes.dex */
public class C0766f implements InterfaceC0765e {
    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e
    /* renamed from: a */
    public void mo4679a(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e
    @NonNull
    /* renamed from: a */
    public Bitmap mo4676a(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e
    @NonNull
    /* renamed from: b */
    public Bitmap mo4680b(int i, int i2, Bitmap.Config config) {
        return mo4676a(i, i2, config);
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e
    /* renamed from: a */
    public void mo4677a() {
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e
    /* renamed from: a */
    public void mo4678a(int i) {
    }
}
