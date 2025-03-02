package android.support.v7.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.support.annotation.LayoutRes;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.C0546j;
import android.support.v7.view.menu.MenuItemC0547k;
import android.support.v7.widget.C0659aj;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.g */
/* loaded from: classes.dex */
public class C0532g extends MenuInflater {

    /* renamed from: a */
    static final Class<?>[] f2540a = {Context.class};

    /* renamed from: b */
    static final Class<?>[] f2541b = f2540a;

    /* renamed from: c */
    final Object[] f2542c;

    /* renamed from: d */
    final Object[] f2543d;

    /* renamed from: e */
    Context f2544e;

    /* renamed from: f */
    private Object f2545f;

    public C0532g(Context context) {
        super(context);
        this.f2544e = context;
        this.f2542c = new Object[]{context};
        this.f2543d = this.f2542c;
    }

    @Override // android.view.MenuInflater
    public void inflate(@LayoutRes int i, Menu menu) {
        if (!(menu instanceof SupportMenu)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                xmlResourceParser = this.f2544e.getResources().getLayout(i);
                m2752a(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
            } catch (IOException e) {
                throw new InflateException("Error inflating menu XML", e);
            } catch (XmlPullParserException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            }
        } finally {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0028, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
    
        r4 = r10.next();
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
    
        if (r6 == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0051, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
    
        r4 = r10.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005d, code lost:
    
        if (r4.equals("group") == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005f, code lost:
    
        r8.m2758a(r11);
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006a, code lost:
    
        if (r4.equals("item") == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
    
        r8.m2760b(r11);
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0077, code lost:
    
        if (r4.equals("menu") == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0079, code lost:
    
        m2752a(r10, r11, r8.m2761c());
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0082, code lost:
    
        r0 = r1;
        r3 = r4;
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0086, code lost:
    
        r0 = r10.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008a, code lost:
    
        if (r6 == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0090, code lost:
    
        if (r0.equals(r3) == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0092, code lost:
    
        r0 = r1;
        r3 = null;
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009c, code lost:
    
        if (r0.equals("group") == false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009e, code lost:
    
        r8.m2757a();
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a9, code lost:
    
        if (r0.equals("item") == false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00af, code lost:
    
        if (r8.m2762d() != false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b3, code lost:
    
        if (r8.f2555a == null) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00bb, code lost:
    
        if (r8.f2555a.hasSubMenu() == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00bd, code lost:
    
        r8.m2761c();
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c3, code lost:
    
        r8.m2759b();
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00cf, code lost:
    
        if (r0.equals("menu") == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d1, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00db, code lost:
    
        throw new java.lang.RuntimeException("Unexpected end of document");
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00dc, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
    
        r1 = false;
        r3 = null;
        r6 = false;
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0023, code lost:
    
        if (r1 != false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
    
        switch(r4) {
            case 1: goto L128;
            case 2: goto L88;
            case 3: goto L100;
            default: goto L81;
        };
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m2752a(org.xmlpull.v1.XmlPullParser r10, android.util.AttributeSet r11, android.view.Menu r12) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.view.C0532g.m2752a(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.Menu):void");
    }

    /* renamed from: a */
    Object m2753a() {
        if (this.f2545f == null) {
            this.f2545f = m2751a(this.f2544e);
        }
        return this.f2545f;
    }

    /* renamed from: a */
    private Object m2751a(Object obj) {
        if (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) {
            return m2751a(((ContextWrapper) obj).getBaseContext());
        }
        return obj;
    }

    /* renamed from: android.support.v7.view.g$a */
    private static class a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a */
        private static final Class<?>[] f2546a = {MenuItem.class};

        /* renamed from: b */
        private Object f2547b;

        /* renamed from: c */
        private Method f2548c;

        public a(Object obj, String str) {
            this.f2547b = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f2548c = cls.getMethod(str, f2546a);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f2548c.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f2548c.invoke(this.f2547b, menuItem)).booleanValue();
                }
                this.f2548c.invoke(this.f2547b, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: android.support.v7.view.g$b */
    private class b {

        /* renamed from: A */
        private String f2549A;

        /* renamed from: B */
        private String f2550B;

        /* renamed from: C */
        private CharSequence f2551C;

        /* renamed from: D */
        private CharSequence f2552D;

        /* renamed from: E */
        private ColorStateList f2553E = null;

        /* renamed from: F */
        private PorterDuff.Mode f2554F = null;

        /* renamed from: a */
        ActionProvider f2555a;

        /* renamed from: c */
        private Menu f2557c;

        /* renamed from: d */
        private int f2558d;

        /* renamed from: e */
        private int f2559e;

        /* renamed from: f */
        private int f2560f;

        /* renamed from: g */
        private int f2561g;

        /* renamed from: h */
        private boolean f2562h;

        /* renamed from: i */
        private boolean f2563i;

        /* renamed from: j */
        private boolean f2564j;

        /* renamed from: k */
        private int f2565k;

        /* renamed from: l */
        private int f2566l;

        /* renamed from: m */
        private CharSequence f2567m;

        /* renamed from: n */
        private CharSequence f2568n;

        /* renamed from: o */
        private int f2569o;

        /* renamed from: p */
        private char f2570p;

        /* renamed from: q */
        private int f2571q;

        /* renamed from: r */
        private char f2572r;

        /* renamed from: s */
        private int f2573s;

        /* renamed from: t */
        private int f2574t;

        /* renamed from: u */
        private boolean f2575u;

        /* renamed from: v */
        private boolean f2576v;

        /* renamed from: w */
        private boolean f2577w;

        /* renamed from: x */
        private int f2578x;

        /* renamed from: y */
        private int f2579y;

        /* renamed from: z */
        private String f2580z;

        public b(Menu menu) {
            this.f2557c = menu;
            m2757a();
        }

        /* renamed from: a */
        public void m2757a() {
            this.f2558d = 0;
            this.f2559e = 0;
            this.f2560f = 0;
            this.f2561g = 0;
            this.f2562h = true;
            this.f2563i = true;
        }

        /* renamed from: a */
        public void m2758a(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = C0532g.this.f2544e.obtainStyledAttributes(attributeSet, R.styleable.MenuGroup);
            this.f2558d = obtainStyledAttributes.getResourceId(R.styleable.MenuGroup_android_id, 0);
            this.f2559e = obtainStyledAttributes.getInt(R.styleable.MenuGroup_android_menuCategory, 0);
            this.f2560f = obtainStyledAttributes.getInt(R.styleable.MenuGroup_android_orderInCategory, 0);
            this.f2561g = obtainStyledAttributes.getInt(R.styleable.MenuGroup_android_checkableBehavior, 0);
            this.f2562h = obtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_visible, true);
            this.f2563i = obtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_enabled, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: b */
        public void m2760b(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = C0532g.this.f2544e.obtainStyledAttributes(attributeSet, R.styleable.MenuItem);
            this.f2565k = obtainStyledAttributes.getResourceId(R.styleable.MenuItem_android_id, 0);
            this.f2566l = (obtainStyledAttributes.getInt(R.styleable.MenuItem_android_menuCategory, this.f2559e) & SupportMenu.CATEGORY_MASK) | (obtainStyledAttributes.getInt(R.styleable.MenuItem_android_orderInCategory, this.f2560f) & SupportMenu.USER_MASK);
            this.f2567m = obtainStyledAttributes.getText(R.styleable.MenuItem_android_title);
            this.f2568n = obtainStyledAttributes.getText(R.styleable.MenuItem_android_titleCondensed);
            this.f2569o = obtainStyledAttributes.getResourceId(R.styleable.MenuItem_android_icon, 0);
            this.f2570p = m2754a(obtainStyledAttributes.getString(R.styleable.MenuItem_android_alphabeticShortcut));
            this.f2571q = obtainStyledAttributes.getInt(R.styleable.MenuItem_alphabeticModifiers, 4096);
            this.f2572r = m2754a(obtainStyledAttributes.getString(R.styleable.MenuItem_android_numericShortcut));
            this.f2573s = obtainStyledAttributes.getInt(R.styleable.MenuItem_numericModifiers, 4096);
            if (obtainStyledAttributes.hasValue(R.styleable.MenuItem_android_checkable)) {
                this.f2574t = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.f2574t = this.f2561g;
            }
            this.f2575u = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_checked, false);
            this.f2576v = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_visible, this.f2562h);
            this.f2577w = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_enabled, this.f2563i);
            this.f2578x = obtainStyledAttributes.getInt(R.styleable.MenuItem_showAsAction, -1);
            this.f2550B = obtainStyledAttributes.getString(R.styleable.MenuItem_android_onClick);
            this.f2579y = obtainStyledAttributes.getResourceId(R.styleable.MenuItem_actionLayout, 0);
            this.f2580z = obtainStyledAttributes.getString(R.styleable.MenuItem_actionViewClass);
            this.f2549A = obtainStyledAttributes.getString(R.styleable.MenuItem_actionProviderClass);
            boolean z = this.f2549A != null;
            if (z && this.f2579y == 0 && this.f2580z == null) {
                this.f2555a = (ActionProvider) m2755a(this.f2549A, C0532g.f2541b, C0532g.this.f2543d);
            } else {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f2555a = null;
            }
            this.f2551C = obtainStyledAttributes.getText(R.styleable.MenuItem_contentDescription);
            this.f2552D = obtainStyledAttributes.getText(R.styleable.MenuItem_tooltipText);
            if (obtainStyledAttributes.hasValue(R.styleable.MenuItem_iconTintMode)) {
                this.f2554F = C0659aj.m3929a(obtainStyledAttributes.getInt(R.styleable.MenuItem_iconTintMode, -1), this.f2554F);
            } else {
                this.f2554F = null;
            }
            if (obtainStyledAttributes.hasValue(R.styleable.MenuItem_iconTint)) {
                this.f2553E = obtainStyledAttributes.getColorStateList(R.styleable.MenuItem_iconTint);
            } else {
                this.f2553E = null;
            }
            obtainStyledAttributes.recycle();
            this.f2564j = false;
        }

        /* renamed from: a */
        private char m2754a(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        /* renamed from: a */
        private void m2756a(MenuItem menuItem) {
            boolean z = true;
            menuItem.setChecked(this.f2575u).setVisible(this.f2576v).setEnabled(this.f2577w).setCheckable(this.f2574t >= 1).setTitleCondensed(this.f2568n).setIcon(this.f2569o);
            if (this.f2578x >= 0) {
                menuItem.setShowAsAction(this.f2578x);
            }
            if (this.f2550B != null) {
                if (C0532g.this.f2544e.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new a(C0532g.this.m2753a(), this.f2550B));
            }
            if (menuItem instanceof C0546j) {
            }
            if (this.f2574t >= 2) {
                if (menuItem instanceof C0546j) {
                    ((C0546j) menuItem).m2906a(true);
                } else if (menuItem instanceof MenuItemC0547k) {
                    ((MenuItemC0547k) menuItem).m2926a(true);
                }
            }
            if (this.f2580z != null) {
                menuItem.setActionView((View) m2755a(this.f2580z, C0532g.f2540a, C0532g.this.f2542c));
            } else {
                z = false;
            }
            if (this.f2579y > 0) {
                if (!z) {
                    menuItem.setActionView(this.f2579y);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            if (this.f2555a != null) {
                MenuItemCompat.setActionProvider(menuItem, this.f2555a);
            }
            MenuItemCompat.setContentDescription(menuItem, this.f2551C);
            MenuItemCompat.setTooltipText(menuItem, this.f2552D);
            MenuItemCompat.setAlphabeticShortcut(menuItem, this.f2570p, this.f2571q);
            MenuItemCompat.setNumericShortcut(menuItem, this.f2572r, this.f2573s);
            if (this.f2554F != null) {
                MenuItemCompat.setIconTintMode(menuItem, this.f2554F);
            }
            if (this.f2553E != null) {
                MenuItemCompat.setIconTintList(menuItem, this.f2553E);
            }
        }

        /* renamed from: b */
        public void m2759b() {
            this.f2564j = true;
            m2756a(this.f2557c.add(this.f2558d, this.f2565k, this.f2566l, this.f2567m));
        }

        /* renamed from: c */
        public SubMenu m2761c() {
            this.f2564j = true;
            SubMenu addSubMenu = this.f2557c.addSubMenu(this.f2558d, this.f2565k, this.f2566l, this.f2567m);
            m2756a(addSubMenu.getItem());
            return addSubMenu;
        }

        /* renamed from: d */
        public boolean m2762d() {
            return this.f2564j;
        }

        /* renamed from: a */
        private <T> T m2755a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = C0532g.this.f2544e.getClassLoader().loadClass(str).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
                return null;
            }
        }
    }
}
