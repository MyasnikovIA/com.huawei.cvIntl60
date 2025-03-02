package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.view.ViewCompat;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: android.support.transition.l */
/* loaded from: classes.dex */
public abstract class AbstractC0325l implements Cloneable {

    /* renamed from: H */
    private b f2081H;

    /* renamed from: I */
    private ArrayMap<String, String> f2082I;

    /* renamed from: g */
    AbstractC0328o f2090g;

    /* renamed from: y */
    private ArrayList<C0331s> f2106y;

    /* renamed from: z */
    private ArrayList<C0331s> f2107z;

    /* renamed from: h */
    private static final int[] f2073h = {2, 1, 3, 4};

    /* renamed from: i */
    private static final AbstractC0320g f2074i = new AbstractC0320g() { // from class: android.support.transition.l.1
        AnonymousClass1() {
        }

        @Override // android.support.transition.AbstractC0320g
        /* renamed from: a */
        public Path mo2360a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    };

    /* renamed from: A */
    private static ThreadLocal<ArrayMap<Animator, a>> f2072A = new ThreadLocal<>();

    /* renamed from: j */
    private String f2091j = getClass().getName();

    /* renamed from: k */
    private long f2092k = -1;

    /* renamed from: a */
    long f2084a = -1;

    /* renamed from: l */
    private TimeInterpolator f2093l = null;

    /* renamed from: b */
    ArrayList<Integer> f2085b = new ArrayList<>();

    /* renamed from: c */
    ArrayList<View> f2086c = new ArrayList<>();

    /* renamed from: m */
    private ArrayList<String> f2094m = null;

    /* renamed from: n */
    private ArrayList<Class> f2095n = null;

    /* renamed from: o */
    private ArrayList<Integer> f2096o = null;

    /* renamed from: p */
    private ArrayList<View> f2097p = null;

    /* renamed from: q */
    private ArrayList<Class> f2098q = null;

    /* renamed from: r */
    private ArrayList<String> f2099r = null;

    /* renamed from: s */
    private ArrayList<Integer> f2100s = null;

    /* renamed from: t */
    private ArrayList<View> f2101t = null;

    /* renamed from: u */
    private ArrayList<Class> f2102u = null;

    /* renamed from: v */
    private C0332t f2103v = new C0332t();

    /* renamed from: w */
    private C0332t f2104w = new C0332t();

    /* renamed from: d */
    C0329p f2087d = null;

    /* renamed from: x */
    private int[] f2105x = f2073h;

    /* renamed from: B */
    private ViewGroup f2075B = null;

    /* renamed from: e */
    boolean f2088e = false;

    /* renamed from: f */
    ArrayList<Animator> f2089f = new ArrayList<>();

    /* renamed from: C */
    private int f2076C = 0;

    /* renamed from: D */
    private boolean f2077D = false;

    /* renamed from: E */
    private boolean f2078E = false;

    /* renamed from: F */
    private ArrayList<c> f2079F = null;

    /* renamed from: G */
    private ArrayList<Animator> f2080G = new ArrayList<>();

    /* renamed from: J */
    private AbstractC0320g f2083J = f2074i;

    /* renamed from: android.support.transition.l$b */
    public static abstract class b {
    }

    /* renamed from: android.support.transition.l$c */
    public interface c {
        /* renamed from: a */
        void mo2334a(@NonNull AbstractC0325l abstractC0325l);

        /* renamed from: b */
        void mo2335b(@NonNull AbstractC0325l abstractC0325l);

        /* renamed from: c */
        void mo2336c(@NonNull AbstractC0325l abstractC0325l);

        /* renamed from: d */
        void mo2337d(@NonNull AbstractC0325l abstractC0325l);
    }

    /* renamed from: a */
    public abstract void mo2326a(@NonNull C0331s c0331s);

    /* renamed from: b */
    public abstract void mo2331b(@NonNull C0331s c0331s);

    /* renamed from: android.support.transition.l$1 */
    static class AnonymousClass1 extends AbstractC0320g {
        AnonymousClass1() {
        }

        @Override // android.support.transition.AbstractC0320g
        /* renamed from: a */
        public Path mo2360a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    }

