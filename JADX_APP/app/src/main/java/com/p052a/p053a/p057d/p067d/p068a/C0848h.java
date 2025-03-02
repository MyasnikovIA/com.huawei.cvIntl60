package com.p052a.p053a.p057d.p067d.p068a;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import java.security.MessageDigest;

/* renamed from: com.a.a.d.d.a.h */
/* loaded from: classes.dex */
public class C0848h extends AbstractC0846f {

    /* renamed from: b */
    private static final byte[] f4606b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(f4739a);

    @Override // com.p052a.p053a.p057d.p067d.p068a.AbstractC0846f
    /* renamed from: a */
    protected Bitmap mo4978a(@NonNull InterfaceC0765e interfaceC0765e, @NonNull Bitmap bitmap, int i, int i2) {
        return C0858r.m5038a(interfaceC0765e, bitmap, i, i2);
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0889m, com.p052a.p053a.p057d.InterfaceC0884h
    public boolean equals(Object obj) {
        return obj instanceof C0848h;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0889m, com.p052a.p053a.p057d.InterfaceC0884h
    public int hashCode() {
        return "com.bumptech.glide.load.resource.bitmap.CenterCrop".hashCode();
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    /* renamed from: a */
    public void mo4726a(MessageDigest messageDigest) {
        messageDigest.update(f4606b);
    }
}
