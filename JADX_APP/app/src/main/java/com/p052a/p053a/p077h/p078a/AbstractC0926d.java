package com.p052a.p053a.p077h.p078a;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.widget.ImageView;
import com.p052a.p053a.p077h.p079b.InterfaceC0934b;

/* renamed from: com.a.a.h.a.d */
/* loaded from: classes.dex */
public abstract class AbstractC0926d<Z> extends AbstractC0931i<ImageView, Z> implements InterfaceC0934b.a {

    /* renamed from: b */
    @Nullable
    private Animatable f4828b;

    /* renamed from: a */
    protected abstract void mo5233a(@Nullable Z z);

    public AbstractC0926d(ImageView imageView) {
        super(imageView);
    }

    /* renamed from: e */
    public void m5237e(Drawable drawable) {
        ((ImageView) this.f4833a).setImageDrawable(drawable);
    }

    @Override // com.p052a.p053a.p077h.p078a.AbstractC0923a, com.p052a.p053a.p077h.p078a.InterfaceC0930h
    /* renamed from: b */
    public void mo5231b(@Nullable Drawable drawable) {
        super.mo5231b(drawable);
        m5235b((AbstractC0926d<Z>) null);
        m5237e(drawable);
    }

    @Override // com.p052a.p053a.p077h.p078a.AbstractC0923a, com.p052a.p053a.p077h.p078a.InterfaceC0930h
    /* renamed from: c */
    public void mo5232c(@Nullable Drawable drawable) {
        super.mo5232c(drawable);
        m5235b((AbstractC0926d<Z>) null);
        m5237e(drawable);
    }

    @Override // com.p052a.p053a.p077h.p078a.AbstractC0931i, com.p052a.p053a.p077h.p078a.AbstractC0923a, com.p052a.p053a.p077h.p078a.InterfaceC0930h
    /* renamed from: a */
    public void mo5228a(@Nullable Drawable drawable) {
        super.mo5228a(drawable);
        m5235b((AbstractC0926d<Z>) null);
        m5237e(drawable);
    }

    @Override // com.p052a.p053a.p077h.p078a.InterfaceC0930h
    /* renamed from: a */
    public void mo5094a(Z z, @Nullable InterfaceC0934b<? super Z> interfaceC0934b) {
        if (interfaceC0934b == null || !interfaceC0934b.mo5260a(z, this)) {
            m5235b((AbstractC0926d<Z>) z);
        } else {
            m5236c((AbstractC0926d<Z>) z);
        }
    }

    @Override // com.p052a.p053a.p077h.p078a.AbstractC0923a, com.p052a.p053a.p074e.InterfaceC0899i
    /* renamed from: c */
    public void mo5133c() {
        if (this.f4828b != null) {
            this.f4828b.start();
        }
    }

    @Override // com.p052a.p053a.p077h.p078a.AbstractC0923a, com.p052a.p053a.p074e.InterfaceC0899i
    /* renamed from: d */
    public void mo5134d() {
        if (this.f4828b != null) {
            this.f4828b.stop();
        }
    }

    /* renamed from: b */
    private void m5235b(@Nullable Z z) {
        m5236c((AbstractC0926d<Z>) z);
        mo5233a((AbstractC0926d<Z>) z);
    }

    /* renamed from: c */
    private void m5236c(@Nullable Z z) {
        if (z instanceof Animatable) {
            this.f4828b = (Animatable) z;
            this.f4828b.start();
        } else {
            this.f4828b = null;
        }
    }
}
