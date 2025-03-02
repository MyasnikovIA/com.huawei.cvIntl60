package com.p052a.p053a.p057d.p060b.p062b;

import com.p052a.p053a.p057d.p060b.p062b.InterfaceC0776a;
import java.io.File;

/* renamed from: com.a.a.d.b.b.d */
/* loaded from: classes.dex */
public class C0779d implements InterfaceC0776a.a {

    /* renamed from: a */
    private final int f4259a;

    /* renamed from: b */
    private final a f4260b;

    /* renamed from: com.a.a.d.b.b.d$a */
    public interface a {
        /* renamed from: a */
        File mo4735a();
    }

    public C0779d(a aVar, int i) {
        this.f4259a = i;
        this.f4260b = aVar;
    }

    @Override // com.p052a.p053a.p057d.p060b.p062b.InterfaceC0776a.a
    /* renamed from: a */
    public InterfaceC0776a mo4729a() {
        File mo4735a = this.f4260b.mo4735a();
        if (mo4735a == null) {
            return null;
        }
        if (mo4735a.mkdirs() || (mo4735a.exists() && mo4735a.isDirectory())) {
            return C0780e.m4737a(mo4735a, this.f4259a);
        }
        return null;
    }
}
