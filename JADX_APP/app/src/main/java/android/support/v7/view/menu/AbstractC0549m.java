package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* renamed from: android.support.v7.view.menu.m */
/* loaded from: classes.dex */
public abstract class AbstractC0549m implements InterfaceC0551o, InterfaceC0555s, AdapterView.OnItemClickListener {

    /* renamed from: a */
    private Rect f2786a;

    /* renamed from: a */
    public abstract void mo2812a(int i);

    /* renamed from: a */
    public abstract void mo2813a(C0544h c0544h);

    /* renamed from: a */
    public abstract void mo2814a(View view);

    /* renamed from: a */
    public abstract void mo2815a(PopupWindow.OnDismissListener onDismissListener);

    /* renamed from: b */
    public abstract void mo2816b(int i);

    /* renamed from: b */
    public abstract void mo2817b(boolean z);

    /* renamed from: c */
    public abstract void mo2818c(int i);

    /* renamed from: c */
    public abstract void mo2819c(boolean z);

    AbstractC0549m() {
    }

    /* renamed from: a */
    public void m2931a(Rect rect) {
        this.f2786a = rect;
    }

    /* renamed from: i */
    public Rect m2932i() {
        return this.f2786a;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1539a(@NonNull Context context, @Nullable C0544h c0544h) {
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
        return 0;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        m2929a(listAdapter).f2709a.m2865a((MenuItem) listAdapter.getItem(i), this, mo2824h() ? 0 : 4);
    }

    /* renamed from: a */
    protected static int m2928a(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i2 = 0;
        int i3 = 0;
        View view = null;
        int i4 = 0;
        ViewGroup viewGroup2 = viewGroup;
        while (i2 < count) {
            int itemViewType = listAdapter.getItemViewType(i2);
            if (itemViewType != i3) {
                i3 = itemViewType;
                view = null;
            }
            if (viewGroup2 == null) {
                viewGroup2 = new FrameLayout(context);
            }
            view = listAdapter.getView(i2, view, viewGroup2);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth < i) {
                if (measuredWidth <= i4) {
                    measuredWidth = i4;
                }
                i2++;
                i4 = measuredWidth;
            } else {
                return i;
            }
        }
        return i4;
    }

    /* renamed from: a */
    protected static C0543g m2929a(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (C0543g) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (C0543g) listAdapter;
    }

    /* renamed from: b */
    protected static boolean m2930b(C0544h c0544h) {
        int size = c0544h.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = c0544h.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    protected boolean mo2824h() {
        return true;
    }
}
