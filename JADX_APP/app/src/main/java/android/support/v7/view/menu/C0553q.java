package android.support.v7.view.menu;

import android.content.Context;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.internal.view.SupportSubMenu;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.q */
/* loaded from: classes.dex */
public final class C0553q {
    /* renamed from: a */
    public static Menu m2947a(Context context, SupportMenu supportMenu) {
        return new MenuC0554r(context, supportMenu);
    }

    /* renamed from: a */
    public static MenuItem m2948a(Context context, SupportMenuItem supportMenuItem) {
        return Build.VERSION.SDK_INT >= 16 ? new C0548l(context, supportMenuItem) : new MenuItemC0547k(context, supportMenuItem);
    }

    /* renamed from: a */
    public static SubMenu m2949a(Context context, SupportSubMenu supportSubMenu) {
        return new SubMenuC0558v(context, supportSubMenu);
    }
}
