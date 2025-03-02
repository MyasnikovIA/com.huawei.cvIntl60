package android.support.v7.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.InterfaceC0551o;
import android.support.v7.view.menu.InterfaceC0552p;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.f */
/* loaded from: classes.dex */
public class C0542f implements InterfaceC0551o, AdapterView.OnItemClickListener {

    /* renamed from: a */
    Context f2697a;

    /* renamed from: b */
    LayoutInflater f2698b;

    /* renamed from: c */
    C0544h f2699c;

    /* renamed from: d */
    ExpandedMenuView f2700d;

    /* renamed from: e */
    int f2701e;

    /* renamed from: f */
    int f2702f;

    /* renamed from: g */
    int f2703g;

    /* renamed from: h */
    a f2704h;

    /* renamed from: i */
    private InterfaceC0551o.a f2705i;

    /* renamed from: j */
    private int f2706j;

    public C0542f(Context context, int i) {
        this(i, 0);
        this.f2697a = context;
        this.f2698b = LayoutInflater.from(this.f2697a);
    }

    public C0542f(int i, int i2) {
        this.f2703g = i;
        this.f2702f = i2;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1539a(Context context, C0544h c0544h) {
        if (this.f2702f != 0) {
            this.f2697a = new ContextThemeWrapper(context, this.f2702f);
            this.f2698b = LayoutInflater.from(this.f2697a);
        } else if (this.f2697a != null) {
            this.f2697a = context;
            if (this.f2698b == null) {
                this.f2698b = LayoutInflater.from(this.f2697a);
            }
        }
        this.f2699c = c0544h;
        if (this.f2704h != null) {
            this.f2704h.notifyDataSetChanged();
        }
    }

    /* renamed from: a */
    public InterfaceC0552p m2828a(ViewGroup viewGroup) {
        if (this.f2700d == null) {
            this.f2700d = (ExpandedMenuView) this.f2698b.inflate(R.layout.abc_expanded_menu_layout, viewGroup, false);
            if (this.f2704h == null) {
                this.f2704h = new a();
            }
            this.f2700d.setAdapter((ListAdapter) this.f2704h);
            this.f2700d.setOnItemClickListener(this);
        }
        return this.f2700d;
    }

    /* renamed from: d */
    public ListAdapter m2831d() {
        if (this.f2704h == null) {
            this.f2704h = new a();
        }
        return this.f2704h;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1543a(boolean z) {
        if (this.f2704h != null) {
            this.f2704h.notifyDataSetChanged();
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1542a(InterfaceC0551o.a aVar) {
        this.f2705i = aVar;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1546a(SubMenuC0557u subMenuC0557u) {
        if (!subMenuC0557u.hasVisibleItems()) {
            return false;
        }
        new DialogInterfaceOnClickListenerC0545i(subMenuC0557u).m2898a((IBinder) null);
        if (this.f2705i != null) {
            this.f2705i.mo2567a(subMenuC0557u);
        }
        return true;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1541a(C0544h c0544h, boolean z) {
        if (this.f2705i != null) {
            this.f2705i.mo2566a(c0544h, z);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f2699c.m2865a(this.f2704h.getItem(i), this, 0);
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

    /* renamed from: a */
    public void m2829a(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        if (this.f2700d != null) {
            this.f2700d.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    /* renamed from: b */
    public void m2830b(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f2700d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: b */
    public int mo1547b() {
        return this.f2706j;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: c */
    public Parcelable mo1550c() {
        if (this.f2700d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        m2829a(bundle);
        return bundle;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1540a(Parcelable parcelable) {
        m2830b((Bundle) parcelable);
    }

    /* renamed from: android.support.v7.view.menu.f$a */
    private class a extends BaseAdapter {

        /* renamed from: b */
        private int f2708b = -1;

        public a() {
            m2833a();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = C0542f.this.f2699c.m2890m().size() - C0542f.this.f2701e;
            return this.f2708b < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        /* renamed from: a */
        public C0546j getItem(int i) {
            ArrayList<C0546j> m2890m = C0542f.this.f2699c.m2890m();
            int i2 = C0542f.this.f2701e + i;
            if (this.f2708b >= 0 && i2 >= this.f2708b) {
                i2++;
            }
            return m2890m.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = view == null ? C0542f.this.f2698b.inflate(C0542f.this.f2703g, viewGroup, false) : view;
            ((InterfaceC0552p.a) inflate).mo1556a(getItem(i), 0);
            return inflate;
        }

        /* renamed from: a */
        void m2833a() {
            C0546j m2896s = C0542f.this.f2699c.m2896s();
            if (m2896s != null) {
                ArrayList<C0546j> m2890m = C0542f.this.f2699c.m2890m();
                int size = m2890m.size();
                for (int i = 0; i < size; i++) {
                    if (m2890m.get(i) == m2896s) {
                        this.f2708b = i;
                        return;
                    }
                }
            }
            this.f2708b = -1;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            m2833a();
            super.notifyDataSetChanged();
        }
    }
}
