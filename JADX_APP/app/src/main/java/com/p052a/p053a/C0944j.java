package com.p052a.p053a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import com.p052a.p053a.p057d.p060b.AbstractC0793h;
import com.p052a.p053a.p057d.p067d.p072e.C0868c;
import com.p052a.p053a.p074e.C0904n;
import com.p052a.p053a.p074e.C0906p;
import com.p052a.p053a.p074e.InterfaceC0893c;
import com.p052a.p053a.p074e.InterfaceC0894d;
import com.p052a.p053a.p074e.InterfaceC0898h;
import com.p052a.p053a.p074e.InterfaceC0899i;
import com.p052a.p053a.p074e.InterfaceC0903m;
import com.p052a.p053a.p077h.C0937d;
import com.p052a.p053a.p077h.InterfaceC0922a;
import com.p052a.p053a.p077h.p078a.AbstractC0931i;
import com.p052a.p053a.p077h.p078a.InterfaceC0930h;
import com.p052a.p053a.p077h.p079b.InterfaceC0934b;
import com.p052a.p053a.p081j.C0955i;
import java.util.Iterator;

/* renamed from: com.a.a.j */
/* loaded from: classes.dex */
public class C0944j implements InterfaceC0899i {

    /* renamed from: c */
    private static final C0937d f4926c = C0937d.m5268a((Class<?>) Bitmap.class).m5298g();

    /* renamed from: d */
    private static final C0937d f4927d = C0937d.m5268a((Class<?>) C0868c.class).m5298g();

    /* renamed from: e */
    private static final C0937d f4928e = C0937d.m5265a(AbstractC0793h.f4384c).m5284a(EnumC0914g.LOW).m5287a(true);

    /* renamed from: a */
    protected final ComponentCallbacks2C0735c f4929a;

    /* renamed from: b */
    final InterfaceC0898h f4930b;

    /* renamed from: f */
    private final C0904n f4931f;

    /* renamed from: g */
    private final InterfaceC0903m f4932g;

    /* renamed from: h */
    private final C0906p f4933h;

    /* renamed from: i */
    private final Runnable f4934i;

    /* renamed from: j */
    private final Handler f4935j;

    /* renamed from: k */
    private final InterfaceC0893c f4936k;

    /* renamed from: l */
    @NonNull
    private C0937d f4937l;

