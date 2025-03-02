package android.support.v7.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.view.ViewConfiguration;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.a */
/* loaded from: classes.dex */
public class C0526a {

    /* renamed from: a */
    private Context f2519a;

    /* renamed from: a */
    public static C0526a m2732a(Context context) {
        return new C0526a(context);
    }

    private C0526a(Context context) {
        this.f2519a = context;
    }

    /* renamed from: a */
    public int m2733a() {
        Configuration configuration = this.f2519a.getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i > 600 || ((i > 960 && i2 > 720) || (i > 720 && i2 > 960))) {
            return 5;
        }
        if (i >= 500 || ((i > 640 && i2 > 480) || (i > 480 && i2 > 640))) {
            return 4;
        }
        if (i >= 360) {
            return 3;
        }
        return 2;
    }

    /* renamed from: b */
    public boolean m2734b() {
        return Build.VERSION.SDK_INT >= 19 || !ViewConfiguration.get(this.f2519a).hasPermanentMenuKey();
    }

    /* renamed from: c */
    public int m2735c() {
        return this.f2519a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    /* renamed from: d */
    public boolean m2736d() {
        return this.f2519a.getResources().getBoolean(R.bool.abc_action_bar_embed_tabs);
    }

    /* renamed from: e */
    public int m2737e() {
        TypedArray obtainStyledAttributes = this.f2519a.obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_height, 0);
        Resources resources = this.f2519a.getResources();
        if (!m2736d()) {
            layoutDimension = Math.min(layoutDimension, resources.getDimensionPixelSize(R.dimen.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        return layoutDimension;
    }

    /* renamed from: f */
    public boolean m2738f() {
        return this.f2519a.getApplicationInfo().targetSdkVersion < 14;
    }

    /* renamed from: g */
    public int m2739g() {
        return this.f2519a.getResources().getDimensionPixelSize(R.dimen.abc_action_bar_stacked_tab_max_width);
    }
}
