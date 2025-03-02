package com.tonicartos.widget.stickygridheaders;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;

/* renamed from: com.tonicartos.widget.stickygridheaders.c */
/* loaded from: classes.dex */
public class C1573c extends BaseAdapter implements InterfaceC1571a {

    /* renamed from: a */
    private DataSetObserver f7133a = new DataSetObserver() { // from class: com.tonicartos.widget.stickygridheaders.c.1
        AnonymousClass1() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            C1573c.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            C1573c.this.notifyDataSetInvalidated();
        }
    };

    /* renamed from: b */
    private ListAdapter f7134b;

    /* renamed from: com.tonicartos.widget.stickygridheaders.c$1 */
    class AnonymousClass1 extends DataSetObserver {
        AnonymousClass1() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            C1573c.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            C1573c.this.notifyDataSetInvalidated();
        }
    }

    public C1573c(ListAdapter listAdapter) {
        this.f7134b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f7133a);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.f7134b == null) {
            return 0;
        }
        return this.f7134b.getCount();
    }

    @Override // com.tonicartos.widget.stickygridheaders.InterfaceC1571a
    /* renamed from: a */
    public int mo6712a(int i) {
        return 0;
    }

    @Override // com.tonicartos.widget.stickygridheaders.InterfaceC1571a
    /* renamed from: a */
    public View mo6713a(int i, View view, ViewGroup viewGroup) {
        return null;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (this.f7134b == null) {
            return null;
        }
        return this.f7134b.getItem(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return this.f7134b.getItemId(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return this.f7134b.getItemViewType(i);
    }

    @Override // com.tonicartos.widget.stickygridheaders.InterfaceC1571a
    /* renamed from: a */
    public int mo6711a() {
        return 0;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return this.f7134b.getView(i, view, viewGroup);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f7134b.getViewTypeCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.f7134b.hasStableIds();
    }
}
