package ui_Controller.CustomWidget.ListHorizontalScrollView.p104b;

import android.support.v4.view.ViewCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.huawei.cvIntl60.R;
import java.util.ArrayList;
import ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1622a;
import ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1624c;

/* renamed from: ui_Controller.CustomWidget.ListHorizontalScrollView.b.a */
/* loaded from: classes.dex */
public class C1625a extends C1622a {

    /* renamed from: a */
    public ArrayList<C1627c> f7234a;

    /* renamed from: b */
    private LayoutInflater f7235b;

    /* renamed from: c */
    private int f7236c;

    /* renamed from: d */
    private int f7237d;

    @Override // ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1622a
    /* renamed from: a */
    public C1624c mo6840a(int i) {
        return this.f7234a.get(i);
    }

    @Override // ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1622a, android.widget.Adapter
    public int getCount() {
        return this.f7234a.size();
    }

    @Override // ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1622a, android.widget.Adapter
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1627c getItem(int i) {
        return this.f7234a.get(i);
    }

    @Override // ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1622a, android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1622a, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            C1626b c1626b = new C1626b();
            View inflate = this.f7235b.inflate(R.layout.style_listview_item, viewGroup, false);
            c1626b.f7238a = (ImageView) inflate.findViewById(R.id.IV_listViewImage);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(c1626b.f7238a.getLayoutParams());
            layoutParams.width = this.f7236c - 2;
            layoutParams.height = this.f7237d - 2;
            c1626b.f7238a.setLayoutParams(layoutParams);
            c1626b.f7238a.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            c1626b.f7238a.setImageBitmap(null);
            c1626b.f7238a.setScaleType(ImageView.ScaleType.CENTER_CROP);
            c1626b.f7239b = (ImageView) inflate.findViewById(R.id.IV_FocusIcon);
            inflate.setTag(c1626b);
            return inflate;
        }
        return view;
    }
}
