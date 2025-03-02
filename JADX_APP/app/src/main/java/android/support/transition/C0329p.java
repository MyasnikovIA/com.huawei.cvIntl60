package android.support.transition;

import android.animation.TimeInterpolator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.transition.AbstractC0325l;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: android.support.transition.p */
/* loaded from: classes.dex */
public class C0329p extends AbstractC0325l {

    /* renamed from: h */
    int f2123h;

    /* renamed from: j */
    private ArrayList<AbstractC0325l> f2125j = new ArrayList<>();

    /* renamed from: k */
    private boolean f2126k = true;

    /* renamed from: i */
    boolean f2124i = false;

    /* renamed from: l */
    private int f2127l = 0;

    @NonNull
    /* renamed from: a */
    public C0329p m2425a(int i) {
        switch (i) {
            case 0:
                this.f2126k = true;
                return this;
            case 1:
                this.f2126k = false;
                return this;
            default:
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
        }
    }

    @NonNull
    /* renamed from: a */
    public C0329p m2426a(@NonNull AbstractC0325l abstractC0325l) {
        this.f2125j.add(abstractC0325l);
        abstractC0325l.f2087d = this;
        if (this.f2084a >= 0) {
            abstractC0325l.mo2379a(this.f2084a);
        }
        if ((this.f2127l & 1) != 0) {
            abstractC0325l.mo2380a(m2401d());
        }
        if ((this.f2127l & 2) != 0) {
            abstractC0325l.mo2387a(m2413n());
        }
        if ((this.f2127l & 4) != 0) {
            abstractC0325l.mo2385a(m2411l());
        }
        if ((this.f2127l & 8) != 0) {
            abstractC0325l.mo2386a(m2412m());
        }
        return this;
    }

    /* renamed from: q */
    public int m2435q() {
        return this.f2125j.size();
    }

    /* renamed from: b */
    public AbstractC0325l m2427b(int i) {
        if (i < 0 || i >= this.f2125j.size()) {
            return null;
        }
        return this.f2125j.get(i);
    }

    @Override // android.support.transition.AbstractC0325l
    @NonNull
    /* renamed from: c */
    public C0329p mo2379a(long j) {
        super.mo2379a(j);
        if (this.f2084a >= 0) {
            int size = this.f2125j.size();
            for (int i = 0; i < size; i++) {
                this.f2125j.get(i).mo2379a(j);
            }
        }
        return this;
    }

    @Override // android.support.transition.AbstractC0325l
    @NonNull
    /* renamed from: d */
    public C0329p mo2394b(long j) {
        return (C0329p) super.mo2394b(j);
    }

    @Override // android.support.transition.AbstractC0325l
    @NonNull
    /* renamed from: b */
    public C0329p mo2380a(@Nullable TimeInterpolator timeInterpolator) {
        this.f2127l |= 1;
        if (this.f2125j != null) {
            int size = this.f2125j.size();
            for (int i = 0; i < size; i++) {
                this.f2125j.get(i).mo2380a(timeInterpolator);
            }
        }
        return (C0329p) super.mo2380a(timeInterpolator);
    }

