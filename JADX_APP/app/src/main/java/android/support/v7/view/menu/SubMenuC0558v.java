package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportSubMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.v */
/* loaded from: classes.dex */
class SubMenuC0558v extends MenuC0554r implements SubMenu {
    SubMenuC0558v(Context context, SupportSubMenu supportSubMenu) {
        super(context, supportSubMenu);
    }

    /* renamed from: b */
    public SupportSubMenu m2952b() {
        return (SupportSubMenu) this.f2659b;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        m2952b().setHeaderTitle(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        m2952b().setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        m2952b().setHeaderIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        m2952b().setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        m2952b().setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public void clearHeader() {
        m2952b().clearHeader();
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        m2952b().setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        m2952b().setIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return m2800a(m2952b().getItem());
    }
}
