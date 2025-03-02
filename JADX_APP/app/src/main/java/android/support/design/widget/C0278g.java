package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.design.p044f.C0184a;
import android.util.Property;
import android.view.View;
import java.util.ArrayList;

@RequiresApi(21)
/* renamed from: android.support.design.widget.g */
/* loaded from: classes.dex */
class C0278g extends C0277f {

    /* renamed from: x */
    private InsetDrawable f1783x;

    C0278g(C0292u c0292u, InterfaceC0284m interfaceC0284m) {
        super(c0292u, interfaceC0284m);
    }

    @Override // android.support.design.widget.C0277f
    /* renamed from: b */
    void mo2094b(ColorStateList colorStateList) {
        if (this.f1754h instanceof RippleDrawable) {
            ((RippleDrawable) this.f1754h).setColor(C0184a.m1505a(colorStateList));
        } else {
            super.mo2094b(colorStateList);
        }
    }

    @Override // android.support.design.widget.C0277f
    /* renamed from: a */
    void mo2083a(float f, float f2, float f3) {
        if (Build.VERSION.SDK_INT == 21) {
            this.f1762v.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(f1734p, m2117a(f, f3));
            stateListAnimator.addState(f1735q, m2117a(f, f2));
            stateListAnimator.addState(f1736r, m2117a(f, f2));
            stateListAnimator.addState(f1737s, m2117a(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.f1762v, "elevation", f).setDuration(0L));
            if (Build.VERSION.SDK_INT >= 22 && Build.VERSION.SDK_INT <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(this.f1762v, (Property<C0292u, Float>) View.TRANSLATION_Z, this.f1762v.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.f1762v, (Property<C0292u, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(f1733a);
            stateListAnimator.addState(f1738t, animatorSet);
            stateListAnimator.addState(f1739u, m2117a(0.0f, 0.0f));
            this.f1762v.setStateListAnimator(stateListAnimator);
        }
        if (this.f1763w.mo1884b()) {
            m2109j();
        }
    }

    @NonNull
    /* renamed from: a */
    private Animator m2117a(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f1762v, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f1762v, (Property<C0292u, Float>) View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(f1733a);
        return animatorSet;
    }

    @Override // android.support.design.widget.C0277f
    /* renamed from: a */
    public float mo2081a() {
        return this.f1762v.getElevation();
    }

    @Override // android.support.design.widget.C0277f
    /* renamed from: i */
    void mo2108i() {
        m2109j();
    }

    @Override // android.support.design.widget.C0277f
    /* renamed from: b */
    void mo2095b(Rect rect) {
        if (this.f1763w.mo1884b()) {
            this.f1783x = new InsetDrawable(this.f1754h, rect.left, rect.top, rect.right, rect.bottom);
            this.f1763w.mo1883a(this.f1783x);
        } else {
            this.f1763w.mo1883a(this.f1754h);
        }
    }

    @Override // android.support.design.widget.C0277f
    /* renamed from: a */
    void mo2090a(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (this.f1762v.isEnabled()) {
                this.f1762v.setElevation(this.f1757k);
                if (this.f1762v.isPressed()) {
                    this.f1762v.setTranslationZ(this.f1759m);
                    return;
                } else if (this.f1762v.isFocused() || this.f1762v.isHovered()) {
                    this.f1762v.setTranslationZ(this.f1758l);
                    return;
                } else {
                    this.f1762v.setTranslationZ(0.0f);
                    return;
                }
            }
            this.f1762v.setElevation(0.0f);
            this.f1762v.setTranslationZ(0.0f);
        }
    }

    @Override // android.support.design.widget.C0277f
    /* renamed from: g */
    void mo2106g() {
    }

    @Override // android.support.design.widget.C0277f
    /* renamed from: m */
    boolean mo2112m() {
        return false;
    }

    @Override // android.support.design.widget.C0277f
    /* renamed from: a */
    void mo2087a(Rect rect) {
        if (this.f1763w.mo1884b()) {
            float mo1881a = this.f1763w.mo1881a();
            float mo2081a = mo2081a() + this.f1759m;
            int ceil = (int) Math.ceil(C0283l.m2174b(mo2081a, mo1881a, false));
            int ceil2 = (int) Math.ceil(C0283l.m2171a(mo2081a, mo1881a, false));
            rect.set(ceil, ceil2, ceil, ceil2);
            return;
        }
        rect.set(0, 0, 0, 0);
    }
}