    /* renamed from: com.a.a.j$1 */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0944j.this.f4930b.mo5124a(C0944j.this);
        }
    }

    public C0944j(ComponentCallbacks2C0735c componentCallbacks2C0735c, InterfaceC0898h interfaceC0898h, InterfaceC0903m interfaceC0903m) {
        this(componentCallbacks2C0735c, interfaceC0898h, interfaceC0903m, new C0904n(), componentCallbacks2C0735c.m4563d());
    }

    C0944j(ComponentCallbacks2C0735c componentCallbacks2C0735c, InterfaceC0898h interfaceC0898h, InterfaceC0903m interfaceC0903m, C0904n c0904n, InterfaceC0894d interfaceC0894d) {
        this.f4933h = new C0906p();
        this.f4934i = new Runnable() { // from class: com.a.a.j.1
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0944j.this.f4930b.mo5124a(C0944j.this);
            }
        };
        this.f4935j = new Handler(Looper.getMainLooper());
        this.f4929a = componentCallbacks2C0735c;
        this.f4930b = interfaceC0898h;
        this.f4932g = interfaceC0903m;
        this.f4931f = c0904n;
        this.f4936k = interfaceC0894d.mo5129a(componentCallbacks2C0735c.m4564e().getBaseContext(), new b(c0904n));
        if (C0955i.m5432c()) {
            this.f4935j.post(this.f4934i);
        } else {
            interfaceC0898h.mo5124a(this);
        }
        interfaceC0898h.mo5124a(this.f4936k);
        m5365a(componentCallbacks2C0735c.m4564e().m5118a());
        componentCallbacks2C0735c.m4559a(this);
    }

    /* renamed from: a */
    protected void m5365a(@NonNull C0937d c0937d) {
        this.f4937l = c0937d.clone().m5299h();
    }

    /* renamed from: a */
    public void m5361a() {
        C0955i.m5425a();
        this.f4931f.m5156a();
    }

    /* renamed from: b */
    public void m5367b() {
        C0955i.m5425a();
        this.f4931f.m5158b();
    }

    @Override // com.p052a.p053a.p074e.InterfaceC0899i
    /* renamed from: c */
    public void mo5133c() {
        m5367b();
        this.f4933h.mo5133c();
    }

    @Override // com.p052a.p053a.p074e.InterfaceC0899i
    /* renamed from: d */
    public void mo5134d() {
        m5361a();
        this.f4933h.mo5134d();
    }

    @Override // com.p052a.p053a.p074e.InterfaceC0899i
    /* renamed from: e */
    public void mo5135e() {
        this.f4933h.mo5135e();
        Iterator<InterfaceC0930h<?>> it = this.f4933h.m5172a().iterator();
        while (it.hasNext()) {
            m5363a(it.next());
        }
        this.f4933h.m5174b();
        this.f4931f.m5160c();
        this.f4930b.mo5126b(this);
        this.f4930b.mo5126b(this.f4936k);
        this.f4935j.removeCallbacks(this.f4934i);
        this.f4929a.m4561b(this);
    }

    /* renamed from: f */
    public C0941i<Bitmap> m5369f() {
        return m5359a(Bitmap.class).m5354a(f4926c);
    }

    /* renamed from: g */
    public C0941i<Drawable> m5370g() {
        return m5359a(Drawable.class);
    }

    /* renamed from: a */
    public C0941i<Drawable> m5360a(@Nullable Object obj) {
        return m5370g().m5355a(obj);
    }

    /* renamed from: a */
    public <ResourceType> C0941i<ResourceType> m5359a(Class<ResourceType> cls) {
        return new C0941i<>(this.f4929a, this, cls);
    }

    /* renamed from: a */
    public void m5362a(View view) {
        m5363a((InterfaceC0930h<?>) new a(view));
    }

    /* renamed from: a */
    public void m5363a(@Nullable InterfaceC0930h<?> interfaceC0930h) {
        if (interfaceC0930h != null) {
            if (C0955i.m5429b()) {
                m5358c(interfaceC0930h);
            } else {
                this.f4935j.post(new Runnable() { // from class: com.a.a.j.2

                    /* renamed from: a */
                    final /* synthetic */ InterfaceC0930h f4939a;

                    AnonymousClass2(InterfaceC0930h interfaceC0930h2) {
                        interfaceC0930h = interfaceC0930h2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        C0944j.this.m5363a(interfaceC0930h);
                    }
                });
            }
        }
    }

    /* renamed from: com.a.a.j$2 */
    class AnonymousClass2 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ InterfaceC0930h f4939a;

        AnonymousClass2(InterfaceC0930h interfaceC0930h2) {
            interfaceC0930h = interfaceC0930h2;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0944j.this.m5363a(interfaceC0930h);
        }
    }

    /* renamed from: c */
    private void m5358c(InterfaceC0930h<?> interfaceC0930h) {
        if (!m5368b(interfaceC0930h)) {
            this.f4929a.m4558a(interfaceC0930h);
        }
    }

    /* renamed from: b */
    boolean m5368b(InterfaceC0930h<?> interfaceC0930h) {
        InterfaceC0922a mo5230b = interfaceC0930h.mo5230b();
        if (mo5230b == null) {
            return true;
        }
        if (this.f4931f.m5159b(mo5230b)) {
            this.f4933h.m5175b(interfaceC0930h);
            interfaceC0930h.mo5229a((InterfaceC0922a) null);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    void m5364a(InterfaceC0930h<?> interfaceC0930h, InterfaceC0922a interfaceC0922a) {
        this.f4933h.m5173a(interfaceC0930h);
        this.f4931f.m5157a(interfaceC0922a);
    }

    /* renamed from: h */
    C0937d m5371h() {
        return this.f4937l;
    }

    @NonNull
    /* renamed from: b */
    <T> AbstractC0956k<?, T> m5366b(Class<T> cls) {
        return this.f4929a.m4564e().m5119a(cls);
    }

    public String toString() {
        return super.toString() + "{tracker=" + this.f4931f + ", treeNode=" + this.f4932g + "}";
    }

    /* renamed from: com.a.a.j$b */
    private static class b implements InterfaceC0893c.a {

        /* renamed from: a */
        private final C0904n f4954a;

        public b(C0904n c0904n) {
            this.f4954a = c0904n;
        }

        @Override // com.p052a.p053a.p074e.InterfaceC0893c.a
        /* renamed from: a */
        public void mo5128a(boolean z) {
            if (z) {
                this.f4954a.m5161d();
            }
        }
    }

    /* renamed from: com.a.a.j$a */
    private static class a extends AbstractC0931i<View, Object> {
        public a(View view) {
            super(view);
        }

        @Override // com.p052a.p053a.p077h.p078a.InterfaceC0930h
        /* renamed from: a */
        public void mo5094a(Object obj, InterfaceC0934b<? super Object> interfaceC0934b) {
        }
    }
}
