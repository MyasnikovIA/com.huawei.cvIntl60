package com.tonicartos.widget.stickygridheaders;

import android.database.DataSetObserver;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: com.tonicartos.widget.stickygridheaders.e */
/* loaded from: classes.dex */
public class C1575e extends BaseAdapter implements InterfaceC1571a {

    /* renamed from: a */
    private InterfaceC1574d f7136a;

    /* renamed from: b */
    private b[] f7137b;

    public C1575e(InterfaceC1574d interfaceC1574d) {
        this.f7136a = interfaceC1574d;
        interfaceC1574d.registerDataSetObserver(new a());
        this.f7137b = m6728a(interfaceC1574d);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7136a.getCount();
    }

    @Override // com.tonicartos.widget.stickygridheaders.InterfaceC1571a
    /* renamed from: a */
    public int mo6712a(int i) {
        return this.f7137b[i].m6729a();
    }

    @Override // com.tonicartos.widget.stickygridheaders.InterfaceC1571a
    /* renamed from: a */
    public View mo6713a(int i, View view, ViewGroup viewGroup) {
        return this.f7136a.mo6725a(this.f7137b[i].m6730b(), view, viewGroup);
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7136a.getItem(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return this.f7136a.getItemId(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return this.f7136a.getItemViewType(i);
    }

    @Override // com.tonicartos.widget.stickygridheaders.InterfaceC1571a
    /* renamed from: a */
    public int mo6711a() {
        return this.f7137b.length;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return this.f7136a.getView(i, view, viewGroup);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f7136a.getViewTypeCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.f7136a.hasStableIds();
    }

    /* renamed from: a */
    protected b[] m6728a(InterfaceC1574d interfaceC1574d) {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < interfaceC1574d.getCount()) {
                long mo6724a = interfaceC1574d.mo6724a(i2);
                b bVar = (b) hashMap.get(Long.valueOf(mo6724a));
                if (bVar == null) {
                    bVar = new b(i2);
                    arrayList.add(bVar);
                }
                bVar.m6731c();
                hashMap.put(Long.valueOf(mo6724a), bVar);
                i = i2 + 1;
            } else {
                return (b[]) arrayList.toArray(new b[arrayList.size()]);
            }
        }
    }

    /* renamed from: com.tonicartos.widget.stickygridheaders.e$a */
    private final class a extends DataSetObserver {
        private a() {
        }

        /* synthetic */ a(C1575e c1575e, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            Log.e(getClass().getSimpleName(), "onChange");
            C1575e.this.f7137b = C1575e.this.m6728a(C1575e.this.f7136a);
            C1575e.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            C1575e.this.f7137b = C1575e.this.m6728a(C1575e.this.f7136a);
            C1575e.this.notifyDataSetInvalidated();
        }
    }

    /* renamed from: com.tonicartos.widget.stickygridheaders.e$b */
    private class b {

        /* renamed from: b */
        private int f7140b = 0;

        /* renamed from: c */
        private int f7141c;

        public b(int i) {
            this.f7141c = i;
        }

        /* renamed from: a */
        public int m6729a() {
            return this.f7140b;
        }

        /* renamed from: b */
        public int m6730b() {
            return this.f7141c;
        }

        /* renamed from: c */
        public void m6731c() {
            this.f7140b++;
        }
    }
}
