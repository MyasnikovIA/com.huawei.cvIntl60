package com.p052a.p053a.p057d.p067d.p068a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.p052a.p053a.ComponentCallbacks2C0735c;
import com.p052a.p053a.p057d.p060b.InterfaceC0801p;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import com.p052a.p053a.p081j.C0954h;
import com.p052a.p053a.p081j.C0955i;

/* renamed from: com.a.a.d.d.a.o */
/* loaded from: classes.dex */
public class C0855o implements InterfaceC0801p, InterfaceC0804s<BitmapDrawable> {

    /* renamed from: a */
    private final Bitmap f4641a;

    /* renamed from: b */
    private final Resources f4642b;

    /* renamed from: c */
    private final InterfaceC0765e f4643c;

    /* renamed from: a */
    public static C0855o m5028a(Context context, Bitmap bitmap) {
        return m5029a(context.getResources(), ComponentCallbacks2C0735c.m4550a(context).m4556a(), bitmap);
    }

    /* renamed from: a */
    public static C0855o m5029a(Resources resources, InterfaceC0765e interfaceC0765e, Bitmap bitmap) {
        return new C0855o(resources, interfaceC0765e, bitmap);
    }

    C0855o(Resources resources, InterfaceC0765e interfaceC0765e, Bitmap bitmap) {
        this.f4642b = (Resources) C0954h.m5409a(resources);
        this.f4643c = (InterfaceC0765e) C0954h.m5409a(interfaceC0765e);
        this.f4641a = (Bitmap) C0954h.m5409a(bitmap);
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: b */
    public Class<BitmapDrawable> mo4879b() {
        return BitmapDrawable.class;
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: f */
    public BitmapDrawable mo4880c() {
        return new BitmapDrawable(this.f4642b, this.f4641a);
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: d */
    public int mo4881d() {
        return C0955i.m5418a(this.f4641a);
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: e */
    public void mo4882e() {
        this.f4643c.mo4679a(this.f4641a);
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0801p
    /* renamed from: a */
    public void mo4896a() {
        this.f4641a.prepareToDraw();
    }
}
