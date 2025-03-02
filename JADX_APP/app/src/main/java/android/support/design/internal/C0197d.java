package android.support.design.internal;

import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.C0544h;
import android.support.v7.view.menu.C0546j;
import android.view.SubMenu;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.internal.d */
/* loaded from: classes.dex */
public class C0197d extends C0544h {
    @Override // android.support.v7.view.menu.C0544h, android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0546j c0546j = (C0546j) m2854a(i, i2, i3, charSequence);
        C0199f c0199f = new C0199f(m2883f(), this, c0546j);
        c0546j.m2904a(c0199f);
        return c0199f;
    }
}
