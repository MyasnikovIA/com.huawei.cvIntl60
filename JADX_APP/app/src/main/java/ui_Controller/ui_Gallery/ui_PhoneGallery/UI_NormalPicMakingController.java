package ui_Controller.ui_Gallery.ui_PhoneGallery;

import GeneralFunction.C0045b;
import GeneralFunction.C0047c;
import GeneralFunction.C0052d;
import GeneralFunction.C0079k;
import GeneralFunction.C0091o;
import GeneralFunction.p001a.ActivityC0044a;
import GeneralFunction.p008g.C0069a;
import ThirdParty.OpenCV.OpenCVFunc;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Message;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Space;
import android.widget.TextView;
import com.huawei.cvIntl60.R;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import p026a.p032c.C0121a;
import ui_Controller.CustomWidget.CustomRecyclerView.CustomRecyclerView;
import ui_Controller.p109a.C1658c;
import ui_Controller.p110b.C1660b;
import ui_Controller.p110b.C1663e;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* loaded from: classes.dex */
public class UI_NormalPicMakingController extends ActivityC0044a {

    /* renamed from: aj */
    private Space f7948aj;

    /* renamed from: r */
    private OpenCVFunc f7973r;

    /* renamed from: j */
    private int f7965j = 0;

    /* renamed from: k */
    private int f7966k = 0;

    /* renamed from: l */
    private int f7967l = -1;

    /* renamed from: m */
    private int f7968m = -1;

    /* renamed from: n */
    private OrientationEventListener f7969n = null;

    /* renamed from: o */
    private C1746b f7970o = null;

    /* renamed from: b */
    protected UI_ModeMain f7957b = null;

    /* renamed from: c */
    protected C1660b f7958c = null;

    /* renamed from: d */
    protected C1663e f7959d = null;

    /* renamed from: e */
    protected int f7960e = 0;

    /* renamed from: f */
    protected boolean f7961f = false;

    /* renamed from: p */
    private Bitmap f7971p = null;

    /* renamed from: q */
    private int f7972q = 0;

    /* renamed from: g */
    protected boolean f7962g = false;

    /* renamed from: h */
    protected boolean f7963h = false;

    /* renamed from: s */
    private ImageButton f7974s = null;

    /* renamed from: t */
    private ImageButton f7975t = null;

    /* renamed from: u */
    private ImageButton f7976u = null;

    /* renamed from: v */
    private ImageButton f7977v = null;

    /* renamed from: w */
    private TextView f7978w = null;

    /* renamed from: x */
    private TextView f7979x = null;

    /* renamed from: y */
    private LinearLayout f7980y = null;

    /* renamed from: z */
    private LinearLayout f7981z = null;

    /* renamed from: A */
    private LinearLayout f7913A = null;

    /* renamed from: B */
    private ImageView f7914B = null;

    /* renamed from: C */
    private ImageView f7915C = null;

    /* renamed from: D */
    private ImageView f7916D = null;

    /* renamed from: E */
    private ImageView f7917E = null;

    /* renamed from: F */
    private ImageView f7918F = null;

    /* renamed from: G */
    private ImageButton f7919G = null;

    /* renamed from: H */
    private ImageButton f7920H = null;

    /* renamed from: I */
    private ImageButton f7921I = null;

    /* renamed from: J */
    private ImageButton f7922J = null;

    /* renamed from: K */
    private ImageButton f7923K = null;

    /* renamed from: L */
    private LinearLayout f7924L = null;

    /* renamed from: M */
    private ImageView f7925M = null;

    /* renamed from: N */
    private CustomRecyclerView f7926N = null;

    /* renamed from: O */
    private LinearLayoutManager f7927O = null;

    /* renamed from: P */
    private LinearLayout f7928P = null;

    /* renamed from: Q */
    private LinearLayout f7929Q = null;

    /* renamed from: R */
    private LinearLayout f7930R = null;

    /* renamed from: S */
    private LinearLayout f7931S = null;

    /* renamed from: T */
    private LinearLayout f7932T = null;

    /* renamed from: U */
    private TextView f7933U = null;

    /* renamed from: V */
    private TextView f7934V = null;

    /* renamed from: W */
    private LinearLayout f7935W = null;

    /* renamed from: X */
    private LinearLayout f7936X = null;

    /* renamed from: Y */
    private ImageView f7937Y = null;

    /* renamed from: Z */
    private LinearLayout f7938Z = null;

    /* renamed from: aa */
    private Button f7939aa = null;

    /* renamed from: ab */
    private float f7940ab = 0.0f;

    /* renamed from: ac */
    private int f7941ac = 0;

    /* renamed from: ad */
    private float f7942ad = 0.0f;

    /* renamed from: ae */
    private FrameLayout f7943ae = null;

