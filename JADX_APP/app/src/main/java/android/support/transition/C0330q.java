package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.android.exoplayer.C1167C;

/* renamed from: android.support.transition.q */
/* loaded from: classes.dex */
class C0330q {

    /* renamed from: a */
    private static final boolean f2131a;

    /* renamed from: b */
    private static final boolean f2132b;

    /* renamed from: c */
    private static final boolean f2133c;

    static {
        f2131a = Build.VERSION.SDK_INT >= 19;
        f2132b = Build.VERSION.SDK_INT >= 18;
        f2133c = Build.VERSION.SDK_INT >= 28;
    }

    /* renamed from: a */
    static View m2438a(ViewGroup viewGroup, View view, View view2) {
        Matrix matrix = new Matrix();
        matrix.setTranslate(-view2.getScrollX(), -view2.getScrollY());
        C0306ad.m2298a(view, matrix);
        C0306ad.m2300b(viewGroup, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        int round = Math.round(rectF.left);
        int round2 = Math.round(rectF.top);
        int round3 = Math.round(rectF.right);
        int round4 = Math.round(rectF.bottom);
        ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap m2437a = m2437a(view, matrix, rectF, viewGroup);
        if (m2437a != null) {
            imageView.setImageBitmap(m2437a);
        }
        imageView.measure(View.MeasureSpec.makeMeasureSpec(round3 - round, C1167C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(round4 - round2, C1167C.ENCODING_PCM_32BIT));
        imageView.layout(round, round2, round3, round4);
        return imageView;
    }

    /* renamed from: a */
    private static Bitmap m2437a(View view, Matrix matrix, RectF rectF, ViewGroup viewGroup) {
        boolean z;
        boolean z2;
        ViewGroup viewGroup2;
        Bitmap bitmap = null;
        int i = 0;
        if (f2131a) {
            z2 = !view.isAttachedToWindow();
            z = viewGroup == null ? false : viewGroup.isAttachedToWindow();
        } else {
            z = false;
            z2 = false;
        }
        if (f2132b && z2) {
            if (z) {
                viewGroup2 = (ViewGroup) view.getParent();
                i = viewGroup2.indexOfChild(view);
                viewGroup.getOverlay().add(view);
            }
            return bitmap;
        }
        viewGroup2 = null;
        int round = Math.round(rectF.width());
        int round2 = Math.round(rectF.height());
        if (round > 0 && round2 > 0) {
            float min = Math.min(1.0f, 1048576.0f / (round * round2));
            int round3 = Math.round(round * min);
            int round4 = Math.round(round2 * min);
            matrix.postTranslate(-rectF.left, -rectF.top);
            matrix.postScale(min, min);
            if (f2133c) {
                Picture picture = new Picture();
                Canvas beginRecording = picture.beginRecording(round3, round4);
                beginRecording.concat(matrix);
                view.draw(beginRecording);
                picture.endRecording();
                bitmap = Bitmap.createBitmap(picture);
            } else {
                bitmap = Bitmap.createBitmap(round3, round4, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmap);
                canvas.concat(matrix);
                view.draw(canvas);
            }
        }
        if (f2132b && z2) {
            viewGroup.getOverlay().remove(view);
            viewGroup2.addView(view, i);
        }
        return bitmap;
    }

    /* renamed from: a */
    static Animator m2436a(Animator animator, Animator animator2) {
        if (animator != null) {
            if (animator2 == null) {
                return animator;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(animator, animator2);
            return animatorSet;
        }
        return animator2;
    }
}
