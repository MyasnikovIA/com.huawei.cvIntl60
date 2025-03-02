package android.support.transition;

import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.transition.AbstractC0325l;
import android.support.v4.app.FragmentTransitionImpl;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.transition.e */
/* loaded from: classes.dex */
public class C0318e extends FragmentTransitionImpl {
    @Override // android.support.v4.app.FragmentTransitionImpl
    public boolean canHandle(Object obj) {
        return obj instanceof AbstractC0325l;
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public Object cloneTransition(Object obj) {
        if (obj == null) {
            return null;
        }
        return ((AbstractC0325l) obj).clone();
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public Object wrapTransitionInSet(Object obj) {
        if (obj == null) {
            return null;
        }
        C0329p c0329p = new C0329p();
        c0329p.m2426a((AbstractC0325l) obj);
        return c0329p;
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void setSharedElementTargets(Object obj, View view, ArrayList<View> arrayList) {
        C0329p c0329p = (C0329p) obj;
        List<View> g = c0329p.m2406g();
        g.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            bfsAddViewChildren(g, arrayList.get(i));
        }
        g.add(view);
        arrayList.add(view);
        addTargets(c0329p, arrayList);
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void setEpicenter(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            getBoundsOnScreen(view, rect);
            ((AbstractC0325l) obj).mo2386a(new AbstractC0325l.b() { // from class: android.support.transition.e.1

                /* renamed from: a */
                final /* synthetic */ Rect f2049a;

                AnonymousClass1(Rect rect2) {
                    rect = rect2;
                }
            });
        }
    }

    /* renamed from: android.support.transition.e$1 */
    class AnonymousClass1 extends AbstractC0325l.b {

        /* renamed from: a */
        final /* synthetic */ Rect f2049a;

        AnonymousClass1(Rect rect2) {
            rect = rect2;
        }
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void addTargets(Object obj, ArrayList<View> arrayList) {
        AbstractC0325l abstractC0325l = (AbstractC0325l) obj;
        if (abstractC0325l != null) {
            if (abstractC0325l instanceof C0329p) {
                C0329p c0329p = (C0329p) abstractC0325l;
                int m2435q = c0329p.m2435q();
                for (int i = 0; i < m2435q; i++) {
                    addTargets(c0329p.m2427b(i), arrayList);
                }
                return;
            }
            if (!m2358a(abstractC0325l) && isNullOrEmpty(abstractC0325l.m2406g())) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    abstractC0325l.mo2396b(arrayList.get(i2));
                }
            }
        }
    }

    /* renamed from: a */
    private static boolean m2358a(AbstractC0325l abstractC0325l) {
        return (isNullOrEmpty(abstractC0325l.m2405f()) && isNullOrEmpty(abstractC0325l.m2407h()) && isNullOrEmpty(abstractC0325l.m2408i())) ? false : true;
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public Object mergeTransitionsTogether(Object obj, Object obj2, Object obj3) {
        C0329p c0329p = new C0329p();
        if (obj != null) {
            c0329p.m2426a((AbstractC0325l) obj);
        }
        if (obj2 != null) {
            c0329p.m2426a((AbstractC0325l) obj2);
        }
        if (obj3 != null) {
            c0329p.m2426a((AbstractC0325l) obj3);
        }
        return c0329p;
    }

    /* renamed from: android.support.transition.e$2 */
    class AnonymousClass2 implements AbstractC0325l.c {

        /* renamed from: a */
        final /* synthetic */ View f2051a;

        /* renamed from: b */
        final /* synthetic */ ArrayList f2052b;

        AnonymousClass2(View view, ArrayList arrayList) {
            view = view;
            arrayList = arrayList;
        }

        @Override // android.support.transition.AbstractC0325l.c
        /* renamed from: d */
        public void mo2337d(@NonNull AbstractC0325l abstractC0325l) {
        }

        @Override // android.support.transition.AbstractC0325l.c
        /* renamed from: a */
        public void mo2334a(@NonNull AbstractC0325l abstractC0325l) {
            abstractC0325l.mo2395b(this);
            view.setVisibility(8);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((View) arrayList.get(i)).setVisibility(0);
            }
        }

        @Override // android.support.transition.AbstractC0325l.c
        /* renamed from: b */
        public void mo2335b(@NonNull AbstractC0325l abstractC0325l) {
        }

        @Override // android.support.transition.AbstractC0325l.c
        /* renamed from: c */
        public void mo2336c(@NonNull AbstractC0325l abstractC0325l) {
        }
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void scheduleHideFragmentView(Object obj, View view, ArrayList<View> arrayList) {
        ((AbstractC0325l) obj).mo2381a(new AbstractC0325l.c() { // from class: android.support.transition.e.2

            /* renamed from: a */
            final /* synthetic */ View f2051a;

            /* renamed from: b */
            final /* synthetic */ ArrayList f2052b;

            AnonymousClass2(View view2, ArrayList arrayList2) {
                view = view2;
                arrayList = arrayList2;
            }

            @Override // android.support.transition.AbstractC0325l.c
            /* renamed from: d */
            public void mo2337d(@NonNull AbstractC0325l abstractC0325l) {
            }

            @Override // android.support.transition.AbstractC0325l.c
            /* renamed from: a */
            public void mo2334a(@NonNull AbstractC0325l abstractC0325l) {
                abstractC0325l.mo2395b(this);
                view.setVisibility(8);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((View) arrayList.get(i)).setVisibility(0);
                }
            }

            @Override // android.support.transition.AbstractC0325l.c
            /* renamed from: b */
            public void mo2335b(@NonNull AbstractC0325l abstractC0325l) {
            }

            @Override // android.support.transition.AbstractC0325l.c
            /* renamed from: c */
            public void mo2336c(@NonNull AbstractC0325l abstractC0325l) {
            }
        });
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public Object mergeTransitionsInSequence(Object obj, Object obj2, Object obj3) {
        AbstractC0325l abstractC0325l = null;
        AbstractC0325l abstractC0325l2 = (AbstractC0325l) obj;
        AbstractC0325l abstractC0325l3 = (AbstractC0325l) obj2;
        AbstractC0325l abstractC0325l4 = (AbstractC0325l) obj3;
        if (abstractC0325l2 != null && abstractC0325l3 != null) {
            abstractC0325l = new C0329p().m2426a(abstractC0325l2).m2426a(abstractC0325l3).m2425a(1);
        } else if (abstractC0325l2 != null) {
            abstractC0325l = abstractC0325l2;
        } else if (abstractC0325l3 != null) {
            abstractC0325l = abstractC0325l3;
        }
        if (abstractC0325l4 == null) {
            return abstractC0325l;
        }
        C0329p c0329p = new C0329p();
        if (abstractC0325l != null) {
            c0329p.m2426a(abstractC0325l);
        }
        c0329p.m2426a(abstractC0325l4);
        return c0329p;
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void beginDelayedTransition(ViewGroup viewGroup, Object obj) {
        C0327n.m2417a(viewGroup, (AbstractC0325l) obj);
    }

    /* renamed from: android.support.transition.e$3 */
    class AnonymousClass3 implements AbstractC0325l.c {

        /* renamed from: a */
        final /* synthetic */ Object f2054a;

        /* renamed from: b */
        final /* synthetic */ ArrayList f2055b;

        /* renamed from: c */
        final /* synthetic */ Object f2056c;

        /* renamed from: d */
        final /* synthetic */ ArrayList f2057d;

        /* renamed from: e */
        final /* synthetic */ Object f2058e;

        /* renamed from: f */
        final /* synthetic */ ArrayList f2059f;

        AnonymousClass3(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            obj2 = obj;
            arrayList = arrayList;
            obj3 = obj2;
            arrayList2 = arrayList2;
            obj4 = obj3;
            arrayList3 = arrayList3;
        }

        @Override // android.support.transition.AbstractC0325l.c
        /* renamed from: d */
        public void mo2337d(@NonNull AbstractC0325l abstractC0325l) {
            if (obj2 != null) {
                C0318e.this.replaceTargets(obj2, arrayList, null);
            }
            if (obj3 != null) {
                C0318e.this.replaceTargets(obj3, arrayList2, null);
            }
            if (obj4 != null) {
                C0318e.this.replaceTargets(obj4, arrayList3, null);
            }
        }

        @Override // android.support.transition.AbstractC0325l.c
        /* renamed from: a */
        public void mo2334a(@NonNull AbstractC0325l abstractC0325l) {
        }

        @Override // android.support.transition.AbstractC0325l.c
        /* renamed from: b */
        public void mo2335b(@NonNull AbstractC0325l abstractC0325l) {
        }

        @Override // android.support.transition.AbstractC0325l.c
        /* renamed from: c */
        public void mo2336c(@NonNull AbstractC0325l abstractC0325l) {
        }
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void scheduleRemoveTargets(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((AbstractC0325l) obj).mo2381a(new AbstractC0325l.c() { // from class: android.support.transition.e.3

            /* renamed from: a */
            final /* synthetic */ Object f2054a;

            /* renamed from: b */
            final /* synthetic */ ArrayList f2055b;

            /* renamed from: c */
            final /* synthetic */ Object f2056c;

            /* renamed from: d */
            final /* synthetic */ ArrayList f2057d;

            /* renamed from: e */
            final /* synthetic */ Object f2058e;

            /* renamed from: f */
            final /* synthetic */ ArrayList f2059f;

            AnonymousClass3(Object obj22, ArrayList arrayList4, Object obj32, ArrayList arrayList22, Object obj42, ArrayList arrayList32) {
                obj2 = obj22;
                arrayList = arrayList4;
                obj3 = obj32;
                arrayList2 = arrayList22;
                obj4 = obj42;
                arrayList3 = arrayList32;
            }

            @Override // android.support.transition.AbstractC0325l.c
            /* renamed from: d */
            public void mo2337d(@NonNull AbstractC0325l abstractC0325l) {
                if (obj2 != null) {
                    C0318e.this.replaceTargets(obj2, arrayList, null);
                }
                if (obj3 != null) {
                    C0318e.this.replaceTargets(obj3, arrayList2, null);
                }
                if (obj4 != null) {
                    C0318e.this.replaceTargets(obj4, arrayList3, null);
                }
            }

            @Override // android.support.transition.AbstractC0325l.c
            /* renamed from: a */
            public void mo2334a(@NonNull AbstractC0325l abstractC0325l) {
            }

            @Override // android.support.transition.AbstractC0325l.c
            /* renamed from: b */
            public void mo2335b(@NonNull AbstractC0325l abstractC0325l) {
            }

            @Override // android.support.transition.AbstractC0325l.c
            /* renamed from: c */
            public void mo2336c(@NonNull AbstractC0325l abstractC0325l) {
            }
        });
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void swapSharedElementTargets(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        C0329p c0329p = (C0329p) obj;
        if (c0329p != null) {
            c0329p.m2406g().clear();
            c0329p.m2406g().addAll(arrayList2);
            replaceTargets(c0329p, arrayList, arrayList2);
        }
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void replaceTargets(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        AbstractC0325l abstractC0325l = (AbstractC0325l) obj;
        if (abstractC0325l instanceof C0329p) {
            C0329p c0329p = (C0329p) abstractC0325l;
            int m2435q = c0329p.m2435q();
            for (int i = 0; i < m2435q; i++) {
                replaceTargets(c0329p.m2427b(i), arrayList, arrayList2);
            }
            return;
        }
        if (!m2358a(abstractC0325l)) {
            List<View> m2406g = abstractC0325l.m2406g();
            if (m2406g.size() == arrayList.size() && m2406g.containsAll(arrayList)) {
                int size = arrayList2 == null ? 0 : arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    abstractC0325l.mo2396b(arrayList2.get(i2));
                }
                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                    abstractC0325l.mo2399c(arrayList.get(size2));
                }
            }
        }
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void addTarget(Object obj, View view) {
        if (obj != null) {
            ((AbstractC0325l) obj).mo2396b(view);
        }
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void removeTarget(Object obj, View view) {
        if (obj != null) {
            ((AbstractC0325l) obj).mo2399c(view);
        }
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void setEpicenter(Object obj, Rect rect) {
        if (obj != null) {
            ((AbstractC0325l) obj).mo2386a(new AbstractC0325l.b() { // from class: android.support.transition.e.4

                /* renamed from: a */
                final /* synthetic */ Rect f2061a;

                AnonymousClass4(Rect rect2) {
                    rect = rect2;
                }
            });
        }
    }

    /* renamed from: android.support.transition.e$4 */
    class AnonymousClass4 extends AbstractC0325l.b {

        /* renamed from: a */
        final /* synthetic */ Rect f2061a;

        AnonymousClass4(Rect rect2) {
            rect = rect2;
        }
    }
}