    @Override // android.support.transition.AbstractC0325l
    @NonNull
    /* renamed from: f */
    public C0329p mo2396b(@NonNull View view) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f2125j.size()) {
                this.f2125j.get(i2).mo2396b(view);
                i = i2 + 1;
            } else {
                return (C0329p) super.mo2396b(view);
            }
        }
    }

    @Override // android.support.transition.AbstractC0325l
    @NonNull
    /* renamed from: c */
    public C0329p mo2381a(@NonNull AbstractC0325l.c cVar) {
        return (C0329p) super.mo2381a(cVar);
    }

    @Override // android.support.transition.AbstractC0325l
    @NonNull
    /* renamed from: g */
    public C0329p mo2399c(@NonNull View view) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f2125j.size()) {
                this.f2125j.get(i2).mo2399c(view);
                i = i2 + 1;
            } else {
                return (C0329p) super.mo2399c(view);
            }
        }
    }

    @Override // android.support.transition.AbstractC0325l
    @NonNull
    /* renamed from: d */
    public C0329p mo2395b(@NonNull AbstractC0325l.c cVar) {
        return (C0329p) super.mo2395b(cVar);
    }

    @Override // android.support.transition.AbstractC0325l
    /* renamed from: a */
    public void mo2385a(AbstractC0320g abstractC0320g) {
        super.mo2385a(abstractC0320g);
        this.f2127l |= 4;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f2125j.size()) {
                this.f2125j.get(i2).mo2385a(abstractC0320g);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: r */
    private void m2424r() {
        a aVar = new a(this);
        Iterator<AbstractC0325l> it = this.f2125j.iterator();
        while (it.hasNext()) {
            it.next().mo2381a(aVar);
        }
        this.f2123h = this.f2125j.size();
    }

    /* renamed from: android.support.transition.p$a */
    static class a extends C0326m {

        /* renamed from: a */
        C0329p f2130a;

        a(C0329p c0329p) {
            this.f2130a = c0329p;
        }

        @Override // android.support.transition.C0326m, android.support.transition.AbstractC0325l.c
        /* renamed from: d */
        public void mo2337d(@NonNull AbstractC0325l abstractC0325l) {
            if (!this.f2130a.f2124i) {
                this.f2130a.m2409j();
                this.f2130a.f2124i = true;
            }
        }

        @Override // android.support.transition.C0326m, android.support.transition.AbstractC0325l.c
        /* renamed from: a */
        public void mo2334a(@NonNull AbstractC0325l abstractC0325l) {
            C0329p c0329p = this.f2130a;
            c0329p.f2123h--;
            if (this.f2130a.f2123h == 0) {
                this.f2130a.f2124i = false;
                this.f2130a.m2410k();
            }
            abstractC0325l.mo2395b(this);
        }
    }

    @Override // android.support.transition.AbstractC0325l
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    protected void mo2389a(ViewGroup viewGroup, C0332t c0332t, C0332t c0332t2, ArrayList<C0331s> arrayList, ArrayList<C0331s> arrayList2) {
        long c = m2398c();
        int size = this.f2125j.size();
        for (int i = 0; i < size; i++) {
            AbstractC0325l abstractC0325l = this.f2125j.get(i);
            if (c > 0 && (this.f2126k || i == 0)) {
                long m2398c = abstractC0325l.m2398c();
                if (m2398c > 0) {
                    abstractC0325l.mo2394b(m2398c + c);
                } else {
                    abstractC0325l.mo2394b(c);
                }
            }
            abstractC0325l.mo2389a(viewGroup, c0332t, c0332t2, arrayList, arrayList2);
        }
    }

    @Override // android.support.transition.AbstractC0325l
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: e */
    protected void mo2403e() {
        if (this.f2125j.isEmpty()) {
            m2409j();
            m2410k();
            return;
        }
        m2424r();
        if (!this.f2126k) {
            int i = 1;
            while (true) {
                int i2 = i;
                if (i2 >= this.f2125j.size()) {
                    break;
                }
                this.f2125j.get(i2 - 1).mo2381a(new C0326m() { // from class: android.support.transition.p.1

                    /* renamed from: a */
                    final /* synthetic */ AbstractC0325l f2128a;

                    AnonymousClass1(AbstractC0325l abstractC0325l) {
                        abstractC0325l2 = abstractC0325l;
                    }

                    @Override // android.support.transition.C0326m, android.support.transition.AbstractC0325l.c
                    /* renamed from: a */
                    public void mo2334a(@NonNull AbstractC0325l abstractC0325l) {
                        abstractC0325l2.mo2403e();
                        abstractC0325l.mo2395b(this);
                    }
                });
                i = i2 + 1;
            }
            AbstractC0325l abstractC0325l = this.f2125j.get(0);
            if (abstractC0325l != null) {
                abstractC0325l.mo2403e();
                return;
            }
            return;
        }
        Iterator<AbstractC0325l> it = this.f2125j.iterator();
        while (it.hasNext()) {
            it.next().mo2403e();
        }
    }

    /* renamed from: android.support.transition.p$1 */
    class AnonymousClass1 extends C0326m {

        /* renamed from: a */
        final /* synthetic */ AbstractC0325l f2128a;

        AnonymousClass1(AbstractC0325l abstractC0325l) {
            abstractC0325l2 = abstractC0325l;
        }

        @Override // android.support.transition.C0326m, android.support.transition.AbstractC0325l.c
        /* renamed from: a */
        public void mo2334a(@NonNull AbstractC0325l abstractC0325l) {
            abstractC0325l2.mo2403e();
            abstractC0325l.mo2395b(this);
        }
    }

    @Override // android.support.transition.AbstractC0325l
    /* renamed from: a */
    public void mo2326a(@NonNull C0331s c0331s) {
        if (m2392a(c0331s.f2135b)) {
            Iterator<AbstractC0325l> it = this.f2125j.iterator();
            while (it.hasNext()) {
                AbstractC0325l next = it.next();
                if (next.m2392a(c0331s.f2135b)) {
                    next.mo2326a(c0331s);
                    c0331s.f2136c.add(next);
                }
            }
        }
    }

    @Override // android.support.transition.AbstractC0325l
    /* renamed from: b */
    public void mo2331b(@NonNull C0331s c0331s) {
        if (m2392a(c0331s.f2135b)) {
            Iterator<AbstractC0325l> it = this.f2125j.iterator();
            while (it.hasNext()) {
                AbstractC0325l next = it.next();
                if (next.m2392a(c0331s.f2135b)) {
                    next.mo2331b(c0331s);
                    c0331s.f2136c.add(next);
                }
            }
        }
    }

    @Override // android.support.transition.AbstractC0325l
    /* renamed from: c */
    void mo2400c(C0331s c0331s) {
        super.mo2400c(c0331s);
        int size = this.f2125j.size();
        for (int i = 0; i < size; i++) {
            this.f2125j.get(i).mo2400c(c0331s);
        }
    }

    @Override // android.support.transition.AbstractC0325l
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: d */
    public void mo2402d(View view) {
        super.mo2402d(view);
        int size = this.f2125j.size();
        for (int i = 0; i < size; i++) {
            this.f2125j.get(i).mo2402d(view);
        }
    }

    @Override // android.support.transition.AbstractC0325l
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: e */
    public void mo2404e(View view) {
        super.mo2404e(view);
        int size = this.f2125j.size();
        for (int i = 0; i < size; i++) {
            this.f2125j.get(i).mo2404e(view);
        }
    }

    @Override // android.support.transition.AbstractC0325l
    /* renamed from: a */
    public void mo2387a(AbstractC0328o abstractC0328o) {
        super.mo2387a(abstractC0328o);
        this.f2127l |= 2;
        int size = this.f2125j.size();
        for (int i = 0; i < size; i++) {
            this.f2125j.get(i).mo2387a(abstractC0328o);
        }
    }

    @Override // android.support.transition.AbstractC0325l
    /* renamed from: a */
    public void mo2386a(AbstractC0325l.b bVar) {
        super.mo2386a(bVar);
        this.f2127l |= 8;
        int size = this.f2125j.size();
        for (int i = 0; i < size; i++) {
            this.f2125j.get(i).mo2386a(bVar);
        }
    }

    @Override // android.support.transition.AbstractC0325l
    /* renamed from: a */
    String mo2383a(String str) {
        String mo2383a = super.mo2383a(str);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f2125j.size()) {
                mo2383a = mo2383a + "\n" + this.f2125j.get(i2).mo2383a(str + "  ");
                i = i2 + 1;
            } else {
                return mo2383a;
            }
        }
    }

    @Override // android.support.transition.AbstractC0325l
    /* renamed from: o */
    public AbstractC0325l clone() {
        C0329p c0329p = (C0329p) super.clone();
        c0329p.f2125j = new ArrayList<>();
        int size = this.f2125j.size();
        for (int i = 0; i < size; i++) {
            c0329p.m2426a(this.f2125j.get(i).clone());
        }
        return c0329p;
    }
}
