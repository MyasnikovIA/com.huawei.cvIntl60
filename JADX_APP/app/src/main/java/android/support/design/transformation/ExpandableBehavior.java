package android.support.design.transformation;

import android.content.Context;
import android.support.annotation.CallSuper;
import android.support.annotation.Nullable;
import android.support.design.p042d.InterfaceC0181b;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ExpandableBehavior extends CoordinatorLayout.AbstractC0243b<View> {

    /* renamed from: a */
    private int f1297a;

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    /* renamed from: a */
    public abstract boolean mo1620a(CoordinatorLayout coordinatorLayout, View view, View view2);

    /* renamed from: a */
    protected abstract boolean mo1621a(View view, View view2, boolean z, boolean z2);

    public ExpandableBehavior() {
        this.f1297a = 0;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1297a = 0;
    }

    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    @CallSuper
    /* renamed from: a */
    public boolean mo1418a(CoordinatorLayout coordinatorLayout, View view, int i) {
        InterfaceC0181b m1619a;
        if (!ViewCompat.isLaidOut(view) && (m1619a = m1619a(coordinatorLayout, view)) != null && m1618a(m1619a.mo1494a())) {
            this.f1297a = m1619a.mo1494a() ? 1 : 2;
            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: android.support.design.transformation.ExpandableBehavior.1

                /* renamed from: a */
                final /* synthetic */ View f1298a;

                /* renamed from: b */
                final /* synthetic */ int f1299b;

                /* renamed from: c */
                final /* synthetic */ InterfaceC0181b f1300c;

                ViewTreeObserverOnPreDrawListenerC02041(View view2, int i2, InterfaceC0181b m1619a2) {
                    view = view2;
                    i2 = i2;
                    m1619a = m1619a2;
                }

                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    view.getViewTreeObserver().removeOnPreDrawListener(this);
                    if (ExpandableBehavior.this.f1297a == i2) {
                        ExpandableBehavior.this.mo1621a((View) m1619a, view, m1619a.mo1494a(), false);
                    }
                    return false;
                }
            });
            return false;
        }
        return false;
    }

    /* renamed from: android.support.design.transformation.ExpandableBehavior$1 */
    class ViewTreeObserverOnPreDrawListenerC02041 implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        final /* synthetic */ View f1298a;

        /* renamed from: b */
        final /* synthetic */ int f1299b;

        /* renamed from: c */
        final /* synthetic */ InterfaceC0181b f1300c;

        ViewTreeObserverOnPreDrawListenerC02041(View view2, int i2, InterfaceC0181b m1619a2) {
            view = view2;
            i2 = i2;
            m1619a = m1619a2;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            view.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.f1297a == i2) {
                ExpandableBehavior.this.mo1621a((View) m1619a, view, m1619a.mo1494a(), false);
            }
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.design.widget.CoordinatorLayout.AbstractC0243b
    @CallSuper
    /* renamed from: b */
    public boolean mo1622b(CoordinatorLayout coordinatorLayout, View view, View view2) {
        InterfaceC0181b interfaceC0181b = (InterfaceC0181b) view2;
        if (m1618a(interfaceC0181b.mo1494a())) {
            this.f1297a = interfaceC0181b.mo1494a() ? 1 : 2;
            return mo1621a((View) interfaceC0181b, view, interfaceC0181b.mo1494a(), true);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    /* renamed from: a */
    protected InterfaceC0181b m1619a(CoordinatorLayout coordinatorLayout, View view) {
        List<View> m1810c = coordinatorLayout.m1810c(view);
        int size = m1810c.size();
        for (int i = 0; i < size; i++) {
            View view2 = m1810c.get(i);
            if (mo1620a(coordinatorLayout, view, view2)) {
                return (InterfaceC0181b) view2;
            }
        }
        return null;
    }

    /* renamed from: a */
    private boolean m1618a(boolean z) {
        if (z) {
            return this.f1297a == 0 || this.f1297a == 2;
        }
        return this.f1297a == 1;
    }
}
