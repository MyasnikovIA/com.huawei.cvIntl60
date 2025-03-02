package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.transition.AbstractC0325l;
import android.support.transition.C0302a;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: android.support.transition.ai */
/* loaded from: classes.dex */
public abstract class AbstractC0311ai extends AbstractC0325l {

    /* renamed from: h */
    private static final String[] f1989h = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: i */
    private int f1990i = 3;

    /* renamed from: android.support.transition.ai$b */
    private static class b {

        /* renamed from: a */
        boolean f2000a;

        /* renamed from: b */
        boolean f2001b;

        /* renamed from: c */
        int f2002c;

        /* renamed from: d */
        int f2003d;

        /* renamed from: e */
        ViewGroup f2004e;

        /* renamed from: f */
        ViewGroup f2005f;

        b() {
        }
    }

    /* renamed from: a */
    public void m2325a(int i) {
        if ((i & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.f1990i = i;
    }

    @Override // android.support.transition.AbstractC0325l
    @Nullable
    /* renamed from: a */
    public String[] mo2328a() {
        return f1989h;
    }

    /* renamed from: d */
    private void m2321d(C0331s c0331s) {
        c0331s.f2134a.put("android:visibility:visibility", Integer.valueOf(c0331s.f2135b.getVisibility()));
        c0331s.f2134a.put("android:visibility:parent", c0331s.f2135b.getParent());
        int[] iArr = new int[2];
        c0331s.f2135b.getLocationOnScreen(iArr);
        c0331s.f2134a.put("android:visibility:screenLocation", iArr);
    }

    @Override // android.support.transition.AbstractC0325l
    /* renamed from: a */
    public void mo2326a(@NonNull C0331s c0331s) {
        m2321d(c0331s);
    }

    @Override // android.support.transition.AbstractC0325l
    /* renamed from: b */
    public void mo2331b(@NonNull C0331s c0331s) {
        m2321d(c0331s);
    }

    /* renamed from: b */
    private b m2320b(C0331s c0331s, C0331s c0331s2) {
        b bVar = new b();
        bVar.f2000a = false;
        bVar.f2001b = false;
        if (c0331s != null && c0331s.f2134a.containsKey("android:visibility:visibility")) {
            bVar.f2002c = ((Integer) c0331s.f2134a.get("android:visibility:visibility")).intValue();
            bVar.f2004e = (ViewGroup) c0331s.f2134a.get("android:visibility:parent");
        } else {
            bVar.f2002c = -1;
            bVar.f2004e = null;
        }
        if (c0331s2 != null && c0331s2.f2134a.containsKey("android:visibility:visibility")) {
            bVar.f2003d = ((Integer) c0331s2.f2134a.get("android:visibility:visibility")).intValue();
            bVar.f2005f = (ViewGroup) c0331s2.f2134a.get("android:visibility:parent");
        } else {
            bVar.f2003d = -1;
            bVar.f2005f = null;
        }
        if (c0331s != null && c0331s2 != null) {
            if (bVar.f2002c == bVar.f2003d && bVar.f2004e == bVar.f2005f) {
                return bVar;
            }
            if (bVar.f2002c != bVar.f2003d) {
                if (bVar.f2002c == 0) {
                    bVar.f2001b = false;
                    bVar.f2000a = true;
                } else if (bVar.f2003d == 0) {
                    bVar.f2001b = true;
                    bVar.f2000a = true;
                }
            } else if (bVar.f2005f == null) {
                bVar.f2001b = false;
                bVar.f2000a = true;
            } else if (bVar.f2004e == null) {
                bVar.f2001b = true;
                bVar.f2000a = true;
            }
        } else if (c0331s == null && bVar.f2003d == 0) {
            bVar.f2001b = true;
            bVar.f2000a = true;
        } else if (c0331s2 == null && bVar.f2002c == 0) {
            bVar.f2001b = false;
            bVar.f2000a = true;
        }
        return bVar;
    }

    @Override // android.support.transition.AbstractC0325l
    @Nullable
    /* renamed from: a */
    public Animator mo2323a(@NonNull ViewGroup viewGroup, @Nullable C0331s c0331s, @Nullable C0331s c0331s2) {
        b m2320b = m2320b(c0331s, c0331s2);
        if (m2320b.f2000a && (m2320b.f2004e != null || m2320b.f2005f != null)) {
            if (m2320b.f2001b) {
                return m2322a(viewGroup, c0331s, m2320b.f2002c, c0331s2, m2320b.f2003d);
            }
            return m2329b(viewGroup, c0331s, m2320b.f2002c, c0331s2, m2320b.f2003d);
        }
        return null;
    }

    /* renamed from: a */
    public Animator m2322a(ViewGroup viewGroup, C0331s c0331s, int i, C0331s c0331s2, int i2) {
        if ((this.f1990i & 1) != 1 || c0331s2 == null) {
            return null;
        }
        if (c0331s == null) {
            View view = (View) c0331s2.f2135b.getParent();
            if (m2320b(m2397b(view, false), m2382a(view, false)).f2000a) {
                return null;
            }
        }
        return mo2324a(viewGroup, c0331s2.f2135b, c0331s, c0331s2);
    }

    /* renamed from: a */
    public Animator mo2324a(ViewGroup viewGroup, View view, C0331s c0331s, C0331s c0331s2) {
        return null;
    }

    /* renamed from: b */
    public Animator m2329b(ViewGroup viewGroup, C0331s c0331s, int i, C0331s c0331s2, int i2) {
        View view;
        View view2;
        int id;
        Animator animator = null;
        if ((this.f1990i & 2) == 2) {
            View view3 = c0331s != null ? c0331s.f2135b : null;
            View view4 = c0331s2 != null ? c0331s2.f2135b : null;
            if (view4 == null || view4.getParent() == null) {
                if (view4 != null) {
                    view = null;
                    view3 = view4;
                } else {
                    if (view3 != null) {
                        if (view3.getParent() == null) {
                            view = null;
                        } else if (view3.getParent() instanceof View) {
                            View view5 = (View) view3.getParent();
                            if (!m2320b(m2382a(view5, true), m2397b(view5, true)).f2000a) {
                                view2 = C0330q.m2438a(viewGroup, view3, view5);
                            } else {
                                view2 = (view5.getParent() != null || (id = view5.getId()) == -1 || viewGroup.findViewById(id) == null || !this.f2088e) ? null : view3;
                            }
                            view = null;
                            view3 = view2;
                        }
                    }
                    view = null;
                    view3 = null;
                }
            } else if (i2 == 4) {
                view = view4;
                view3 = null;
            } else if (view3 == view4) {
                view = view4;
                view3 = null;
            } else if (this.f2088e) {
                view = null;
            } else {
                view3 = C0330q.m2438a(viewGroup, view3, (View) view3.getParent());
                view = null;
            }
            if (view3 != null && c0331s != null) {
                int[] iArr = (int[]) c0331s.f2134a.get("android:visibility:screenLocation");
                int i3 = iArr[0];
                int i4 = iArr[1];
                int[] iArr2 = new int[2];
                viewGroup.getLocationOnScreen(iArr2);
                view3.offsetLeftAndRight((i3 - iArr2[0]) - view3.getLeft());
                view3.offsetTopAndBottom((i4 - iArr2[1]) - view3.getTop());
                InterfaceC0335w m2442a = C0336x.m2442a(viewGroup);
                m2442a.mo2440a(view3);
                animator = mo2330b(viewGroup, view3, c0331s, c0331s2);
                if (animator == null) {
                    m2442a.mo2441b(view3);
                } else {
                    animator.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.ai.1

                        /* renamed from: a */
                        final /* synthetic */ InterfaceC0335w f1991a;

                        /* renamed from: b */
                        final /* synthetic */ View f1992b;

                        AnonymousClass1(InterfaceC0335w m2442a2, View view32) {
                            m2442a = m2442a2;
                            view3 = view32;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator2) {
                            m2442a.mo2441b(view3);
                        }
                    });
                }
            } else if (view != null) {
                int visibility = view.getVisibility();
                C0306ad.m2296a(view, 0);
                animator = mo2330b(viewGroup, view, c0331s, c0331s2);
                if (animator != null) {
                    a aVar = new a(view, i2, true);
                    animator.addListener(aVar);
                    C0302a.m2281a(animator, aVar);
                    mo2381a(aVar);
                } else {
                    C0306ad.m2296a(view, visibility);
                }
            }
        }
        return animator;
    }

