package com.p052a.p053a.p057d.p065c;

import android.support.annotation.NonNull;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p080i.C0943b;

/* renamed from: com.a.a.d.c.v */
/* loaded from: classes.dex */
public class C0836v<Model> implements InterfaceC0828n<Model, Model> {
    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<Model> mo4909a(Model model, int i, int i2, C0886j c0886j) {
        return new InterfaceC0828n.a<>(new C0943b(model), new b(model));
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(Model model) {
        return true;
    }

    /* renamed from: com.a.a.d.c.v$b */
    private static class b<Model> implements InterfaceC0748b<Model> {

        /* renamed from: a */
        private final Model f4587a;

        public b(Model model) {
            this.f4587a = model;
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: a */
        public void mo4610a(EnumC0914g enumC0914g, InterfaceC0748b.a<? super Model> aVar) {
            aVar.mo4631a((InterfaceC0748b.a<? super Model>) this.f4587a);
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: a */
        public void mo4609a() {
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: b */
        public void mo4612b() {
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        @NonNull
        /* renamed from: d */
        public Class<Model> mo4626d() {
            return (Class<Model>) this.f4587a.getClass();
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        @NonNull
        /* renamed from: c */
        public EnumC0741a mo4613c() {
            return EnumC0741a.LOCAL;
        }
    }

    /* renamed from: com.a.a.d.c.v$a */
    public static class a<Model> implements InterfaceC0829o<Model, Model> {
        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<Model, Model> mo4912a(C0832r c0832r) {
            return new C0836v();
        }
    }
}
