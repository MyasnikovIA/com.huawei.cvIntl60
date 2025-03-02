package android.support.v7.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.content.ContextCompat;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.ViewConfigurationCompat;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.h */
/* loaded from: classes.dex */
public class C0544h implements SupportMenu {

    /* renamed from: d */
    private static final int[] f2715d = {1, 4, 5, 3, 2, 0};

    /* renamed from: A */
    private boolean f2716A;

    /* renamed from: a */
    CharSequence f2717a;

    /* renamed from: b */
    Drawable f2718b;

    /* renamed from: c */
    View f2719c;

    /* renamed from: e */
    private final Context f2720e;

    /* renamed from: f */
    private final Resources f2721f;

    /* renamed from: g */
    private boolean f2722g;

    /* renamed from: h */
    private boolean f2723h;

    /* renamed from: i */
    private a f2724i;

    /* renamed from: q */
    private ContextMenu.ContextMenuInfo f2732q;

    /* renamed from: y */
    private C0546j f2740y;

    /* renamed from: p */
    private int f2731p = 0;

    /* renamed from: r */
    private boolean f2733r = false;

    /* renamed from: s */
    private boolean f2734s = false;

    /* renamed from: t */
    private boolean f2735t = false;

    /* renamed from: u */
    private boolean f2736u = false;

    /* renamed from: v */
    private boolean f2737v = false;

    /* renamed from: w */
    private ArrayList<C0546j> f2738w = new ArrayList<>();

    /* renamed from: x */
    private CopyOnWriteArrayList<WeakReference<InterfaceC0551o>> f2739x = new CopyOnWriteArrayList<>();

    /* renamed from: z */
    private boolean f2741z = false;

    /* renamed from: j */
    private ArrayList<C0546j> f2725j = new ArrayList<>();

    /* renamed from: k */
    private ArrayList<C0546j> f2726k = new ArrayList<>();

    /* renamed from: l */
    private boolean f2727l = true;

    /* renamed from: m */
    private ArrayList<C0546j> f2728m = new ArrayList<>();

    /* renamed from: n */
    private ArrayList<C0546j> f2729n = new ArrayList<>();

    /* renamed from: o */
    private boolean f2730o = true;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: android.support.v7.view.menu.h$a */
    public interface a {
        /* renamed from: a */
        void mo2520a(C0544h c0544h);

        /* renamed from: a */
        boolean mo2526a(C0544h c0544h, MenuItem menuItem);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: android.support.v7.view.menu.h$b */
    public interface b {
        /* renamed from: a */
        boolean mo2780a(C0546j c0546j);
    }

    public C0544h(Context context) {
        this.f2720e = context;
        this.f2721f = context.getResources();
        m2845e(true);
    }

    /* renamed from: a */
    public C0544h m2849a(int i) {
        this.f2731p = i;
        return this;
    }

    /* renamed from: a */
    public void m2859a(InterfaceC0551o interfaceC0551o) {
        m2860a(interfaceC0551o, this.f2720e);
    }

    /* renamed from: a */
    public void m2860a(InterfaceC0551o interfaceC0551o, Context context) {
        this.f2739x.add(new WeakReference<>(interfaceC0551o));
        interfaceC0551o.mo1539a(context, this);
        this.f2730o = true;
    }

    /* renamed from: b */
    public void m2869b(InterfaceC0551o interfaceC0551o) {
        Iterator<WeakReference<InterfaceC0551o>> it = this.f2739x.iterator();
        while (it.hasNext()) {
            WeakReference<InterfaceC0551o> next = it.next();
            InterfaceC0551o interfaceC0551o2 = next.get();
            if (interfaceC0551o2 == null || interfaceC0551o2 == interfaceC0551o) {
                this.f2739x.remove(next);
            }
        }
    }

    /* renamed from: d */
    private void m2843d(boolean z) {
        if (!this.f2739x.isEmpty()) {
            m2885h();
            Iterator<WeakReference<InterfaceC0551o>> it = this.f2739x.iterator();
            while (it.hasNext()) {
                WeakReference<InterfaceC0551o> next = it.next();
                InterfaceC0551o interfaceC0551o = next.get();
                if (interfaceC0551o == null) {
                    this.f2739x.remove(next);
                } else {
                    interfaceC0551o.mo1543a(z);
                }
            }
            m2886i();
        }
    }

