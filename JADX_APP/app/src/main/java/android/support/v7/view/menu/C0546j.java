package android.support.v7.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.view.ActionProvider;
import android.support.v7.appcompat.R;
import android.support.v7.p048a.p049a.C0488a;
import android.support.v7.view.menu.InterfaceC0552p;
import android.util.Log;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.j */
/* loaded from: classes.dex */
public final class C0546j implements SupportMenuItem {

    /* renamed from: A */
    private View f2746A;

    /* renamed from: B */
    private ActionProvider f2747B;

    /* renamed from: C */
    private MenuItem.OnActionExpandListener f2748C;

    /* renamed from: E */
    private ContextMenu.ContextMenuInfo f2750E;

    /* renamed from: a */
    C0544h f2751a;

    /* renamed from: b */
    private final int f2752b;

    /* renamed from: c */
    private final int f2753c;

    /* renamed from: d */
    private final int f2754d;

    /* renamed from: e */
    private final int f2755e;

    /* renamed from: f */
    private CharSequence f2756f;

    /* renamed from: g */
    private CharSequence f2757g;

    /* renamed from: h */
    private Intent f2758h;

    /* renamed from: i */
    private char f2759i;

    /* renamed from: k */
    private char f2761k;

    /* renamed from: m */
    private Drawable f2763m;

    /* renamed from: o */
    private SubMenuC0557u f2765o;

    /* renamed from: p */
    private Runnable f2766p;

    /* renamed from: q */
    private MenuItem.OnMenuItemClickListener f2767q;

    /* renamed from: r */
    private CharSequence f2768r;

    /* renamed from: s */
    private CharSequence f2769s;

    /* renamed from: z */
    private int f2776z;

    /* renamed from: j */
    private int f2760j = 4096;

    /* renamed from: l */
    private int f2762l = 4096;

    /* renamed from: n */
    private int f2764n = 0;

    /* renamed from: t */
    private ColorStateList f2770t = null;

    /* renamed from: u */
    private PorterDuff.Mode f2771u = null;

    /* renamed from: v */
    private boolean f2772v = false;

    /* renamed from: w */
    private boolean f2773w = false;

    /* renamed from: x */
    private boolean f2774x = false;

    /* renamed from: y */
    private int f2775y = 16;

    /* renamed from: D */
    private boolean f2749D = false;

    C0546j(C0544h c0544h, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f2776z = 0;
        this.f2751a = c0544h;
        this.f2752b = i2;
        this.f2753c = i;
        this.f2754d = i3;
        this.f2755e = i4;
        this.f2756f = charSequence;
        this.f2776z = i5;
    }

