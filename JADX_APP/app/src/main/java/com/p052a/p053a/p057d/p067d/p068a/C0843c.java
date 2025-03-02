package com.p052a.p053a.p057d.p067d.p068a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.p052a.p053a.ComponentCallbacks2C0735c;
import com.p052a.p053a.p057d.InterfaceC0889m;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p081j.C0954h;
import java.security.MessageDigest;

/* renamed from: com.a.a.d.d.a.c */
/* loaded from: classes.dex */
public class C0843c implements InterfaceC0889m<BitmapDrawable> {

    /* renamed from: b */
    private final InterfaceC0889m<Bitmap> f4600b;

    public C0843c(InterfaceC0889m<Bitmap> interfaceC0889m) {
        this.f4600b = (InterfaceC0889m) C0954h.m5409a(interfaceC0889m);
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0889m
    /* renamed from: a */
    public InterfaceC0804s<BitmapDrawable> mo4973a(Context context, InterfaceC0804s<BitmapDrawable> interfaceC0804s, int i, int i2) {
        C0845e m4976a = C0845e.m4976a(interfaceC0804s.mo4880c().getBitmap(), ComponentCallbacks2C0735c.m4550a(context).m4556a());
        InterfaceC0804s<Bitmap> mo4973a = this.f4600b.mo4973a(context, m4976a, i, i2);
        return mo4973a.equals(m4976a) ? interfaceC0804s : C0855o.m5028a(context, mo4973a.mo4880c());
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0889m, com.p052a.p053a.p057d.InterfaceC0884h
    public boolean equals(Object obj) {
        if (obj instanceof C0843c) {
            return this.f4600b.equals(((C0843c) obj).f4600b);
        }
        return false;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0889m, com.p052a.p053a.p057d.InterfaceC0884h
    public int hashCode() {
        return this.f4600b.hashCode();
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    /* renamed from: a */
    public void mo4726a(MessageDigest messageDigest) {
        this.f4600b.mo4726a(messageDigest);
    }
}
