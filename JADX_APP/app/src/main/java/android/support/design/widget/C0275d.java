package android.support.design.widget;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.RestrictTo;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.widget.d */
/* loaded from: classes.dex */
public class C0275d {

    /* renamed from: a */
    private static final ThreadLocal<Matrix> f1729a = new ThreadLocal<>();

    /* renamed from: b */
    private static final ThreadLocal<RectF> f1730b = new ThreadLocal<>();

    /* renamed from: a */
    public static void m2068a(ViewGroup viewGroup, View view, Rect rect) {
        Matrix matrix;
        Matrix matrix2 = f1729a.get();
        if (matrix2 == null) {
            Matrix matrix3 = new Matrix();
            f1729a.set(matrix3);
            matrix = matrix3;
        } else {
            matrix2.reset();
            matrix = matrix2;
        }
        m2069a(viewGroup, view, matrix);
        RectF rectF = f1730b.get();
        if (rectF == null) {
            rectF = new RectF();
            f1730b.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    /* renamed from: b */
    public static void m2070b(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        m2068a(viewGroup, view, rect);
    }

    /* renamed from: a */
    private static void m2069a(ViewParent viewParent, View view, Matrix matrix) {
        Object parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            m2069a(viewParent, (View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }
}
