package android.support.v7.app;

import android.app.Dialog;
import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.annotation.LayoutRes;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: android.support.v7.app.d */
/* loaded from: classes.dex */
public abstract class AbstractC0515d {

    /* renamed from: a */
    private static int f2372a = -1;

    @Nullable
    /* renamed from: a */
    public abstract <T extends View> T mo2514a(@IdRes int i);

    /* renamed from: a */
    public abstract void mo2516a();

    /* renamed from: a */
    public abstract void mo2518a(Bundle bundle);

    /* renamed from: a */
    public abstract void mo2521a(View view);

    /* renamed from: a */
    public abstract void mo2522a(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: a */
    public abstract void mo2524a(@Nullable CharSequence charSequence);

    /* renamed from: b */
    public abstract void mo2529b();

    /* renamed from: b */
    public abstract void mo2530b(@LayoutRes int i);

    /* renamed from: b */
    public abstract void mo2532b(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: c */
    public abstract void mo2534c();

    /* renamed from: c */
    public abstract boolean mo2535c(int i);

    /* renamed from: d */
    public abstract boolean mo2538d();

    /* renamed from: a */
    public static AbstractC0515d m2608a(Dialog dialog, InterfaceC0514c interfaceC0514c) {
        return new AppCompatDelegateImpl(dialog.getContext(), dialog.getWindow(), interfaceC0514c);
    }

    AbstractC0515d() {
    }

    /* renamed from: e */
    public static int m2609e() {
        return f2372a;
    }
}
