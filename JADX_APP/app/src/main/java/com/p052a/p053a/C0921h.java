package com.p052a.p053a;

import android.support.v4.util.Pools;
import com.p052a.p053a.p057d.InterfaceC0839d;
import com.p052a.p053a.p057d.InterfaceC0882f;
import com.p052a.p053a.p057d.InterfaceC0887k;
import com.p052a.p053a.p057d.InterfaceC0888l;
import com.p052a.p053a.p057d.p058a.C0750d;
import com.p052a.p053a.p057d.p058a.InterfaceC0749c;
import com.p052a.p053a.p057d.p060b.C0792g;
import com.p052a.p053a.p057d.p060b.C0802q;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p065c.C0830p;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p057d.p065c.InterfaceC0829o;
import com.p052a.p053a.p057d.p067d.p073f.C0879e;
import com.p052a.p053a.p057d.p067d.p073f.InterfaceC0878d;
import com.p052a.p053a.p076g.C0915a;
import com.p052a.p053a.p076g.C0916b;
import com.p052a.p053a.p076g.C0917c;
import com.p052a.p053a.p076g.C0918d;
import com.p052a.p053a.p076g.C0919e;
import com.p052a.p053a.p076g.C0920f;
import com.p052a.p053a.p081j.p082a.C0946a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.a.a.h */
/* loaded from: classes.dex */
public class C0921h {

    /* renamed from: h */
    private final C0918d f4824h = new C0918d();

    /* renamed from: i */
    private final C0917c f4825i = new C0917c();

    /* renamed from: j */
    private final Pools.Pool<List<Exception>> f4826j = C0946a.m5377a();

    /* renamed from: a */
    private final C0830p f4817a = new C0830p(this.f4826j);

    /* renamed from: b */
    private final C0915a f4818b = new C0915a();

    /* renamed from: c */
    private final C0919e f4819c = new C0919e();

    /* renamed from: d */
    private final C0920f f4820d = new C0920f();

    /* renamed from: e */
    private final C0750d f4821e = new C0750d();

    /* renamed from: f */
    private final C0879e f4822f = new C0879e();

    /* renamed from: g */
    private final C0916b f4823g = new C0916b();

    public C0921h() {
        m5212a(Arrays.asList("Gif", "Bitmap", "BitmapDrawable"));
    }

    /* renamed from: a */
    public <Data> C0921h m5206a(Class<Data> cls, InterfaceC0839d<Data> interfaceC0839d) {
        this.f4818b.m5182a(cls, interfaceC0839d);
        return this;
    }

    /* renamed from: a */
    public <Data, TResource> C0921h m5210a(Class<Data> cls, Class<TResource> cls2, InterfaceC0887k<Data, TResource> interfaceC0887k) {
        m5211a("legacy_append", cls, cls2, interfaceC0887k);
        return this;
    }

    /* renamed from: a */
    public <Data, TResource> C0921h m5211a(String str, Class<Data> cls, Class<TResource> cls2, InterfaceC0887k<Data, TResource> interfaceC0887k) {
        this.f4819c.m5194a(str, interfaceC0887k, cls, cls2);
        return this;
    }

