package android.support.design.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.support.annotation.RequiresApi;
import android.view.View;

@RequiresApi(21)
/* renamed from: android.support.design.widget.t */
/* loaded from: classes.dex */
class C0291t {

    /* renamed from: a */
    private static final int[] f1866a = {R.attr.stateListAnimator};

    /* renamed from: a */
    static void m2207a(View view, float f) {
        int integer = view.getResources().getInteger(android.support.design.R.integer.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(new int[]{R.attr.enabled, android.support.design.R.attr.state_liftable, -android.support.design.R.attr.state_lifted}, ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(integer));
        stateListAnimator.addState(new int[]{R.attr.enabled}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(integer));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }
}
