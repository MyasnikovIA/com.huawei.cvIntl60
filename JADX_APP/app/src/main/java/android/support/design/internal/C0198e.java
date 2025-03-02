package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.design.R;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.menu.C0544h;
import android.support.v7.view.menu.C0546j;
import android.support.v7.view.menu.InterfaceC0551o;
import android.support.v7.view.menu.SubMenuC0557u;
import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.internal.e */
/* loaded from: classes.dex */
public class C0198e implements InterfaceC0551o {

    /* renamed from: a */
    LinearLayout f1267a;

    /* renamed from: b */
    C0544h f1268b;

    /* renamed from: c */
    b f1269c;

    /* renamed from: d */
    LayoutInflater f1270d;

    /* renamed from: e */
    int f1271e;

    /* renamed from: f */
    boolean f1272f;

    /* renamed from: g */
    ColorStateList f1273g;

    /* renamed from: h */
    ColorStateList f1274h;

    /* renamed from: i */
    Drawable f1275i;

    /* renamed from: j */
    int f1276j;

    /* renamed from: k */
    int f1277k;

    /* renamed from: l */
    int f1278l;

    /* renamed from: m */
    final View.OnClickListener f1279m;

    /* renamed from: n */
    private NavigationMenuView f1280n;

    /* renamed from: o */
    private InterfaceC0551o.a f1281o;

    /* renamed from: p */
    private int f1282p;

