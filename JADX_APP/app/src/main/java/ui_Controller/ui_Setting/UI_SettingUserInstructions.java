package ui_Controller.ui_Setting;

import GeneralFunction.C0047c;
import GeneralFunction.C0052d;
import GeneralFunction.C0079k;
import GeneralFunction.C0091o;
import GeneralFunction.p001a.ActivityC0044a;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Message;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.huawei.cvIntl60.R;
import java.util.ArrayList;
import p026a.p032c.C0121a;
import ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController;
import ui_Controller.ui_Liveview.UI_LiveViewController;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* loaded from: classes.dex */
public class UI_SettingUserInstructions extends ActivityC0044a {

    /* renamed from: c */
    private ViewPager f8749c;

    /* renamed from: d */
    private ArrayList<View> f8750d;

    /* renamed from: e */
    private ImageView f8751e;

    /* renamed from: f */
    private ImageView[] f8752f;

    /* renamed from: g */
    private ViewGroup f8753g;

    /* renamed from: h */
    private ViewGroup f8754h;

    /* renamed from: b */
    protected UI_ModeMain f8748b = null;

    /* renamed from: i */
    private TextView f8755i = null;

    /* renamed from: j */
    private TextView f8756j = null;

    /* renamed from: k */
    private TextView f8757k = null;

    /* renamed from: l */
    private TextView f8758l = null;

    /* renamed from: m */
    private TextView f8759m = null;

    /* renamed from: n */
    private TextView f8760n = null;

    /* renamed from: o */
    private ImageButton f8761o = null;

    /* renamed from: p */
    private ImageButton f8762p = null;

    /* renamed from: q */
    private OrientationEventListener f8763q = null;

    /* renamed from: r */
    private int f8764r = -1;

    /* renamed from: s */
    private Context f8765s = this;

    /* renamed from: t */
    private int f8766t = 0;

