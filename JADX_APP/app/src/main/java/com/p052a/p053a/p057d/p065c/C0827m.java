package com.p052a.p053a.p057d.p065c;

import android.support.annotation.Nullable;
import com.p052a.p053a.p081j.C0951e;
import com.p052a.p053a.p081j.C0955i;
import java.util.Queue;

/* renamed from: com.a.a.d.c.m */
/* loaded from: classes.dex */
public class C0827m<A, B> {

    /* renamed from: a */
    private final C0951e<a<A>, B> f4551a;

    public C0827m() {
        this(250);
    }

    /* renamed from: com.a.a.d.c.m$1 */
    class AnonymousClass1 extends C0951e<a<A>, B> {
        AnonymousClass1(int i) {
            super(i);
        }

        @Override // com.p052a.p053a.p081j.C0951e
        /* renamed from: a */
        protected /* bridge */ /* synthetic */ void mo4742a(Object obj, Object obj2) {
            m4942a((a) obj, (a<A>) obj2);
        }

        /* renamed from: a */
        protected void m4942a(a<A> aVar, B b) {
            aVar.m4945a();
        }
    }

    public C0827m(int i) {
        this.f4551a = new C0951e<a<A>, B>(i) { // from class: com.a.a.d.c.m.1
            AnonymousClass1(int i2) {
                super(i2);
            }

            @Override // com.p052a.p053a.p081j.C0951e
            /* renamed from: a */
            protected /* bridge */ /* synthetic */ void mo4742a(Object obj, Object obj2) {
                m4942a((a) obj, (a<A>) obj2);
            }

            /* renamed from: a */
            protected void m4942a(a<A> aVar, B b) {
                aVar.m4945a();
            }
        };
    }

    @Nullable
    /* renamed from: a */
    public B m4940a(A a2, int i, int i2) {
        a<A> m4943a = a.m4943a(a2, i, i2);
        B m5401b = this.f4551a.m5401b((C0951e<a<A>, B>) m4943a);
        m4943a.m4945a();
        return m5401b;
    }

    /* renamed from: a */
    public void m4941a(A a2, int i, int i2, B b) {
        this.f4551a.m5402b(a.m4943a(a2, i, i2), b);
    }

    /* renamed from: com.a.a.d.c.m$a */
    static final class a<A> {

        /* renamed from: a */
        private static final Queue<a<?>> f4553a = C0955i.m5424a(0);

        /* renamed from: b */
        private int f4554b;

        /* renamed from: c */
        private int f4555c;

        /* renamed from: d */
        private A f4556d;

        /* renamed from: a */
        static <A> a<A> m4943a(A a2, int i, int i2) {
            a<A> aVar;
            synchronized (f4553a) {
                aVar = (a) f4553a.poll();
            }
            if (aVar == null) {
                aVar = new a<>();
            }
            aVar.m4944b(a2, i, i2);
            return aVar;
        }

        private a() {
        }

        /* renamed from: b */
        private void m4944b(A a2, int i, int i2) {
            this.f4556d = a2;
            this.f4555c = i;
            this.f4554b = i2;
        }

        /* renamed from: a */
        public void m4945a() {
            synchronized (f4553a) {
                f4553a.offer(this);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f4555c == aVar.f4555c && this.f4554b == aVar.f4554b && this.f4556d.equals(aVar.f4556d);
        }

        public int hashCode() {
            return (((this.f4554b * 31) + this.f4555c) * 31) + this.f4556d.hashCode();
        }
    }
}
