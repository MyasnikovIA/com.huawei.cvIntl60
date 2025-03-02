package com.p052a.p053a.p057d.p060b;

import android.util.Log;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.InterfaceC0839d;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p057d.p060b.InterfaceC0788d;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p081j.C0950d;
import java.util.Collections;
import java.util.List;

/* renamed from: com.a.a.d.b.w */
/* loaded from: classes.dex */
class C0808w implements InterfaceC0748b.a<Object>, InterfaceC0788d, InterfaceC0788d.a {

    /* renamed from: a */
    private final C0790e<?> f4486a;

    /* renamed from: b */
    private final InterfaceC0788d.a f4487b;

    /* renamed from: c */
    private int f4488c;

    /* renamed from: d */
    private C0760a f4489d;

    /* renamed from: e */
    private Object f4490e;

    /* renamed from: f */
    private volatile InterfaceC0828n.a<?> f4491f;

    /* renamed from: g */
    private C0775b f4492g;

    public C0808w(C0790e<?> c0790e, InterfaceC0788d.a aVar) {
        this.f4486a = c0790e;
        this.f4487b = aVar;
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0788d
    /* renamed from: a */
    public boolean mo4651a() {
        if (this.f4490e != null) {
            Object obj = this.f4490e;
            this.f4490e = null;
            m4907b(obj);
        }
        if (this.f4489d != null && this.f4489d.mo4651a()) {
            return true;
        }
        this.f4489d = null;
        this.f4491f = null;
        boolean z = false;
        while (!z && m4908d()) {
            List<InterfaceC0828n.a<?>> m4799k = this.f4486a.m4799k();
            int i = this.f4488c;
            this.f4488c = i + 1;
            this.f4491f = m4799k.get(i);
            if (this.f4491f != null && (this.f4486a.m4790c().mo4845a(this.f4491f.f4559c.mo4613c()) || this.f4486a.m4786a(this.f4491f.f4559c.mo4626d()))) {
                this.f4491f.f4559c.mo4610a(this.f4486a.m4792d(), this);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: d */
    private boolean m4908d() {
        return this.f4488c < this.f4486a.m4799k().size();
    }

    /* renamed from: b */
    private void m4907b(Object obj) {
        long m5397a = C0950d.m5397a();
        try {
            InterfaceC0839d<X> m4781a = this.f4486a.m4781a((C0790e<?>) obj);
            C0786c c0786c = new C0786c(m4781a, obj, this.f4486a.m4793e());
            this.f4492g = new C0775b(this.f4491f.f4557a, this.f4486a.m4794f());
            this.f4486a.m4787b().mo4728a(this.f4492g, c0786c);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + this.f4492g + ", data: " + obj + ", encoder: " + m4781a + ", duration: " + C0950d.m5396a(m5397a));
            }
            this.f4491f.f4559c.mo4609a();
            this.f4489d = new C0760a(Collections.singletonList(this.f4491f.f4557a), this.f4486a, this);
        } catch (Throwable th) {
            this.f4491f.f4559c.mo4609a();
            throw th;
        }
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0788d
    /* renamed from: b */
    public void mo4652b() {
        InterfaceC0828n.a<?> aVar = this.f4491f;
        if (aVar != null) {
            aVar.f4559c.mo4612b();
        }
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b.a
    /* renamed from: a */
    public void mo4631a(Object obj) {
        AbstractC0793h m4790c = this.f4486a.m4790c();
        if (obj != null && m4790c.mo4845a(this.f4491f.f4559c.mo4613c())) {
            this.f4490e = obj;
            this.f4487b.mo4779c();
        } else {
            this.f4487b.mo4778a(this.f4491f.f4557a, obj, this.f4491f.f4559c, this.f4491f.f4559c.mo4613c(), this.f4492g);
        }
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b.a
    /* renamed from: a */
    public void mo4630a(Exception exc) {
        this.f4487b.mo4777a(this.f4492g, exc, this.f4491f.f4559c, this.f4491f.f4559c.mo4613c());
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0788d.a
    /* renamed from: c */
    public void mo4779c() {
        throw new UnsupportedOperationException();
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0788d.a
    /* renamed from: a */
    public void mo4778a(InterfaceC0884h interfaceC0884h, Object obj, InterfaceC0748b<?> interfaceC0748b, EnumC0741a enumC0741a, InterfaceC0884h interfaceC0884h2) {
        this.f4487b.mo4778a(interfaceC0884h, obj, interfaceC0748b, this.f4491f.f4559c.mo4613c(), interfaceC0884h);
    }

    @Override // com.p052a.p053a.p057d.p060b.InterfaceC0788d.a
    /* renamed from: a */
    public void mo4777a(InterfaceC0884h interfaceC0884h, Exception exc, InterfaceC0748b<?> interfaceC0748b, EnumC0741a enumC0741a) {
        this.f4487b.mo4777a(interfaceC0884h, exc, interfaceC0748b, this.f4491f.f4559c.mo4613c());
    }
}
