package com.p052a.p053a.p057d.p065c;

import android.support.annotation.Nullable;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p081j.C0954h;
import java.util.Collections;
import java.util.List;

/* renamed from: com.a.a.d.c.n */
/* loaded from: classes.dex */
public interface InterfaceC0828n<Model, Data> {
    @Nullable
    /* renamed from: a */
    a<Data> mo4909a(Model model, int i, int i2, C0886j c0886j);

    /* renamed from: a */
    boolean mo4910a(Model model);

    /* renamed from: com.a.a.d.c.n$a */
    public static class a<Data> {

        /* renamed from: a */
        public final InterfaceC0884h f4557a;

        /* renamed from: b */
        public final List<InterfaceC0884h> f4558b;

        /* renamed from: c */
        public final InterfaceC0748b<Data> f4559c;

        public a(InterfaceC0884h interfaceC0884h, InterfaceC0748b<Data> interfaceC0748b) {
            this(interfaceC0884h, Collections.emptyList(), interfaceC0748b);
        }

        public a(InterfaceC0884h interfaceC0884h, List<InterfaceC0884h> list, InterfaceC0748b<Data> interfaceC0748b) {
            this.f4557a = (InterfaceC0884h) C0954h.m5409a(interfaceC0884h);
            this.f4558b = (List) C0954h.m5409a(list);
            this.f4559c = (InterfaceC0748b) C0954h.m5409a(interfaceC0748b);
        }
    }
}
