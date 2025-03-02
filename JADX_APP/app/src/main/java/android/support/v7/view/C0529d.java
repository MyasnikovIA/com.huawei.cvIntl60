package android.support.v7.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.StyleRes;
import android.support.v7.appcompat.R;
import android.view.LayoutInflater;

/* renamed from: android.support.v7.view.d */
/* loaded from: classes.dex */
public class C0529d extends ContextWrapper {

    /* renamed from: a */
    private int f2522a;

    /* renamed from: b */
    private Resources.Theme f2523b;

    /* renamed from: c */
    private LayoutInflater f2524c;

    /* renamed from: d */
    private Configuration f2525d;

    /* renamed from: e */
    private Resources f2526e;

    public C0529d() {
        super(null);
    }

    public C0529d(Context context, @StyleRes int i) {
        super(context);
        this.f2522a = i;
    }

    public C0529d(Context context, Resources.Theme theme) {
        super(context);
        this.f2523b = theme;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return m2745b();
    }

    /* renamed from: b */
    private Resources m2745b() {
        if (this.f2526e == null) {
            if (this.f2525d == null) {
                this.f2526e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f2526e = createConfigurationContext(this.f2525d).getResources();
            }
        }
        return this.f2526e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f2522a != i) {
            this.f2522a = i;
            m2746c();
        }
    }

    /* renamed from: a */
    public int m2747a() {
        return this.f2522a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        if (this.f2523b != null) {
            return this.f2523b;
        }
        if (this.f2522a == 0) {
            this.f2522a = R.style.Theme_AppCompat_Light;
        }
        m2746c();
        return this.f2523b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f2524c == null) {
            this.f2524c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f2524c;
    }

    /* renamed from: a */
    protected void m2748a(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    /* renamed from: c */
    private void m2746c() {
        boolean z = this.f2523b == null;
        if (z) {
            this.f2523b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f2523b.setTo(theme);
            }
        }
        m2748a(this.f2523b, this.f2522a, z);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }
}