    /* renamed from: android.support.design.internal.e$d */
    private interface d {
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1539a(Context context, C0544h c0544h) {
        this.f1270d = LayoutInflater.from(context);
        this.f1268b = c0544h;
        this.f1278l = context.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1543a(boolean z) {
        if (this.f1269c != null) {
            this.f1269c.m1596b();
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1542a(InterfaceC0551o.a aVar) {
        this.f1281o = aVar;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1546a(SubMenuC0557u subMenuC0557u) {
        return false;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1541a(C0544h c0544h, boolean z) {
        if (this.f1281o != null) {
            this.f1281o.mo2566a(c0544h, z);
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1544a() {
        return false;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1545a(C0544h c0544h, C0546j c0546j) {
        return false;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: b */
    public boolean mo1549b(C0544h c0544h, C0546j c0546j) {
        return false;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: b */
    public int mo1547b() {
        return this.f1282p;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: c */
    public Parcelable mo1550c() {
        Bundle bundle = new Bundle();
        if (this.f1280n != null) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            this.f1280n.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        if (this.f1269c != null) {
            bundle.putBundle("android:menu:adapter", this.f1269c.m1598d());
        }
        if (this.f1267a != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.f1267a.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        }
        return bundle;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1540a(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f1280n.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                this.f1269c.m1590a(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray2 != null) {
                this.f1267a.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    /* renamed from: a */
    public void m1574a(@NonNull C0546j c0546j) {
        this.f1269c.m1591a(c0546j);
    }

    @Nullable
    /* renamed from: d */
    public C0546j m1578d() {
        return this.f1269c.m1597c();
    }

    /* renamed from: e */
    public int m1579e() {
        return this.f1267a.getChildCount();
    }

    @Nullable
    /* renamed from: f */
    public ColorStateList m1580f() {
        return this.f1274h;
    }

    /* renamed from: a */
    public void m1572a(@Nullable ColorStateList colorStateList) {
        this.f1274h = colorStateList;
        mo1543a(false);
    }

    @Nullable
    /* renamed from: g */
    public ColorStateList m1581g() {
        return this.f1273g;
    }

    /* renamed from: b */
    public void m1576b(@Nullable ColorStateList colorStateList) {
        this.f1273g = colorStateList;
        mo1543a(false);
    }

    /* renamed from: a */
    public void m1571a(@StyleRes int i2) {
        this.f1271e = i2;
        this.f1272f = true;
        mo1543a(false);
    }

    @Nullable
    /* renamed from: h */
    public Drawable m1582h() {
        return this.f1275i;
    }

    /* renamed from: a */
    public void m1573a(@Nullable Drawable drawable) {
        this.f1275i = drawable;
        mo1543a(false);
    }

    /* renamed from: i */
    public int m1583i() {
        return this.f1276j;
    }

    /* renamed from: b */
    public void m1575b(int i2) {
        this.f1276j = i2;
        mo1543a(false);
    }

    /* renamed from: j */
    public int m1584j() {
        return this.f1277k;
    }

    /* renamed from: c */
    public void m1577c(int i2) {
        this.f1277k = i2;
        mo1543a(false);
    }

    /* renamed from: android.support.design.internal.e$j */
    private static abstract class j extends RecyclerView.AbstractC0617w {
        public j(View view) {
            super(view);
        }
    }

    /* renamed from: android.support.design.internal.e$g */
    private static class g extends j {
        public g(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(R.layout.design_navigation_item, viewGroup, false));
            this.f3217a.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: android.support.design.internal.e$i */
    private static class i extends j {
        public i(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    /* renamed from: android.support.design.internal.e$h */
    private static class h extends j {
        public h(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* renamed from: android.support.design.internal.e$a */
    private static class a extends j {
        public a(View view) {
            super(view);
        }
    }

    /* renamed from: android.support.design.internal.e$b */
    private class b extends RecyclerView.AbstractC0595a<j> {

        /* renamed from: a */
        final /* synthetic */ C0198e f1283a;

        /* renamed from: b */
        private final ArrayList<d> f1284b;

        /* renamed from: c */
        private C0546j f1285c;

        /* renamed from: d */
        private boolean f1286d;

        @Override // android.support.v7.widget.RecyclerView.AbstractC0595a
        /* renamed from: a */
        public long mo1588a(int i) {
            return i;
        }

        @Override // android.support.v7.widget.RecyclerView.AbstractC0595a
        /* renamed from: a */
        public int mo1587a() {
            return this.f1284b.size();
        }

        @Override // android.support.v7.widget.RecyclerView.AbstractC0595a
        /* renamed from: b */
        public int mo1594b(int i) {
            d dVar = this.f1284b.get(i);
            if (dVar instanceof e) {
                return 2;
            }
            if (dVar instanceof c) {
                return 3;
            }
            if (dVar instanceof f) {
                if (((f) dVar).m1601a().hasSubMenu()) {
                    return 1;
                }
                return 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @Override // android.support.v7.widget.RecyclerView.AbstractC0595a
        /* renamed from: a */
        public j mo1595b(ViewGroup viewGroup, int i) {
            switch (i) {
                case 0:
                    return new g(this.f1283a.f1270d, viewGroup, this.f1283a.f1279m);
                case 1:
                    return new i(this.f1283a.f1270d, viewGroup);
                case 2:
                    return new h(this.f1283a.f1270d, viewGroup);
                case 3:
                    return new a(this.f1283a.f1267a);
                default:
                    return null;
            }
        }

        @Override // android.support.v7.widget.RecyclerView.AbstractC0595a
        /* renamed from: a */
        public void mo1593a(j jVar, int i) {
            switch (mo1594b(i)) {
                case 0:
                    NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) jVar.f3217a;
                    navigationMenuItemView.setIconTintList(this.f1283a.f1274h);
                    if (this.f1283a.f1272f) {
                        navigationMenuItemView.setTextAppearance(this.f1283a.f1271e);
                    }
                    if (this.f1283a.f1273g != null) {
                        navigationMenuItemView.setTextColor(this.f1283a.f1273g);
                    }
                    ViewCompat.setBackground(navigationMenuItemView, this.f1283a.f1275i != null ? this.f1283a.f1275i.getConstantState().newDrawable() : null);
                    f fVar = (f) this.f1284b.get(i);
                    navigationMenuItemView.setNeedsEmptyIcon(fVar.f1289a);
                    navigationMenuItemView.setHorizontalPadding(this.f1283a.f1276j);
                    navigationMenuItemView.setIconPadding(this.f1283a.f1277k);
                    navigationMenuItemView.mo1556a(fVar.m1601a(), 0);
                    break;
                case 1:
                    ((TextView) jVar.f3217a).setText(((f) this.f1284b.get(i)).m1601a().getTitle());
                    break;
                case 2:
                    e eVar = (e) this.f1284b.get(i);
                    jVar.f3217a.setPadding(0, eVar.m1599a(), 0, eVar.m1600b());
                    break;
            }
        }

        @Override // android.support.v7.widget.RecyclerView.AbstractC0595a
        /* renamed from: a */
        public void mo1592a(j jVar) {
            if (jVar instanceof g) {
                ((NavigationMenuItemView) jVar.f3217a).m1558b();
            }
        }

        /* renamed from: b */
        public void m1596b() {
            m1586g();
            m3345f();
        }

        /* renamed from: g */
        private void m1586g() {
            boolean z;
            int i;
            int i2;
            if (!this.f1286d) {
                this.f1286d = true;
                this.f1284b.clear();
                this.f1284b.add(new c());
                int i3 = -1;
                int i4 = 0;
                boolean z2 = false;
                int size = this.f1283a.f1268b.m2887j().size();
                int i5 = 0;
                while (i5 < size) {
                    C0546j c0546j = this.f1283a.f1268b.m2887j().get(i5);
                    if (c0546j.isChecked()) {
                        m1591a(c0546j);
                    }
                    if (c0546j.isCheckable()) {
                        c0546j.m2906a(false);
                    }
                    if (c0546j.hasSubMenu()) {
                        SubMenu subMenu = c0546j.getSubMenu();
                        if (subMenu.hasVisibleItems()) {
                            if (i5 != 0) {
                                this.f1284b.add(new e(this.f1283a.f1278l, 0));
                            }
                            this.f1284b.add(new f(c0546j));
                            boolean z3 = false;
                            int size2 = this.f1284b.size();
                            int size3 = subMenu.size();
                            for (int i6 = 0; i6 < size3; i6++) {
                                C0546j c0546j2 = (C0546j) subMenu.getItem(i6);
                                if (c0546j2.isVisible()) {
                                    if (!z3 && c0546j2.getIcon() != null) {
                                        z3 = true;
                                    }
                                    if (c0546j2.isCheckable()) {
                                        c0546j2.m2906a(false);
                                    }
                                    if (c0546j.isChecked()) {
                                        m1591a(c0546j);
                                    }
                                    this.f1284b.add(new f(c0546j2));
                                }
                            }
                            if (z3) {
                                m1585a(size2, this.f1284b.size());
                            }
                        }
                        i2 = i3;
                    } else {
                        int groupId = c0546j.getGroupId();
                        if (groupId != i3) {
                            i = this.f1284b.size();
                            z = c0546j.getIcon() != null;
                            if (i5 != 0) {
                                i++;
                                this.f1284b.add(new e(this.f1283a.f1278l, this.f1283a.f1278l));
                            }
                        } else if (z2 || c0546j.getIcon() == null) {
                            z = z2;
                            i = i4;
                        } else {
                            z = true;
                            m1585a(i4, this.f1284b.size());
                            i = i4;
                        }
                        f fVar = new f(c0546j);
                        fVar.f1289a = z;
                        this.f1284b.add(fVar);
                        z2 = z;
                        i4 = i;
                        i2 = groupId;
                    }
                    i5++;
                    i3 = i2;
                }
                this.f1286d = false;
            }
        }

        /* renamed from: a */
        private void m1585a(int i, int i2) {
            while (i < i2) {
                ((f) this.f1284b.get(i)).f1289a = true;
                i++;
            }
        }

        /* renamed from: a */
        public void m1591a(C0546j c0546j) {
            if (this.f1285c != c0546j && c0546j.isCheckable()) {
                if (this.f1285c != null) {
                    this.f1285c.setChecked(false);
                }
                this.f1285c = c0546j;
                c0546j.setChecked(true);
            }
        }

        /* renamed from: c */
        public C0546j m1597c() {
            return this.f1285c;
        }

        /* renamed from: d */
        public Bundle m1598d() {
            Bundle bundle = new Bundle();
            if (this.f1285c != null) {
                bundle.putInt("android:menu:checked", this.f1285c.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f1284b.size();
            for (int i = 0; i < size; i++) {
                d dVar = this.f1284b.get(i);
                if (dVar instanceof f) {
                    C0546j m1601a = ((f) dVar).m1601a();
                    View actionView = m1601a != null ? m1601a.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(m1601a.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }

        /* renamed from: a */
        public void m1590a(Bundle bundle) {
            C0546j m1601a;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            C0546j m1601a2;
            int i = bundle.getInt("android:menu:checked", 0);
            if (i != 0) {
                this.f1286d = true;
                int size = this.f1284b.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    d dVar = this.f1284b.get(i2);
                    if (!(dVar instanceof f) || (m1601a2 = ((f) dVar).m1601a()) == null || m1601a2.getItemId() != i) {
                        i2++;
                    } else {
                        m1591a(m1601a2);
                        break;
                    }
                }
                this.f1286d = false;
                m1586g();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:action_views");
            if (sparseParcelableArray != null) {
                int size2 = this.f1284b.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    d dVar2 = this.f1284b.get(i3);
                    if ((dVar2 instanceof f) && (m1601a = ((f) dVar2).m1601a()) != null && (actionView = m1601a.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(m1601a.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }
    }

    /* renamed from: android.support.design.internal.e$f */
    private static class f implements d {

        /* renamed from: a */
        boolean f1289a;

        /* renamed from: b */
        private final C0546j f1290b;

        f(C0546j c0546j) {
            this.f1290b = c0546j;
        }

        /* renamed from: a */
        public C0546j m1601a() {
            return this.f1290b;
        }
    }

    /* renamed from: android.support.design.internal.e$e */
    private static class e implements d {

        /* renamed from: a */
        private final int f1287a;

        /* renamed from: b */
        private final int f1288b;

        public e(int i, int i2) {
            this.f1287a = i;
            this.f1288b = i2;
        }

        /* renamed from: a */
        public int m1599a() {
            return this.f1287a;
        }

        /* renamed from: b */
        public int m1600b() {
            return this.f1288b;
        }
    }

    /* renamed from: android.support.design.internal.e$c */
    private static class c implements d {
        c() {
        }
    }
}