    /* renamed from: android.support.transition.ai$1 */
    class AnonymousClass1 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ InterfaceC0335w f1991a;

        /* renamed from: b */
        final /* synthetic */ View f1992b;

        AnonymousClass1(InterfaceC0335w m2442a2, View view32) {
            m2442a = m2442a2;
            view3 = view32;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator2) {
            m2442a.mo2441b(view3);
        }
    }

    /* renamed from: b */
    public Animator mo2330b(ViewGroup viewGroup, View view, C0331s c0331s, C0331s c0331s2) {
        return null;
    }

    @Override // android.support.transition.AbstractC0325l
    /* renamed from: a */
    public boolean mo2327a(C0331s c0331s, C0331s c0331s2) {
        if (c0331s == null && c0331s2 == null) {
            return false;
        }
        if (c0331s != null && c0331s2 != null && c0331s2.f2134a.containsKey("android:visibility:visibility") != c0331s.f2134a.containsKey("android:visibility:visibility")) {
            return false;
        }
        b m2320b = m2320b(c0331s, c0331s2);
        if (m2320b.f2000a) {
            return m2320b.f2002c == 0 || m2320b.f2003d == 0;
        }
        return false;
    }

    /* renamed from: android.support.transition.ai$a */
    private static class a extends AnimatorListenerAdapter implements C0302a.a, AbstractC0325l.c {

        /* renamed from: a */
        boolean f1994a = false;

        /* renamed from: b */
        private final View f1995b;

        /* renamed from: c */
        private final int f1996c;

        /* renamed from: d */
        private final ViewGroup f1997d;

        /* renamed from: e */
        private final boolean f1998e;

        /* renamed from: f */
        private boolean f1999f;

        a(View view, int i, boolean z) {
            this.f1995b = view;
            this.f1996c = i;
            this.f1997d = (ViewGroup) view.getParent();
            this.f1998e = z;
            m2333a(true);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, android.support.transition.C0302a.a
        public void onAnimationPause(Animator animator) {
            if (!this.f1994a) {
                C0306ad.m2296a(this.f1995b, this.f1996c);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, android.support.transition.C0302a.a
        public void onAnimationResume(Animator animator) {
            if (!this.f1994a) {
                C0306ad.m2296a(this.f1995b, 0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1994a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            m2332a();
        }

        @Override // android.support.transition.AbstractC0325l.c
        /* renamed from: d */
        public void mo2337d(@NonNull AbstractC0325l abstractC0325l) {
        }

        @Override // android.support.transition.AbstractC0325l.c
        /* renamed from: a */
        public void mo2334a(@NonNull AbstractC0325l abstractC0325l) {
            m2332a();
            abstractC0325l.mo2395b(this);
        }

        @Override // android.support.transition.AbstractC0325l.c
        /* renamed from: b */
        public void mo2335b(@NonNull AbstractC0325l abstractC0325l) {
            m2333a(false);
        }

        @Override // android.support.transition.AbstractC0325l.c
        /* renamed from: c */
        public void mo2336c(@NonNull AbstractC0325l abstractC0325l) {
            m2333a(true);
        }

        /* renamed from: a */
        private void m2332a() {
            if (!this.f1994a) {
                C0306ad.m2296a(this.f1995b, this.f1996c);
                if (this.f1997d != null) {
                    this.f1997d.invalidate();
                }
            }
            m2333a(false);
        }

        /* renamed from: a */
        private void m2333a(boolean z) {
            if (this.f1998e && this.f1999f != z && this.f1997d != null) {
                this.f1999f = z;
                C0336x.m2443a(this.f1997d, z);
            }
        }
    }
}
