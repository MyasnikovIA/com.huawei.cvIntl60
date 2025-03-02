package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: android.support.v7.widget.ai */
/* loaded from: classes.dex */
public class C0658ai extends AbstractC0680bd {

    /* renamed from: i */
    private static TimeInterpolator f3441i;

    /* renamed from: j */
    private ArrayList<RecyclerView.AbstractC0617w> f3449j = new ArrayList<>();

    /* renamed from: k */
    private ArrayList<RecyclerView.AbstractC0617w> f3450k = new ArrayList<>();

    /* renamed from: l */
    private ArrayList<b> f3451l = new ArrayList<>();

    /* renamed from: m */
    private ArrayList<a> f3452m = new ArrayList<>();

    /* renamed from: a */
    ArrayList<ArrayList<RecyclerView.AbstractC0617w>> f3442a = new ArrayList<>();

    /* renamed from: b */
    ArrayList<ArrayList<b>> f3443b = new ArrayList<>();

    /* renamed from: c */
    ArrayList<ArrayList<a>> f3444c = new ArrayList<>();

    /* renamed from: d */
    ArrayList<RecyclerView.AbstractC0617w> f3445d = new ArrayList<>();

    /* renamed from: e */
    ArrayList<RecyclerView.AbstractC0617w> f3446e = new ArrayList<>();

    /* renamed from: f */
    ArrayList<RecyclerView.AbstractC0617w> f3447f = new ArrayList<>();

    /* renamed from: g */
    ArrayList<RecyclerView.AbstractC0617w> f3448g = new ArrayList<>();

    /* renamed from: android.support.v7.widget.ai$b */
    private static class b {

        /* renamed from: a */
        public RecyclerView.AbstractC0617w f3487a;

        /* renamed from: b */
        public int f3488b;

        /* renamed from: c */
        public int f3489c;

        /* renamed from: d */
        public int f3490d;

        /* renamed from: e */
        public int f3491e;

        b(RecyclerView.AbstractC0617w abstractC0617w, int i, int i2, int i3, int i4) {
            this.f3487a = abstractC0617w;
            this.f3488b = i;
            this.f3489c = i2;
            this.f3490d = i3;
            this.f3491e = i4;
        }
    }

    /* renamed from: android.support.v7.widget.ai$a */
    private static class a {

        /* renamed from: a */
        public RecyclerView.AbstractC0617w f3481a;

        /* renamed from: b */
        public RecyclerView.AbstractC0617w f3482b;

        /* renamed from: c */
        public int f3483c;

        /* renamed from: d */
        public int f3484d;

        /* renamed from: e */
        public int f3485e;

        /* renamed from: f */
        public int f3486f;

        private a(RecyclerView.AbstractC0617w abstractC0617w, RecyclerView.AbstractC0617w abstractC0617w2) {
            this.f3481a = abstractC0617w;
            this.f3482b = abstractC0617w2;
        }

