package ui_Controller.CustomWidget.p107a.p108a;

import GeneralFunction.C0079k;
import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.huawei.cvIntl60.R;
import java.util.List;

/* renamed from: ui_Controller.CustomWidget.a.a.d */
/* loaded from: classes.dex */
public class C1653d extends BaseAdapter {

    /* renamed from: a */
    private Context f7423a;

    /* renamed from: b */
    private LayoutInflater f7424b;

    /* renamed from: c */
    private List<String> f7425c;

    /* renamed from: d */
    private int f7426d;

    /* renamed from: e */
    private int[] f7427e;

    /* renamed from: f */
    private int f7428f;

    /* renamed from: g */
    private int f7429g;

    /* renamed from: a */
    private void m7073a(String str, int i) {
        if (i < this.f7429g) {
            Log.e(getClass().getSimpleName(), str);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7425c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        a aVar;
        m7073a("MainMenuAdapter getView " + this.f7427e[i], 4);
        if (view == null) {
            a aVar2 = new a();
            view = this.f7424b.inflate(R.layout.style_main_menu, (ViewGroup) null);
            aVar2.f7430a = (TextView) view.findViewById(R.id.main_menu_optionText);
            aVar2.f7431b = (ImageView) view.findViewById(R.id.IV_gallery_selectIcon);
            view.setTag(aVar2);
            aVar = aVar2;
        } else {
            aVar = (a) view.getTag();
        }
        float f = this.f7423a.getResources().getDisplayMetrics().scaledDensity;
        aVar.f7430a.setTextSize(C0079k.m784a(this.f7423a, (this.f7426d * 2) / 5));
        aVar.f7430a.getLayoutParams().height = this.f7426d;
        aVar.f7430a.setPadding(this.f7426d / 5, 0, 0, 0);
        if (this.f7428f == 2) {
            aVar.f7431b.setImageResource(android.R.color.transparent);
            if (this.f7427e[i] == 2) {
                aVar.f7430a.setTextColor(-7829368);
            } else if (this.f7427e[i] == 0) {
                aVar.f7430a.setTextColor(-7829368);
            } else {
                aVar.f7430a.setTextColor(-1);
            }
        } else {
            aVar.f7431b.setVisibility(0);
            if (this.f7427e[i] == 2) {
                aVar.f7430a.setTextColor(-7829368);
                aVar.f7431b.setImageResource(R.drawable.gallery_list_radiooff);
            } else if (this.f7427e[i] == 0) {
                aVar.f7430a.setTextColor(-1);
                aVar.f7431b.setImageResource(R.drawable.gallery_list_radioon);
            } else {
                aVar.f7430a.setTextColor(-1);
                aVar.f7431b.setImageResource(R.drawable.gallery_list_radiooff);
            }
        }
        aVar.f7430a.setText(this.f7425c.get(i));
        return view;
    }

    /* renamed from: ui_Controller.CustomWidget.a.a.d$a */
    class a {

        /* renamed from: a */
        public TextView f7430a;

        /* renamed from: b */
        public ImageView f7431b;

        a() {
        }
    }
}
