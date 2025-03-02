package com.p052a.p053a.p057d.p067d.p068a;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.p052a.p053a.ComponentCallbacks2C0735c;
import com.p052a.p053a.p057d.InterfaceC0889m;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import com.p052a.p053a.p081j.C0955i;

/* renamed from: com.a.a.d.d.a.f */
/* loaded from: classes.dex */
public abstract class AbstractC0846f implements InterfaceC0889m<Bitmap> {
    /* renamed from: a */
    protected abstract Bitmap mo4978a(@NonNull InterfaceC0765e interfaceC0765e, @NonNull Bitmap bitmap, int i, int i2);

    @Override // com.p052a.p053a.p057d.InterfaceC0889m
    /* renamed from: a */
    public final InterfaceC0804s<Bitmap> mo4973a(Context context, InterfaceC0804s<Bitmap> interfaceC0804s, int i, int i2) {
        if (!C0955i.m5426a(i, i2)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        InterfaceC0765e m4556a = ComponentCallbacks2C0735c.m4550a(context).m4556a();
        Bitmap mo4880c = interfaceC0804s.mo4880c();
        if (i == Integer.MIN_VALUE) {
            i = mo4880c.getWidth();
        }
        if (i2 == Integer.MIN_VALUE) {
            i2 = mo4880c.getHeight();
        }
        Bitmap mo4978a = mo4978a(m4556a, mo4880c, i, i2);
        if (!mo4880c.equals(mo4978a)) {
            return C0845e.m4976a(mo4978a, m4556a);
        }
        return interfaceC0804s;
    }
}
