package com.p052a.p053a.p057d.p060b;

import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p057d.p060b.InterfaceC0788d;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import java.io.File;
import java.util.List;

/* renamed from: com.a.a.d.b.a */
/* loaded from: classes.dex */
class C0760a implements InterfaceC0748b.a<Object>, InterfaceC0788d {

    /* renamed from: a */
    private List<InterfaceC0884h> f4199a;

    /* renamed from: b */
    private final C0790e<?> f4200b;

    /* renamed from: c */
    private final InterfaceC0788d.a f4201c;

    /* renamed from: d */
    private int f4202d;

    /* renamed from: e */
    private InterfaceC0884h f4203e;

    /* renamed from: f */
    private List<InterfaceC0828n<File, ?>> f4204f;

    /* renamed from: g */
    private int f4205g;

    /* renamed from: h */
    private volatile InterfaceC0828n.a<?> f4206h;

    /* renamed from: i */
    private File f4207i;

    C0760a(C0790e<?> c0790e, InterfaceC0788d.a aVar) {
        this(c0790e.m4800l(), c0790e, aVar);
    }

    C0760a(List<InterfaceC0884h> list, C0790e<?> c0790e, InterfaceC0788d.a aVar) {
        this.f4202d = -1;
        this.f4199a = list;
        this.f4200b = c0790e;
        this.f4201c = aVar;
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0788d
    /* renamed from: a */
    public boolean mo4651a() {
        boolean z;
        boolean z2 = false;
        while (true) {
            if (this.f4204f == null || !m4650c()) {
                this.f4202d++;
                if (this.f4202d >= this.f4199a.size()) {
                    break;
                }
                InterfaceC0884h interfaceC0884h = this.f4199a.get(this.f4202d);
                this.f4207i = this.f4200b.m4787b().mo4727a(new C0775b(interfaceC0884h, this.f4200b.m4794f()));
                if (this.f4207i != null) {
                    this.f4203e = interfaceC0884h;
                    this.f4204f = this.f4200b.m4782a(this.f4207i);
                    this.f4205g = 0;
                }
            } else {
                this.f4206h = null;
                while (!z2 && m4650c()) {
                    List<InterfaceC0828n<File, ?>> list = this.f4204f;
                    int i = this.f4205g;
                    this.f4205g = i + 1;
                    this.f4206h = list.get(i).mo4909a(this.f4207i, this.f4200b.m4795g(), this.f4200b.m4796h(), this.f4200b.m4793e());
                    if (this.f4206h == null || !this.f4200b.m4786a(this.f4206h.f4559c.mo4626d())) {
                        z = z2;
                    } else {
                        z = true;
                        this.f4206h.f4559c.mo4610a(this.f4200b.m4792d(), this);
                    }
                    z2 = z;
                }
            }
        }
        return z2;
    }

    /* renamed from: c */
    private boolean m4650c() {
        return this.f4205g < this.f4204f.size();
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0788d
    /* renamed from: b */
    public void mo4652b() {
        InterfaceC0828n.a<?> aVar = this.f4206h;
        if (aVar != null) {
            aVar.f4559c.mo4612b();
        }
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b.a
    /* renamed from: a */
    public void mo4631a(Object obj) {
        this.f4201c.mo4778a(this.f4203e, obj, this.f4206h.f4559c, EnumC0741a.DATA_DISK_CACHE, this.f4203e);
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b.a
    /* renamed from: a */
    public void mo4630a(Exception exc) {
        this.f4201c.mo4777a(this.f4203e, exc, this.f4206h.f4559c, EnumC0741a.DATA_DISK_CACHE);
    }
}
