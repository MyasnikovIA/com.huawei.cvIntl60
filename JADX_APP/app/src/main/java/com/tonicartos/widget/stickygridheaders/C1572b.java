package com.tonicartos.widget.stickygridheaders;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import com.google.android.exoplayer.C1167C;

/* renamed from: com.tonicartos.widget.stickygridheaders.b */
/* loaded from: classes.dex */
public class C1572b extends BaseAdapter {

    /* renamed from: a */
    private final Context f7116a;

    /* renamed from: b */
    private int f7117b;

    /* renamed from: e */
    private final InterfaceC1571a f7120e;

    /* renamed from: f */
    private StickyGridHeadersGridView f7121f;

    /* renamed from: g */
    private View f7122g;

    /* renamed from: h */
    private View f7123h;

    /* renamed from: c */
    private boolean f7118c = false;

    /* renamed from: d */
    private DataSetObserver f7119d = new DataSetObserver() { // from class: com.tonicartos.widget.stickygridheaders.b.1
        AnonymousClass1() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            C1572b.this.m6720a();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            C1572b.this.f7118c = false;
        }
    };

    /* renamed from: i */
    private int f7124i = 1;

    /* renamed from: com.tonicartos.widget.stickygridheaders.b$1 */
    class AnonymousClass1 extends DataSetObserver {
        AnonymousClass1() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            C1572b.this.m6720a();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            C1572b.this.f7118c = false;
        }
    }

    public C1572b(Context context, StickyGridHeadersGridView stickyGridHeadersGridView, InterfaceC1571a interfaceC1571a) {
        this.f7116a = context;
        this.f7120e = interfaceC1571a;
        this.f7121f = stickyGridHeadersGridView;
        interfaceC1571a.registerDataSetObserver(this.f7119d);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.f7118c) {
            return this.f7117b;
        }
        this.f7117b = 0;
        int mo6711a = this.f7120e.mo6711a();
        if (mo6711a == 0) {
            this.f7117b = this.f7120e.getCount();
            this.f7118c = true;
            return this.f7117b;
        }
        for (int i = 0; i < mo6711a; i++) {
            this.f7117b += this.f7120e.mo6712a(i) + m6718d(i) + this.f7124i;
        }
        this.f7118c = true;
        return this.f7117b;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        c m6723c = m6723c(i);
        if (m6723c.f7131b == -1 || m6723c.f7131b == -2) {
            return null;
        }
        return this.f7120e.getItem(m6723c.f7131b);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        c m6723c = m6723c(i);
        if (m6723c.f7131b == -2) {
            return -1L;
        }
        if (m6723c.f7131b == -1) {
            return -2L;
        }
        if (m6723c.f7131b == -3) {
            return -3L;
        }
        return this.f7120e.getItemId(m6723c.f7131b);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        c m6723c = m6723c(i);
        if (m6723c.f7131b == -2) {
            return 1;
        }
        if (m6723c.f7131b == -1) {
            return 0;
        }
        if (m6723c.f7131b == -3) {
            return 2;
        }
        int itemViewType = this.f7120e.getItemViewType(m6723c.f7131b);
        return itemViewType != -1 ? itemViewType + 3 : itemViewType;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        c m6723c = m6723c(i);
        if (m6723c.f7131b == -2) {
            b m6717b = m6717b(m6723c.f7130a, view, viewGroup);
            View mo6713a = this.f7120e.mo6713a(m6723c.f7130a, (View) m6717b.getTag(), viewGroup);
            this.f7121f.m6703b((View) m6717b.getTag());
            m6717b.setTag(mo6713a);
            this.f7121f.m6701a(mo6713a);
            this.f7122g = m6717b;
            m6717b.forceLayout();
            return m6717b;
        }
        if (m6723c.f7131b == -3) {
            a m6715a = m6715a(view, viewGroup, this.f7122g);
            m6715a.forceLayout();
            return m6715a;
        }
        if (m6723c.f7131b == -1) {
            return m6715a(view, viewGroup, this.f7123h);
        }
        View view2 = this.f7120e.getView(m6723c.f7131b, view, viewGroup);
        this.f7123h = view2;
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f7120e.getViewTypeCount() + 3;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.f7120e.hasStableIds();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return this.f7120e.isEmpty();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        c m6723c = m6723c(i);
        if (m6723c.f7131b == -1 || m6723c.f7131b == -2) {
            return false;
        }
        return this.f7120e.isEnabled(m6723c.f7131b);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        super.registerDataSetObserver(dataSetObserver);
        this.f7120e.registerDataSetObserver(dataSetObserver);
    }

    /* renamed from: a */
    public void m6721a(int i) {
        this.f7124i = i;
        this.f7118c = false;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        super.unregisterDataSetObserver(dataSetObserver);
        this.f7120e.unregisterDataSetObserver(dataSetObserver);
    }

    /* renamed from: a */
    private a m6715a(View view, ViewGroup viewGroup, View view2) {
        a aVar = (a) view;
        if (aVar == null) {
            aVar = new a(this.f7116a);
        }
        aVar.setMeasureTarget(view2);
        return aVar;
    }

    /* renamed from: b */
    private b m6717b(int i, View view, ViewGroup viewGroup) {
        b bVar = (b) view;
        if (bVar == null) {
            return new b(this.f7116a);
        }
        return bVar;
    }

    /* renamed from: d */
    private int m6718d(int i) {
        int mo6712a;
        if (this.f7124i == 0 || (mo6712a = this.f7120e.mo6712a(i) % this.f7124i) == 0) {
            return 0;
        }
        return this.f7124i - mo6712a;
    }

    /* renamed from: b */
    protected long m6722b(int i) {
        return m6723c(i).f7130a;
    }

    /* renamed from: a */
    protected View m6719a(int i, View view, ViewGroup viewGroup) {
        if (this.f7120e.mo6711a() == 0) {
            return null;
        }
        return this.f7120e.mo6713a(m6723c(i).f7130a, view, viewGroup);
    }

    /* renamed from: c */
    protected c m6723c(int i) {
        int i2 = 0;
        int mo6711a = this.f7120e.mo6711a();
        if (mo6711a == 0) {
            if (i >= this.f7120e.getCount()) {
                return new c(-1, 0);
            }
            return new c(i, 0);
        }
        int i3 = i;
        int i4 = i;
        while (i2 < mo6711a) {
            int mo6712a = this.f7120e.mo6712a(i2);
            if (i3 == 0) {
                return new c(-2, i2);
            }
            int i5 = i3 - this.f7124i;
            if (i5 < 0) {
                return new c(-3, i2);
            }
            int i6 = i4 - this.f7124i;
            if (i5 < mo6712a) {
                return new c(i6, i2);
            }
            int m6718d = m6718d(i2);
            i4 = i6 - m6718d;
            int i7 = i5 - (mo6712a + m6718d);
            if (i7 >= 0) {
                i2++;
                i3 = i7;
            } else {
                return new c(-1, i2);
            }
        }
        return new c(-1, i2);
    }

    /* renamed from: a */
    protected void m6720a() {
        this.f7117b = 0;
        int mo6711a = this.f7120e.mo6711a();
        if (mo6711a == 0) {
            this.f7117b = this.f7120e.getCount();
            this.f7118c = true;
        } else {
            for (int i = 0; i < mo6711a; i++) {
                this.f7117b += this.f7120e.mo6712a(i) + this.f7124i;
            }
            this.f7118c = true;
        }
    }

    /* renamed from: com.tonicartos.widget.stickygridheaders.b$a */
    protected class a extends View {

        /* renamed from: b */
        private View f7127b;

        public a(Context context) {
            super(context);
        }

        public void setMeasureTarget(View view) {
            this.f7127b = view;
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.f7127b.getMeasuredHeight(), C1167C.ENCODING_PCM_32BIT));
        }
    }

    /* renamed from: com.tonicartos.widget.stickygridheaders.b$b */
    protected class b extends FrameLayout {

        /* renamed from: b */
        private int f7129b;

        public b(Context context) {
            super(context);
        }

        public int getHeaderId() {
            return this.f7129b;
        }

        public void setHeaderId(int i) {
            this.f7129b = i;
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup
        public FrameLayout.LayoutParams generateDefaultLayoutParams() {
            return new FrameLayout.LayoutParams(-1, -1);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            View view = (View) getTag();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            if (view.getVisibility() != 8) {
                view.measure(getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(C1572b.this.f7121f.getWidth(), C1167C.ENCODING_PCM_32BIT), 0, layoutParams.width), getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), 0, layoutParams.height));
            }
            setMeasuredDimension(View.MeasureSpec.getSize(i), view.getMeasuredHeight());
        }
    }

    /* renamed from: com.tonicartos.widget.stickygridheaders.b$c */
    protected class c {

        /* renamed from: a */
        protected int f7130a;

        /* renamed from: b */
        protected int f7131b;

        protected c(int i, int i2) {
            this.f7131b = i;
            this.f7130a = i2;
        }
    }
}
