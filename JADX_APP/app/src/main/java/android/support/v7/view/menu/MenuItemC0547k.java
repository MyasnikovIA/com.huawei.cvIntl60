package android.support.v7.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v7.view.InterfaceC0528c;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.reflect.Method;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.k */
/* loaded from: classes.dex */
public class MenuItemC0547k extends AbstractC0539c<SupportMenuItem> implements MenuItem {

    /* renamed from: c */
    private Method f2778c;

    MenuItemC0547k(Context context, SupportMenuItem supportMenuItem) {
        super(context, supportMenuItem);
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return ((SupportMenuItem) this.f2659b).getItemId();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return ((SupportMenuItem) this.f2659b).getGroupId();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return ((SupportMenuItem) this.f2659b).getOrder();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        ((SupportMenuItem) this.f2659b).setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        ((SupportMenuItem) this.f2659b).setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return ((SupportMenuItem) this.f2659b).getTitle();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        ((SupportMenuItem) this.f2659b).setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return ((SupportMenuItem) this.f2659b).getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        ((SupportMenuItem) this.f2659b).setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        ((SupportMenuItem) this.f2659b).setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return ((SupportMenuItem) this.f2659b).getIcon();
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        ((SupportMenuItem) this.f2659b).setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return ((SupportMenuItem) this.f2659b).getIntent();
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        ((SupportMenuItem) this.f2659b).setShortcut(c2, c3);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3, int i, int i2) {
        ((SupportMenuItem) this.f2659b).setShortcut(c2, c3, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        ((SupportMenuItem) this.f2659b).setNumericShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2, int i) {
        ((SupportMenuItem) this.f2659b).setNumericShortcut(c2, i);
        return this;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return ((SupportMenuItem) this.f2659b).getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return ((SupportMenuItem) this.f2659b).getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        ((SupportMenuItem) this.f2659b).setAlphabeticShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2, int i) {
        ((SupportMenuItem) this.f2659b).setAlphabeticShortcut(c2, i);
        return this;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return ((SupportMenuItem) this.f2659b).getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return ((SupportMenuItem) this.f2659b).getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        ((SupportMenuItem) this.f2659b).setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return ((SupportMenuItem) this.f2659b).isCheckable();
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        ((SupportMenuItem) this.f2659b).setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return ((SupportMenuItem) this.f2659b).isChecked();
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return ((SupportMenuItem) this.f2659b).setVisible(z);
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return ((SupportMenuItem) this.f2659b).isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        ((SupportMenuItem) this.f2659b).setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return ((SupportMenuItem) this.f2659b).isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return ((SupportMenuItem) this.f2659b).hasSubMenu();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return m2801a(((SupportMenuItem) this.f2659b).getSubMenu());
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        ((SupportMenuItem) this.f2659b).setOnMenuItemClickListener(onMenuItemClickListener != null ? new d(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return ((SupportMenuItem) this.f2659b).getMenuInfo();
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        ((SupportMenuItem) this.f2659b).setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        ((SupportMenuItem) this.f2659b).setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new b(view);
        }
        ((SupportMenuItem) this.f2659b).setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        ((SupportMenuItem) this.f2659b).setActionView(i);
        View actionView = ((SupportMenuItem) this.f2659b).getActionView();
        if (actionView instanceof CollapsibleActionView) {
            ((SupportMenuItem) this.f2659b).setActionView(new b(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = ((SupportMenuItem) this.f2659b).getActionView();
        if (actionView instanceof b) {
            return ((b) actionView).m2927c();
        }
        return actionView;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        ((SupportMenuItem) this.f2659b).setSupportActionProvider(actionProvider != null ? mo2925a(actionProvider) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        android.support.v4.view.ActionProvider supportActionProvider = ((SupportMenuItem) this.f2659b).getSupportActionProvider();
        if (supportActionProvider instanceof a) {
            return ((a) supportActionProvider).f2779a;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return ((SupportMenuItem) this.f2659b).expandActionView();
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return ((SupportMenuItem) this.f2659b).collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return ((SupportMenuItem) this.f2659b).isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        ((SupportMenuItem) this.f2659b).setOnActionExpandListener(onActionExpandListener != null ? new c(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        ((SupportMenuItem) this.f2659b).setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return ((SupportMenuItem) this.f2659b).getContentDescription();
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        ((SupportMenuItem) this.f2659b).setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return ((SupportMenuItem) this.f2659b).getTooltipText();
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        ((SupportMenuItem) this.f2659b).setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return ((SupportMenuItem) this.f2659b).getIconTintList();
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        ((SupportMenuItem) this.f2659b).setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return ((SupportMenuItem) this.f2659b).getIconTintMode();
    }

    /* renamed from: a */
    public void m2926a(boolean z) {
        try {
            if (this.f2778c == null) {
                this.f2778c = ((SupportMenuItem) this.f2659b).getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f2778c.invoke(this.f2659b, Boolean.valueOf(z));
        } catch (Exception e) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
        }
    }

    /* renamed from: a */
    a mo2925a(ActionProvider actionProvider) {
        return new a(this.f2656a, actionProvider);
    }

    /* renamed from: android.support.v7.view.menu.k$d */
    private class d extends C0540d<MenuItem.OnMenuItemClickListener> implements MenuItem.OnMenuItemClickListener {
        d(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            super(onMenuItemClickListener);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return ((MenuItem.OnMenuItemClickListener) this.f2659b).onMenuItemClick(MenuItemC0547k.this.m2800a(menuItem));
        }
    }

    /* renamed from: android.support.v7.view.menu.k$c */
    private class c extends C0540d<MenuItem.OnActionExpandListener> implements MenuItem.OnActionExpandListener {
        c(MenuItem.OnActionExpandListener onActionExpandListener) {
            super(onActionExpandListener);
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return ((MenuItem.OnActionExpandListener) this.f2659b).onMenuItemActionExpand(MenuItemC0547k.this.m2800a(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return ((MenuItem.OnActionExpandListener) this.f2659b).onMenuItemActionCollapse(MenuItemC0547k.this.m2800a(menuItem));
        }
    }

    /* renamed from: android.support.v7.view.menu.k$a */
    class a extends android.support.v4.view.ActionProvider {

        /* renamed from: a */
        final ActionProvider f2779a;

        public a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f2779a = actionProvider;
        }

        @Override // android.support.v4.view.ActionProvider
        public View onCreateActionView() {
            return this.f2779a.onCreateActionView();
        }

        @Override // android.support.v4.view.ActionProvider
        public boolean onPerformDefaultAction() {
            return this.f2779a.onPerformDefaultAction();
        }

        @Override // android.support.v4.view.ActionProvider
        public boolean hasSubMenu() {
            return this.f2779a.hasSubMenu();
        }

        @Override // android.support.v4.view.ActionProvider
        public void onPrepareSubMenu(SubMenu subMenu) {
            this.f2779a.onPrepareSubMenu(MenuItemC0547k.this.m2801a(subMenu));
        }
    }

    /* renamed from: android.support.v7.view.menu.k$b */
    static class b extends FrameLayout implements InterfaceC0528c {

        /* renamed from: a */
        final CollapsibleActionView f2781a;

        /* JADX WARN: Multi-variable type inference failed */
        b(View view) {
            super(view.getContext());
            this.f2781a = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // android.support.v7.view.InterfaceC0528c
        /* renamed from: a */
        public void mo2743a() {
            this.f2781a.onActionViewExpanded();
        }

        @Override // android.support.v7.view.InterfaceC0528c
        /* renamed from: b */
        public void mo2744b() {
            this.f2781a.onActionViewCollapsed();
        }

        /* renamed from: c */
        View m2927c() {
            return (View) this.f2781a;
        }
    }
}
