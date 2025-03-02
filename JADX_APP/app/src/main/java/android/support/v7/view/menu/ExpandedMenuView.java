package android.support.v7.view.menu;

import android.R;
import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.C0544h;
import android.support.v7.widget.C0687bk;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements C0544h.b, InterfaceC0552p, AdapterView.OnItemClickListener {

    /* renamed from: a */
    private static final int[] f2603a = {R.attr.background, R.attr.divider};

    /* renamed from: b */
    private C0544h f2604b;

    /* renamed from: c */
    private int f2605c;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        C0687bk m4167a = C0687bk.m4167a(context, attributeSet, f2603a, i, 0);
        if (m4167a.m4186g(0)) {
            setBackgroundDrawable(m4167a.m4171a(0));
        }
        if (m4167a.m4186g(1)) {
            setDivider(m4167a.m4171a(1));
        }
        m4167a.m4172a();
    }

    @Override // android.support.v7.view.menu.InterfaceC0552p
    /* renamed from: a */
    public void mo1559a(C0544h c0544h) {
        this.f2604b = c0544h;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.support.v7.view.menu.C0544h.b
    /* renamed from: a */
    public boolean mo2780a(C0546j c0546j) {
        return this.f2604b.m2864a(c0546j, 0);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        mo2780a((C0546j) getAdapter().getItem(i));
    }

    public int getWindowAnimations() {
        return this.f2605c;
    }
}
