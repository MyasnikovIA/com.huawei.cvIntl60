package android.support.transition;

import android.animation.TypeEvaluator;
import android.graphics.Rect;

/* renamed from: android.support.transition.j */
/* loaded from: classes.dex */
class C0323j implements TypeEvaluator<Rect> {

    /* renamed from: a */
    private Rect f2069a;

    C0323j() {
    }

    @Override // android.animation.TypeEvaluator
    /* renamed from: a */
    public Rect evaluate(float f, Rect rect, Rect rect2) {
        int i = ((int) ((rect2.left - rect.left) * f)) + rect.left;
        int i2 = ((int) ((rect2.top - rect.top) * f)) + rect.top;
        int i3 = ((int) ((rect2.right - rect.right) * f)) + rect.right;
        int i4 = ((int) ((rect2.bottom - rect.bottom) * f)) + rect.bottom;
        if (this.f2069a == null) {
            return new Rect(i, i2, i3, i4);
        }
        this.f2069a.set(i, i2, i3, i4);
        return this.f2069a;
    }
}
