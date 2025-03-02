package android.support.design.transformation;

import android.content.Context;
import android.os.Build;
import android.support.annotation.CallSuper;
import android.support.design.R;
import android.support.design.p038a.C0162h;
import android.support.design.p038a.C0164j;
import android.support.design.transformation.FabTransformationBehavior;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* renamed from: a */
    private Map<View, Integer> f1326a;

    public FabTransformationSheetBehavior() {
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.support.design.transformation.FabTransformationBehavior
    /* renamed from: a */
    protected FabTransformationBehavior.C0210a mo1643a(Context context, boolean z) {
        int i;
        if (z) {
            i = R.animator.mtrl_fab_transformation_sheet_expand_spec;
        } else {
            i = R.animator.mtrl_fab_transformation_sheet_collapse_spec;
        }
        FabTransformationBehavior.C0210a c0210a = new FabTransformationBehavior.C0210a();
        c0210a.f1319a = C0162h.m1371a(context, i);
        c0210a.f1320b = new C0164j(17, 0.0f, 0.0f);
        return c0210a;
    }

    @Override // android.support.design.transformation.ExpandableTransformationBehavior, android.support.design.transformation.ExpandableBehavior
    @CallSuper
    /* renamed from: a */
    protected boolean mo1621a(View view, View view2, boolean z, boolean z2) {
        m1647a(view2, z);
        return super.mo1621a(view, view2, z, z2);
    }

    /* renamed from: a */
    private void m1647a(View view, boolean z) {
        ViewParent parent = view.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                this.f1326a = new HashMap(childCount);
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                boolean z2 = (childAt.getLayoutParams() instanceof CoordinatorLayout.C0246e) && (((CoordinatorLayout.C0246e) childAt.getLayoutParams()).m1842b() instanceof FabTransformationScrimBehavior);
                if (childAt != view && !z2) {
                    if (!z) {
                        if (this.f1326a != null && this.f1326a.containsKey(childAt)) {
                            ViewCompat.setImportantForAccessibility(childAt, this.f1326a.get(childAt).intValue());
                        }
                    } else {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.f1326a.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        ViewCompat.setImportantForAccessibility(childAt, 4);
                    }
                }
            }
            if (!z) {
                this.f1326a = null;
            }
        }
    }
}