    /* renamed from: a */
    private boolean m2842a(SubMenuC0557u subMenuC0557u, InterfaceC0551o interfaceC0551o) {
        if (this.f2739x.isEmpty()) {
            return false;
        }
        boolean mo1546a = interfaceC0551o != null ? interfaceC0551o.mo1546a(subMenuC0557u) : false;
        Iterator<WeakReference<InterfaceC0551o>> it = this.f2739x.iterator();
        while (true) {
            boolean z = mo1546a;
            if (!it.hasNext()) {
                return z;
            }
            WeakReference<InterfaceC0551o> next = it.next();
            InterfaceC0551o interfaceC0551o2 = next.get();
            if (interfaceC0551o2 == null) {
                this.f2739x.remove(next);
            } else if (!z) {
                z = interfaceC0551o2.mo1546a(subMenuC0557u);
            }
            mo1546a = z;
        }
    }

    /* renamed from: e */
    private void m2844e(Bundle bundle) {
        Parcelable mo1550c;
        if (!this.f2739x.isEmpty()) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            Iterator<WeakReference<InterfaceC0551o>> it = this.f2739x.iterator();
            while (it.hasNext()) {
                WeakReference<InterfaceC0551o> next = it.next();
                InterfaceC0551o interfaceC0551o = next.get();
                if (interfaceC0551o == null) {
                    this.f2739x.remove(next);
                } else {
                    int mo1547b = interfaceC0551o.mo1547b();
                    if (mo1547b > 0 && (mo1550c = interfaceC0551o.mo1550c()) != null) {
                        sparseArray.put(mo1547b, mo1550c);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
        }
    }

    /* renamed from: f */
    private void m2847f(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray != null && !this.f2739x.isEmpty()) {
            Iterator<WeakReference<InterfaceC0551o>> it = this.f2739x.iterator();
            while (it.hasNext()) {
                WeakReference<InterfaceC0551o> next = it.next();
                InterfaceC0551o interfaceC0551o = next.get();
                if (interfaceC0551o == null) {
                    this.f2739x.remove(next);
                } else {
                    int mo1547b = interfaceC0551o.mo1547b();
                    if (mo1547b > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(mo1547b)) != null) {
                        interfaceC0551o.mo1540a(parcelable);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m2856a(Bundle bundle) {
        m2844e(bundle);
    }

    /* renamed from: b */
    public void m2867b(Bundle bundle) {
        m2847f(bundle);
    }

    /* renamed from: c */
    public void m2873c(Bundle bundle) {
        SparseArray<? extends Parcelable> sparseArray = null;
        int size = size();
        int i = 0;
        while (i < size) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            SparseArray<? extends Parcelable> sparseArray2 = sparseArray;
            if (item.hasSubMenu()) {
                ((SubMenuC0557u) item.getSubMenu()).m2873c(bundle);
            }
            i++;
            sparseArray = sparseArray2;
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(mo2855a(), sparseArray);
        }
    }

    /* renamed from: d */
    public void m2878d(Bundle bundle) {
        MenuItem findItem;
        if (bundle != null) {
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(mo2855a());
            int size = size();
            for (int i = 0; i < size; i++) {
                MenuItem item = getItem(i);
                View actionView = item.getActionView();
                if (actionView != null && actionView.getId() != -1) {
                    actionView.restoreHierarchyState(sparseParcelableArray);
                }
                if (item.hasSubMenu()) {
                    ((SubMenuC0557u) item.getSubMenu()).m2878d(bundle);
                }
            }
            int i2 = bundle.getInt("android:menu:expandedactionview");
            if (i2 > 0 && (findItem = findItem(i2)) != null) {
                findItem.expandActionView();
            }
        }
    }

    /* renamed from: a */
    protected String mo2855a() {
        return "android:menu:actionviewstates";
    }

    /* renamed from: a */
    public void mo2857a(a aVar) {
        this.f2724i = aVar;
    }

    /* renamed from: a */
    protected MenuItem m2854a(int i, int i2, int i3, CharSequence charSequence) {
        int m2846f = m2846f(i3);
        C0546j m2839a = m2839a(i, i2, i3, m2846f, charSequence, this.f2731p);
        if (this.f2732q != null) {
            m2839a.m2905a(this.f2732q);
        }
        this.f2725j.add(m2838a(this.f2725j, m2846f), m2839a);
        mo1602a(true);
        return m2839a;
    }

    /* renamed from: a */
    private C0546j m2839a(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new C0546j(this, i, i2, i3, i4, charSequence, i5);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m2854a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m2854a(0, 0, 0, this.f2721f.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m2854a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m2854a(i, i2, i3, this.f2721f.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f2721f.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0546j c0546j = (C0546j) m2854a(i, i2, i3, charSequence);
        SubMenuC0557u subMenuC0557u = new SubMenuC0557u(this.f2720e, this, c0546j);
        c0546j.m2904a(subMenuC0557u);
        return subMenuC0557u;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f2721f.getString(i4));
    }

    @Override // android.support.v4.internal.view.SupportMenu, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f2741z = z;
    }

    /* renamed from: b */
    public boolean mo2871b() {
        return this.f2741z;
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        PackageManager packageManager = this.f2720e.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i5 = 0; i5 < size; i5++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i5);
            Intent intent2 = new Intent(resolveInfo.specificIndex < 0 ? intent : intentArr[resolveInfo.specificIndex]);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && resolveInfo.specificIndex >= 0) {
                menuItemArr[resolveInfo.specificIndex] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m2841a(m2866b(i), true);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int m2872c = m2872c(i);
        if (m2872c >= 0) {
            int size = this.f2725j.size() - m2872c;
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= size || this.f2725j.get(m2872c).getGroupId() != i) {
                    break;
                }
                m2841a(m2872c, false);
                i2 = i3;
            }
            mo1602a(true);
        }
    }

    /* renamed from: a */
    private void m2841a(int i, boolean z) {
        if (i >= 0 && i < this.f2725j.size()) {
            this.f2725j.remove(i);
            if (z) {
                mo1602a(true);
            }
        }
    }

    @Override // android.view.Menu
    public void clear() {
        if (this.f2740y != null) {
            mo2880d(this.f2740y);
        }
        this.f2725j.clear();
        mo1602a(true);
    }

    /* renamed from: a */
    void m2861a(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f2725j.size();
        m2885h();
        for (int i = 0; i < size; i++) {
            C0546j c0546j = this.f2725j.get(i);
            if (c0546j.getGroupId() == groupId && c0546j.m2917f() && c0546j.isCheckable()) {
                c0546j.m2910b(c0546j == menuItem);
            }
        }
        m2886i();
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f2725j.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0546j c0546j = this.f2725j.get(i2);
            if (c0546j.getGroupId() == i) {
                c0546j.m2906a(z2);
                c0546j.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.f2725j.size();
        int i2 = 0;
        boolean z2 = false;
        while (i2 < size) {
            C0546j c0546j = this.f2725j.get(i2);
            i2++;
            z2 = (c0546j.getGroupId() == i && c0546j.m2912c(z)) ? true : z2;
        }
        if (z2) {
            mo1602a(true);
        }
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f2725j.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0546j c0546j = this.f2725j.get(i2);
            if (c0546j.getGroupId() == i) {
                c0546j.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f2716A) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f2725j.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            C0546j c0546j = this.f2725j.get(i2);
            if (c0546j.getItemId() != i) {
                if (c0546j.hasSubMenu() && (findItem = c0546j.getSubMenu().findItem(i)) != null) {
                    return findItem;
                }
            } else {
                return c0546j;
            }
        }
        return null;
    }

    /* renamed from: b */
    public int m2866b(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f2725j.get(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: c */
    public int m2872c(int i) {
        return m2848a(i, 0);
    }

    /* renamed from: a */
    public int m2848a(int i, int i2) {
        int size = size();
        if (i2 < 0) {
            i2 = 0;
        }
        for (int i3 = i2; i3 < size; i3++) {
            if (this.f2725j.get(i3).getGroupId() == i) {
                return i3;
            }
        }
        return -1;
    }

    @Override // android.view.Menu
    public int size() {
        return this.f2725j.size();
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f2725j.get(i);
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m2853a(i, keyEvent) != null;
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f2722g = z;
        mo1602a(false);
    }

    /* renamed from: f */
    private static int m2846f(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 < 0 || i2 >= f2715d.length) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        return (f2715d[i2] << 16) | (65535 & i);
    }

    /* renamed from: c */
    boolean mo2875c() {
        return this.f2722g;
    }

    /* renamed from: e */
    private void m2845e(boolean z) {
        this.f2723h = z && this.f2721f.getConfiguration().keyboard != 1 && ViewConfigurationCompat.shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration.get(this.f2720e), this.f2720e);
    }

    /* renamed from: d */
    public boolean mo2879d() {
        return this.f2723h;
    }

    /* renamed from: e */
    Resources m2881e() {
        return this.f2721f;
    }

    /* renamed from: f */
    public Context m2883f() {
        return this.f2720e;
    }

    /* renamed from: a */
    boolean mo2863a(C0544h c0544h, MenuItem menuItem) {
        return this.f2724i != null && this.f2724i.mo2526a(c0544h, menuItem);
    }

    /* renamed from: g */
    public void m2884g() {
        if (this.f2724i != null) {
            this.f2724i.mo2520a(this);
        }
    }

    /* renamed from: a */
    private static int m2838a(ArrayList<C0546j> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).m2908b() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        C0546j m2853a = m2853a(i, keyEvent);
        boolean z = false;
        if (m2853a != null) {
            z = m2864a(m2853a, i2);
        }
        if ((i2 & 2) != 0) {
            m2870b(true);
        }
        return z;
    }

