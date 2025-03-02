package android.support.transition;

import android.graphics.Matrix;
import android.support.annotation.NonNull;
import android.view.View;

/* renamed from: android.support.transition.ah */
/* loaded from: classes.dex */
class C0310ah {
    C0310ah() {
    }

    /* renamed from: a */
    public void mo2311a(@NonNull View view, float f) {
        Float f2 = (Float) view.getTag(R.id.save_non_transition_alpha);
        if (f2 != null) {
            view.setAlpha(f2.floatValue() * f);
        } else {
            view.setAlpha(f);
        }
    }

    /* renamed from: a */
    public float mo2310a(@NonNull View view) {
        Float f = (Float) view.getTag(R.id.save_non_transition_alpha);
        return f != null ? view.getAlpha() / f.floatValue() : view.getAlpha();
    }

    /* renamed from: b */
    public void mo2312b(@NonNull View view) {
        if (view.getTag(R.id.save_non_transition_alpha) == null) {
            view.setTag(R.id.save_non_transition_alpha, Float.valueOf(view.getAlpha()));
        }
    }

    /* renamed from: c */
    public void mo2313c(@NonNull View view) {
        if (view.getVisibility() == 0) {
            view.setTag(R.id.save_non_transition_alpha, null);
        }
    }

    /* renamed from: a */
    public void mo2316a(@NonNull View view, @NonNull Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            mo2316a((View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            matrix.preConcat(matrix2);
        }
    }

    /* renamed from: b */
    public void mo2317b(@NonNull View view, @NonNull Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            mo2317b((View) parent, matrix);
            matrix.postTranslate(r0.getScrollX(), r0.getScrollY());
        }
        matrix.postTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            Matrix matrix3 = new Matrix();
            if (matrix2.invert(matrix3)) {
                matrix.postConcat(matrix3);
            }
        }
    }

    /* renamed from: a */
    public void mo2319a(View view, int i, int i2, int i3, int i4) {
        view.setLeft(i);
        view.setTop(i2);
        view.setRight(i3);
        view.setBottom(i4);
    }
}