    /* renamed from: af */
    private LinearLayout f7944af = null;

    /* renamed from: ag */
    private ImageButton f7945ag = null;

    /* renamed from: ah */
    private ImageButton f7946ah = null;

    /* renamed from: ai */
    private ImageView f7947ai = null;

    /* renamed from: i */
    protected boolean f7964i = false;

    /* renamed from: ak */
    private LinearLayout f7949ak = null;

    /* renamed from: al */
    private LinearLayout f7950al = null;

    /* renamed from: am */
    private ImageButton f7951am = null;

    /* renamed from: an */
    private ListView f7952an = null;

    /* renamed from: ao */
    private TextView f7953ao = null;

    /* renamed from: ap */
    private C1748d f7954ap = null;

    /* renamed from: aq */
    private View.OnTouchListener f7955aq = new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_NormalPicMakingController.6
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int i;
            int i2 = R.drawable.gallery_button_save_press;
            switch (view.getId()) {
                case R.id.IB_ui_normalconvert_StampSelection1 /* 2131755426 */:
                    i = R.drawable.gallery_button_save_normal;
                    break;
                case R.id.IV_ui_normalconvert_StampSelection2 /* 2131755427 */:
                case R.id.IV_ui_normalconvert_StampSelection3 /* 2131755429 */:
                case R.id.IV_ui_normalconvert_StampSelection4 /* 2131755431 */:
                case R.id.IB_ui_normalconvert_StampSelection4 /* 2131755432 */:
                case R.id.TV_ui_normalconvert /* 2131755434 */:
                case R.id.TV_ui_normalconvert_StampListIcon /* 2131755436 */:
                default:
                    i = -1;
                    i2 = -1;
                    break;
                case R.id.IB_ui_normalconvert_StampSelection2 /* 2131755428 */:
                    i = R.drawable.gallery_button_save_normal;
                    break;
                case R.id.IB_ui_normalconvert_StampSelection3 /* 2131755430 */:
                    i = R.drawable.gallery_button_save_normal;
                    break;
                case R.id.IB_ui_normalconvert_ArrowIcon /* 2131755433 */:
                    i = R.drawable.gallery_button_arrowback_normal;
                    i2 = R.drawable.gallery_button_arrowback_press;
                    break;
                case R.id.IB_ui_normalconvert_StampListIcon /* 2131755435 */:
                    i = R.drawable.gallery_button_arrowdown_normal;
                    i2 = R.drawable.gallery_button_arrowdown_press;
                    break;
                case R.id.IB_ui_normalconvert_SaveIcon /* 2131755437 */:
                    i = R.drawable.gallery_button_save_normal;
                    break;
            }
            if (motionEvent.getAction() == 0) {
                ((ImageButton) view).setImageResource(i2);
            }
            if (motionEvent.getAction() == 2 && (motionEvent.getX() < 0.0f || motionEvent.getX() > view.getWidth() || motionEvent.getY() < 0.0f || motionEvent.getY() > view.getHeight())) {
                ((ImageButton) view).setImageResource(i);
            }
            if (motionEvent.getAction() == 1) {
                ((ImageButton) view).setImageResource(i);
                return false;
            }
            return false;
        }
    };

    /* renamed from: ar */
    private View.OnClickListener f7956ar = new View.OnClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_NormalPicMakingController.7
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UI_NormalPicMakingController.this.m7178a("onclick: " + view.getId(), 3);
            switch (view.getId()) {
                case R.id.LL_ui_BlackScreenLayout /* 2131755409 */:
                    UI_NormalPicMakingController.this.m7212i();
                    break;
                case R.id.IB_ui_normalconvert_StampSelection0 /* 2131755424 */:
                    UI_NormalPicMakingController.this.mo408a(11050, 0L);
                    break;
                case R.id.IB_ui_normalconvert_StampSelection1 /* 2131755426 */:
                    UI_NormalPicMakingController.this.mo408a(11043, 0L);
                    break;
                case R.id.IB_ui_normalconvert_StampSelection2 /* 2131755428 */:
                    UI_NormalPicMakingController.this.mo408a(11044, 0L);
                    break;
                case R.id.IB_ui_normalconvert_StampSelection3 /* 2131755430 */:
                    UI_NormalPicMakingController.this.mo408a(11045, 0L);
                    break;
                case R.id.IB_ui_normalconvert_StampSelection4 /* 2131755432 */:
                    UI_NormalPicMakingController.this.mo408a(11051, 0L);
                    break;
                case R.id.IB_ui_normalconvert_ArrowIcon /* 2131755433 */:
                    if (UI_NormalPicMakingController.this.f7957b.m7984a(1L)) {
                        UI_NormalPicMakingController.this.mo408a(32768, 0L);
                        break;
                    }
                    break;
                case R.id.IB_ui_normalconvert_StampListIcon /* 2131755435 */:
                    if (UI_NormalPicMakingController.this.f7957b.m7984a(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE)) {
                        UI_NormalPicMakingController.this.mo408a(11041, 0L);
                        break;
                    }
                    break;
                case R.id.IB_ui_normalconvert_SaveIcon /* 2131755437 */:
                    UI_NormalPicMakingController.this.f7957b.m7977a(3872, UI_NormalPicMakingController.this);
                    UI_NormalPicMakingController.this.m7212i();
                    UI_NormalPicMakingController.this.m7205c(true);
                    UI_NormalPicMakingController.this.m412b(20483);
                    break;
                case R.id.IB_ui_normalconvert_MoreIcon /* 2131755439 */:
                    UI_NormalPicMakingController.this.f7949ak.setVisibility(0);
                    UI_NormalPicMakingController.this.f7950al.setVisibility(0);
                    break;
                case R.id.IB_ui_normalconvert_MoreSettingReturn /* 2131755443 */:
                    UI_NormalPicMakingController.this.f7949ak.setVisibility(4);
                    UI_NormalPicMakingController.this.f7950al.setVisibility(4);
                    break;
                case R.id.IB_ui_Result_ArrowIcon /* 2131755448 */:
                    UI_NormalPicMakingController.this.m7200a(false);
                    break;
                case R.id.IB_ui_Result_SaveIcon /* 2131755450 */:
                    if (UI_NormalPicMakingController.this.f7957b.m7984a(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE)) {
                        UI_NormalPicMakingController.this.f7957b.m7988b(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
                        UI_NormalPicMakingController.this.mo408a(11042, 0L);
                        break;
                    }
                    break;
                case R.id.B_ui_normalconvert_MemoryFullConfirm /* 2131755457 */:
                    UI_NormalPicMakingController.this.mo408a(11048, 0L);
                    break;
                default:
                    UI_NormalPicMakingController.this.m7178a("error press", 3);
                    break;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7178a(String str, int i) {
        C0052d.m465a("UI_NormalPicMaking", str, i);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo408a(int i, long j) {
        if (this.f7957b != null) {
            this.f7957b.m7981a(new C0121a(i), j);
        } else {
            m7178a("SendUiMsg error!! Msg=" + i, 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo410a(C0121a c0121a, long j) {
        if (this.f7957b != null) {
            this.f7957b.m7981a(c0121a, j);
        } else {
            m7178a("SendUiMsg error!! MsgEx=" + c0121a.m1208b().what, 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo413b(int i, long j) {
        if (this.f7957b != null) {
            this.f7957b.m7987b(i, j);
        } else {
            m7178a("UI_SendAidMsg error!!", 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public boolean mo417b() {
        return this.f7967l == 2;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f7957b.m7984a(1L)) {
            mo408a(32768, 0L);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo416b(Message message) {
        m7178a("AidServer_Handler:0x" + Integer.toHexString(message.what), 3);
        switch (message.what) {
            case 20480:
                C0121a c0121a = new C0121a(message);
                String m1211d = c0121a.m1211d("path");
                long m1209c = c0121a.m1209c("time");
                if (this.f7963h) {
                    File file = new File(m1211d);
                    if (file.exists()) {
                        file.delete();
                    }
                    m407a(11052);
                    break;
                } else {
                    String m645b = C0069a.m645b(m1211d, "jpg");
                    File file2 = new File(m1211d);
                    File file3 = new File(m645b);
                    file2.renameTo(file3);
                    int m561c = this.f7958c.f7481e.m561c();
                    this.f7958c.f7481e.m558a(m645b.substring(m645b.lastIndexOf("/") + 1, m645b.length()), m645b.substring(0, m645b.lastIndexOf("/") + 1), file3.length(), 0, 1, C0045b.m418a(m645b), C0045b.m420b(m645b), 0L, m1209c, m1209c, m561c + 1, 0, true, true, true, true, false, false, false, false, true);
                    this.f7957b.m8018x();
                    this.f7958c.f7478b.f7526a.m507a(this.f7958c.f7481e.m550a(), this.f7958c.f7482f);
                    C0069a.m641a(this, m645b);
                    this.f7926N.m6784y();
                    m407a(11047);
                    this.f7959d.f7500A = true;
                    this.f7959d.f7501B = m645b;
                    break;
                }
            case 20483:
                this.f7971p = m7198a(this.f7959d.f7540b.m536o(this.f7959d.f7557s));
                this.f7971p = m7180b(this.f7971p);
                m407a(11042);
                break;
            case 20484:
                Long valueOf = Long.valueOf(System.currentTimeMillis());
                String m644b = C0069a.m644b(C1658c.f7456d + C0069a.m639a(valueOf, "tmp"));
                m7201b(m644b);
                C0121a c0121a2 = new C0121a(20480);
                c0121a2.m1203a("path", m644b);
                c0121a2.m1201a("time", valueOf.longValue());
                this.f7957b.m7989b(c0121a2);
                break;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m7178a("onCreate", 3);
        this.f7957b = (UI_ModeMain) getApplication();
        this.f7957b.m8016v();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f7965j = displayMetrics.widthPixels;
        this.f7966k = displayMetrics.heightPixels;
        if (this.f7966k > this.f7965j) {
            this.f7967l = 1;
            setContentView(R.layout.ui_convertnormalpic_port);
        } else {
            this.f7967l = 2;
            setContentView(R.layout.ui_convertnormalpic_port);
        }
        this.f7970o = new C1746b(this);
        this.f7958c = this.f7957b.f8782c.f7653k;
        this.f7959d = this.f7957b.f8782c.f7653k.f7478b;
        this.f7957b.m7977a(3856, this);
        m7197v();
        this.f7973r = new OpenCVFunc();
        m7194s();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = 4;
        m7199a(m7182c(BitmapFactory.decodeFile(this.f7959d.f7540b.m536o(this.f7959d.f7557s), options)));
        mo408a(12033, 100L);
    }

    /* renamed from: n */
    private void m7189n() {
        this.f7942ad = this.f7940ab / this.f7965j;
    }

    /* renamed from: c */
    protected void m7203c() {
        this.f7941ac = this.f7965j;
        this.f7940ab = this.f7941ac * this.f7942ad;
        this.f7926N.scrollBy((int) this.f7940ab, 0);
    }

    /* renamed from: d */
    protected void m7206d() {
        this.f7959d.f7562x = true;
        if (this.f7959d.f7542d == 2) {
            this.f7962g = true;
            mo408a(8452, 100L);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m7178a("onConfigurationChanged", 3);
        this.f7957b.m8016v();
        m7189n();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f7965j = displayMetrics.widthPixels;
        this.f7966k = displayMetrics.heightPixels;
        this.f7967l = configuration.orientation;
        C0121a c0121a = new C0121a(12038);
        c0121a.m1200a("mode", 3840);
        mo410a(c0121a, 200L);
        C0091o.m888a();
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f7969n.enable();
        C0121a c0121a = new C0121a(12034);
        c0121a.m1200a("mode", 3840);
        mo410a(c0121a, 0L);
        m7189n();
        if (!m7209f()) {
            m7178a("Original File Not Exist!", 1);
            m407a(8452);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f7969n.disable();
        if (this.f7957b.m7974a() == 3872) {
            this.f7963h = true;
        }
        C0121a c0121a = new C0121a(12035);
        c0121a.m1200a("mode", 3840);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onStop() {
        super.onStop();
        C0121a c0121a = new C0121a(12036);
        c0121a.m1200a("mode", 3840);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        C0121a c0121a = new C0121a(12037);
        c0121a.m1200a("mode", 3840);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo411a(Message message) {
        this.f7970o.m7506a(message);
    }

    /* renamed from: e */
    protected void m7208e() {
        m7192q();
        m7193r();
        m7195t();
        m7196u();
        m7191p();
        m7190o();
    }

    /* renamed from: o */
    private void m7190o() {
        this.f7949ak = (LinearLayout) findViewById(R.id.LL_ui_normalconvert_MoreSettingTouchArea);
        this.f7950al = (LinearLayout) findViewById(R.id.LL_ui_normalconvert_MoreSettingTopLayout);
        this.f7951am = (ImageButton) findViewById(R.id.IB_ui_normalconvert_MoreSettingReturn);
        this.f7952an = (ListView) findViewById(R.id.LV_ui_normalconvert_MoreSettingListView);
        this.f7953ao = (TextView) findViewById(R.id.TV_ui_normalconvert_MoreSetting);
        this.f7953ao.setText((CharSequence) null);
        this.f7954ap = new C1748d(this, 4);
        this.f7954ap.m7522b(getResources().getColor(R.color.black));
        this.f7952an.setAdapter((ListAdapter) this.f7954ap);
        this.f7950al.setVisibility(4);
        this.f7949ak.setVisibility(4);
        this.f7951am.setOnClickListener(this.f7956ar);
        this.f7949ak.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_NormalPicMakingController.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                UI_NormalPicMakingController.this.m7178a("AAA", 0);
                UI_NormalPicMakingController.this.f7949ak.setVisibility(4);
                UI_NormalPicMakingController.this.f7950al.setVisibility(4);
                return true;
            }
        });
        this.f7952an.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_NormalPicMakingController.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                switch ((int) j) {
                    case 3:
                        UI_NormalPicMakingController.this.m7178a("objMoreSettingAdapter.getItem(0) " + UI_NormalPicMakingController.this.f7954ap.getItem(0), 3);
                        if (UI_NormalPicMakingController.this.f7954ap.getItem(0).equals(UI_NormalPicMakingController.this.getResources().getString(R.string.panorama_hide))) {
                            UI_NormalPicMakingController.this.f7954ap.m7518a(0, UI_NormalPicMakingController.this.getResources().getString(R.string.panorama_show));
                            UI_NormalPicMakingController.this.f7933U.setVisibility(4);
                            UI_NormalPicMakingController.this.f7934V.setVisibility(4);
                        } else {
                            UI_NormalPicMakingController.this.f7954ap.m7518a(0, UI_NormalPicMakingController.this.getResources().getString(R.string.panorama_hide));
                            UI_NormalPicMakingController.this.f7933U.setVisibility(0);
                            UI_NormalPicMakingController.this.f7934V.setVisibility(0);
                        }
                        UI_NormalPicMakingController.this.f7954ap.m7521b();
                        break;
                }
            }
        });
    }

    /* renamed from: p */
    private void m7191p() {
        this.f7943ae = (FrameLayout) findViewById(R.id.FL_ui_Result_Layout);
        this.f7944af = (LinearLayout) findViewById(R.id.LL_ui_Result_TopLayout);
        this.f7945ag = (ImageButton) findViewById(R.id.IB_ui_Result_ArrowIcon);
        this.f7946ah = (ImageButton) findViewById(R.id.IB_ui_Result_SaveIcon);
        this.f7947ai = (ImageView) findViewById(R.id.IV_ui_Result_Panorama);
        this.f7946ah.setImageResource(R.drawable.gallery_top_save_black);
        this.f7945ag.setImageResource(R.drawable.gallery_top_back_black);
        this.f7945ag.setVisibility(4);
        this.f7945ag.setOnClickListener(this.f7956ar);
        this.f7946ah.setOnClickListener(this.f7956ar);
        this.f7943ae.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_NormalPicMakingController.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f7943ae.setVisibility(4);
    }

    /* renamed from: a */
    protected void m7200a(boolean z) {
        this.f7964i = z;
        if (z) {
            if (this.f7971p != null) {
                this.f7947ai.setImageBitmap(this.f7971p);
            }
            this.f7943ae.setVisibility(0);
        } else {
            this.f7943ae.setVisibility(4);
            m7216m();
        }
    }

    /* renamed from: f */
    protected boolean m7209f() {
        return new File(this.f7959d.f7540b.m536o(this.f7959d.f7557s)).exists();
    }

    /* renamed from: g */
    protected void m7210g() {
        if (this.f7947ai != null) {
            this.f7947ai.setImageBitmap(null);
        }
    }

    /* renamed from: h */
    protected void m7211h() {
        if (this.f7913A.getVisibility() != 0) {
            this.f7913A.setVisibility(0);
            this.f7975t.setImageResource(R.drawable.gallery_top_logo_green);
            this.f7978w.setTextColor(getResources().getColor(R.color.iconcolor));
            this.f7928P.setOnClickListener(this.f7956ar);
            return;
        }
        this.f7913A.setVisibility(4);
        this.f7975t.setImageResource(R.drawable.gallery_top_logo_black);
        this.f7978w.setTextColor(getResources().getColor(R.color.white));
        this.f7928P.setOnClickListener(null);
        this.f7928P.setClickable(false);
    }

    /* renamed from: i */
    protected void m7212i() {
        this.f7913A.setVisibility(4);
        this.f7975t.setImageResource(R.drawable.gallery_top_logo_black);
        this.f7978w.setTextColor(getResources().getColor(R.color.white));
        this.f7928P.setOnClickListener(null);
        this.f7928P.setClickable(false);
    }

    /* renamed from: c */
    protected void m7204c(int i) {
        this.f7919G.setImageResource(0);
        this.f7920H.setImageResource(0);
        this.f7921I.setImageResource(0);
        this.f7922J.setImageResource(0);
        this.f7923K.setImageResource(0);
        switch (i) {
            case 0:
                this.f7925M.setImageResource(0);
                this.f7919G.setImageResource(R.drawable.gallery_logolist_cursor);
                this.f7972q = 0;
                break;
            case 1:
                this.f7925M.setImageResource(R.drawable.gallery_logolist_logo_1_500x70);
                this.f7920H.setImageResource(R.drawable.gallery_logolist_cursor);
                this.f7972q = 1;
                break;
            case 2:
                this.f7925M.setImageResource(R.drawable.gallery_logolist_logo_2_500x70);
                this.f7921I.setImageResource(R.drawable.gallery_logolist_cursor);
                this.f7972q = 2;
                break;
            case 3:
                this.f7925M.setImageResource(R.drawable.gallery_logolist_logo_3_500x70);
                this.f7922J.setImageResource(R.drawable.gallery_logolist_cursor);
                this.f7972q = 3;
                break;
            case 4:
                this.f7925M.setImageResource(R.drawable.gallery_logolist_logo_4_500x70);
                this.f7923K.setImageResource(R.drawable.gallery_logolist_cursor);
                this.f7972q = 4;
                break;
        }
    }

    /* renamed from: q */
    private void m7192q() {
        this.f7975t = (ImageButton) findViewById(R.id.IB_ui_normalconvert_StampListIcon);
        this.f7976u = (ImageButton) findViewById(R.id.IB_ui_normalconvert_SaveIcon);
        this.f7977v = (ImageButton) findViewById(R.id.IB_ui_normalconvert_MoreIcon);
        this.f7974s = (ImageButton) findViewById(R.id.IB_ui_normalconvert_ArrowIcon);
        this.f7975t.setImageResource(R.drawable.gallery_top_logo_black);
        this.f7976u.setImageResource(R.drawable.gallery_top_save_black);
        this.f7977v.setImageResource(R.drawable.gallery_top_more_black);
        this.f7974s.setImageResource(R.drawable.gallery_top_back_black);
        this.f7974s.setVisibility(4);
        this.f7974s.setOnClickListener(this.f7956ar);
        this.f7975t.setOnClickListener(this.f7956ar);
        this.f7976u.setOnClickListener(this.f7956ar);
        this.f7977v.setOnClickListener(this.f7956ar);
        this.f7978w = (TextView) findViewById(R.id.TV_ui_normalconvert_StampListIcon);
        this.f7979x = (TextView) findViewById(R.id.TV_ui_normalconvert_SaveIcon);
        int m784a = C0079k.m784a(this, Math.min(this.f7965j, this.f7966k) / 40);
        this.f7978w.setText(getResources().getString(R.string.edit_logo));
        this.f7979x.setText(getResources().getString(R.string.edit_save));
        C0047c m436f = new C0047c(m784a).m434d((int) (m784a * 0.9d)).m445o((int) (m784a * 0.9d)).m436f((int) (m784a * 0.9d));
        this.f7978w.setTextSize(m436f.m430a());
        this.f7979x.setTextSize(m436f.m430a());
    }

    /* renamed from: r */
    private void m7193r() {
        this.f7924L = (LinearLayout) findViewById(R.id.LL_ui_normalconvert_StampIcon);
        this.f7924L.setVisibility(4);
        this.f7925M = (ImageView) findViewById(R.id.IV_ui_normalconvert_StampIcon);
        this.f7925M.setVisibility(4);
        this.f7948aj = (Space) findViewById(R.id.SP_normalconvert_StampSpace);
        int min = Math.min(this.f7965j, this.f7966k);
        Math.max(this.f7965j, this.f7966k);
        if (this.f7928P != null) {
            min = this.f7928P.getWidth();
            this.f7928P.getHeight();
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f7925M.getLayoutParams());
        layoutParams.height = (((min * 3) / 10) * 120) / 1612;
        layoutParams.leftMargin = (min * 120) / 5376;
        this.f7925M.setLayoutParams(layoutParams);
        this.f7913A = (LinearLayout) findViewById(R.id.LL_ui_normalconvert_StampSelection);
        this.f7913A.setBackgroundResource(R.drawable.gallery_logolist);
        this.f7913A.setVisibility(4);
        this.f7914B = (ImageView) findViewById(R.id.IV_ui_normalconvert_StampSelection0);
        this.f7915C = (ImageView) findViewById(R.id.IV_ui_normalconvert_StampSelection1);
        this.f7916D = (ImageView) findViewById(R.id.IV_ui_normalconvert_StampSelection2);
        this.f7917E = (ImageView) findViewById(R.id.IV_ui_normalconvert_StampSelection3);
        this.f7918F = (ImageView) findViewById(R.id.IV_ui_normalconvert_StampSelection4);
        this.f7914B.setImageResource(R.drawable.gallery_logolist_logo_0);
        this.f7915C.setImageResource(R.drawable.gallery_logolist_logo_1);
        this.f7916D.setImageResource(R.drawable.gallery_logolist_logo_2);
        this.f7917E.setImageResource(R.drawable.gallery_logolist_logo_3);
        this.f7918F.setImageResource(R.drawable.gallery_logolist_logo_4);
        this.f7919G = (ImageButton) findViewById(R.id.IB_ui_normalconvert_StampSelection0);
        this.f7920H = (ImageButton) findViewById(R.id.IB_ui_normalconvert_StampSelection1);
        this.f7921I = (ImageButton) findViewById(R.id.IB_ui_normalconvert_StampSelection2);
        this.f7922J = (ImageButton) findViewById(R.id.IB_ui_normalconvert_StampSelection3);
        this.f7923K = (ImageButton) findViewById(R.id.IB_ui_normalconvert_StampSelection4);
        this.f7919G.setOnClickListener(this.f7956ar);
        this.f7920H.setOnClickListener(this.f7956ar);
        this.f7921I.setOnClickListener(this.f7956ar);
        this.f7922J.setOnClickListener(this.f7956ar);
        this.f7923K.setOnClickListener(this.f7956ar);
        this.f7980y = (LinearLayout) findViewById(R.id.LL_ui_normalconvert_TopLayoutBlankArea);
        this.f7981z = (LinearLayout) findViewById(R.id.LL_ui_normalconvert_TopLayout);
        m7204c(0);
    }

    /* renamed from: s */
    private void m7194s() {
        this.f7928P = (LinearLayout) findViewById(R.id.LL_ui_BlackScreenLayout);
        this.f7929Q = (LinearLayout) findViewById(R.id.LL_ui_BlackScreen_TopLayout);
        this.f7930R = (LinearLayout) findViewById(R.id.LL_ui_BlackScreen_BotLayout);
        this.f7931S = (LinearLayout) findViewById(R.id.LL_ui_TransparentScreen);
        this.f7932T = (LinearLayout) findViewById(R.id.LL_ui_Old_StampIcon);
        this.f7933U = (TextView) findViewById(R.id.TV_ui_HintTextTop);
        this.f7934V = (TextView) findViewById(R.id.TV_ui_HintTextBottom);
        this.f7935W = (LinearLayout) findViewById(R.id.LL_ui_DottedLine);
        this.f7933U.setText(R.string.panorama_hint_top);
        this.f7934V.setText(R.string.panorama_hint);
        this.f7926N = (CustomRecyclerView) findViewById(R.id.CRV_ui_normalconvert_Panorama);
        this.f7927O = new LinearLayoutManager(getApplicationContext(), 0, false);
        this.f7926N.setLayoutManager(this.f7927O);
        this.f7926N.setAdapter(this.f7926N.getAdapter());
        this.f7941ac = this.f7965j;
    }

    /* renamed from: j */
    protected void m7213j() {
        this.f7926N.m3238a((RecyclerView.AbstractC0595a) null, true);
    }

    /* renamed from: k */
    protected void m7214k() {
        this.f7926N.m6784y();
        m7213j();
    }

    /* renamed from: t */
    private void m7195t() {
        this.f7938Z = (LinearLayout) findViewById(R.id.LL_ui_normalconvert_MemoryFullLayout);
        this.f7938Z.setVisibility(4);
        this.f7938Z.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_NormalPicMakingController.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f7939aa = (Button) findViewById(R.id.B_ui_normalconvert_MemoryFullConfirm);
        this.f7939aa.setOnClickListener(this.f7956ar);
    }

    /* renamed from: b */
    protected void m7202b(boolean z) {
        if (z) {
            this.f7938Z.setVisibility(0);
        } else {
            this.f7938Z.setVisibility(4);
        }
    }

    /* renamed from: u */
    private void m7196u() {
        this.f7936X = (LinearLayout) findViewById(R.id.LL_ui_normalconvert_ProgressLayout);
        this.f7936X.setVisibility(4);
        this.f7936X.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_NormalPicMakingController.5
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f7937Y = (ImageView) findViewById(R.id.IV_ui_normalconvert_ProgressIcon);
    }

    /* renamed from: c */
    protected void m7205c(boolean z) {
        if (z) {
            this.f7936X.setVisibility(0);
            ((AnimationDrawable) this.f7937Y.getDrawable()).start();
            this.f7959d.f7564z = true;
        } else {
            this.f7936X.setVisibility(4);
            ((AnimationDrawable) this.f7937Y.getDrawable()).stop();
            this.f7959d.f7564z = false;
        }
    }

    /* renamed from: a */
    protected Bitmap m7198a(String str) {
        m7178a("path: " + str, 3);
        float f = 360.0f * (this.f7940ab / this.f7941ac);
        m7178a("Panorama degree: " + f, 3);
        long currentTimeMillis = System.currentTimeMillis();
        String str2 = C1658c.f7457e + "result.jpg";
        int m470c = C0052d.m470c(str);
        if (m470c != 3) {
            m470c = 0;
        }
        this.f7973r.PanoramaPath(str, str2, f, m470c);
        m7178a("Panorama get:" + (System.currentTimeMillis() - currentTimeMillis), 0);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = 1;
        Bitmap decodeFile = BitmapFactory.decodeFile(str2, options);
        new File(str2).delete();
        return decodeFile;
    }

    /* renamed from: b */
    protected void m7201b(String str) {
        FileOutputStream fileOutputStream;
        Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.JPEG;
        try {
            fileOutputStream = new FileOutputStream(str);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            fileOutputStream = null;
        }
        if (this.f7971p != null && fileOutputStream != null) {
            this.f7971p.compress(compressFormat, 100, fileOutputStream);
        }
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        m7216m();
    }

    /* renamed from: l */
    protected void m7215l() {
        this.f7924L.setVisibility(0);
        this.f7925M.setVisibility(0);
    }

    /* renamed from: m */
    protected void m7216m() {
        if (this.f7971p != null) {
            this.f7971p.recycle();
            this.f7971p = null;
        }
    }

    /* renamed from: a */
    protected void m7199a(Bitmap bitmap) {
        this.f7926N.setBitmap(bitmap);
        this.f7926N.m3242a(new RecyclerView.AbstractC0608n() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_NormalPicMakingController.8
            @Override // android.support.v7.widget.RecyclerView.AbstractC0608n
            /* renamed from: a */
            public void mo3498a(RecyclerView recyclerView, int i) {
                super.mo3498a(recyclerView, i);
            }

            @Override // android.support.v7.widget.RecyclerView.AbstractC0608n
            /* renamed from: a */
            public void mo3499a(RecyclerView recyclerView, int i, int i2) {
                super.mo3499a(recyclerView, i, i2);
                recyclerView.m3276f();
                UI_NormalPicMakingController.this.f7940ab += i;
                if (UI_NormalPicMakingController.this.f7940ab > UI_NormalPicMakingController.this.f7941ac) {
                    UI_NormalPicMakingController.this.f7940ab -= UI_NormalPicMakingController.this.f7941ac;
                }
                if (UI_NormalPicMakingController.this.f7940ab < (-UI_NormalPicMakingController.this.f7941ac)) {
                    UI_NormalPicMakingController.this.f7940ab += UI_NormalPicMakingController.this.f7941ac;
                }
            }
        });
    }

    /* renamed from: b */
    private Bitmap m7180b(Bitmap bitmap) {
        Bitmap decodeResource;
        switch (this.f7972q) {
            case 1:
                decodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.gallery_logolist_logo_1_original);
                break;
            case 2:
                decodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.gallery_logolist_logo_2_original);
                break;
            case 3:
                decodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.gallery_logolist_logo_3_original);
                break;
            case 4:
                decodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.gallery_logolist_logo_4_original);
                break;
            default:
                return bitmap;
        }
        if (decodeResource != null) {
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeResource, (((bitmap.getHeight() * decodeResource.getWidth()) * 120) / 1612) / decodeResource.getHeight(), (bitmap.getHeight() * 120) / 1612, true);
            m7178a("bmScaledWatermark Height: " + createScaledBitmap.getHeight() + ", Width: " + createScaledBitmap.getWidth(), 3);
            decodeResource.recycle();
            if (createScaledBitmap != null) {
                Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
                Canvas canvas = new Canvas(createBitmap);
                canvas.drawBitmap(bitmap, new Matrix(), null);
                canvas.drawBitmap(createScaledBitmap, (bitmap.getWidth() * 120) / 5376, (bitmap.getHeight() * 1457) / 1612, (Paint) null);
                canvas.save();
                canvas.restore();
                bitmap.recycle();
                createScaledBitmap.recycle();
                return createBitmap;
            }
            return bitmap;
        }
        return bitmap;
    }

    /* renamed from: c */
    private Bitmap m7182c(Bitmap bitmap) {
        int m470c = C0052d.m470c(this.f7959d.f7540b.m536o(this.f7959d.f7557s));
        Matrix matrix = new Matrix();
        if (m470c == 3) {
            matrix.postRotate(180.0f);
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            bitmap.recycle();
            return createBitmap;
        }
        return bitmap;
    }

    /* renamed from: v */
    private void m7197v() {
        this.f7969n = new OrientationEventListener(this) { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_NormalPicMakingController.9
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                if (i != -1) {
                    if (i > 350 || i < 10) {
                        if (UI_NormalPicMakingController.this.f7968m != 1) {
                            UI_NormalPicMakingController.this.m7207d(1);
                            UI_NormalPicMakingController.this.f7968m = 1;
                            return;
                        }
                        return;
                    }
                    if (i > 170 && i < 190 && UI_NormalPicMakingController.this.f7968m != 9) {
                        UI_NormalPicMakingController.this.m7207d(9);
                        UI_NormalPicMakingController.this.f7968m = 9;
                    }
                }
            }
        };
    }

    /* renamed from: d */
    public void m7207d(int i) {
        C0052d.m464a(this, i);
    }
}
