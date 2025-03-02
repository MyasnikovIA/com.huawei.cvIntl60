package android.support.v7.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.v4.internal.view.SupportMenu;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

/* renamed from: android.support.v7.view.menu.r */
/* loaded from: classes.dex */
class MenuC0554r extends AbstractC0539c<SupportMenu> implements Menu {
    MenuC0554r(Context context, SupportMenu supportMenu) {
        super(context, supportMenu);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m2800a(((SupportMenu) this.f2659b).add(charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m2800a(((SupportMenu) this.f2659b).add(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m2800a(((SupportMenu) this.f2659b).add(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m2800a(((SupportMenu) this.f2659b).add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return m2801a(((SupportMenu) this.f2659b).addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return m2801a(((SupportMenu) this.f2659b).addSubMenu(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return m2801a(((SupportMenu) this.f2659b).addSubMenu(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return m2801a(((SupportMenu) this.f2659b).addSubMenu(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = null;
        if (menuItemArr != null) {
            menuItemArr2 = new MenuItem[menuItemArr.length];
        }
        int addIntentOptions = ((SupportMenu) this.f2659b).addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = m2800a(menuItemArr2[i5]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m2804b(i);
        ((SupportMenu) this.f2659b).removeItem(i);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        m2803a(i);
        ((SupportMenu) this.f2659b).removeGroup(i);
    }

    @Override // android.view.Menu
    public void clear() {
        m2802a();
        ((SupportMenu) this.f2659b).clear();
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        ((SupportMenu) this.f2659b).setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        ((SupportMenu) this.f2659b).setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        ((SupportMenu) this.f2659b).setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return ((SupportMenu) this.f2659b).hasVisibleItems();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        return m2800a(((SupportMenu) this.f2659b).findItem(i));
    }

    @Override // android.view.Menu
    public int size() {
        return ((SupportMenu) this.f2659b).size();
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return m2800a(((SupportMenu) this.f2659b).getItem(i));
    }

    @Override // android.view.Menu
    public void close() {
        ((SupportMenu) this.f2659b).close();
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return ((SupportMenu) this.f2659b).performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return ((SupportMenu) this.f2659b).isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return ((SupportMenu) this.f2659b).performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        ((SupportMenu) this.f2659b).setQwertyMode(z);
    }
}
