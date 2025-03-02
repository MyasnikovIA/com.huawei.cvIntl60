package android.support.transition;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: android.support.transition.n */
/* loaded from: classes.dex */
public class C0327n {

    /* renamed from: b */
    private static AbstractC0325l f2117b = new C0315b();

    /* renamed from: c */
    private static ThreadLocal<WeakReference<ArrayMap<ViewGroup, ArrayList<AbstractC0325l>>>> f2118c = new ThreadLocal<>();

    /* renamed from: a */
    static ArrayList<ViewGroup> f2116a = new ArrayList<>();

    /* renamed from: a */
    static ArrayMap<ViewGroup, ArrayList<AbstractC0325l>> m2416a() {
        ArrayMap<ViewGroup, ArrayList<AbstractC0325l>> arrayMap;
        WeakReference<ArrayMap<ViewGroup, ArrayList<AbstractC0325l>>> weakReference = f2118c.get();
        if (weakReference == null || (arrayMap = weakReference.get()) == null) {
            ArrayMap<ViewGroup, ArrayList<AbstractC0325l>> arrayMap2 = new ArrayMap<>();
            f2118c.set(new WeakReference<>(arrayMap2));
            return arrayMap2;
        }
        return arrayMap;
    }

    /* renamed from: b */
    private static void m2418b(ViewGroup viewGroup, AbstractC0325l abstractC0325l) {
        if (abstractC0325l != null && viewGroup != null) {
            a aVar = new a(abstractC0325l, viewGroup);
            viewGroup.addOnAttachStateChangeListener(aVar);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
        }
    }

    /* renamed from: android.support.transition.n$a */
    private static class a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        AbstractC0325l f2119a;

        /* renamed from: b */
        ViewGroup f2120b;

        a(AbstractC0325l abstractC0325l, ViewGroup viewGroup) {
            this.f2119a = abstractC0325l;
            this.f2120b = viewGroup;
        }

        /* renamed from: a */
        private void m2420a() {
            this.f2120b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f2120b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            m2420a();
            C0327n.f2116a.remove(this.f2120b);
            ArrayList<AbstractC0325l> arrayList = C0327n.m2416a().get(this.f2120b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<AbstractC0325l> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().mo2404e(this.f2120b);
                }
            }
            this.f2119a.m2391a(true);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            m2420a();
            if (C0327n.f2116a.remove(this.f2120b)) {
                ArrayMap<ViewGroup, ArrayList<AbstractC0325l>> m2416a = C0327n.m2416a();
                ArrayList<AbstractC0325l> arrayList = m2416a.get(this.f2120b);
                ArrayList arrayList2 = null;
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    m2416a.put(this.f2120b, arrayList);
                } else if (arrayList.size() > 0) {
                    arrayList2 = new ArrayList(arrayList);
                }
                arrayList.add(this.f2119a);
                this.f2119a.mo2381a(new C0326m() { // from class: android.support.transition.n.a.1

                    /* renamed from: a */
                    final /* synthetic */ ArrayMap f2121a;

                    AnonymousClass1(ArrayMap m2416a2) {
                        m2416a = m2416a2;
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // android.support.transition.C0326m, android.support.transition.AbstractC0325l.c
                    /* renamed from: a */
                    public void mo2334a(@NonNull AbstractC0325l abstractC0325l) {
                        ((ArrayList) m2416a.get(a.this.f2120b)).remove(abstractC0325l);
                    }
                });
                this.f2119a.m2390a(this.f2120b, false);
                if (arrayList2 != null) {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((AbstractC0325l) it.next()).mo2404e(this.f2120b);
                    }
                }
                this.f2119a.m2388a(this.f2120b);
            }
            return true;
        }

        /* renamed from: android.support.transition.n$a$1 */
        class AnonymousClass1 extends C0326m {

            /* renamed from: a */
            final /* synthetic */ ArrayMap f2121a;

            AnonymousClass1(ArrayMap m2416a2) {
                m2416a = m2416a2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.support.transition.C0326m, android.support.transition.AbstractC0325l.c
            /* renamed from: a */
            public void mo2334a(@NonNull AbstractC0325l abstractC0325l) {
                ((ArrayList) m2416a.get(a.this.f2120b)).remove(abstractC0325l);
            }
        }
    }

    /* renamed from: c */
    private static void m2419c(ViewGroup viewGroup, AbstractC0325l abstractC0325l) {
        ArrayList<AbstractC0325l> arrayList = m2416a().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<AbstractC0325l> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo2402d(viewGroup);
            }
        }
        if (abstractC0325l != null) {
            abstractC0325l.m2390a(viewGroup, true);
        }
        C0324k m2365a = C0324k.m2365a(viewGroup);
        if (m2365a != null) {
            m2365a.m2367a();
        }
    }

    /* renamed from: a */
    public static void m2417a(@NonNull ViewGroup viewGroup, @Nullable AbstractC0325l abstractC0325l) {
        if (!f2116a.contains(viewGroup) && ViewCompat.isLaidOut(viewGroup)) {
            f2116a.add(viewGroup);
            if (abstractC0325l == null) {
                abstractC0325l = f2117b;
            }
            AbstractC0325l clone = abstractC0325l.clone();
            m2419c(viewGroup, clone);
            C0324k.m2366a(viewGroup, null);
            m2418b(viewGroup, clone);
        }
    }
}
