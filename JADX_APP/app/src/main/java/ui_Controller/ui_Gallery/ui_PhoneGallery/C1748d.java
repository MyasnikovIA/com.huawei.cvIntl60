package ui_Controller.ui_Gallery.ui_PhoneGallery;

import GeneralFunction.C0079k;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.huawei.cvIntl60.R;
import java.util.ArrayList;

/* renamed from: ui_Controller.ui_Gallery.ui_PhoneGallery.d */
/* loaded from: classes.dex */
public class C1748d extends BaseAdapter {

    /* renamed from: b */
    private Context f8274b;

    /* renamed from: c */
    private ArrayList<String> f8275c;

    /* renamed from: d */
    private ArrayList<Integer> f8276d;

    /* renamed from: e */
    private ArrayList<Integer> f8277e;

    /* renamed from: g */
    private int f8279g;

    /* renamed from: f */
    private int f8278f = R.drawable.setting_button_null;

    /* renamed from: a */
    protected boolean f8273a = false;

    /* renamed from: h */
    private int f8280h = -1;

    public C1748d(Context context, int i) {
        this.f8275c = null;
        this.f8276d = null;
        this.f8277e = null;
        this.f8279g = 0;
        this.f8274b = context;
        this.f8279g = i;
        this.f8275c = new ArrayList<>();
        this.f8276d = new ArrayList<>();
        this.f8277e = new ArrayList<>();
        m7516c();
    }

    /* renamed from: c */
    private void m7516c() {
        switch (this.f8279g) {
            case 0:
                this.f8275c.clear();
                this.f8275c.add(this.f8274b.getString(R.string.move_to_sdcard));
                this.f8275c.add(this.f8274b.getString(R.string.delete));
                this.f8275c.add(this.f8274b.getString(R.string.file_information));
                this.f8276d.clear();
                this.f8276d.add(Integer.valueOf(this.f8278f));
                this.f8276d.add(Integer.valueOf(this.f8278f));
                this.f8276d.add(Integer.valueOf(this.f8278f));
                this.f8277e.clear();
                this.f8277e.add(1);
                this.f8277e.add(2);
                this.f8277e.add(4);
                break;
            case 1:
                this.f8275c.clear();
                this.f8275c.add(this.f8274b.getString(R.string.move_to_phone));
                this.f8275c.add(this.f8274b.getString(R.string.delete));
                this.f8275c.add(this.f8274b.getString(R.string.file_information));
                this.f8276d.clear();
                this.f8276d.add(Integer.valueOf(this.f8278f));
                this.f8276d.add(Integer.valueOf(this.f8278f));
                this.f8276d.add(Integer.valueOf(this.f8278f));
                this.f8277e.clear();
                this.f8277e.add(1);
                this.f8277e.add(2);
                this.f8277e.add(4);
                break;
            case 2:
                this.f8275c.clear();
                this.f8275c.add(this.f8274b.getString(R.string.delete));
                this.f8275c.add(this.f8274b.getString(R.string.file_information));
                this.f8276d.clear();
                this.f8276d.add(Integer.valueOf(this.f8278f));
                this.f8276d.add(Integer.valueOf(this.f8278f));
                this.f8277e.clear();
                this.f8277e.add(2);
                this.f8277e.add(4);
                break;
            case 3:
                this.f8275c.clear();
                this.f8275c.add(this.f8274b.getString(R.string.delete));
                this.f8275c.add(this.f8274b.getString(R.string.file_information));
                this.f8276d.clear();
                this.f8276d.add(Integer.valueOf(this.f8278f));
                this.f8276d.add(Integer.valueOf(this.f8278f));
                this.f8277e.clear();
                this.f8277e.add(2);
                this.f8277e.add(4);
                break;
            case 4:
                this.f8275c.clear();
                this.f8275c.add(this.f8274b.getString(R.string.panorama_hide));
                this.f8276d.clear();
                this.f8276d.add(Integer.valueOf(this.f8278f));
                this.f8277e.clear();
                this.f8277e.add(3);
                break;
        }
    }

    /* renamed from: a */
    protected void m7517a(int i) {
        this.f8279g = i;
        m7516c();
    }

    /* renamed from: a */
    public void m7518a(int i, String str) {
        this.f8275c.set(i, str);
    }

    /* renamed from: b */
    public void m7522b(int i) {
        this.f8280h = i;
    }

    /* renamed from: a */
    public void m7519a(boolean z) {
        this.f8273a = z;
    }

    /* renamed from: a */
    public boolean m7520a() {
        return this.f8273a;
    }

    /* renamed from: b */
    public void m7521b() {
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f8275c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f8275c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return this.f8277e.get(i).intValue();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(this.f8274b).inflate(R.layout.ui_singleview_moresetting_menu, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_Settinglayout);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.IV_ui_singleview_MoreSettingBtn);
        TextView textView = (TextView) inflate.findViewById(R.id.TV_ui_singleview_MoreSettingText);
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        DisplayMetrics displayMetrics = this.f8274b.getResources().getDisplayMetrics();
        layoutParams.height = Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels) / 10;
        textView.setTextSize(C0079k.m784a(this.f8274b, Math.max(r5, r0) / 40));
        textView.setText(this.f8275c.get(i));
        if (this.f8280h != -1) {
            textView.setTextColor(this.f8280h);
        }
        imageView.setVisibility(4);
        inflate.setLayoutParams(layoutParams);
        return inflate;
    }
}
