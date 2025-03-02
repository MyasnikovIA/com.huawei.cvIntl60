package com.p052a.p053a.p057d.p067d.p070c;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.p052a.p053a.p057d.p060b.InterfaceC0801p;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p067d.p072e.C0868c;
import com.p052a.p053a.p081j.C0954h;

/* renamed from: com.a.a.d.d.c.a */
/* loaded from: classes.dex */
public abstract class AbstractC0863a<T extends Drawable> implements InterfaceC0801p, InterfaceC0804s<T> {

    /* renamed from: a */
    protected final T f4669a;

    public AbstractC0863a(T t) {
        this.f4669a = (T) C0954h.m5409a(t);
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0804s
    /* renamed from: f */
    public final T mo4880c() {
        return (T) this.f4669a.getConstantState().newDrawable();
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0801p
    /* renamed from: a */
    public void mo4896a() {
        if (this.f4669a instanceof BitmapDrawable) {
            ((BitmapDrawable) this.f4669a).getBitmap().prepareToDraw();
        } else if (this.f4669a instanceof C0868c) {
            ((C0868c) this.f4669a).m5065b().prepareToDraw();
        }
    }
}