    /* renamed from: a */
    void m2862a(List<C0546j> list, int i, KeyEvent keyEvent) {
        boolean mo2875c = mo2875c();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f2725j.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0546j c0546j = this.f2725j.get(i2);
                if (c0546j.hasSubMenu()) {
                    ((C0544h) c0546j.getSubMenu()).m2862a(list, i, keyEvent);
                }
                char alphabeticShortcut = mo2875c ? c0546j.getAlphabeticShortcut() : c0546j.getNumericShortcut();
                if (((modifiers & SupportMenu.SUPPORTED_MODIFIERS_MASK) == ((mo2875c ? c0546j.getAlphabeticModifiers() : c0546j.getNumericModifiers()) & SupportMenu.SUPPORTED_MODIFIERS_MASK)) && alphabeticShortcut != 0 && ((alphabeticShortcut == keyData.meta[0] || alphabeticShortcut == keyData.meta[2] || (mo2875c && alphabeticShortcut == '\b' && i == 67)) && c0546j.isEnabled())) {
                    list.add(c0546j);
                }
            }
        }
    }

    /* renamed from: a */
    C0546j m2853a(int i, KeyEvent keyEvent) {
        ArrayList<C0546j> arrayList = this.f2738w;
        arrayList.clear();
        m2862a(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean mo2875c = mo2875c();
        for (int i2 = 0; i2 < size; i2++) {
            C0546j c0546j = arrayList.get(i2);
            char alphabeticShortcut = mo2875c ? c0546j.getAlphabeticShortcut() : c0546j.getNumericShortcut();
            if (alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) {
                return c0546j;
            }
            if (alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) {
                return c0546j;
            }
            if (mo2875c && alphabeticShortcut == '\b' && i == 67) {
                return c0546j;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return m2864a(findItem(i), i2);
    }

    /* renamed from: a */
    public boolean m2864a(MenuItem menuItem, int i) {
        return m2865a(menuItem, (InterfaceC0551o) null, i);
    }

    /* renamed from: a */
    public boolean m2865a(MenuItem menuItem, InterfaceC0551o interfaceC0551o, int i) {
        C0546j c0546j = (C0546j) menuItem;
        if (c0546j == null || !c0546j.isEnabled()) {
            return false;
        }
        boolean m2907a = c0546j.m2907a();
        ActionProvider supportActionProvider = c0546j.getSupportActionProvider();
        boolean z = supportActionProvider != null && supportActionProvider.hasSubMenu();
        if (c0546j.m2924m()) {
            boolean expandActionView = c0546j.expandActionView() | m2907a;
            if (expandActionView) {
                m2870b(true);
                return expandActionView;
            }
            return expandActionView;
        }
        if (c0546j.hasSubMenu() || z) {
            if ((i & 4) == 0) {
                m2870b(false);
            }
            if (!c0546j.hasSubMenu()) {
                c0546j.m2904a(new SubMenuC0557u(m2883f(), this, c0546j));
            }
            SubMenuC0557u subMenuC0557u = (SubMenuC0557u) c0546j.getSubMenu();
            if (z) {
                supportActionProvider.onPrepareSubMenu(subMenuC0557u);
            }
            boolean m2842a = m2842a(subMenuC0557u, interfaceC0551o) | m2907a;
            if (!m2842a) {
                m2870b(true);
                return m2842a;
            }
            return m2842a;
        }
        if ((i & 1) == 0) {
            m2870b(true);
        }
        return m2907a;
    }

    /* renamed from: b */
    public final void m2870b(boolean z) {
        if (!this.f2737v) {
            this.f2737v = true;
            Iterator<WeakReference<InterfaceC0551o>> it = this.f2739x.iterator();
            while (it.hasNext()) {
                WeakReference<InterfaceC0551o> next = it.next();
                InterfaceC0551o interfaceC0551o = next.get();
                if (interfaceC0551o == null) {
                    this.f2739x.remove(next);
                } else {
                    interfaceC0551o.mo1541a(this, z);
                }
            }
            this.f2737v = false;
        }
    }

    @Override // android.view.Menu
    public void close() {
        m2870b(true);
    }

    /* renamed from: a */
    public void mo1602a(boolean z) {
        if (!this.f2733r) {
            if (z) {
                this.f2727l = true;
                this.f2730o = true;
            }
            m2843d(z);
            return;
        }
        this.f2734s = true;
        if (z) {
            this.f2735t = true;
        }
    }

    /* renamed from: h */
    public void m2885h() {
        if (!this.f2733r) {
            this.f2733r = true;
            this.f2734s = false;
            this.f2735t = false;
        }
    }

    /* renamed from: i */
    public void m2886i() {
        this.f2733r = false;
        if (this.f2734s) {
            this.f2734s = false;
            mo1602a(this.f2735t);
        }
    }

    /* renamed from: a */
    void m2858a(C0546j c0546j) {
        this.f2727l = true;
        mo1602a(true);
    }

    /* renamed from: b */
    void m2868b(C0546j c0546j) {
        this.f2730o = true;
        mo1602a(true);
    }

    @NonNull
    /* renamed from: j */
    public ArrayList<C0546j> m2887j() {
        if (!this.f2727l) {
            return this.f2726k;
        }
        this.f2726k.clear();
        int size = this.f2725j.size();
        for (int i = 0; i < size; i++) {
            C0546j c0546j = this.f2725j.get(i);
            if (c0546j.isVisible()) {
                this.f2726k.add(c0546j);
            }
        }
        this.f2727l = false;
        this.f2730o = true;
        return this.f2726k;
    }

    /* renamed from: k */
    public void m2888k() {
        boolean mo1544a;
        ArrayList<C0546j> m2887j = m2887j();
        if (this.f2730o) {
            Iterator<WeakReference<InterfaceC0551o>> it = this.f2739x.iterator();
            boolean z = false;
            while (it.hasNext()) {
                WeakReference<InterfaceC0551o> next = it.next();
                InterfaceC0551o interfaceC0551o = next.get();
                if (interfaceC0551o == null) {
                    this.f2739x.remove(next);
                    mo1544a = z;
                } else {
                    mo1544a = interfaceC0551o.mo1544a() | z;
                }
                z = mo1544a;
            }
            if (z) {
                this.f2728m.clear();
                this.f2729n.clear();
                int size = m2887j.size();
                for (int i = 0; i < size; i++) {
                    C0546j c0546j = m2887j.get(i);
                    if (c0546j.m2920i()) {
                        this.f2728m.add(c0546j);
                    } else {
                        this.f2729n.add(c0546j);
                    }
                }
            } else {
                this.f2728m.clear();
                this.f2729n.clear();
                this.f2729n.addAll(m2887j());
            }
            this.f2730o = false;
        }
    }

    /* renamed from: l */
    public ArrayList<C0546j> m2889l() {
        m2888k();
        return this.f2728m;
    }

    /* renamed from: m */
    public ArrayList<C0546j> m2890m() {
        m2888k();
        return this.f2729n;
    }

    public void clearHeader() {
        this.f2718b = null;
        this.f2717a = null;
        this.f2719c = null;
        mo1602a(false);
    }

    /* renamed from: a */
    private void m2840a(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources m2881e = m2881e();
        if (view != null) {
            this.f2719c = view;
            this.f2717a = null;
            this.f2718b = null;
        } else {
            if (i > 0) {
                this.f2717a = m2881e.getText(i);
            } else if (charSequence != null) {
                this.f2717a = charSequence;
            }
            if (i2 > 0) {
                this.f2718b = ContextCompat.getDrawable(m2883f(), i2);
            } else if (drawable != null) {
                this.f2718b = drawable;
            }
            this.f2719c = null;
        }
        mo1602a(false);
    }

    /* renamed from: a */
    protected C0544h m2852a(CharSequence charSequence) {
        m2840a(0, charSequence, 0, null, null);
        return this;
    }

    /* renamed from: d */
    protected C0544h m2877d(int i) {
        m2840a(i, null, 0, null, null);
        return this;
    }

    /* renamed from: a */
    protected C0544h m2850a(Drawable drawable) {
        m2840a(0, null, 0, drawable, null);
        return this;
    }

    /* renamed from: e */
    protected C0544h m2882e(int i) {
        m2840a(0, null, i, null, null);
        return this;
    }

    /* renamed from: a */
    protected C0544h m2851a(View view) {
        m2840a(0, null, 0, null, view);
        return this;
    }

    /* renamed from: n */
    public CharSequence m2891n() {
        return this.f2717a;
    }

    /* renamed from: o */
    public Drawable m2892o() {
        return this.f2718b;
    }

    /* renamed from: p */
    public View m2893p() {
        return this.f2719c;
    }

    /* renamed from: q */
    public C0544h mo2894q() {
        return this;
    }

    /* renamed from: r */
    boolean m2895r() {
        return this.f2736u;
    }

    /* renamed from: c */
    public boolean mo2876c(C0546j c0546j) {
        boolean z = false;
        if (!this.f2739x.isEmpty()) {
            m2885h();
            Iterator<WeakReference<InterfaceC0551o>> it = this.f2739x.iterator();
            while (true) {
                boolean z2 = z;
                if (!it.hasNext()) {
                    z = z2;
                    break;
                }
                WeakReference<InterfaceC0551o> next = it.next();
                InterfaceC0551o interfaceC0551o = next.get();
                if (interfaceC0551o == null) {
                    this.f2739x.remove(next);
                    z = z2;
                } else {
                    z = interfaceC0551o.mo1545a(this, c0546j);
                    if (z) {
                        break;
                    }
                }
            }
            m2886i();
            if (z) {
                this.f2740y = c0546j;
            }
        }
        return z;
    }

    /* renamed from: d */
    public boolean mo2880d(C0546j c0546j) {
        boolean z = false;
        if (!this.f2739x.isEmpty() && this.f2740y == c0546j) {
            m2885h();
            Iterator<WeakReference<InterfaceC0551o>> it = this.f2739x.iterator();
            while (true) {
                boolean z2 = z;
                if (!it.hasNext()) {
                    z = z2;
                    break;
                }
                WeakReference<InterfaceC0551o> next = it.next();
                InterfaceC0551o interfaceC0551o = next.get();
                if (interfaceC0551o == null) {
                    this.f2739x.remove(next);
                    z = z2;
                } else {
                    z = interfaceC0551o.mo1549b(this, c0546j);
                    if (z) {
                        break;
                    }
                }
            }
            m2886i();
            if (z) {
                this.f2740y = null;
            }
        }
        return z;
    }

    /* renamed from: s */
    public C0546j m2896s() {
        return this.f2740y;
    }

    /* renamed from: c */
    public void m2874c(boolean z) {
        this.f2716A = z;
    }
}
