package android.support.design.p038a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.support.annotation.AnimatorRes;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* renamed from: android.support.design.a.h */
/* loaded from: classes.dex */
public class C0162h {

    /* renamed from: a */
    private final SimpleArrayMap<String, C0163i> f1050a = new SimpleArrayMap<>();

    /* renamed from: a */
    public boolean m1376a(String str) {
        return this.f1050a.get(str) != null;
    }

    /* renamed from: b */
    public C0163i m1377b(String str) {
        if (!m1376a(str)) {
            throw new IllegalArgumentException();
        }
        return this.f1050a.get(str);
    }

    /* renamed from: a */
    public void m1375a(String str, @Nullable C0163i c0163i) {
        this.f1050a.put(str, c0163i);
    }

    /* renamed from: a */
    public long m1374a() {
        long j = 0;
        int size = this.f1050a.size();
        for (int i = 0; i < size; i++) {
            C0163i valueAt = this.f1050a.valueAt(i);
            j = Math.max(j, valueAt.m1380a() + valueAt.m1382b());
        }
        return j;
    }

    @Nullable
    /* renamed from: a */
    public static C0162h m1371a(Context context, @AnimatorRes int i) {
        C0162h c0162h;
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                c0162h = m1372a(((AnimatorSet) loadAnimator).getChildAnimations());
            } else if (loadAnimator != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(loadAnimator);
                c0162h = m1372a(arrayList);
            } else {
                c0162h = null;
            }
            return c0162h;
        } catch (Exception e) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i), e);
            return null;
        }
    }

    /* renamed from: a */
    private static C0162h m1372a(List<Animator> list) {
        C0162h c0162h = new C0162h();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            m1373a(c0162h, list.get(i));
        }
        return c0162h;
    }

    /* renamed from: a */
    private static void m1373a(C0162h c0162h, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            c0162h.m1375a(objectAnimator.getPropertyName(), C0163i.m1378a((ValueAnimator) objectAnimator));
            return;
        }
        throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f1050a.equals(((C0162h) obj).f1050a);
    }

    public int hashCode() {
        return this.f1050a.hashCode();
    }

    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f1050a + "}\n";
    }
}
