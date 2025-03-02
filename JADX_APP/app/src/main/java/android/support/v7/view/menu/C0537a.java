package android.support.v7.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.internal.view.SupportMenuItem;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.a */
/* loaded from: classes.dex */
public class C0537a implements SupportMenuItem {

    /* renamed from: a */
    private final int f2624a;

    /* renamed from: b */
    private final int f2625b;

    /* renamed from: c */
    private final int f2626c;

    /* renamed from: d */
    private final int f2627d;

    /* renamed from: e */
    private CharSequence f2628e;

    /* renamed from: f */
    private CharSequence f2629f;

    /* renamed from: g */
    private Intent f2630g;

    /* renamed from: h */
    private char f2631h;

    /* renamed from: j */
    private char f2633j;

    /* renamed from: l */
    private Drawable f2635l;

    /* renamed from: n */
    private Context f2637n;

    /* renamed from: o */
    private MenuItem.OnMenuItemClickListener f2638o;

    /* renamed from: p */
    private CharSequence f2639p;

    /* renamed from: q */
    private CharSequence f2640q;

    /* renamed from: i */
    private int f2632i = 4096;

    /* renamed from: k */
    private int f2634k = 4096;

    /* renamed from: m */
    private int f2636m = 0;

    /* renamed from: r */
    private ColorStateList f2641r = null;

    /* renamed from: s */
    private PorterDuff.Mode f2642s = null;

    /* renamed from: t */
    private boolean f2643t = false;

    /* renamed from: u */
    private boolean f2644u = false;

    /* renamed from: v */
    private int f2645v = 16;

    public C0537a(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.f2637n = context;
        this.f2624a = i2;
        this.f2625b = i;
        this.f2626c = i3;
        this.f2627d = i4;
        this.f2628e = charSequence;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f2633j;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f2634k;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f2625b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f2635l;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f2630g;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f2624a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f2631h;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f2632i;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f2627d;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f2628e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f2629f != null ? this.f2629f : this.f2628e;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f2645v & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f2645v & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f2645v & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f2645v & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f2633j = Character.toLowerCase(c);
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f2633j = Character.toLowerCase(c);
        this.f2634k = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f2645v = (z ? 1 : 0) | (this.f2645v & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f2645v = (z ? 2 : 0) | (this.f2645v & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f2645v = (z ? 16 : 0) | (this.f2645v & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f2635l = drawable;
        this.f2636m = 0;
        m2787a();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f2636m = i;
        this.f2635l = ContextCompat.getDrawable(this.f2637n, i);
        m2787a();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f2630g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f2631h = c;
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.f2631h = c;
        this.f2632i = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f2638o = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f2631h = c;
        this.f2633j = Character.toLowerCase(c2);
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f2631h = c;
        this.f2632i = KeyEvent.normalizeMetaState(i);
        this.f2633j = Character.toLowerCase(c2);
        this.f2634k = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f2628e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f2628e = this.f2637n.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f2629f = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        this.f2645v = (z ? 0 : 8) | (this.f2645v & 8);
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    /* renamed from: a */
    public SupportMenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    /* renamed from: a */
    public SupportMenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // android.support.v4.internal.view.SupportMenuItem
    public android.support.v4.view.ActionProvider getSupportActionProvider() {
        return null;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem
    public SupportMenuItem setSupportActionProvider(android.support.v4.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    /* renamed from: b */
    public SupportMenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public SupportMenuItem setContentDescription(CharSequence charSequence) {
        this.f2639p = charSequence;
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f2639p;
    }

    @Override // android.view.MenuItem
    public SupportMenuItem setTooltipText(CharSequence charSequence) {
        this.f2640q = charSequence;
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f2640q;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f2641r = colorStateList;
        this.f2643t = true;
        m2787a();
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f2641r;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f2642s = mode;
        this.f2644u = true;
        m2787a();
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f2642s;
    }

    /* renamed from: a */
    private void m2787a() {
        if (this.f2635l != null) {
            if (this.f2643t || this.f2644u) {
                this.f2635l = DrawableCompat.wrap(this.f2635l);
                this.f2635l = this.f2635l.mutate();
                if (this.f2643t) {
                    DrawableCompat.setTintList(this.f2635l, this.f2641r);
                }
                if (this.f2644u) {
                    DrawableCompat.setTintMode(this.f2635l, this.f2642s);
                }
            }
        }
    }
}
