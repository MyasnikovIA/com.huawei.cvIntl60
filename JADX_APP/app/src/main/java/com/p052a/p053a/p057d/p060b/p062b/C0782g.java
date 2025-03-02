package com.p052a.p053a.p057d.p060b.p062b;

import android.annotation.SuppressLint;
import android.support.annotation.Nullable;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p060b.p062b.InterfaceC0783h;
import com.p052a.p053a.p081j.C0951e;

/* renamed from: com.a.a.d.b.b.g */
/* loaded from: classes.dex */
public class C0782g extends C0951e<InterfaceC0884h, InterfaceC0804s<?>> implements InterfaceC0783h {

    /* renamed from: a */
    private InterfaceC0783h.a f4269a;

    @Override // com.p052a.p053a.p057d.p060b.p062b.InterfaceC0783h
    @Nullable
    /* renamed from: a */
    public /* synthetic */ InterfaceC0804s mo4739a(InterfaceC0884h interfaceC0884h) {
        return (InterfaceC0804s) super.m5404c(interfaceC0884h);
    }

    @Override // com.p052a.p053a.p057d.p060b.p062b.InterfaceC0783h
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC0804s mo4743b(InterfaceC0884h interfaceC0884h, InterfaceC0804s interfaceC0804s) {
        return (InterfaceC0804s) super.m5402b((C0782g) interfaceC0884h, (InterfaceC0884h) interfaceC0804s);
    }

    public C0782g(int i) {
        super(i);
    }

    @Override // com.p052a.p053a.p057d.p060b.p062b.InterfaceC0783h
    /* renamed from: a */
    public void mo4741a(InterfaceC0783h.a aVar) {
        this.f4269a = aVar;
    }

    @Override // com.p052a.p053a.p081j.C0951e
    /* renamed from: a */
    public void mo4742a(InterfaceC0884h interfaceC0884h, InterfaceC0804s<?> interfaceC0804s) {
        if (this.f4269a != null) {
            this.f4269a.mo4745b(interfaceC0804s);
        }
    }

    @Override // com.p052a.p053a.p081j.C0951e
    /* renamed from: a */
    public int mo4738a(InterfaceC0804s<?> interfaceC0804s) {
        return interfaceC0804s.mo4881d();
    }

    @Override // com.p052a.p053a.p057d.p060b.p062b.InterfaceC0783h
    @SuppressLint({"InlinedApi"})
    /* renamed from: a */
    public void mo4740a(int i) {
        if (i >= 40) {
            m5399a();
        } else if (i >= 20) {
            m5403b(m5400b() / 2);
        }
    }
}
