package com.p052a.p053a.p057d.p060b;

import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p057d.p060b.InterfaceC0788d;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import java.io.File;
import java.util.List;

/* renamed from: com.a.a.d.b.t */
/* loaded from: classes.dex */
class C0805t implements InterfaceC0748b.a<Object>, InterfaceC0788d {

    /* renamed from: a */
    private final InterfaceC0788d.a f4466a;

    /* renamed from: b */
    private final C0790e<?> f4467b;

    /* renamed from: c */
    private int f4468c = 0;

    /* renamed from: d */
    private int f4469d = -1;

    /* renamed from: e */
    private InterfaceC0884h f4470e;

    /* renamed from: f */
    private List<InterfaceC0828n<File, ?>> f4471f;

    /* renamed from: g */
    private int f4472g;

    /* renamed from: h */
    private volatile InterfaceC0828n.a<?> f4473h;

    /* renamed from: i */
    private File f4474i;

    /* renamed from: j */
    private C0806u f4475j;

    public C0805t(C0790e<?> c0790e, InterfaceC0788d.a aVar) {
        this.f4467b = c0790e;
        this.f4466a = aVar;
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0788d
    /* renamed from: a */
    public boolean mo4651a() {
        boolean z;
        List<InterfaceC0884h> m4800l = this.f4467b.m4800l();
        if (m4800l.isEmpty()) {
            return false;
        }
        List<Class<?>> m4797i = this.f4467b.m4797i();
        while (true) {
            if (this.f4471f == null || !m4904c()) {
                this.f4469d++;
                if (this.f4469d >= m4797i.size()) {
                    this.f4468c++;
                    if (this.f4468c >= m4800l.size()) {
                        return false;
                    }
                    this.f4469d = 0;
                }
                InterfaceC0884h interfaceC0884h = m4800l.get(this.f4468c);
                Class<?> cls = m4797i.get(this.f4469d);
                this.f4475j = new C0806u(interfaceC0884h, this.f4467b.m4794f(), this.f4467b.m4795g(), this.f4467b.m4796h(), this.f4467b.m4791c(cls), cls, this.f4467b.m4793e());
                this.f4474i = this.f4467b.m4787b().mo4727a(this.f4475j);
                if (this.f4474i != null) {
                    this.f4470e = interfaceC0884h;
                    this.f4471f = this.f4467b.m4782a(this.f4474i);
                    this.f4472g = 0;
                }
            } else {
                this.f4473h = null;
                boolean z2 = false;
                while (!z2 && m4904c()) {
                    List<InterfaceC0828n<File, ?>> list = this.f4471f;
                    int i = this.f4472g;
                    this.f4472g = i + 1;
                    this.f4473h = list.get(i).mo4909a(this.f4474i, this.f4467b.m4795g(), this.f4467b.m4796h(), this.f4467b.m4793e());
                    if (this.f4473h == null || !this.f4467b.m4786a(this.f4473h.f4559c.mo4626d())) {
                        z = z2;
                    } else {
                        z = true;
                        this.f4473h.f4559c.mo4610a(this.f4467b.m4792d(), this);
                    }
                    z2 = z;
                }
                return z2;
            }
        }
    }

    /* renamed from: c */
    private boolean m4904c() {
        return this.f4472g < this.f4471f.size();
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0788d
    /* renamed from: b */
    public void mo4652b() {
        InterfaceC0828n.a<?> aVar = this.f4473h;
        if (aVar != null) {
            aVar.f4559c.mo4612b();
        }
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b.a
    /* renamed from: a */
    public void mo4631a(Object obj) {
        this.f4466a.mo4778a(this.f4470e, obj, this.f4473h.f4559c, EnumC0741a.RESOURCE_DISK_CACHE, this.f4475j);
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b.a
    /* renamed from: a */
    public void mo4630a(Exception exc) {
        this.f4466a.mo4777a(this.f4475j, exc, this.f4473h.f4559c, EnumC0741a.RESOURCE_DISK_CACHE);
    }
}
