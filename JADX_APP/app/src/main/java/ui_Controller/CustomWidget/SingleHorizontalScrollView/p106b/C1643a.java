package ui_Controller.CustomWidget.SingleHorizontalScrollView.p106b;

import GeneralFunction.p005e.C0060d;
import android.content.Context;
import android.support.v4.view.ViewCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.huawei.cvIntl60.R;
import java.util.ArrayList;
import ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1639a;
import ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c;

/* renamed from: ui_Controller.CustomWidget.SingleHorizontalScrollView.b.a */
/* loaded from: classes.dex */
public class C1643a extends C1639a {

    /* renamed from: a */
    public ArrayList<C1645c> f7300a = new ArrayList<>();

    /* renamed from: b */
    private Context f7301b;

    /* renamed from: c */
    private LayoutInflater f7302c;

    /* renamed from: d */
    private int f7303d;

    /* renamed from: e */
    private int f7304e;

    /* renamed from: f */
    private ImageView f7305f;

    /* renamed from: g */
    private boolean f7306g;

    public C1643a(Context context, C0060d c0060d, int i, int i2, boolean z) {
        this.f7303d = 0;
        this.f7304e = 0;
        this.f7301b = context;
        this.f7302c = LayoutInflater.from(context);
        this.f7303d = i;
        this.f7304e = i2;
        this.f7306g = z;
        for (int i3 = 0; i3 < c0060d.m518e(); i3++) {
            C1645c c1645c = new C1645c();
            c1645c.m6979a(c0060d, c0060d.m539r(i3));
            this.f7300a.add(c1645c);
        }
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1639a
    /* renamed from: a */
    public void mo6954a(int i) {
        this.f7300a.remove(i);
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1639a
    /* renamed from: b */
    public C1641c mo6955b(int i) {
        return this.f7300a.get(i);
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1639a, android.widget.Adapter
    public int getCount() {
        return this.f7300a.size();
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1639a, android.widget.Adapter
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public C1645c getItem(int i) {
        return this.f7300a.get(i);
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1639a, android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1639a, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            C1644b c1644b = new C1644b();
            view = this.f7302c.inflate(R.layout.style_singleview_item, viewGroup, false);
            c1644b.f7307a = (ImageView) view.findViewById(R.id.IV_SingleViewImage);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(c1644b.f7307a.getLayoutParams());
            layoutParams.width = this.f7303d + 0;
            layoutParams.height = this.f7304e + 0;
            c1644b.f7307a.setLayoutParams(layoutParams);
            c1644b.f7307a.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            c1644b.f7307a.setImageBitmap(null);
            c1644b.f7307a.setScaleType(ImageView.ScaleType.CENTER_CROP);
            c1644b.f7309c = (ImageView) view.findViewById(R.id.IV_GIFViewImage);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(c1644b.f7309c.getLayoutParams());
            layoutParams2.width = this.f7303d + 0;
            layoutParams2.height = this.f7304e + 0;
            c1644b.f7309c.setLayoutParams(layoutParams2);
            c1644b.f7309c.setBackgroundColor(0);
            c1644b.f7309c.setImageBitmap(null);
            c1644b.f7309c.setScaleType(ImageView.ScaleType.CENTER_CROP);
            c1644b.f7308b = (ImageView) view.findViewById(R.id.IV_SingleViewTypeIcon);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(c1644b.f7308b.getLayoutParams());
            layoutParams3.width = (this.f7303d + 0) / 9;
            layoutParams3.height = layoutParams3.width;
            layoutParams3.addRule(13, -1);
            c1644b.f7308b.setLayoutParams(layoutParams3);
            c1644b.f7308b.setImageBitmap(null);
            c1644b.f7308b.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.f7305f = (ImageView) view.findViewById(R.id.IV_SingleViewVideoIcon);
            this.f7305f.setImageResource(R.drawable.gallery_singleview_filetype_video);
            this.f7305f.setVisibility(4);
            this.f7300a.get(i).mo6974l();
            c1644b.f7308b.setImageBitmap(null);
            switch (this.f7300a.get(i).mo6974l()) {
                case 0:
                case 4:
                case 6:
                    c1644b.f7308b.setImageResource(0);
                    this.f7305f.setVisibility(4);
                    break;
                case 1:
                case 5:
                    c1644b.f7308b.setImageResource(R.drawable.gallery_singleview_play_video);
                    if (this.f7306g) {
                        this.f7305f.setVisibility(0);
                        break;
                    } else {
                        this.f7305f.setVisibility(4);
                        break;
                    }
                case 2:
                    c1644b.f7308b.setImageResource(R.drawable.gallery_singleview_play_timelapse);
                    this.f7305f.setVisibility(4);
                    break;
                case 3:
                    c1644b.f7308b.setImageResource(R.drawable.gallery_singleview_play_burst);
                    this.f7305f.setVisibility(4);
                    break;
            }
            view.setTag(c1644b);
        }
        return view;
    }
}
