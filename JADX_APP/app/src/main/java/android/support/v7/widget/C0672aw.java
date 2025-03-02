package android.support.v7.widget;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

/* renamed from: android.support.v7.widget.aw */
/* loaded from: classes.dex */
public class C0672aw extends AccessibilityDelegateCompat {

    /* renamed from: a */
    final RecyclerView f3651a;

    /* renamed from: b */
    final AccessibilityDelegateCompat f3652b = new a(this);

    public C0672aw(@NonNull RecyclerView recyclerView) {
        this.f3651a = recyclerView;
    }

    /* renamed from: a */
    boolean m4071a() {
        return this.f3651a.m3303v();
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (super.performAccessibilityAction(view, i, bundle)) {
            return true;
        }
        if (!m4071a() && this.f3651a.getLayoutManager() != null) {
            return this.f3651a.getLayoutManager().m3418a(i, bundle);
        }
        return false;
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(RecyclerView.class.getName());
        if (!m4071a() && this.f3651a.getLayoutManager() != null) {
            this.f3651a.getLayoutManager().m3402a(accessibilityNodeInfoCompat);
        }
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(RecyclerView.class.getName());
        if ((view instanceof RecyclerView) && !m4071a()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().mo3142a(accessibilityEvent);
            }
        }
    }

    @NonNull
    /* renamed from: b */
    public AccessibilityDelegateCompat m4072b() {
        return this.f3652b;
    }

    /* renamed from: android.support.v7.widget.aw$a */
    public static class a extends AccessibilityDelegateCompat {

        /* renamed from: a */
        final C0672aw f3653a;

        public a(@NonNull C0672aw c0672aw) {
            this.f3653a = c0672aw;
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!this.f3653a.m4071a() && this.f3653a.f3651a.getLayoutManager() != null) {
                this.f3653a.f3651a.getLayoutManager().m3415a(view, accessibilityNodeInfoCompat);
            }
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            if (!this.f3653a.m4071a() && this.f3653a.f3651a.getLayoutManager() != null) {
                return this.f3653a.f3651a.getLayoutManager().m3427a(view, i, bundle);
            }
            return false;
        }
    }
}
