package com.p052a.p053a.p057d.p067d.p068a;

import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import com.p052a.p053a.p057d.p060b.InterfaceC0801p;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import com.p052a.p053a.p081j.C0954h;
import com.p052a.p053a.p081j.C0955i;

/* renamed from: com.a.a.d.d.a.e */
/* loaded from: classes.dex */
public class C0845e implements InterfaceC0801p, InterfaceC0804s<Bitmap> {

    /* renamed from: a */
    private final Bitmap f4603a;

    /* renamed from: b */
    private final InterfaceC0765e f4604b;

    @Nullable
    /* renamed from: a */
    public static C0845e m4976a(@Nullable Bitmap bitmap, InterfaceC0765e interfaceC0765e) {
        if (bitmap == null) {
            return null;
        }
        return new C0845e(bitmap, interfaceC0765e);
    }

    public C0845e(Bitmap bitmap, InterfaceC0765e interfaceC0765e) {
        this.f4603a = (Bitmap) C0954h.m5410a(bitmap, "Bitmap must not be null");
        this.f4604b = (InterfaceC0765e) C0954h.m5410a(interfaceC0765e, "BitmapPool must not be null");
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: b */
    public Class<Bitmap> mo4879b() {
        return Bitmap.class;
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: f */
    public Bitmap mo4880c() {
        return this.f4603a;
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: d */
    public int mo4881d() {
        return C0955i.m5418a(this.f4603a);
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: e */
    public void mo4882e() {
        this.f4604b.mo4679a(this.f4603a);
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0801p
    /* renamed from: a */
    public void mo4896a() {
        this.f4603a.prepareToDraw();
    }
}
