package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.C0544h;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.u */
/* loaded from: classes.dex */
public class SubMenuC0557u extends C0544h implements SubMenu {

    /* renamed from: d */
    private C0544h f2823d;

    /* renamed from: e */
    private C0546j f2824e;

    public SubMenuC0557u(Context context, C0544h c0544h, C0546j c0546j) {
        super(context);
        this.f2823d = c0544h;
        this.f2824e = c0546j;
    }

    @Override // android.support.v7.view.menu.C0544h, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f2823d.setQwertyMode(z);
    }

    @Override // android.support.v7.view.menu.C0544h
    /* renamed from: c */
    public boolean mo2875c() {
        return this.f2823d.mo2875c();
    }

    @Override // android.support.v7.view.menu.C0544h
    /* renamed from: d */
    public boolean mo2879d() {
        return this.f2823d.mo2879d();
    }

    /* renamed from: t */
    public Menu m2951t() {
        return this.f2823d;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f2824e;
    }

    @Override // android.support.v7.view.menu.C0544h
    /* renamed from: a */
    public void mo2857a(C0544h.a aVar) {
        this.f2823d.mo2857a(aVar);
    }

    @Override // android.support.v7.view.menu.C0544h
    /* renamed from: q */
    public C0544h mo2894q() {
        return this.f2823d.mo2894q();
    }

    @Override // android.support.v7.view.menu.C0544h
    /* renamed from: a */
    boolean mo2863a(C0544h c0544h, MenuItem menuItem) {
        return super.mo2863a(c0544h, menuItem) || this.f2823d.mo2863a(c0544h, menuItem);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f2824e.setIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f2824e.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.m2850a(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        return (SubMenu) super.m2882e(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.m2852a(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        return (SubMenu) super.m2877d(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.m2851a(view);
    }

    @Override // android.support.v7.view.menu.C0544h
    /* renamed from: c */
    public boolean mo2876c(C0546j c0546j) {
        return this.f2823d.mo2876c(c0546j);
    }

    @Override // android.support.v7.view.menu.C0544h
    /* renamed from: d */
    public boolean mo2880d(C0546j c0546j) {
        return this.f2823d.mo2880d(c0546j);
    }

    @Override // android.support.v7.view.menu.C0544h
    /* renamed from: a */
    public String mo2855a() {
        int itemId = this.f2824e != null ? this.f2824e.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.mo2855a() + ":" + itemId;
    }

    @Override // android.support.v7.view.menu.C0544h, android.support.v4.internal.view.SupportMenu, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f2823d.setGroupDividerEnabled(z);
    }

    @Override // android.support.v7.view.menu.C0544h
    /* renamed from: b */
    public boolean mo2871b() {
        return this.f2823d.mo2871b();
    }
}
