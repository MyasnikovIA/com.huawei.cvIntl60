package com.p052a.p053a.p057d.p065c;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.Pools;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p057d.p060b.C0800o;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p081j.C0954h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.a.a.d.c.q */
/* loaded from: classes.dex */
class C0831q<Model, Data> implements InterfaceC0828n<Model, Data> {

    /* renamed from: a */
    private final List<InterfaceC0828n<Model, Data>> f4564a;

    /* renamed from: b */
    private final Pools.Pool<List<Exception>> f4565b;

    C0831q(List<InterfaceC0828n<Model, Data>> list, Pools.Pool<List<Exception>> pool) {
        this.f4564a = list;
        this.f4565b = pool;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<Data> mo4909a(Model model, int i, int i2, C0886j c0886j) {
        InterfaceC0884h interfaceC0884h;
        InterfaceC0828n.a<Data> mo4909a;
        int size = this.f4564a.size();
        ArrayList arrayList = new ArrayList(size);
        int i3 = 0;
        InterfaceC0884h interfaceC0884h2 = null;
        while (i3 < size) {
            InterfaceC0828n<Model, Data> interfaceC0828n = this.f4564a.get(i3);
            if (!interfaceC0828n.mo4910a(model) || (mo4909a = interfaceC0828n.mo4909a(model, i, i2, c0886j)) == null) {
                interfaceC0884h = interfaceC0884h2;
            } else {
                interfaceC0884h = mo4909a.f4557a;
                arrayList.add(mo4909a.f4559c);
            }
            i3++;
            interfaceC0884h2 = interfaceC0884h;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new InterfaceC0828n.a<>(interfaceC0884h2, new a(arrayList, this.f4565b));
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(Model model) {
        Iterator<InterfaceC0828n<Model, Data>> it = this.f4564a.iterator();
        while (it.hasNext()) {
            if (it.next().mo4910a(model)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f4564a.toArray(new InterfaceC0828n[this.f4564a.size()])) + '}';
    }

    /* renamed from: com.a.a.d.c.q$a */
    static class a<Data> implements InterfaceC0748b<Data>, InterfaceC0748b.a<Data> {

        /* renamed from: a */
        private final List<InterfaceC0748b<Data>> f4566a;

        /* renamed from: b */
        private final Pools.Pool<List<Exception>> f4567b;

        /* renamed from: c */
        private int f4568c;

        /* renamed from: d */
        private EnumC0914g f4569d;

        /* renamed from: e */
        private InterfaceC0748b.a<? super Data> f4570e;

        /* renamed from: f */
        @Nullable
        private List<Exception> f4571f;

        a(List<InterfaceC0748b<Data>> list, Pools.Pool<List<Exception>> pool) {
            this.f4567b = pool;
            C0954h.m5412a(list);
            this.f4566a = list;
            this.f4568c = 0;
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: a */
        public void mo4610a(EnumC0914g enumC0914g, InterfaceC0748b.a<? super Data> aVar) {
            this.f4569d = enumC0914g;
            this.f4570e = aVar;
            this.f4571f = this.f4567b.acquire();
            this.f4566a.get(this.f4568c).mo4610a(enumC0914g, this);
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: a */
        public void mo4609a() {
            if (this.f4571f != null) {
                this.f4567b.release(this.f4571f);
            }
            this.f4571f = null;
            Iterator<InterfaceC0748b<Data>> it = this.f4566a.iterator();
            while (it.hasNext()) {
                it.next().mo4609a();
            }
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        /* renamed from: b */
        public void mo4612b() {
            Iterator<InterfaceC0748b<Data>> it = this.f4566a.iterator();
            while (it.hasNext()) {
                it.next().mo4612b();
            }
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        @NonNull
        /* renamed from: d */
        public Class<Data> mo4626d() {
            return this.f4566a.get(0).mo4626d();
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
        @NonNull
        /* renamed from: c */
        public EnumC0741a mo4613c() {
            return this.f4566a.get(0).mo4613c();
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b.a
        /* renamed from: a */
        public void mo4631a(Data data) {
            if (data != null) {
                this.f4570e.mo4631a((InterfaceC0748b.a<? super Data>) data);
            } else {
                m4954e();
            }
        }

        @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b.a
        /* renamed from: a */
        public void mo4630a(Exception exc) {
            this.f4571f.add(exc);
            m4954e();
        }

        /* renamed from: e */
        private void m4954e() {
            if (this.f4568c < this.f4566a.size() - 1) {
                this.f4568c++;
                mo4610a(this.f4569d, this.f4570e);
            } else {
                this.f4570e.mo4630a((Exception) new C0800o("Fetch failed", new ArrayList(this.f4571f)));
            }
        }
    }
}