    @NonNull
    /* renamed from: a */
    public AbstractC0325l mo2379a(long j) {
        this.f2084a = j;
        return this;
    }

    /* renamed from: b */
    public long m2393b() {
        return this.f2084a;
    }

    @NonNull
    /* renamed from: b */
    public AbstractC0325l mo2394b(long j) {
        this.f2092k = j;
        return this;
    }

    /* renamed from: c */
    public long m2398c() {
        return this.f2092k;
    }

    @NonNull
    /* renamed from: a */
    public AbstractC0325l mo2380a(@Nullable TimeInterpolator timeInterpolator) {
        this.f2093l = timeInterpolator;
        return this;
    }

    @Nullable
    /* renamed from: d */
    public TimeInterpolator m2401d() {
        return this.f2093l;
    }

    @Nullable
    /* renamed from: a */
    public String[] mo2328a() {
        return null;
    }

    @Nullable
    /* renamed from: a */
    public Animator mo2323a(@NonNull ViewGroup viewGroup, @Nullable C0331s c0331s, @Nullable C0331s c0331s2) {
        return null;
    }

    /* renamed from: a */
    private void m2371a(ArrayMap<View, C0331s> arrayMap, ArrayMap<View, C0331s> arrayMap2) {
        C0331s remove;
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            View keyAt = arrayMap.keyAt(size);
            if (keyAt != null && m2392a(keyAt) && (remove = arrayMap2.remove(keyAt)) != null && remove.f2135b != null && m2392a(remove.f2135b)) {
                this.f2106y.add(arrayMap.removeAt(size));
                this.f2107z.add(remove);
            }
        }
    }

    /* renamed from: a */
    private void m2373a(ArrayMap<View, C0331s> arrayMap, ArrayMap<View, C0331s> arrayMap2, LongSparseArray<View> longSparseArray, LongSparseArray<View> longSparseArray2) {
        View view;
        int size = longSparseArray.size();
        for (int i = 0; i < size; i++) {
            View valueAt = longSparseArray.valueAt(i);
            if (valueAt != null && m2392a(valueAt) && (view = longSparseArray2.get(longSparseArray.keyAt(i))) != null && m2392a(view)) {
                C0331s c0331s = arrayMap.get(valueAt);
                C0331s c0331s2 = arrayMap2.get(view);
                if (c0331s != null && c0331s2 != null) {
                    this.f2106y.add(c0331s);
                    this.f2107z.add(c0331s2);
                    arrayMap.remove(valueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    /* renamed from: a */
    private void m2374a(ArrayMap<View, C0331s> arrayMap, ArrayMap<View, C0331s> arrayMap2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View valueAt = sparseArray.valueAt(i);
            if (valueAt != null && m2392a(valueAt) && (view = sparseArray2.get(sparseArray.keyAt(i))) != null && m2392a(view)) {
                C0331s c0331s = arrayMap.get(valueAt);
                C0331s c0331s2 = arrayMap2.get(view);
                if (c0331s != null && c0331s2 != null) {
                    this.f2106y.add(c0331s);
                    this.f2107z.add(c0331s2);
                    arrayMap.remove(valueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    /* renamed from: a */
    private void m2372a(ArrayMap<View, C0331s> arrayMap, ArrayMap<View, C0331s> arrayMap2, ArrayMap<String, View> arrayMap3, ArrayMap<String, View> arrayMap4) {
        View view;
        int size = arrayMap3.size();
        for (int i = 0; i < size; i++) {
            View valueAt = arrayMap3.valueAt(i);
            if (valueAt != null && m2392a(valueAt) && (view = arrayMap4.get(arrayMap3.keyAt(i))) != null && m2392a(view)) {
                C0331s c0331s = arrayMap.get(valueAt);
                C0331s c0331s2 = arrayMap2.get(view);
                if (c0331s != null && c0331s2 != null) {
                    this.f2106y.add(c0331s);
                    this.f2107z.add(c0331s2);
                    arrayMap.remove(valueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    /* renamed from: b */
    private void m2376b(ArrayMap<View, C0331s> arrayMap, ArrayMap<View, C0331s> arrayMap2) {
        for (int i = 0; i < arrayMap.size(); i++) {
            C0331s valueAt = arrayMap.valueAt(i);
            if (m2392a(valueAt.f2135b)) {
                this.f2106y.add(valueAt);
                this.f2107z.add(null);
            }
        }
        for (int i2 = 0; i2 < arrayMap2.size(); i2++) {
            C0331s valueAt2 = arrayMap2.valueAt(i2);
            if (m2392a(valueAt2.f2135b)) {
                this.f2107z.add(valueAt2);
                this.f2106y.add(null);
            }
        }
    }

    /* renamed from: a */
    private void m2369a(C0332t c0332t, C0332t c0332t2) {
        ArrayMap<View, C0331s> arrayMap = new ArrayMap<>(c0332t.f2137a);
        ArrayMap<View, C0331s> arrayMap2 = new ArrayMap<>(c0332t2.f2137a);
        for (int i = 0; i < this.f2105x.length; i++) {
            switch (this.f2105x[i]) {
                case 1:
                    m2371a(arrayMap, arrayMap2);
                    break;
                case 2:
                    m2372a(arrayMap, arrayMap2, c0332t.f2140d, c0332t2.f2140d);
                    break;
                case 3:
                    m2374a(arrayMap, arrayMap2, c0332t.f2138b, c0332t2.f2138b);
                    break;
                case 4:
                    m2373a(arrayMap, arrayMap2, c0332t.f2139c, c0332t2.f2139c);
                    break;
            }
        }
        m2376b(arrayMap, arrayMap2);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    protected void mo2389a(ViewGroup viewGroup, C0332t c0332t, C0332t c0332t2, ArrayList<C0331s> arrayList, ArrayList<C0331s> arrayList2) {
        Animator mo2323a;
        View view;
        C0331s c0331s;
        Animator animator;
        ArrayMap<Animator, a> m2378q = m2378q();
        long j = Long.MAX_VALUE;
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= size) {
                break;
            }
            C0331s c0331s2 = arrayList.get(i2);
            C0331s c0331s3 = arrayList2.get(i2);
            C0331s c0331s4 = (c0331s2 == null || c0331s2.f2136c.contains(this)) ? c0331s2 : null;
            C0331s c0331s5 = (c0331s3 == null || c0331s3.f2136c.contains(this)) ? c0331s3 : null;
            if (c0331s4 != null || c0331s5 != null) {
                if ((c0331s4 == null || c0331s5 == null || mo2327a(c0331s4, c0331s5)) && (mo2323a = mo2323a(viewGroup, c0331s4, c0331s5)) != null) {
                    C0331s c0331s6 = null;
                    if (c0331s5 != null) {
                        View view2 = c0331s5.f2135b;
                        String[] mo2328a = mo2328a();
                        if (view2 != null && mo2328a != null && mo2328a.length > 0) {
                            C0331s c0331s7 = new C0331s();
                            c0331s7.f2135b = view2;
                            C0331s c0331s8 = c0332t2.f2137a.get(view2);
                            if (c0331s8 != null) {
                                for (int i3 = 0; i3 < mo2328a.length; i3++) {
                                    c0331s7.f2134a.put(mo2328a[i3], c0331s8.f2134a.get(mo2328a[i3]));
                                }
                            }
                            int size2 = m2378q.size();
                            int i4 = 0;
                            while (true) {
                                if (i4 >= size2) {
                                    c0331s6 = c0331s7;
                                    break;
                                }
                                a aVar = m2378q.get(m2378q.keyAt(i4));
                                if (aVar.f2113c == null || aVar.f2111a != view2 || !aVar.f2112b.equals(m2415p()) || !aVar.f2113c.equals(c0331s7)) {
                                    i4++;
                                } else {
                                    c0331s6 = c0331s7;
                                    mo2323a = null;
                                    break;
                                }
                            }
                        }
                        c0331s = c0331s6;
                        view = view2;
                        animator = mo2323a;
                    } else {
                        view = c0331s4.f2135b;
                        c0331s = null;
                        animator = mo2323a;
                    }
                    if (animator != null) {
                        if (this.f2090g != null) {
                            long m2421a = this.f2090g.m2421a(viewGroup, this, c0331s4, c0331s5);
                            sparseIntArray.put(this.f2080G.size(), (int) m2421a);
                            j = Math.min(m2421a, j);
                        }
                        m2378q.put(animator, new a(view, m2415p(), this, C0306ad.m2299b(viewGroup), c0331s));
                        this.f2080G.add(animator);
                    }
                }
            }
            i = i2 + 1;
        }
        if (j != 0) {
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i6 < sparseIntArray.size()) {
                    Animator animator2 = this.f2080G.get(sparseIntArray.keyAt(i6));
                    animator2.setStartDelay((sparseIntArray.valueAt(i6) - j) + animator2.getStartDelay());
                    i5 = i6 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    boolean m2392a(View view) {
        int id = view.getId();
        if (this.f2096o != null && this.f2096o.contains(Integer.valueOf(id))) {
            return false;
        }
        if (this.f2097p != null && this.f2097p.contains(view)) {
            return false;
        }
        if (this.f2098q != null) {
            int size = this.f2098q.size();
            for (int i = 0; i < size; i++) {
                if (this.f2098q.get(i).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.f2099r != null && ViewCompat.getTransitionName(view) != null && this.f2099r.contains(ViewCompat.getTransitionName(view))) {
            return false;
        }
        if (this.f2085b.size() == 0 && this.f2086c.size() == 0 && ((this.f2095n == null || this.f2095n.isEmpty()) && (this.f2094m == null || this.f2094m.isEmpty()))) {
            return true;
        }
        if (this.f2085b.contains(Integer.valueOf(id)) || this.f2086c.contains(view)) {
            return true;
        }
        if (this.f2094m != null && this.f2094m.contains(ViewCompat.getTransitionName(view))) {
            return true;
        }
        if (this.f2095n == null) {
            return false;
        }
        for (int i2 = 0; i2 < this.f2095n.size(); i2++) {
            if (this.f2095n.get(i2).isInstance(view)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: q */
    private static ArrayMap<Animator, a> m2378q() {
        ArrayMap<Animator, a> arrayMap = f2072A.get();
        if (arrayMap == null) {
            ArrayMap<Animator, a> arrayMap2 = new ArrayMap<>();
            f2072A.set(arrayMap2);
            return arrayMap2;
        }
        return arrayMap;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: e */
    protected void mo2403e() {
        m2409j();
        ArrayMap<Animator, a> m2378q = m2378q();
        Iterator<Animator> it = this.f2080G.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (m2378q.containsKey(next)) {
                m2409j();
                m2368a(next, m2378q);
            }
        }
        this.f2080G.clear();
        m2410k();
    }

    /* renamed from: a */
    private void m2368a(Animator animator, ArrayMap<Animator, a> arrayMap) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.l.2

                /* renamed from: a */
                final /* synthetic */ ArrayMap f2108a;

                AnonymousClass2(ArrayMap arrayMap2) {
                    arrayMap = arrayMap2;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    AbstractC0325l.this.f2089f.add(animator2);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    arrayMap.remove(animator2);
                    AbstractC0325l.this.f2089f.remove(animator2);
                }
            });
            m2384a(animator);
        }
    }

    /* renamed from: android.support.transition.l$2 */
    class AnonymousClass2 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ ArrayMap f2108a;

        AnonymousClass2(ArrayMap arrayMap2) {
            arrayMap = arrayMap2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator2) {
            AbstractC0325l.this.f2089f.add(animator2);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator2) {
            arrayMap.remove(animator2);
            AbstractC0325l.this.f2089f.remove(animator2);
        }
    }

    @NonNull
    /* renamed from: b */
    public AbstractC0325l mo2396b(@NonNull View view) {
        this.f2086c.add(view);
        return this;
    }

    @NonNull
    /* renamed from: c */
    public AbstractC0325l mo2399c(@NonNull View view) {
        this.f2086c.remove(view);
        return this;
    }

    @NonNull
    /* renamed from: f */
    public List<Integer> m2405f() {
        return this.f2085b;
    }

    @NonNull
    /* renamed from: g */
    public List<View> m2406g() {
        return this.f2086c;
    }

    @Nullable
    /* renamed from: h */
    public List<String> m2407h() {
        return this.f2094m;
    }

    @Nullable
    /* renamed from: i */
    public List<Class> m2408i() {
        return this.f2095n;
    }

    /* renamed from: a */
    void m2390a(ViewGroup viewGroup, boolean z) {
        m2391a(z);
        if ((this.f2085b.size() > 0 || this.f2086c.size() > 0) && ((this.f2094m == null || this.f2094m.isEmpty()) && (this.f2095n == null || this.f2095n.isEmpty()))) {
            for (int i = 0; i < this.f2085b.size(); i++) {
                View findViewById = viewGroup.findViewById(this.f2085b.get(i).intValue());
                if (findViewById != null) {
                    C0331s c0331s = new C0331s();
                    c0331s.f2135b = findViewById;
                    if (z) {
                        mo2326a(c0331s);
                    } else {
                        mo2331b(c0331s);
                    }
                    c0331s.f2136c.add(this);
                    mo2400c(c0331s);
                    if (z) {
                        m2370a(this.f2103v, findViewById, c0331s);
                    } else {
                        m2370a(this.f2104w, findViewById, c0331s);
                    }
                }
            }
            for (int i2 = 0; i2 < this.f2086c.size(); i2++) {
                View view = this.f2086c.get(i2);
                C0331s c0331s2 = new C0331s();
                c0331s2.f2135b = view;
                if (z) {
                    mo2326a(c0331s2);
                } else {
                    mo2331b(c0331s2);
                }
                c0331s2.f2136c.add(this);
                mo2400c(c0331s2);
                if (z) {
                    m2370a(this.f2103v, view, c0331s2);
                } else {
                    m2370a(this.f2104w, view, c0331s2);
                }
            }
        } else {
            m2377c(viewGroup, z);
        }
        if (!z && this.f2082I != null) {
            int size = this.f2082I.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(this.f2103v.f2140d.remove(this.f2082I.keyAt(i3)));
            }
            for (int i4 = 0; i4 < size; i4++) {
                View view2 = (View) arrayList.get(i4);
                if (view2 != null) {
                    this.f2103v.f2140d.put(this.f2082I.valueAt(i4), view2);
                }
            }
        }
    }

    /* renamed from: a */
    private static void m2370a(C0332t c0332t, View view, C0331s c0331s) {
        c0332t.f2137a.put(view, c0331s);
        int id = view.getId();
        if (id >= 0) {
            if (c0332t.f2138b.indexOfKey(id) >= 0) {
                c0332t.f2138b.put(id, null);
            } else {
                c0332t.f2138b.put(id, view);
            }
        }
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            if (c0332t.f2140d.containsKey(transitionName)) {
                c0332t.f2140d.put(transitionName, null);
            } else {
                c0332t.f2140d.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (c0332t.f2139c.indexOfKey(itemIdAtPosition) >= 0) {
                    View view2 = c0332t.f2139c.get(itemIdAtPosition);
                    if (view2 != null) {
                        ViewCompat.setHasTransientState(view2, false);
                        c0332t.f2139c.put(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                ViewCompat.setHasTransientState(view, true);
                c0332t.f2139c.put(itemIdAtPosition, view);
            }
        }
    }

    /* renamed from: a */
    void m2391a(boolean z) {
        if (z) {
            this.f2103v.f2137a.clear();
            this.f2103v.f2138b.clear();
            this.f2103v.f2139c.clear();
        } else {
            this.f2104w.f2137a.clear();
            this.f2104w.f2138b.clear();
            this.f2104w.f2139c.clear();
        }
    }

    /* renamed from: c */
    private void m2377c(View view, boolean z) {
        if (view != null) {
            int id = view.getId();
            if (this.f2096o == null || !this.f2096o.contains(Integer.valueOf(id))) {
                if (this.f2097p == null || !this.f2097p.contains(view)) {
                    if (this.f2098q != null) {
                        int size = this.f2098q.size();
                        for (int i = 0; i < size; i++) {
                            if (this.f2098q.get(i).isInstance(view)) {
                                return;
                            }
                        }
                    }
                    if (view.getParent() instanceof ViewGroup) {
                        C0331s c0331s = new C0331s();
                        c0331s.f2135b = view;
                        if (z) {
                            mo2326a(c0331s);
                        } else {
                            mo2331b(c0331s);
                        }
                        c0331s.f2136c.add(this);
                        mo2400c(c0331s);
                        if (z) {
                            m2370a(this.f2103v, view, c0331s);
                        } else {
                            m2370a(this.f2104w, view, c0331s);
                        }
                    }
                    if (view instanceof ViewGroup) {
                        if (this.f2100s == null || !this.f2100s.contains(Integer.valueOf(id))) {
                            if (this.f2101t == null || !this.f2101t.contains(view)) {
                                if (this.f2102u != null) {
                                    int size2 = this.f2102u.size();
                                    for (int i2 = 0; i2 < size2; i2++) {
                                        if (this.f2102u.get(i2).isInstance(view)) {
                                            return;
                                        }
                                    }
                                }
                                ViewGroup viewGroup = (ViewGroup) view;
                                for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                                    m2377c(viewGroup.getChildAt(i3), z);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Nullable
    /* renamed from: a */
    public C0331s m2382a(@NonNull View view, boolean z) {
        if (this.f2087d != null) {
            return this.f2087d.m2382a(view, z);
        }
        return (z ? this.f2103v : this.f2104w).f2137a.get(view);
    }

    /* renamed from: b */
    C0331s m2397b(View view, boolean z) {
        C0331s c0331s;
        if (this.f2087d != null) {
            return this.f2087d.m2397b(view, z);
        }
        ArrayList<C0331s> arrayList = z ? this.f2106y : this.f2107z;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            }
            C0331s c0331s2 = arrayList.get(i);
            if (c0331s2 == null) {
                return null;
            }
            if (c0331s2.f2135b == view) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            c0331s = (z ? this.f2107z : this.f2106y).get(i);
        } else {
            c0331s = null;
        }
        return c0331s;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: d */
    public void mo2402d(View view) {
        if (!this.f2078E) {
            ArrayMap<Animator, a> m2378q = m2378q();
            int size = m2378q.size();
            InterfaceC0314al m2299b = C0306ad.m2299b(view);
            for (int i = size - 1; i >= 0; i--) {
                a valueAt = m2378q.valueAt(i);
                if (valueAt.f2111a != null && m2299b.equals(valueAt.f2114d)) {
                    C0302a.m2280a(m2378q.keyAt(i));
                }
            }
            if (this.f2079F != null && this.f2079F.size() > 0) {
                ArrayList arrayList = (ArrayList) this.f2079F.clone();
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    ((c) arrayList.get(i2)).mo2335b(this);
                }
            }
            this.f2077D = true;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: e */
    public void mo2404e(View view) {
        if (this.f2077D) {
            if (!this.f2078E) {
                ArrayMap<Animator, a> m2378q = m2378q();
                int size = m2378q.size();
                InterfaceC0314al m2299b = C0306ad.m2299b(view);
                for (int i = size - 1; i >= 0; i--) {
                    a valueAt = m2378q.valueAt(i);
                    if (valueAt.f2111a != null && m2299b.equals(valueAt.f2114d)) {
                        C0302a.m2282b(m2378q.keyAt(i));
                    }
                }
                if (this.f2079F != null && this.f2079F.size() > 0) {
                    ArrayList arrayList = (ArrayList) this.f2079F.clone();
                    int size2 = arrayList.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((c) arrayList.get(i2)).mo2336c(this);
                    }
                }
            }
            this.f2077D = false;
        }
    }

    /* renamed from: a */
    void m2388a(ViewGroup viewGroup) {
        a aVar;
        this.f2106y = new ArrayList<>();
        this.f2107z = new ArrayList<>();
        m2369a(this.f2103v, this.f2104w);
        ArrayMap<Animator, a> m2378q = m2378q();
        int size = m2378q.size();
        InterfaceC0314al m2299b = C0306ad.m2299b(viewGroup);
        for (int i = size - 1; i >= 0; i--) {
            Animator keyAt = m2378q.keyAt(i);
            if (keyAt != null && (aVar = m2378q.get(keyAt)) != null && aVar.f2111a != null && m2299b.equals(aVar.f2114d)) {
                C0331s c0331s = aVar.f2113c;
                View view = aVar.f2111a;
                C0331s m2382a = m2382a(view, true);
                C0331s m2397b = m2397b(view, true);
                if (!(m2382a == null && m2397b == null) && aVar.f2115e.mo2327a(c0331s, m2397b)) {
                    if (keyAt.isRunning() || keyAt.isStarted()) {
                        keyAt.cancel();
                    } else {
                        m2378q.remove(keyAt);
                    }
                }
            }
        }
        mo2389a(viewGroup, this.f2103v, this.f2104w, this.f2106y, this.f2107z);
        mo2403e();
    }

    /* renamed from: a */
    public boolean mo2327a(@Nullable C0331s c0331s, @Nullable C0331s c0331s2) {
        boolean z;
        if (c0331s == null || c0331s2 == null) {
            return false;
        }
        String[] mo2328a = mo2328a();
        if (mo2328a != null) {
            int length = mo2328a.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                }
                if (m2375a(c0331s, c0331s2, mo2328a[i])) {
                    z = true;
                    break;
                }
                i++;
            }
            return z;
        }
        Iterator<String> it = c0331s.f2134a.keySet().iterator();
        while (it.hasNext()) {
            if (m2375a(c0331s, c0331s2, it.next())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m2375a(C0331s c0331s, C0331s c0331s2, String str) {
        Object obj = c0331s.f2134a.get(str);
        Object obj2 = c0331s2.f2134a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        return obj == null || obj2 == null || !obj.equals(obj2);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    protected void m2384a(Animator animator) {
        if (animator == null) {
            m2410k();
            return;
        }
        if (m2393b() >= 0) {
            animator.setDuration(m2393b());
        }
        if (m2398c() >= 0) {
            animator.setStartDelay(m2398c());
        }
        if (m2401d() != null) {
            animator.setInterpolator(m2401d());
        }
        animator.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.l.3
            AnonymousClass3() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                AbstractC0325l.this.m2410k();
                animator2.removeListener(this);
            }
        });
        animator.start();
    }

    /* renamed from: android.support.transition.l$3 */
    class AnonymousClass3 extends AnimatorListenerAdapter {
        AnonymousClass3() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator2) {
            AbstractC0325l.this.m2410k();
            animator2.removeListener(this);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: j */
    protected void m2409j() {
        if (this.f2076C == 0) {
            if (this.f2079F != null && this.f2079F.size() > 0) {
                ArrayList arrayList = (ArrayList) this.f2079F.clone();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((c) arrayList.get(i)).mo2337d(this);
                }
            }
            this.f2078E = false;
        }
        this.f2076C++;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: k */
    protected void m2410k() {
        this.f2076C--;
        if (this.f2076C == 0) {
            if (this.f2079F != null && this.f2079F.size() > 0) {
                ArrayList arrayList = (ArrayList) this.f2079F.clone();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((c) arrayList.get(i)).mo2334a(this);
                }
            }
            for (int i2 = 0; i2 < this.f2103v.f2139c.size(); i2++) {
                View valueAt = this.f2103v.f2139c.valueAt(i2);
                if (valueAt != null) {
                    ViewCompat.setHasTransientState(valueAt, false);
                }
            }
            for (int i3 = 0; i3 < this.f2104w.f2139c.size(); i3++) {
                View valueAt2 = this.f2104w.f2139c.valueAt(i3);
                if (valueAt2 != null) {
                    ViewCompat.setHasTransientState(valueAt2, false);
                }
            }
            this.f2078E = true;
        }
    }

    @NonNull
    /* renamed from: a */
    public AbstractC0325l mo2381a(@NonNull c cVar) {
        if (this.f2079F == null) {
            this.f2079F = new ArrayList<>();
        }
        this.f2079F.add(cVar);
        return this;
    }

    @NonNull
    /* renamed from: b */
    public AbstractC0325l mo2395b(@NonNull c cVar) {
        if (this.f2079F != null) {
            this.f2079F.remove(cVar);
            if (this.f2079F.size() == 0) {
                this.f2079F = null;
            }
        }
        return this;
    }

    /* renamed from: a */
    public void mo2385a(@Nullable AbstractC0320g abstractC0320g) {
        if (abstractC0320g == null) {
            this.f2083J = f2074i;
        } else {
            this.f2083J = abstractC0320g;
        }
    }

    @NonNull
    /* renamed from: l */
    public AbstractC0320g m2411l() {
        return this.f2083J;
    }

    /* renamed from: a */
    public void mo2386a(@Nullable b bVar) {
        this.f2081H = bVar;
    }

    @Nullable
    /* renamed from: m */
    public b m2412m() {
        return this.f2081H;
    }

    /* renamed from: a */
    public void mo2387a(@Nullable AbstractC0328o abstractC0328o) {
        this.f2090g = abstractC0328o;
    }

    @Nullable
    /* renamed from: n */
    public AbstractC0328o m2413n() {
        return this.f2090g;
    }

    /* renamed from: c */
    void mo2400c(C0331s c0331s) {
        String[] m2423a;
        boolean z = false;
        if (this.f2090g != null && !c0331s.f2134a.isEmpty() && (m2423a = this.f2090g.m2423a()) != null) {
            int i = 0;
            while (true) {
                if (i >= m2423a.length) {
                    z = true;
                    break;
                } else if (!c0331s.f2134a.containsKey(m2423a[i])) {
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                this.f2090g.m2422a(c0331s);
            }
        }
    }

    public String toString() {
        return mo2383a("");
    }

    @Override // 
    /* renamed from: o */
    public AbstractC0325l clone() {
        try {
            AbstractC0325l abstractC0325l = (AbstractC0325l) super.clone();
            abstractC0325l.f2080G = new ArrayList<>();
            abstractC0325l.f2103v = new C0332t();
            abstractC0325l.f2104w = new C0332t();
            abstractC0325l.f2106y = null;
            abstractC0325l.f2107z = null;
            return abstractC0325l;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    @NonNull
    /* renamed from: p */
    public String m2415p() {
        return this.f2091j;
    }

    /* renamed from: a */
    String mo2383a(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.f2084a != -1) {
            str2 = str2 + "dur(" + this.f2084a + ") ";
        }
        if (this.f2092k != -1) {
            str2 = str2 + "dly(" + this.f2092k + ") ";
        }
        if (this.f2093l != null) {
            str2 = str2 + "interp(" + this.f2093l + ") ";
        }
        if (this.f2085b.size() > 0 || this.f2086c.size() > 0) {
            String str3 = str2 + "tgts(";
            if (this.f2085b.size() > 0) {
                for (int i = 0; i < this.f2085b.size(); i++) {
                    if (i > 0) {
                        str3 = str3 + ", ";
                    }
                    str3 = str3 + this.f2085b.get(i);
                }
            }
            if (this.f2086c.size() > 0) {
                for (int i2 = 0; i2 < this.f2086c.size(); i2++) {
                    if (i2 > 0) {
                        str3 = str3 + ", ";
                    }
                    str3 = str3 + this.f2086c.get(i2);
                }
            }
            return str3 + ")";
        }
        return str2;
    }

    /* renamed from: android.support.transition.l$a */
    private static class a {

        /* renamed from: a */
        View f2111a;

        /* renamed from: b */
        String f2112b;

        /* renamed from: c */
        C0331s f2113c;

        /* renamed from: d */
        InterfaceC0314al f2114d;

        /* renamed from: e */
        AbstractC0325l f2115e;

        a(View view, String str, AbstractC0325l abstractC0325l, InterfaceC0314al interfaceC0314al, C0331s c0331s) {
            this.f2111a = view;
            this.f2112b = str;
            this.f2113c = c0331s;
            this.f2114d = interfaceC0314al;
            this.f2115e = abstractC0325l;
        }
    }
}
