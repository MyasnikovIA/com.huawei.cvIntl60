package android.support.design.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Dimension;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.design.behavior.HideBottomViewOnScrollBehavior;
import android.support.design.p038a.C0155a;
import android.support.design.p045g.C0187c;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.InterfaceC0242a {

    /* renamed from: a */
    AnimatorListenerAdapter f1094a;

    /* renamed from: f */
    private final int f1095f;

    /* renamed from: g */
    private final C0187c f1096g;

    /* renamed from: h */
    private final C0174a f1097h;

    /* renamed from: i */
    @Nullable
    private Animator f1098i;

    /* renamed from: j */
    @Nullable
    private Animator f1099j;

    /* renamed from: k */
    @Nullable
    private Animator f1100k;

    /* renamed from: l */
    private int f1101l;

    /* renamed from: m */
    private boolean f1102m;

    /* renamed from: n */
    private boolean f1103n;

    public int getFabAlignmentMode() {
        return this.f1101l;
    }

    public void setFabAlignmentMode(int i) {
        m1424a(i);
        m1426a(i, this.f1103n);
        this.f1101l = i;
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        DrawableCompat.setTintList(this.f1096g, colorStateList);
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.f1096g.m1519a();
    }

    public float getFabCradleMargin() {
        return this.f1097h.m1460d();
    }

    public void setFabCradleMargin(@Dimension float f) {
        if (f != getFabCradleMargin()) {
            this.f1097h.m1461d(f);
            this.f1096g.invalidateSelf();
        }
    }

    @Dimension
    public float getFabCradleRoundedCornerRadius() {
        return this.f1097h.m1462e();
    }

    public void setFabCradleRoundedCornerRadius(@Dimension float f) {
        if (f != getFabCradleRoundedCornerRadius()) {
            this.f1097h.m1463e(f);
            this.f1096g.invalidateSelf();
        }
    }

    @Dimension
    public float getCradleVerticalOffset() {
        return this.f1097h.m1456b();
    }

    public void setCradleVerticalOffset(@Dimension float f) {
        if (f != getCradleVerticalOffset()) {
            this.f1097h.m1457b(f);
            this.f1096g.invalidateSelf();
        }
    }

    public boolean getHideOnScroll() {
        return this.f1102m;
    }

    public void setHideOnScroll(boolean z) {
        this.f1102m = z;
    }

    void setFabDiameter(@Px int i) {
        if (i != this.f1097h.m1458c()) {
            this.f1097h.m1459c(i);
            this.f1096g.invalidateSelf();
        }
    }

    /* renamed from: a */
    private void m1424a(int i) {
        if (this.f1101l != i && ViewCompat.isLaidOut(this)) {
            if (this.f1099j != null) {
                this.f1099j.cancel();
            }
            ArrayList arrayList = new ArrayList();
            m1425a(i, arrayList);
            m1435b(i, arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.f1099j = animatorSet;
            this.f1099j.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.bottomappbar.BottomAppBar.1
                C01691() {
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    BottomAppBar.this.f1099j = null;
                }
            });
            this.f1099j.start();
        }
    }

    /* renamed from: android.support.design.bottomappbar.BottomAppBar$1 */
    class C01691 extends AnimatorListenerAdapter {
        C01691() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.f1099j = null;
        }
    }

    /* renamed from: a */
    private void m1425a(int i, List<Animator> list) {
        if (this.f1103n) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f1097h.m1453a(), m1432b(i));
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.bottomappbar.BottomAppBar.2
                C01702() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BottomAppBar.this.f1097h.m1454a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    BottomAppBar.this.f1096g.invalidateSelf();
                }
            });
            ofFloat.setDuration(300L);
            list.add(ofFloat);
        }
    }

    /* renamed from: android.support.design.bottomappbar.BottomAppBar$2 */
    class C01702 implements ValueAnimator.AnimatorUpdateListener {
        C01702() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BottomAppBar.this.f1097h.m1454a(((Float) valueAnimator.getAnimatedValue()).floatValue());
            BottomAppBar.this.f1096g.invalidateSelf();
        }
    }

    @Nullable
    /* renamed from: m */
    public FloatingActionButton m1441m() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).m1814d(this)) {
            if (view instanceof FloatingActionButton) {
                return (FloatingActionButton) view;
            }
        }
        return null;
    }

    /* renamed from: n */
    private boolean m1442n() {
        FloatingActionButton m1441m = m1441m();
        return m1441m != null && m1441m.m1866b();
    }

    /* renamed from: b */
    private void m1435b(int i, List<Animator> list) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(m1441m(), "translationX", m1432b(i));
        ofFloat.setDuration(300L);
        list.add(ofFloat);
    }

    /* renamed from: a */
    private void m1426a(int i, boolean z) {
        if (ViewCompat.isLaidOut(this)) {
            if (this.f1100k != null) {
                this.f1100k.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!m1442n()) {
                z = false;
                i = 0;
            }
            m1427a(i, z, arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.f1100k = animatorSet;
            this.f1100k.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.bottomappbar.BottomAppBar.3
                C01713() {
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    BottomAppBar.this.f1100k = null;
                }
            });
            this.f1100k.start();
        }
    }

    /* renamed from: android.support.design.bottomappbar.BottomAppBar$3 */
    class C01713 extends AnimatorListenerAdapter {
        C01713() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.f1100k = null;
        }
    }

    /* renamed from: a */
    private void m1427a(int i, boolean z, List<Animator> list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            Animator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
            if ((!this.f1103n && (!z || !m1442n())) || (this.f1101l != 1 && i != 1)) {
                if (actionMenuView.getAlpha() < 1.0f) {
                    list.add(ofFloat);
                }
            } else {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
                ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.bottomappbar.BottomAppBar.4

                    /* renamed from: a */
                    public boolean f1107a;

                    /* renamed from: b */
                    final /* synthetic */ ActionMenuView f1108b;

                    /* renamed from: c */
                    final /* synthetic */ int f1109c;

                    /* renamed from: d */
                    final /* synthetic */ boolean f1110d;

                    C01724(ActionMenuView actionMenuView2, int i2, boolean z2) {
                        actionMenuView = actionMenuView2;
                        i = i2;
                        z = z2;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        this.f1107a = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (!this.f1107a) {
                            BottomAppBar.this.m1431a(actionMenuView, i, z);
                        }
                    }
                });
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setDuration(150L);
                animatorSet.playSequentially(ofFloat2, ofFloat);
                list.add(animatorSet);
            }
        }
    }

    /* renamed from: android.support.design.bottomappbar.BottomAppBar$4 */
    class C01724 extends AnimatorListenerAdapter {

        /* renamed from: a */
        public boolean f1107a;

        /* renamed from: b */
        final /* synthetic */ ActionMenuView f1108b;

        /* renamed from: c */
        final /* synthetic */ int f1109c;

        /* renamed from: d */
        final /* synthetic */ boolean f1110d;

        C01724(ActionMenuView actionMenuView2, int i2, boolean z2) {
            actionMenuView = actionMenuView2;
            i = i2;
            z = z2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1107a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f1107a) {
                BottomAppBar.this.m1431a(actionMenuView, i, z);
            }
        }
    }

    /* renamed from: a */
    private float m1421a(boolean z) {
        FloatingActionButton m1441m = m1441m();
        if (m1441m == null) {
            return 0.0f;
        }
        Rect rect = new Rect();
        m1441m.m1862a(rect);
        float height = rect.height();
        if (height == 0.0f) {
            height = m1441m.getMeasuredHeight();
        }
        float height2 = m1441m.getHeight() - rect.bottom;
        float height3 = m1441m.getHeight() - rect.height();
        float f = (height / 2.0f) + (-getCradleVerticalOffset()) + height2;
        float paddingBottom = height3 - m1441m.getPaddingBottom();
        float f2 = -getMeasuredHeight();
        if (!z) {
            f = paddingBottom;
        }
        return f + f2;
    }

    public float getFabTranslationY() {
        return m1421a(this.f1103n);
    }

    /* renamed from: b */
    private int m1432b(int i) {
        boolean z = ViewCompat.getLayoutDirection(this) == 1;
        if (i != 1) {
            return 0;
        }
        return (z ? -1 : 1) * ((getMeasuredWidth() / 2) - this.f1095f);
    }

    private float getFabTranslationX() {
        return m1432b(this.f1101l);
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < getChildCount()) {
                View childAt = getChildAt(i2);
                if (!(childAt instanceof ActionMenuView)) {
                    i = i2 + 1;
                } else {
                    return (ActionMenuView) childAt;
                }
            } else {
                return null;
            }
        }
    }

    /* renamed from: a */
    public void m1431a(ActionMenuView actionMenuView, int i, boolean z) {
        boolean z2 = ViewCompat.getLayoutDirection(this) == 1;
        int i2 = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            if ((childAt.getLayoutParams() instanceof Toolbar.C0646b) && (((Toolbar.C0646b) childAt.getLayoutParams()).f2368a & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 8388611) {
                i2 = Math.max(i2, z2 ? childAt.getLeft() : childAt.getRight());
            }
        }
        actionMenuView.setTranslationX((i == 1 && z) ? i2 - (z2 ? actionMenuView.getRight() : actionMenuView.getLeft()) : 0.0f);
    }

    /* renamed from: o */
    private void m1443o() {
        if (this.f1098i != null) {
            this.f1098i.cancel();
        }
        if (this.f1100k != null) {
            this.f1100k.cancel();
        }
        if (this.f1099j != null) {
            this.f1099j.cancel();
        }
    }

    /* renamed from: p */
    public boolean m1444p() {
        return (this.f1098i != null && this.f1098i.isRunning()) || (this.f1100k != null && this.f1100k.isRunning()) || (this.f1099j != null && this.f1099j.isRunning());
    }

    @Override // android.support.v7.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m1443o();
        m1445q();
    }

    /* renamed from: q */
    public void m1445q() {
        this.f1097h.m1454a(getFabTranslationX());
        FloatingActionButton m1441m = m1441m();
        this.f1096g.m1520a((this.f1103n && m1442n()) ? 1.0f : 0.0f);
        if (m1441m != null) {
            m1441m.setTranslationY(getFabTranslationY());
            m1441m.setTranslationX(getFabTranslationX());
        }
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            actionMenuView.setAlpha(1.0f);
            if (!m1442n()) {
                m1431a(actionMenuView, 0, false);
            } else {
                m1431a(actionMenuView, this.f1101l, this.f1103n);
            }
        }
    }

    /* renamed from: a */
    public void m1430a(@NonNull FloatingActionButton floatingActionButton) {
        m1436b(floatingActionButton);
        floatingActionButton.m1867c(this.f1094a);
        floatingActionButton.m1860a(this.f1094a);
    }

    /* renamed from: b */
    private void m1436b(@NonNull FloatingActionButton floatingActionButton) {
        floatingActionButton.m1868d(this.f1094a);
        floatingActionButton.m1863b(this.f1094a);
    }

    @Override // android.support.v7.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    @Override // android.support.v7.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // android.support.design.widget.CoordinatorLayout.InterfaceC0242a
    @NonNull
    public CoordinatorLayout.AbstractC0243b<BottomAppBar> getBehavior() {
        return new Behavior();
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: a */
        private final Rect f1112a;

        public Behavior() {
            this.f1112a = new Rect();
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1112a = new Rect();
        }

        /* renamed from: a */
        private boolean m1446a(FloatingActionButton floatingActionButton, BottomAppBar bottomAppBar) {
            ((CoordinatorLayout.C0246e) floatingActionButton.getLayoutParams()).f1455d = 17;
            bottomAppBar.m1430a(floatingActionButton);
            return true;
        }

        @Override // android.support.design.behavior.HideBottomViewOnScrollBehavior, android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public boolean mo1418a(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i) {
            FloatingActionButton m1441m = bottomAppBar.m1441m();
            if (m1441m != null) {
                m1446a(m1441m, bottomAppBar);
                m1441m.m1864b(this.f1112a);
                bottomAppBar.setFabDiameter(this.f1112a.height());
            }
            if (!bottomAppBar.m1444p()) {
                bottomAppBar.m1445q();
            }
            coordinatorLayout.m1800a(bottomAppBar, i);
            return super.mo1418a(coordinatorLayout, (CoordinatorLayout) bottomAppBar, i);
        }

        @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
        /* renamed from: a */
        public boolean mo1449a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, @NonNull View view, @NonNull View view2, int i, int i2) {
            return bottomAppBar.getHideOnScroll() && super.mo1449a(coordinatorLayout, (CoordinatorLayout) bottomAppBar, view, view2, i, i2);
        }

        @Override // android.support.design.behavior.HideBottomViewOnScrollBehavior
        /* renamed from: a */
        public void mo1417a(BottomAppBar bottomAppBar) {
            super.mo1417a((Behavior) bottomAppBar);
            FloatingActionButton m1441m = bottomAppBar.m1441m();
            if (m1441m != null) {
                m1441m.clearAnimation();
                m1441m.animate().translationY(bottomAppBar.getFabTranslationY()).setInterpolator(C0155a.f1040d).setDuration(225L);
            }
        }

        @Override // android.support.design.behavior.HideBottomViewOnScrollBehavior
        /* renamed from: b */
        public void mo1420b(BottomAppBar bottomAppBar) {
            super.mo1420b((Behavior) bottomAppBar);
            FloatingActionButton m1441m = bottomAppBar.m1441m();
            if (m1441m != null) {
                m1441m.m1862a(this.f1112a);
                float measuredHeight = m1441m.getMeasuredHeight() - this.f1112a.height();
                m1441m.clearAnimation();
                m1441m.animate().translationY((-m1441m.getPaddingBottom()) + measuredHeight).setInterpolator(C0155a.f1039c).setDuration(175L);
            }
        }
    }

    @Override // android.support.v7.widget.Toolbar, android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1113a = this.f1101l;
        savedState.f1114b = this.f1103n;
        return savedState;
    }

    @Override // android.support.v7.widget.Toolbar, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f1101l = savedState.f1113a;
        this.f1103n = savedState.f1114b;
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.design.bottomappbar.BottomAppBar.SavedState.1
            C01731() {
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        int f1113a;

        /* renamed from: b */
        boolean f1114b;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1113a = parcel.readInt();
            this.f1114b = parcel.readInt() != 0;
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1113a);
            parcel.writeInt(this.f1114b ? 1 : 0);
        }

        /* renamed from: android.support.design.bottomappbar.BottomAppBar$SavedState$1 */
        static class C01731 implements Parcelable.ClassLoaderCreator<SavedState> {
            C01731() {
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }
    }
}