        a(RecyclerView.AbstractC0617w abstractC0617w, RecyclerView.AbstractC0617w abstractC0617w2, int i, int i2, int i3, int i4) {
            this(abstractC0617w, abstractC0617w2);
            this.f3483c = i;
            this.f3484d = i2;
            this.f3485e = i3;
            this.f3486f = i4;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f3481a + ", newHolder=" + this.f3482b + ", fromX=" + this.f3483c + ", fromY=" + this.f3484d + ", toX=" + this.f3485e + ", toY=" + this.f3486f + '}';
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0600f
    /* renamed from: a */
    public void mo3353a() {
        boolean z = !this.f3449j.isEmpty();
        boolean z2 = !this.f3451l.isEmpty();
        boolean z3 = !this.f3452m.isEmpty();
        boolean z4 = !this.f3450k.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.AbstractC0617w> it = this.f3449j.iterator();
            while (it.hasNext()) {
                m3918u(it.next());
            }
            this.f3449j.clear();
            if (z2) {
                ArrayList<b> arrayList = new ArrayList<>();
                arrayList.addAll(this.f3451l);
                this.f3443b.add(arrayList);
                this.f3451l.clear();
                AnonymousClass1 anonymousClass1 = new Runnable() { // from class: android.support.v7.widget.ai.1

                    /* renamed from: a */
                    final /* synthetic */ ArrayList f3453a;

                    AnonymousClass1(ArrayList arrayList2) {
                        arrayList = arrayList2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            b bVar = (b) it2.next();
                            C0658ai.this.m3925b(bVar.f3487a, bVar.f3488b, bVar.f3489c, bVar.f3490d, bVar.f3491e);
                        }
                        arrayList.clear();
                        C0658ai.this.f3443b.remove(arrayList);
                    }
                };
                if (z) {
                    ViewCompat.postOnAnimationDelayed(arrayList2.get(0).f3487a.f3217a, anonymousClass1, m3366g());
                } else {
                    anonymousClass1.run();
                }
            }
            if (z3) {
                ArrayList<a> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f3452m);
                this.f3444c.add(arrayList2);
                this.f3452m.clear();
                AnonymousClass2 anonymousClass2 = new Runnable() { // from class: android.support.v7.widget.ai.2

                    /* renamed from: a */
                    final /* synthetic */ ArrayList f3455a;

                    AnonymousClass2(ArrayList arrayList22) {
                        arrayList2 = arrayList22;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            C0658ai.this.m3920a((a) it2.next());
                        }
                        arrayList2.clear();
                        C0658ai.this.f3444c.remove(arrayList2);
                    }
                };
                if (z) {
                    ViewCompat.postOnAnimationDelayed(arrayList22.get(0).f3481a.f3217a, anonymousClass2, m3366g());
                } else {
                    anonymousClass2.run();
                }
            }
            if (z4) {
                ArrayList<RecyclerView.AbstractC0617w> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.f3450k);
                this.f3442a.add(arrayList3);
                this.f3450k.clear();
                AnonymousClass3 anonymousClass3 = new Runnable() { // from class: android.support.v7.widget.ai.3

                    /* renamed from: a */
                    final /* synthetic */ ArrayList f3457a;

                    AnonymousClass3(ArrayList arrayList32) {
                        arrayList3 = arrayList32;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList3.iterator();
                        while (it2.hasNext()) {
                            C0658ai.this.m3928c((RecyclerView.AbstractC0617w) it2.next());
                        }
                        arrayList3.clear();
                        C0658ai.this.f3442a.remove(arrayList3);
                    }
                };
                if (z || z2 || z3) {
                    ViewCompat.postOnAnimationDelayed(arrayList32.get(0).f3217a, anonymousClass3, (z ? m3366g() : 0L) + Math.max(z2 ? m3363e() : 0L, z3 ? m3368h() : 0L));
                } else {
                    anonymousClass3.run();
                }
            }
        }
    }

    /* renamed from: android.support.v7.widget.ai$1 */
    class AnonymousClass1 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ ArrayList f3453a;

        AnonymousClass1(ArrayList arrayList2) {
            arrayList = arrayList2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                b bVar = (b) it2.next();
                C0658ai.this.m3925b(bVar.f3487a, bVar.f3488b, bVar.f3489c, bVar.f3490d, bVar.f3491e);
            }
            arrayList.clear();
            C0658ai.this.f3443b.remove(arrayList);
        }
    }

    /* renamed from: android.support.v7.widget.ai$2 */
    class AnonymousClass2 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ ArrayList f3455a;

        AnonymousClass2(ArrayList arrayList22) {
            arrayList2 = arrayList22;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                C0658ai.this.m3920a((a) it2.next());
            }
            arrayList2.clear();
            C0658ai.this.f3444c.remove(arrayList2);
        }
    }

    /* renamed from: android.support.v7.widget.ai$3 */
    class AnonymousClass3 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ ArrayList f3457a;

        AnonymousClass3(ArrayList arrayList32) {
            arrayList3 = arrayList32;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                C0658ai.this.m3928c((RecyclerView.AbstractC0617w) it2.next());
            }
            arrayList3.clear();
            C0658ai.this.f3442a.remove(arrayList3);
        }
    }

    @Override // android.support.v7.widget.AbstractC0680bd
    /* renamed from: a */
    public boolean mo3922a(RecyclerView.AbstractC0617w abstractC0617w) {
        m3919v(abstractC0617w);
        this.f3449j.add(abstractC0617w);
        return true;
    }

    /* renamed from: u */
    private void m3918u(RecyclerView.AbstractC0617w abstractC0617w) {
        View view = abstractC0617w.f3217a;
        ViewPropertyAnimator animate = view.animate();
        this.f3447f.add(abstractC0617w);
        animate.setDuration(m3366g()).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: android.support.v7.widget.ai.4

            /* renamed from: a */
            final /* synthetic */ RecyclerView.AbstractC0617w f3459a;

            /* renamed from: b */
            final /* synthetic */ ViewPropertyAnimator f3460b;

            /* renamed from: c */
            final /* synthetic */ View f3461c;

            AnonymousClass4(RecyclerView.AbstractC0617w abstractC0617w2, ViewPropertyAnimator animate2, View view2) {
                abstractC0617w = abstractC0617w2;
                animate = animate2;
                view = view2;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C0658ai.this.m4128l(abstractC0617w);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                view.setAlpha(1.0f);
                C0658ai.this.m4125i(abstractC0617w);
                C0658ai.this.f3447f.remove(abstractC0617w);
                C0658ai.this.m3927c();
            }
        }).start();
    }

    /* renamed from: android.support.v7.widget.ai$4 */
    class AnonymousClass4 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ RecyclerView.AbstractC0617w f3459a;

        /* renamed from: b */
        final /* synthetic */ ViewPropertyAnimator f3460b;

        /* renamed from: c */
        final /* synthetic */ View f3461c;

        AnonymousClass4(RecyclerView.AbstractC0617w abstractC0617w2, ViewPropertyAnimator animate2, View view2) {
            abstractC0617w = abstractC0617w2;
            animate = animate2;
            view = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0658ai.this.m4128l(abstractC0617w);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            animate.setListener(null);
            view.setAlpha(1.0f);
            C0658ai.this.m4125i(abstractC0617w);
            C0658ai.this.f3447f.remove(abstractC0617w);
            C0658ai.this.m3927c();
        }
    }

    @Override // android.support.v7.widget.AbstractC0680bd
    /* renamed from: b */
    public boolean mo3926b(RecyclerView.AbstractC0617w abstractC0617w) {
        m3919v(abstractC0617w);
        abstractC0617w.f3217a.setAlpha(0.0f);
        this.f3450k.add(abstractC0617w);
        return true;
    }

    /* renamed from: c */
    void m3928c(RecyclerView.AbstractC0617w abstractC0617w) {
        View view = abstractC0617w.f3217a;
        ViewPropertyAnimator animate = view.animate();
        this.f3445d.add(abstractC0617w);
        animate.alpha(1.0f).setDuration(m3364f()).setListener(new AnimatorListenerAdapter() { // from class: android.support.v7.widget.ai.5

            /* renamed from: a */
            final /* synthetic */ RecyclerView.AbstractC0617w f3463a;

            /* renamed from: b */
            final /* synthetic */ View f3464b;

            /* renamed from: c */
            final /* synthetic */ ViewPropertyAnimator f3465c;

            AnonymousClass5(RecyclerView.AbstractC0617w abstractC0617w2, View view2, ViewPropertyAnimator animate2) {
                abstractC0617w = abstractC0617w2;
                view = view2;
                animate = animate2;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C0658ai.this.m4130n(abstractC0617w);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                C0658ai.this.m4127k(abstractC0617w);
                C0658ai.this.f3445d.remove(abstractC0617w);
                C0658ai.this.m3927c();
            }
        }).start();
    }

    /* renamed from: android.support.v7.widget.ai$5 */
    class AnonymousClass5 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ RecyclerView.AbstractC0617w f3463a;

        /* renamed from: b */
        final /* synthetic */ View f3464b;

        /* renamed from: c */
        final /* synthetic */ ViewPropertyAnimator f3465c;

        AnonymousClass5(RecyclerView.AbstractC0617w abstractC0617w2, View view2, ViewPropertyAnimator animate2) {
            abstractC0617w = abstractC0617w2;
            view = view2;
            animate = animate2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0658ai.this.m4130n(abstractC0617w);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            view.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            animate.setListener(null);
            C0658ai.this.m4127k(abstractC0617w);
            C0658ai.this.f3445d.remove(abstractC0617w);
            C0658ai.this.m3927c();
        }
    }

    @Override // android.support.v7.widget.AbstractC0680bd
    /* renamed from: a */
    public boolean mo3923a(RecyclerView.AbstractC0617w abstractC0617w, int i, int i2, int i3, int i4) {
        View view = abstractC0617w.f3217a;
        int translationX = i + ((int) abstractC0617w.f3217a.getTranslationX());
        int translationY = i2 + ((int) abstractC0617w.f3217a.getTranslationY());
        m3919v(abstractC0617w);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            m4126j(abstractC0617w);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.f3451l.add(new b(abstractC0617w, translationX, translationY, i3, i4));
        return true;
    }

    /* renamed from: b */
    void m3925b(RecyclerView.AbstractC0617w abstractC0617w, int i, int i2, int i3, int i4) {
        View view = abstractC0617w.f3217a;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (i5 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i6 != 0) {
            view.animate().translationY(0.0f);
        }
        ViewPropertyAnimator animate = view.animate();
        this.f3446e.add(abstractC0617w);
        animate.setDuration(m3363e()).setListener(new AnimatorListenerAdapter() { // from class: android.support.v7.widget.ai.6

            /* renamed from: a */
            final /* synthetic */ RecyclerView.AbstractC0617w f3467a;

            /* renamed from: b */
            final /* synthetic */ int f3468b;

            /* renamed from: c */
            final /* synthetic */ View f3469c;

            /* renamed from: d */
            final /* synthetic */ int f3470d;

            /* renamed from: e */
            final /* synthetic */ ViewPropertyAnimator f3471e;

            AnonymousClass6(RecyclerView.AbstractC0617w abstractC0617w2, int i52, View view2, int i62, ViewPropertyAnimator animate2) {
                abstractC0617w = abstractC0617w2;
                i5 = i52;
                view = view2;
                i6 = i62;
                animate = animate2;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C0658ai.this.m4129m(abstractC0617w);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (i5 != 0) {
                    view.setTranslationX(0.0f);
                }
                if (i6 != 0) {
                    view.setTranslationY(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                C0658ai.this.m4126j(abstractC0617w);
                C0658ai.this.f3446e.remove(abstractC0617w);
                C0658ai.this.m3927c();
            }
        }).start();
    }

    /* renamed from: android.support.v7.widget.ai$6 */
    class AnonymousClass6 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ RecyclerView.AbstractC0617w f3467a;

        /* renamed from: b */
        final /* synthetic */ int f3468b;

        /* renamed from: c */
        final /* synthetic */ View f3469c;

        /* renamed from: d */
        final /* synthetic */ int f3470d;

        /* renamed from: e */
        final /* synthetic */ ViewPropertyAnimator f3471e;

        AnonymousClass6(RecyclerView.AbstractC0617w abstractC0617w2, int i52, View view2, int i62, ViewPropertyAnimator animate2) {
            abstractC0617w = abstractC0617w2;
            i5 = i52;
            view = view2;
            i6 = i62;
            animate = animate2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0658ai.this.m4129m(abstractC0617w);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (i5 != 0) {
                view.setTranslationX(0.0f);
            }
            if (i6 != 0) {
                view.setTranslationY(0.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            animate.setListener(null);
            C0658ai.this.m4126j(abstractC0617w);
            C0658ai.this.f3446e.remove(abstractC0617w);
            C0658ai.this.m3927c();
        }
    }

    @Override // android.support.v7.widget.AbstractC0680bd
    /* renamed from: a */
    public boolean mo3924a(RecyclerView.AbstractC0617w abstractC0617w, RecyclerView.AbstractC0617w abstractC0617w2, int i, int i2, int i3, int i4) {
        if (abstractC0617w == abstractC0617w2) {
            return mo3923a(abstractC0617w, i, i2, i3, i4);
        }
        float translationX = abstractC0617w.f3217a.getTranslationX();
        float translationY = abstractC0617w.f3217a.getTranslationY();
        float alpha = abstractC0617w.f3217a.getAlpha();
        m3919v(abstractC0617w);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        abstractC0617w.f3217a.setTranslationX(translationX);
        abstractC0617w.f3217a.setTranslationY(translationY);
        abstractC0617w.f3217a.setAlpha(alpha);
        if (abstractC0617w2 != null) {
            m3919v(abstractC0617w2);
            abstractC0617w2.f3217a.setTranslationX(-i5);
            abstractC0617w2.f3217a.setTranslationY(-i6);
            abstractC0617w2.f3217a.setAlpha(0.0f);
        }
        this.f3452m.add(new a(abstractC0617w, abstractC0617w2, i, i2, i3, i4));
        return true;
    }

    /* renamed from: a */
    void m3920a(a aVar) {
        RecyclerView.AbstractC0617w abstractC0617w = aVar.f3481a;
        View view = abstractC0617w == null ? null : abstractC0617w.f3217a;
        RecyclerView.AbstractC0617w abstractC0617w2 = aVar.f3482b;
        View view2 = abstractC0617w2 != null ? abstractC0617w2.f3217a : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(m3368h());
            this.f3448g.add(aVar.f3481a);
            duration.translationX(aVar.f3485e - aVar.f3483c);
            duration.translationY(aVar.f3486f - aVar.f3484d);
            duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: android.support.v7.widget.ai.7

                /* renamed from: a */
                final /* synthetic */ a f3473a;

                /* renamed from: b */
                final /* synthetic */ ViewPropertyAnimator f3474b;

                /* renamed from: c */
                final /* synthetic */ View f3475c;

                AnonymousClass7(a aVar2, ViewPropertyAnimator duration2, View view3) {
                    aVar = aVar2;
                    duration = duration2;
                    view = view3;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    C0658ai.this.m4122b(aVar.f3481a, true);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    duration.setListener(null);
                    view.setAlpha(1.0f);
                    view.setTranslationX(0.0f);
                    view.setTranslationY(0.0f);
                    C0658ai.this.m4121a(aVar.f3481a, true);
                    C0658ai.this.f3448g.remove(aVar.f3481a);
                    C0658ai.this.m3927c();
                }
            }).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator animate = view2.animate();
            this.f3448g.add(aVar2.f3482b);
            animate.translationX(0.0f).translationY(0.0f).setDuration(m3368h()).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: android.support.v7.widget.ai.8

                /* renamed from: a */
                final /* synthetic */ a f3477a;

                /* renamed from: b */
                final /* synthetic */ ViewPropertyAnimator f3478b;

                /* renamed from: c */
                final /* synthetic */ View f3479c;

                AnonymousClass8(a aVar2, ViewPropertyAnimator animate2, View view22) {
                    aVar = aVar2;
                    animate = animate2;
                    view2 = view22;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    C0658ai.this.m4122b(aVar.f3482b, false);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animate.setListener(null);
                    view2.setAlpha(1.0f);
                    view2.setTranslationX(0.0f);
                    view2.setTranslationY(0.0f);
                    C0658ai.this.m4121a(aVar.f3482b, false);
                    C0658ai.this.f3448g.remove(aVar.f3482b);
                    C0658ai.this.m3927c();
                }
            }).start();
        }
    }

    /* renamed from: android.support.v7.widget.ai$7 */
    class AnonymousClass7 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ a f3473a;

        /* renamed from: b */
        final /* synthetic */ ViewPropertyAnimator f3474b;

        /* renamed from: c */
        final /* synthetic */ View f3475c;

        AnonymousClass7(a aVar2, ViewPropertyAnimator duration2, View view3) {
            aVar = aVar2;
            duration = duration2;
            view = view3;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0658ai.this.m4122b(aVar.f3481a, true);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            duration.setListener(null);
            view.setAlpha(1.0f);
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
            C0658ai.this.m4121a(aVar.f3481a, true);
            C0658ai.this.f3448g.remove(aVar.f3481a);
            C0658ai.this.m3927c();
        }
    }

    /* renamed from: android.support.v7.widget.ai$8 */
    class AnonymousClass8 extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ a f3477a;

        /* renamed from: b */
        final /* synthetic */ ViewPropertyAnimator f3478b;

        /* renamed from: c */
        final /* synthetic */ View f3479c;

        AnonymousClass8(a aVar2, ViewPropertyAnimator animate2, View view22) {
            aVar = aVar2;
            animate = animate2;
            view2 = view22;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0658ai.this.m4122b(aVar.f3482b, false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            animate.setListener(null);
            view2.setAlpha(1.0f);
            view2.setTranslationX(0.0f);
            view2.setTranslationY(0.0f);
            C0658ai.this.m4121a(aVar.f3482b, false);
            C0658ai.this.f3448g.remove(aVar.f3482b);
            C0658ai.this.m3927c();
        }
    }

    /* renamed from: a */
    private void m3915a(List<a> list, RecyclerView.AbstractC0617w abstractC0617w) {
        for (int size = list.size() - 1; size >= 0; size--) {
            a aVar = list.get(size);
            if (m3916a(aVar, abstractC0617w) && aVar.f3481a == null && aVar.f3482b == null) {
                list.remove(aVar);
            }
        }
    }

    /* renamed from: b */
    private void m3917b(a aVar) {
        if (aVar.f3481a != null) {
            m3916a(aVar, aVar.f3481a);
        }
        if (aVar.f3482b != null) {
            m3916a(aVar, aVar.f3482b);
        }
    }

    /* renamed from: a */
    private boolean m3916a(a aVar, RecyclerView.AbstractC0617w abstractC0617w) {
        boolean z = false;
        if (aVar.f3482b == abstractC0617w) {
            aVar.f3482b = null;
        } else {
            if (aVar.f3481a != abstractC0617w) {
                return false;
            }
            aVar.f3481a = null;
            z = true;
        }
        abstractC0617w.f3217a.setAlpha(1.0f);
        abstractC0617w.f3217a.setTranslationX(0.0f);
        abstractC0617w.f3217a.setTranslationY(0.0f);
        m4121a(abstractC0617w, z);
        return true;
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0600f
    /* renamed from: d */
    public void mo3362d(RecyclerView.AbstractC0617w abstractC0617w) {
        View view = abstractC0617w.f3217a;
        view.animate().cancel();
        for (int size = this.f3451l.size() - 1; size >= 0; size--) {
            if (this.f3451l.get(size).f3487a == abstractC0617w) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                m4126j(abstractC0617w);
                this.f3451l.remove(size);
            }
        }
        m3915a(this.f3452m, abstractC0617w);
        if (this.f3449j.remove(abstractC0617w)) {
            view.setAlpha(1.0f);
            m4125i(abstractC0617w);
        }
        if (this.f3450k.remove(abstractC0617w)) {
            view.setAlpha(1.0f);
            m4127k(abstractC0617w);
        }
        for (int size2 = this.f3444c.size() - 1; size2 >= 0; size2--) {
            ArrayList<a> arrayList = this.f3444c.get(size2);
            m3915a(arrayList, abstractC0617w);
            if (arrayList.isEmpty()) {
                this.f3444c.remove(size2);
            }
        }
        for (int size3 = this.f3443b.size() - 1; size3 >= 0; size3--) {
            ArrayList<b> arrayList2 = this.f3443b.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (arrayList2.get(size4).f3487a != abstractC0617w) {
                    size4--;
                } else {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    m4126j(abstractC0617w);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f3443b.remove(size3);
                    }
                }
            }
        }
        for (int size5 = this.f3442a.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.AbstractC0617w> arrayList3 = this.f3442a.get(size5);
            if (arrayList3.remove(abstractC0617w)) {
                view.setAlpha(1.0f);
                m4127k(abstractC0617w);
                if (arrayList3.isEmpty()) {
                    this.f3442a.remove(size5);
                }
            }
        }
        if (this.f3447f.remove(abstractC0617w)) {
        }
        if (this.f3445d.remove(abstractC0617w)) {
        }
        if (this.f3448g.remove(abstractC0617w)) {
        }
        if (this.f3446e.remove(abstractC0617w)) {
        }
        m3927c();
    }

    /* renamed from: v */
    private void m3919v(RecyclerView.AbstractC0617w abstractC0617w) {
        if (f3441i == null) {
            f3441i = new ValueAnimator().getInterpolator();
        }
        abstractC0617w.f3217a.animate().setInterpolator(f3441i);
        mo3362d(abstractC0617w);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0600f
    /* renamed from: b */
    public boolean mo3358b() {
        return (this.f3450k.isEmpty() && this.f3452m.isEmpty() && this.f3451l.isEmpty() && this.f3449j.isEmpty() && this.f3446e.isEmpty() && this.f3447f.isEmpty() && this.f3445d.isEmpty() && this.f3448g.isEmpty() && this.f3443b.isEmpty() && this.f3442a.isEmpty() && this.f3444c.isEmpty()) ? false : true;
    }

    /* renamed from: c */
    void m3927c() {
        if (!mo3358b()) {
            m3370i();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0600f
    /* renamed from: d */
    public void mo3361d() {
        for (int size = this.f3451l.size() - 1; size >= 0; size--) {
            b bVar = this.f3451l.get(size);
            View view = bVar.f3487a.f3217a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            m4126j(bVar.f3487a);
            this.f3451l.remove(size);
        }
        for (int size2 = this.f3449j.size() - 1; size2 >= 0; size2--) {
            m4125i(this.f3449j.get(size2));
            this.f3449j.remove(size2);
        }
        for (int size3 = this.f3450k.size() - 1; size3 >= 0; size3--) {
            RecyclerView.AbstractC0617w abstractC0617w = this.f3450k.get(size3);
            abstractC0617w.f3217a.setAlpha(1.0f);
            m4127k(abstractC0617w);
            this.f3450k.remove(size3);
        }
        for (int size4 = this.f3452m.size() - 1; size4 >= 0; size4--) {
            m3917b(this.f3452m.get(size4));
        }
        this.f3452m.clear();
        if (mo3358b()) {
            for (int size5 = this.f3443b.size() - 1; size5 >= 0; size5--) {
                ArrayList<b> arrayList = this.f3443b.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    b bVar2 = arrayList.get(size6);
                    View view2 = bVar2.f3487a.f3217a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    m4126j(bVar2.f3487a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f3443b.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f3442a.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.AbstractC0617w> arrayList2 = this.f3442a.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.AbstractC0617w abstractC0617w2 = arrayList2.get(size8);
                    abstractC0617w2.f3217a.setAlpha(1.0f);
                    m4127k(abstractC0617w2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f3442a.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f3444c.size() - 1; size9 >= 0; size9--) {
                ArrayList<a> arrayList3 = this.f3444c.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    m3917b(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f3444c.remove(arrayList3);
                    }
                }
            }
            m3921a(this.f3447f);
            m3921a(this.f3446e);
            m3921a(this.f3445d);
            m3921a(this.f3448g);
            m3370i();
        }
    }

    /* renamed from: a */
    void m3921a(List<RecyclerView.AbstractC0617w> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).f3217a.animate().cancel();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0600f
    /* renamed from: a */
    public boolean mo3357a(@NonNull RecyclerView.AbstractC0617w abstractC0617w, @NonNull List<Object> list) {
        return !list.isEmpty() || super.mo3357a(abstractC0617w, list);
    }
}