    /* renamed from: a */
    public final C0921h m5212a(List<String> list) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(0, "legacy_prepend_all");
        arrayList.add("legacy_append");
        this.f4819c.m5195a(arrayList);
        return this;
    }

    /* renamed from: a */
    public <TResource> C0921h m5207a(Class<TResource> cls, InterfaceC0888l<TResource> interfaceC0888l) {
        this.f4820d.m5199a(cls, interfaceC0888l);
        return this;
    }

    /* renamed from: a */
    public C0921h m5204a(InterfaceC0749c.a aVar) {
        this.f4821e.m4637a((InterfaceC0749c.a<?>) aVar);
        return this;
    }

    /* renamed from: a */
    public <TResource, Transcode> C0921h m5209a(Class<TResource> cls, Class<Transcode> cls2, InterfaceC0878d<TResource, Transcode> interfaceC0878d) {
        this.f4822f.m5098a(cls, cls2, interfaceC0878d);
        return this;
    }

    /* renamed from: a */
    public C0921h m5205a(InterfaceC0882f interfaceC0882f) {
        this.f4823g.m5185a(interfaceC0882f);
        return this;
    }

    /* renamed from: a */
    public <Model, Data> C0921h m5208a(Class<Model> cls, Class<Data> cls2, InterfaceC0829o<Model, Data> interfaceC0829o) {
        this.f4817a.m4950a(cls, cls2, interfaceC0829o);
        return this;
    }

    /* renamed from: a */
    public <Data, TResource, Transcode> C0802q<Data, TResource, Transcode> m5202a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        C0802q<Data, TResource, Transcode> m5189b = this.f4825i.m5189b(cls, cls2, cls3);
        if (m5189b == null && !this.f4825i.m5188a(cls, cls2, cls3)) {
            List<C0792g<Data, TResource, Transcode>> m5201c = m5201c(cls, cls2, cls3);
            if (m5201c.isEmpty()) {
                m5189b = null;
            } else {
                m5189b = new C0802q<>(cls, cls2, cls3, m5201c, this.f4826j);
            }
            this.f4825i.m5187a(cls, cls2, cls3, m5189b);
        }
        return m5189b;
    }

    /* renamed from: c */
    private <Data, TResource, Transcode> List<C0792g<Data, TResource, Transcode>> m5201c(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.f4819c.m5196b(cls, cls2)) {
            for (Class cls5 : this.f4822f.m5099b(cls4, cls3)) {
                arrayList.add(new C0792g(cls, cls4, cls5, this.f4819c.m5193a(cls, cls4), this.f4822f.m5097a(cls4, cls5), this.f4826j));
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public <Model, TResource, Transcode> List<Class<?>> m5217b(Class<Model> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        List<Class<?>> m5190a = this.f4824h.m5190a(cls, cls2);
        if (m5190a == null) {
            ArrayList arrayList = new ArrayList();
            Iterator<Class<?>> it = this.f4817a.m4948a((Class<?>) cls).iterator();
            while (it.hasNext()) {
                for (Class cls4 : this.f4819c.m5196b(it.next(), cls2)) {
                    if (!this.f4822f.m5099b(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                        arrayList.add(cls4);
                    }
                }
            }
            this.f4824h.m5191a(cls, cls2, Collections.unmodifiableList(arrayList));
            return arrayList;
        }
        return m5190a;
    }

    /* renamed from: a */
    public boolean m5214a(InterfaceC0804s<?> interfaceC0804s) {
        return this.f4820d.m5198a(interfaceC0804s.mo4879b()) != null;
    }

    /* renamed from: b */
    public <X> InterfaceC0888l<X> m5216b(InterfaceC0804s<X> interfaceC0804s) {
        InterfaceC0888l<X> m5198a = this.f4820d.m5198a(interfaceC0804s.mo4879b());
        if (m5198a != null) {
            return m5198a;
        }
        throw new d(interfaceC0804s.mo4879b());
    }

    /* renamed from: a */
    public <X> InterfaceC0839d<X> m5203a(X x) {
        InterfaceC0839d<X> m5181a = this.f4818b.m5181a(x.getClass());
        if (m5181a != null) {
            return m5181a;
        }
        throw new e(x.getClass());
    }

    /* renamed from: b */
    public <X> InterfaceC0749c<X> m5215b(X x) {
        return this.f4821e.m4636a((C0750d) x);
    }

    /* renamed from: c */
    public <Model> List<InterfaceC0828n<Model, ?>> m5218c(Model model) {
        List<InterfaceC0828n<Model, ?>> m4949a = this.f4817a.m4949a((C0830p) model);
        if (m4949a.isEmpty()) {
            throw new c(model);
        }
        return m4949a;
    }

    /* renamed from: a */
    public List<InterfaceC0882f> m5213a() {
        List<InterfaceC0882f> m5184a = this.f4823g.m5184a();
        if (m5184a.isEmpty()) {
            throw new b();
        }
        return m5184a;
    }

    /* renamed from: com.a.a.h$c */
    public static class c extends a {
        public c(Object obj) {
            super("Failed to find any ModelLoaders for model: " + obj);
        }

        public c(Class<?> cls, Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }

    /* renamed from: com.a.a.h$d */
    public static class d extends a {
        public d(Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls);
        }
    }

    /* renamed from: com.a.a.h$e */
    public static class e extends a {
        public e(Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    /* renamed from: com.a.a.h$a */
    public static class a extends RuntimeException {
        public a(String str) {
            super(str);
        }
    }

    /* renamed from: com.a.a.h$b */
    public static final class b extends a {
        public b() {
            super("Failed to find image header parser.");
        }
    }
}