    /* renamed from: u */
    private int f8767u = 0;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.e("UserInstructions", "onCreate");
        this.f8748b = (UI_ModeMain) getApplication();
        this.f8748b.m8016v();
        this.f8748b.m7977a(4128, this);
        requestWindowFeature(1);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f8766t = displayMetrics.widthPixels;
        this.f8767u = displayMetrics.heightPixels;
        m7931e();
        m7926c();
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f8763q.enable();
        C0121a c0121a = new C0121a(12034);
        c0121a.m1200a("mode", 4128);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f8763q.disable();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    /* renamed from: c */
    private void m7926c() {
        int m784a = C0079k.m784a(this, Math.min(this.f8766t, this.f8767u) / 21);
        LayoutInflater layoutInflater = getLayoutInflater();
        this.f8750d = new ArrayList<>();
        View inflate = layoutInflater.inflate(R.layout.setting_instruction_page_1, (ViewGroup) null);
        this.f8755i = (TextView) inflate.findViewById(R.id.TV_user_instruction_detail_page1);
        this.f8755i.setTextSize(new C0047c(m784a).m436f((int) (m784a * 0.9d)).m430a());
        this.f8750d.add(inflate);
        View inflate2 = layoutInflater.inflate(R.layout.setting_instruction_page_2, (ViewGroup) null);
        this.f8756j = (TextView) inflate2.findViewById(R.id.TV_user_instruction_detail_page2);
        this.f8756j.setTextSize(new C0047c(m784a).m444n((int) (m784a * 0.9d)).m430a());
        this.f8750d.add(inflate2);
        View inflate3 = layoutInflater.inflate(R.layout.setting_instruction_page_3, (ViewGroup) null);
        this.f8757k = (TextView) inflate3.findViewById(R.id.TV_user_instruction_detail_page3);
        this.f8757k.setTextSize(m784a);
        this.f8750d.add(inflate3);
        View inflate4 = layoutInflater.inflate(R.layout.setting_instruction_page_4, (ViewGroup) null);
        this.f8758l = (TextView) inflate4.findViewById(R.id.TV_user_instruction_detail_page4);
        this.f8758l.setTextSize(m784a);
        this.f8750d.add(inflate4);
        this.f8752f = new ImageView[this.f8750d.size()];
        this.f8753g = (ViewGroup) layoutInflater.inflate(R.layout.setting_instruction_main, (ViewGroup) null);
        this.f8754h = (ViewGroup) this.f8753g.findViewById(R.id.LL_ui_down);
        this.f8749c = (ViewPager) this.f8753g.findViewById(R.id.pager);
        for (int i = 0; i < this.f8750d.size(); i++) {
            this.f8751e = new ImageView(this);
            this.f8751e.setLayoutParams(new ViewGroup.LayoutParams(40, 20));
            this.f8752f[i] = this.f8751e;
            if (i == 0) {
                this.f8752f[i].setBackgroundResource(R.drawable.instruction_pageindex_green);
            } else {
                this.f8752f[i].setBackgroundResource(R.drawable.instruction_pageindex_gray);
            }
            this.f8754h.addView(this.f8752f[i]);
        }
        setContentView(this.f8753g);
        this.f8749c.setAdapter(new C1852a());
        this.f8749c.addOnPageChangeListener(new C1853b());
        this.f8761o = (ImageButton) findViewById(R.id.IB_ui_user_instructions_leftArrow);
        this.f8761o.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Setting.UI_SettingUserInstructions.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_SettingUserInstructions.this.f8749c.setCurrentItem(UI_SettingUserInstructions.this.f8749c.getCurrentItem() - 1);
            }
        });
        this.f8762p = (ImageButton) findViewById(R.id.IB_ui_user_instructions_rightArrow);
        this.f8762p.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Setting.UI_SettingUserInstructions.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_SettingUserInstructions.this.f8749c.setCurrentItem(UI_SettingUserInstructions.this.f8749c.getCurrentItem() + 1);
            }
        });
        this.f8759m = (TextView) findViewById(R.id.TV_ui_user_instructions_skip_back);
        this.f8759m.setTextSize(new C0047c(m784a).m434d((int) (m784a * 0.9d)).m430a());
        this.f8759m.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Setting.UI_SettingUserInstructions.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UI_SettingUserInstructions.this.f8749c.getCurrentItem() == 0) {
                    UI_SettingUserInstructions.this.m7929d();
                } else {
                    UI_SettingUserInstructions.this.f8749c.setCurrentItem(UI_SettingUserInstructions.this.f8749c.getCurrentItem() - 1);
                }
            }
        });
        this.f8760n = (TextView) findViewById(R.id.TV_ui_user_instructions_next_start);
        this.f8760n.setTextSize(new C0047c(m784a).m437g((int) (m784a * 0.95d)).m430a());
        this.f8760n.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Setting.UI_SettingUserInstructions.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UI_SettingUserInstructions.this.f8749c.getCurrentItem() == UI_SettingUserInstructions.this.f8752f.length - 1) {
                    UI_SettingUserInstructions.this.m7929d();
                } else {
                    UI_SettingUserInstructions.this.f8749c.setCurrentItem(UI_SettingUserInstructions.this.f8749c.getCurrentItem() + 1);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m7929d() {
        if (this.f8748b.f8783d.m1264b()) {
            this.f8748b.m7978a(256, this, new Intent(this, (Class<?>) UI_LiveViewController.class));
        } else {
            this.f8748b.m7978a(1024, this, new Intent(this, (Class<?>) UI_PhoneGalleryController.class));
        }
        this.f8748b.m7977a(0, (ActivityC0044a) null);
    }

    /* renamed from: ui_Controller.ui_Setting.UI_SettingUserInstructions$a */
    class C1852a extends PagerAdapter {
        C1852a() {
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return UI_SettingUserInstructions.this.f8750d.size();
        }

        @Override // android.support.v4.view.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getItemPosition(Object obj) {
            return super.getItemPosition(obj);
        }

        @Override // android.support.v4.view.PagerAdapter
        public void destroyItem(View view, int i, Object obj) {
            ((ViewPager) view).removeView((View) UI_SettingUserInstructions.this.f8750d.get(i));
        }

        @Override // android.support.v4.view.PagerAdapter
        public Object instantiateItem(View view, int i) {
            ((ViewPager) view).addView((View) UI_SettingUserInstructions.this.f8750d.get(i));
            return UI_SettingUserInstructions.this.f8750d.get(i);
        }

        @Override // android.support.v4.view.PagerAdapter
        public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        }

        @Override // android.support.v4.view.PagerAdapter
        public Parcelable saveState() {
            return null;
        }

        @Override // android.support.v4.view.PagerAdapter
        public void startUpdate(View view) {
        }

        @Override // android.support.v4.view.PagerAdapter
        public void finishUpdate(View view) {
        }
    }

    /* renamed from: ui_Controller.ui_Setting.UI_SettingUserInstructions$b */
    class C1853b implements ViewPager.OnPageChangeListener {
        C1853b() {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            for (int i2 = 0; i2 < UI_SettingUserInstructions.this.f8752f.length; i2++) {
                if (i == i2) {
                    UI_SettingUserInstructions.this.f8752f[i].setBackgroundResource(R.drawable.instruction_pageindex_green);
                } else {
                    UI_SettingUserInstructions.this.f8752f[i2].setBackgroundResource(R.drawable.instruction_pageindex_gray);
                }
                if (i == 0) {
                    UI_SettingUserInstructions.this.f8759m.setVisibility(0);
                    UI_SettingUserInstructions.this.f8760n.setVisibility(8);
                    UI_SettingUserInstructions.this.f8761o.setVisibility(8);
                    UI_SettingUserInstructions.this.f8762p.setVisibility(0);
                } else if (i == UI_SettingUserInstructions.this.f8752f.length - 1) {
                    UI_SettingUserInstructions.this.f8759m.setVisibility(8);
                    UI_SettingUserInstructions.this.f8760n.setVisibility(0);
                    UI_SettingUserInstructions.this.f8761o.setVisibility(0);
                    UI_SettingUserInstructions.this.f8762p.setVisibility(8);
                } else {
                    UI_SettingUserInstructions.this.f8759m.setVisibility(8);
                    UI_SettingUserInstructions.this.f8760n.setVisibility(8);
                    UI_SettingUserInstructions.this.f8761o.setVisibility(0);
                    UI_SettingUserInstructions.this.f8762p.setVisibility(0);
                }
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0091o.m888a();
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo410a(C0121a c0121a, long j) {
        if (this.f8748b != null) {
            this.f8748b.m7981a(c0121a, j);
        } else {
            Log.e("UserInstructions", "SendUiMsg error!! MsgEx = " + c0121a.m1208b().what);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo411a(Message message) {
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 12034:
                if (this.f8748b.m8011p() && this.f8748b.f8782c.f7646d) {
                    this.f8748b.m8004i();
                    this.f8748b.f8782c.f7646d = false;
                    break;
                }
                break;
            case 12043:
                this.f8748b.m7978a(c0121a.m1207b("AppMode"), this, new Intent(this, (Class<?>) c0121a.m1210c()));
                this.f8748b.m7977a(0, (ActivityC0044a) null);
                break;
            case 18436:
                if (this.f8748b.m8011p()) {
                    this.f8748b.m8004i();
                    this.f8748b.f8782c.f7646d = true;
                    break;
                }
                break;
            case 18437:
                if (c0121a.m1206a("usb_permission")) {
                    Log.d("UserInstructions", "has permission, need to switch to live view");
                    this.f8748b.f8782c.f7646d = false;
                    this.f8748b.m7978a(256, this, new Intent(this, (Class<?>) UI_LiveViewController.class));
                    this.f8748b.m7977a(0, (ActivityC0044a) null);
                    break;
                }
                break;
        }
    }

    /* renamed from: e */
    private void m7931e() {
        this.f8763q = new OrientationEventListener(this.f8765s) { // from class: ui_Controller.ui_Setting.UI_SettingUserInstructions.5
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                if (i != -1) {
                    if (i > 350 || i < 10) {
                        if (UI_SettingUserInstructions.this.f8764r != 1) {
                            UI_SettingUserInstructions.this.m7936c(1);
                            UI_SettingUserInstructions.this.f8764r = 1;
                            return;
                        }
                        return;
                    }
                    if (i > 170 && i < 190 && UI_SettingUserInstructions.this.f8764r != 9) {
                        UI_SettingUserInstructions.this.m7936c(9);
                        UI_SettingUserInstructions.this.f8764r = 9;
                    }
                }
            }
        };
    }

    /* renamed from: c */
    public void m7936c(int i) {
        C0052d.m464a(this, i);
    }
}
