package com.p052a.p053a.p057d.p067d.p072e;

import android.content.Context;
import android.graphics.Bitmap;
import com.p052a.p053a.ComponentCallbacks2C0735c;
import com.p052a.p053a.p057d.InterfaceC0889m;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p067d.p068a.C0845e;
import com.p052a.p053a.p081j.C0954h;
import java.security.MessageDigest;

/* renamed from: com.a.a.d.d.e.f */
/* loaded from: classes.dex */
public class C0871f implements InterfaceC0889m<C0868c> {

    /* renamed from: b */
    private final InterfaceC0889m<Bitmap> f4694b;

    public C0871f(InterfaceC0889m<Bitmap> interfaceC0889m) {
        this.f4694b = (InterfaceC0889m) C0954h.m5409a(interfaceC0889m);
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0889m
    /* renamed from: a */
    public InterfaceC0804s<C0868c> mo4973a(Context context, InterfaceC0804s<C0868c> interfaceC0804s, int i, int i2) {
        C0868c mo4880c = interfaceC0804s.mo4880c();
        InterfaceC0804s<Bitmap> c0845e = new C0845e(mo4880c.m5065b(), ComponentCallbacks2C0735c.m4550a(context).m4556a());
        InterfaceC0804s<Bitmap> mo4973a = this.f4694b.mo4973a(context, c0845e, i, i2);
        if (!c0845e.equals(mo4973a)) {
            c0845e.mo4882e();
        }
        mo4880c.m5064a(this.f4694b, mo4973a.mo4880c());
        return interfaceC0804s;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0889m, com.p052a.p053a.p057d.InterfaceC0884h
    public boolean equals(Object obj) {
        if (obj instanceof C0871f) {
            return this.f4694b.equals(((C0871f) obj).f4694b);
        }
        return false;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0889m, com.p052a.p053a.p057d.InterfaceC0884h
    public int hashCode() {
        return this.f4694b.hashCode();
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    /* renamed from: a */
    public void mo4726a(MessageDigest messageDigest) {
        this.f4694b.mo4726a(messageDigest);
    }
}
