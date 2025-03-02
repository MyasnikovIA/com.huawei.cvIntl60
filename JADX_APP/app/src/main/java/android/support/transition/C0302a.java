package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Build;
import android.support.annotation.NonNull;
import java.util.ArrayList;

/* renamed from: android.support.transition.a */
/* loaded from: classes.dex */
class C0302a {

    /* renamed from: android.support.transition.a$a */
    interface a {
        void onAnimationPause(Animator animator);

        void onAnimationResume(Animator animator);
    }

    /* renamed from: a */
    static void m2281a(@NonNull Animator animator, @NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        if (Build.VERSION.SDK_INT >= 19) {
            animator.addPauseListener(animatorListenerAdapter);
        }
    }

    /* renamed from: a */
    static void m2280a(@NonNull Animator animator) {
        if (Build.VERSION.SDK_INT >= 19) {
            animator.pause();
            return;
        }
        ArrayList<Animator.AnimatorListener> listeners = animator.getListeners();
        if (listeners != null) {
            int size = listeners.size();
            for (int i = 0; i < size; i++) {
                Animator.AnimatorListener animatorListener = listeners.get(i);
                if (animatorListener instanceof a) {
                    ((a) animatorListener).onAnimationPause(animator);
                }
            }
        }
    }

    /* renamed from: b */
    static void m2282b(@NonNull Animator animator) {
        if (Build.VERSION.SDK_INT >= 19) {
            animator.resume();
            return;
        }
        ArrayList<Animator.AnimatorListener> listeners = animator.getListeners();
        if (listeners != null) {
            int size = listeners.size();
            for (int i = 0; i < size; i++) {
                Animator.AnimatorListener animatorListener = listeners.get(i);
                if (animatorListener instanceof a) {
                    ((a) animatorListener).onAnimationResume(animator);
                }
            }
        }
    }
}
