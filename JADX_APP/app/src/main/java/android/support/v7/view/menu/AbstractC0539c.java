package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.internal.view.SupportSubMenu;
import android.support.v4.util.ArrayMap;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Iterator;
import java.util.Map;

/* renamed from: android.support.v7.view.menu.c */
/* loaded from: classes.dex */
abstract class AbstractC0539c<T> extends C0540d<T> {

    /* renamed from: a */
    final Context f2656a;

    /* renamed from: c */
    private Map<SupportMenuItem, MenuItem> f2657c;

    /* renamed from: d */
    private Map<SupportSubMenu, SubMenu> f2658d;

    AbstractC0539c(Context context, T t) {
        super(t);
        this.f2656a = context;
    }

    /* renamed from: a */
    final MenuItem m2800a(MenuItem menuItem) {
        if (!(menuItem instanceof SupportMenuItem)) {
            return menuItem;
        }
        SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
        if (this.f2657c == null) {
            this.f2657c = new ArrayMap();
        }
        MenuItem menuItem2 = this.f2657c.get(menuItem);
        if (menuItem2 == null) {
            MenuItem m2948a = C0553q.m2948a(this.f2656a, supportMenuItem);
            this.f2657c.put(supportMenuItem, m2948a);
            return m2948a;
        }
        return menuItem2;
    }

    /* renamed from: a */
    final SubMenu m2801a(SubMenu subMenu) {
        if (!(subMenu instanceof SupportSubMenu)) {
            return subMenu;
        }
        SupportSubMenu supportSubMenu = (SupportSubMenu) subMenu;
        if (this.f2658d == null) {
            this.f2658d = new ArrayMap();
        }
        SubMenu subMenu2 = this.f2658d.get(supportSubMenu);
        if (subMenu2 == null) {
            SubMenu m2949a = C0553q.m2949a(this.f2656a, supportSubMenu);
            this.f2658d.put(supportSubMenu, m2949a);
            return m2949a;
        }
        return subMenu2;
    }

    /* renamed from: a */
    final void m2802a() {
        if (this.f2657c != null) {
            this.f2657c.clear();
        }
        if (this.f2658d != null) {
            this.f2658d.clear();
        }
    }

    /* renamed from: a */
    final void m2803a(int i) {
        if (this.f2657c != null) {
            Iterator<SupportMenuItem> it = this.f2657c.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getGroupId()) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: b */
    final void m2804b(int i) {
        if (this.f2657c != null) {
            Iterator<SupportMenuItem> it = this.f2657c.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getItemId()) {
                    it.remove();
                    return;
                }
            }
        }
    }
}