    /* renamed from: a */
    public boolean m2907a() {
        if ((this.f2767q != null && this.f2767q.onMenuItemClick(this)) || this.f2751a.mo2863a(this.f2751a, this)) {
            return true;
        }
        if (this.f2766p != null) {
            this.f2766p.run();
            return true;
        }
        if (this.f2758h != null) {
            try {
                this.f2751a.m2883f().startActivity(this.f2758h);
                return true;
            } catch (ActivityNotFoundException e) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e);
            }
        }
        return this.f2747B != null && this.f2747B.onPerformDefaultAction();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f2775y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.f2775y |= 16;
        } else {
            this.f2775y &= -17;
        }
        this.f2751a.mo1602a(false);
        return this;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f2753c;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f2752b;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f2754d;
    }

    /* renamed from: b */
    public int m2908b() {
        return this.f2755e;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f2758h;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f2758h = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f2761k;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        if (this.f2761k != c) {
            this.f2761k = Character.toLowerCase(c);
            this.f2751a.mo1602a(false);
        }
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f2761k != c || this.f2762l != i) {
            this.f2761k = Character.toLowerCase(c);
            this.f2762l = KeyEvent.normalizeMetaState(i);
            this.f2751a.mo1602a(false);
        }
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f2762l;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f2759i;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f2760j;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        if (this.f2759i != c) {
            this.f2759i = c;
            this.f2751a.mo1602a(false);
        }
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        if (this.f2759i != c || this.f2760j != i) {
            this.f2759i = c;
            this.f2760j = KeyEvent.normalizeMetaState(i);
            this.f2751a.mo1602a(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f2759i = c;
        this.f2761k = Character.toLowerCase(c2);
        this.f2751a.mo1602a(false);
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f2759i = c;
        this.f2760j = KeyEvent.normalizeMetaState(i);
        this.f2761k = Character.toLowerCase(c2);
        this.f2762l = KeyEvent.normalizeMetaState(i2);
        this.f2751a.mo1602a(false);
        return this;
    }

    /* renamed from: c */
    char m2911c() {
        return this.f2751a.mo2875c() ? this.f2761k : this.f2759i;
    }

    /* renamed from: d */
    String m2913d() {
        char m2911c = m2911c();
        if (m2911c == 0) {
            return "";
        }
        Resources resources = this.f2751a.m2883f().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.f2751a.m2883f()).hasPermanentMenuKey()) {
            sb.append(resources.getString(R.string.abc_prepend_shortcut_label));
        }
        int i = this.f2751a.mo2875c() ? this.f2762l : this.f2760j;
        m2900a(sb, i, 65536, resources.getString(R.string.abc_menu_meta_shortcut_label));
        m2900a(sb, i, 4096, resources.getString(R.string.abc_menu_ctrl_shortcut_label));
        m2900a(sb, i, 2, resources.getString(R.string.abc_menu_alt_shortcut_label));
        m2900a(sb, i, 1, resources.getString(R.string.abc_menu_shift_shortcut_label));
        m2900a(sb, i, 4, resources.getString(R.string.abc_menu_sym_shortcut_label));
        m2900a(sb, i, 8, resources.getString(R.string.abc_menu_function_shortcut_label));
        switch (m2911c) {
            case '\b':
                sb.append(resources.getString(R.string.abc_menu_delete_shortcut_label));
                break;
            case '\n':
                sb.append(resources.getString(R.string.abc_menu_enter_shortcut_label));
                break;
            case ' ':
                sb.append(resources.getString(R.string.abc_menu_space_shortcut_label));
                break;
            default:
                sb.append(m2911c);
                break;
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m2900a(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    /* renamed from: e */
    boolean m2916e() {
        return this.f2751a.mo2879d() && m2911c() != 0;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f2765o;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f2765o != null;
    }

    /* renamed from: a */
    public void m2904a(SubMenuC0557u subMenuC0557u) {
        this.f2765o = subMenuC0557u;
        subMenuC0557u.setHeaderTitle(getTitle());
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f2756f;
    }

    /* renamed from: a */
    CharSequence m2903a(InterfaceC0552p.a aVar) {
        return (aVar == null || !aVar.mo1557a()) ? getTitle() : getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f2756f = charSequence;
        this.f2751a.mo1602a(false);
        if (this.f2765o != null) {
            this.f2765o.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        return setTitle(this.f2751a.m2883f().getString(i));
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f2757g != null ? this.f2757g : this.f2756f;
        if (Build.VERSION.SDK_INT < 18 && charSequence != null && !(charSequence instanceof String)) {
            return charSequence.toString();
        }
        return charSequence;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f2757g = charSequence;
        if (charSequence == null) {
            CharSequence charSequence2 = this.f2756f;
        }
        this.f2751a.mo1602a(false);
        return this;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        if (this.f2763m != null) {
            return m2899a(this.f2763m);
        }
        if (this.f2764n != 0) {
            Drawable m2457b = C0488a.m2457b(this.f2751a.m2883f(), this.f2764n);
            this.f2764n = 0;
            this.f2763m = m2457b;
            return m2899a(m2457b);
        }
        return null;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f2764n = 0;
        this.f2763m = drawable;
        this.f2774x = true;
        this.f2751a.mo1602a(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f2763m = null;
        this.f2764n = i;
        this.f2774x = true;
        this.f2751a.mo1602a(false);
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f2770t = colorStateList;
        this.f2772v = true;
        this.f2774x = true;
        this.f2751a.mo1602a(false);
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f2770t;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f2771u = mode;
        this.f2773w = true;
        this.f2774x = true;
        this.f2751a.mo1602a(false);
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f2771u;
    }

    /* renamed from: a */
    private Drawable m2899a(Drawable drawable) {
        if (drawable != null && this.f2774x && (this.f2772v || this.f2773w)) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            if (this.f2772v) {
                DrawableCompat.setTintList(drawable, this.f2770t);
            }
            if (this.f2773w) {
                DrawableCompat.setTintMode(drawable, this.f2771u);
            }
            this.f2774x = false;
        }
        return drawable;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f2775y & 1) == 1;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i = this.f2775y;
        this.f2775y = (z ? 1 : 0) | (this.f2775y & (-2));
        if (i != this.f2775y) {
            this.f2751a.mo1602a(false);
        }
        return this;
    }

    /* renamed from: a */
    public void m2906a(boolean z) {
        this.f2775y = (z ? 4 : 0) | (this.f2775y & (-5));
    }

    /* renamed from: f */
    public boolean m2917f() {
        return (this.f2775y & 4) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f2775y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.f2775y & 4) != 0) {
            this.f2751a.m2861a((MenuItem) this);
        } else {
            m2910b(z);
        }
        return this;
    }

    /* renamed from: b */
    void m2910b(boolean z) {
        int i = this.f2775y;
        this.f2775y = (z ? 2 : 0) | (this.f2775y & (-3));
        if (i != this.f2775y) {
            this.f2751a.mo1602a(false);
        }
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f2747B == null || !this.f2747B.overridesItemVisibility()) ? (this.f2775y & 8) == 0 : (this.f2775y & 8) == 0 && this.f2747B.isVisible();
    }

    /* renamed from: c */
    boolean m2912c(boolean z) {
        int i = this.f2775y;
        this.f2775y = (z ? 0 : 8) | (this.f2775y & (-9));
        return i != this.f2775y;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (m2912c(z)) {
            this.f2751a.m2858a(this);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f2767q = onMenuItemClickListener;
        return this;
    }

    public String toString() {
        if (this.f2756f != null) {
            return this.f2756f.toString();
        }
        return null;
    }

    /* renamed from: a */
    void m2905a(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.f2750E = contextMenuInfo;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f2750E;
    }

    /* renamed from: g */
    public void m2918g() {
        this.f2751a.m2868b(this);
    }

    /* renamed from: h */
    public boolean m2919h() {
        return this.f2751a.m2895r();
    }

    /* renamed from: i */
    public boolean m2920i() {
        return (this.f2775y & 32) == 32;
    }

    /* renamed from: j */
    public boolean m2921j() {
        return (this.f2776z & 1) == 1;
    }

    /* renamed from: k */
    public boolean m2922k() {
        return (this.f2776z & 2) == 2;
    }

    /* renamed from: d */
    public void m2914d(boolean z) {
        if (z) {
            this.f2775y |= 32;
        } else {
            this.f2775y &= -33;
        }
    }

    /* renamed from: l */
    public boolean m2923l() {
        return (this.f2776z & 4) == 4;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public void setShowAsAction(int i) {
        switch (i & 3) {
            case 0:
            case 1:
            case 2:
                this.f2776z = i;
                this.f2751a.m2868b(this);
                return;
            default:
                throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    /* renamed from: a */
    public SupportMenuItem setActionView(View view) {
        this.f2746A = view;
        this.f2747B = null;
        if (view != null && view.getId() == -1 && this.f2752b > 0) {
            view.setId(this.f2752b);
        }
        this.f2751a.m2868b(this);
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    /* renamed from: a */
    public SupportMenuItem setActionView(int i) {
        Context m2883f = this.f2751a.m2883f();
        setActionView(LayoutInflater.from(m2883f).inflate(i, (ViewGroup) new LinearLayout(m2883f), false));
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public View getActionView() {
        if (this.f2746A != null) {
            return this.f2746A;
        }
        if (this.f2747B != null) {
            this.f2746A = this.f2747B.onCreateActionView(this);
            return this.f2746A;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.support.v4.internal.view.SupportMenuItem
    public ActionProvider getSupportActionProvider() {
        return this.f2747B;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem
    public SupportMenuItem setSupportActionProvider(ActionProvider actionProvider) {
        if (this.f2747B != null) {
            this.f2747B.reset();
        }
        this.f2746A = null;
        this.f2747B = actionProvider;
        this.f2751a.mo1602a(true);
        if (this.f2747B != null) {
            this.f2747B.setVisibilityListener(new ActionProvider.VisibilityListener() { // from class: android.support.v7.view.menu.j.1
                AnonymousClass1() {
                }

                @Override // android.support.v4.view.ActionProvider.VisibilityListener
                public void onActionProviderVisibilityChanged(boolean z) {
                    C0546j.this.f2751a.m2858a(C0546j.this);
                }
            });
        }
        return this;
    }

    /* renamed from: android.support.v7.view.menu.j$1 */
    class AnonymousClass1 implements ActionProvider.VisibilityListener {
        AnonymousClass1() {
        }

        @Override // android.support.v4.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            C0546j.this.f2751a.m2858a(C0546j.this);
        }
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    /* renamed from: b */
    public SupportMenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean expandActionView() {
        if (!m2924m()) {
            return false;
        }
        if (this.f2748C == null || this.f2748C.onMenuItemActionExpand(this)) {
            return this.f2751a.mo2876c(this);
        }
        return false;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f2776z & 8) == 0) {
            return false;
        }
        if (this.f2746A == null) {
            return true;
        }
        if (this.f2748C == null || this.f2748C.onMenuItemActionCollapse(this)) {
            return this.f2751a.mo2880d(this);
        }
        return false;
    }

    /* renamed from: m */
    public boolean m2924m() {
        if ((this.f2776z & 8) == 0) {
            return false;
        }
        if (this.f2746A == null && this.f2747B != null) {
            this.f2746A = this.f2747B.onCreateActionView(this);
        }
        return this.f2746A != null;
    }

    /* renamed from: e */
    public void m2915e(boolean z) {
        this.f2749D = z;
        this.f2751a.mo1602a(false);
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f2749D;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f2748C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public SupportMenuItem setContentDescription(CharSequence charSequence) {
        this.f2768r = charSequence;
        this.f2751a.mo1602a(false);
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f2768r;
    }

    @Override // android.view.MenuItem
    public SupportMenuItem setTooltipText(CharSequence charSequence) {
        this.f2769s = charSequence;
        this.f2751a.mo1602a(false);
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f2769s;
    }
}
