package ui_Controller.CustomWidget.CustomRecyclerView;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.huawei.cvIntl60.R;

/* loaded from: classes.dex */
public class CustomRecyclerView extends RecyclerView {

    /* renamed from: M */
    public C1611a f7188M;

    /* renamed from: N */
    private Bitmap f7189N;

    /* renamed from: O */
    private Context f7190O;

    public CustomRecyclerView(Context context) {
        this(context, null);
    }

    public CustomRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CustomRecyclerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setOverScrollMode(2);
        this.f7190O = context;
        this.f7188M = new C1611a();
    }

    public void setBitmap(Bitmap bitmap) {
        this.f7189N = bitmap;
    }

    /* renamed from: y */
    public void m6784y() {
        if (this.f7189N != null) {
            this.f7189N.recycle();
            this.f7189N = null;
        }
    }

    @Override // android.support.v7.widget.RecyclerView
    public C1611a getAdapter() {
        return this.f7188M;
    }

    @Override // android.support.v7.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ui_Controller.CustomWidget.CustomRecyclerView.CustomRecyclerView$a */
    public class C1611a extends RecyclerView.AbstractC0595a<C1612b> {
        C1611a() {
        }

        @Override // android.support.v7.widget.RecyclerView.AbstractC0595a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C1612b mo1595b(ViewGroup viewGroup, int i) {
            return CustomRecyclerView.this.new C1612b(LayoutInflater.from(CustomRecyclerView.this.f7190O).inflate(R.layout.recycler_item, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.AbstractC0595a
        /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public void mo1593a(C1612b c1612b, int i) {
            if (i <= 1 || i >= mo1587a() - 2) {
                CustomRecyclerView.this.m3231a(1073741823);
            }
            c1612b.f7192q.setImageBitmap(CustomRecyclerView.this.f7189N);
        }

        @Override // android.support.v7.widget.RecyclerView.AbstractC0595a
        /* renamed from: a */
        public int mo1587a() {
            return Integer.MAX_VALUE;
        }
    }

    /* renamed from: ui_Controller.CustomWidget.CustomRecyclerView.CustomRecyclerView$b */
    class C1612b extends RecyclerView.AbstractC0617w {

        /* renamed from: q */
        ImageView f7192q;

        public C1612b(View view) {
            super(view);
            this.f7192q = (ImageView) view.findViewById(R.id.item_img);
        }
    }
}
