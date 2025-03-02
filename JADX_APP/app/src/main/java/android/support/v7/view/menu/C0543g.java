package android.support.v7.view.menu;

import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.InterfaceC0552p;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.g */
/* loaded from: classes.dex */
public class C0543g extends BaseAdapter {

    /* renamed from: a */
    C0544h f2709a;

    /* renamed from: b */
    private int f2710b = -1;

    /* renamed from: c */
    private boolean f2711c;

    /* renamed from: d */
    private final boolean f2712d;

    /* renamed from: e */
    private final LayoutInflater f2713e;

    /* renamed from: f */
    private final int f2714f;

    public C0543g(C0544h c0544h, LayoutInflater layoutInflater, boolean z, int i) {
        this.f2712d = z;
        this.f2713e = layoutInflater;
        this.f2709a = c0544h;
        this.f2714f = i;
        m2837b();
    }

    /* renamed from: a */
    public void m2836a(boolean z) {
        this.f2711c = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<C0546j> m2890m = this.f2712d ? this.f2709a.m2890m() : this.f2709a.m2887j();
        if (this.f2710b < 0) {
            return m2890m.size();
        }
        return m2890m.size() - 1;
    }

    /* renamed from: a */
    public C0544h m2834a() {
        return this.f2709a;
    }

    @Override // android.widget.Adapter
    /* renamed from: a */
    public C0546j getItem(int i) {
        ArrayList<C0546j> m2890m = this.f2712d ? this.f2709a.m2890m() : this.f2709a.m2887j();
        if (this.f2710b >= 0 && i >= this.f2710b) {
            i++;
        }
        return m2890m.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View inflate = view == null ? this.f2713e.inflate(this.f2714f, viewGroup, false) : view;
        int groupId = getItem(i).getGroupId();
        ((ListMenuItemView) inflate).setGroupDividerEnabled(this.f2709a.mo2871b() && groupId != (i + (-1) >= 0 ? getItem(i + (-1)).getGroupId() : groupId));
        InterfaceC0552p.a aVar = (InterfaceC0552p.a) inflate;
        if (this.f2711c) {
            ((ListMenuItemView) inflate).setForceShowIcon(true);
        }
        aVar.mo1556a(getItem(i), 0);
        return inflate;
    }

    /* renamed from: b */
    void m2837b() {
        C0546j m2896s = this.f2709a.m2896s();
        if (m2896s != null) {
            ArrayList<C0546j> m2890m = this.f2709a.m2890m();
            int size = m2890m.size();
            for (int i = 0; i < size; i++) {
                if (m2890m.get(i) == m2896s) {
                    this.f2710b = i;
                    return;
                }
            }
        }
        this.f2710b = -1;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m2837b();
        super.notifyDataSetChanged();
    }
}
