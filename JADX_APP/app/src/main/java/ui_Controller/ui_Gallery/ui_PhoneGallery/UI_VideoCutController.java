package ui_Controller.ui_Gallery.ui_PhoneGallery;

import GeneralFunction.C0052d;
import GeneralFunction.C0079k;
import GeneralFunction.C0091o;
import GeneralFunction.Player.player.SphericalVideoPlayer;
import GeneralFunction.p001a.ActivityC0044a;
import GeneralFunction.p006f.p007a.C0067c;
import GeneralFunction.p010i.p011a.C0075a;
import GeneralFunction.p022s.C0101a;
import GeneralFunction.p022s.C0102b;
import android.content.res.Configuration;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Message;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.huawei.cvIntl60.R;
import java.io.File;
import java.text.DecimalFormat;
import p026a.p032c.C0121a;
import ui_Controller.p109a.C1658c;
import ui_Controller.p110b.C1660b;
import ui_Controller.p110b.C1663e;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* loaded from: classes.dex */
public class UI_VideoCutController extends ActivityC0044a {

    /* renamed from: g */
    protected C0067c f8238g;

    /* renamed from: i */
    private int f8240i = 0;

    /* renamed from: j */
    private int f8241j = 0;

    /* renamed from: k */
    private int f8242k = -1;

    /* renamed from: l */
    private int f8243l = -1;

    /* renamed from: m */
    private OrientationEventListener f8244m = null;

    /* renamed from: n */
    private C1750f f8245n = null;

    /* renamed from: b */
    protected UI_ModeMain f8233b = null;

    /* renamed from: c */
    protected C1660b f8234c = null;

    /* renamed from: d */
    protected C1663e f8235d = null;

    /* renamed from: e */
    protected boolean f8236e = false;

    /* renamed from: f */
    protected boolean f8237f = false;

    /* renamed from: o */
    private long f8246o = -1;

    /* renamed from: p */
    private ImageButton f8247p = null;

    /* renamed from: q */
    private TextView f8248q = null;

    /* renamed from: r */
    private TextView f8249r = null;

    /* renamed from: s */
    private ImageButton f8250s = null;

    /* renamed from: t */
    private FrameLayout f8251t = null;

    /* renamed from: u */
    private TextView f8252u = null;

    /* renamed from: h */
    protected SphericalVideoPlayer f8239h = null;

    /* renamed from: v */
    private ImageButton f8253v = null;

    /* renamed from: w */
    private FrameLayout f8254w = null;

    /* renamed from: x */
    private C0075a f8255x = null;

    /* renamed from: y */
    private TextView f8256y = null;

    /* renamed from: z */
    private TextView f8257z = null;

    /* renamed from: A */
    private TextView f8221A = null;

    /* renamed from: B */
    private LinearLayout f8222B = null;

    /* renamed from: C */
    private LinearLayout f8223C = null;

    /* renamed from: D */
    private LinearLayout f8224D = null;

    /* renamed from: E */
    private Button f8225E = null;

    /* renamed from: F */
    private LinearLayout f8226F = null;

    /* renamed from: G */
    private ImageView f8227G = null;

    /* renamed from: H */
    private LinearLayout f8228H = null;

    /* renamed from: I */
    private C0075a.a f8229I = new C0075a.a() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController.3
        @Override // GeneralFunction.p010i.p011a.C0075a.a
        /* renamed from: a */
        public void mo737a(int i, int i2) {
            if (UI_VideoCutController.this.f8233b.m7984a(4194304L)) {
                switch (i) {
                    case 1:
                    case 2:
                        C0121a c0121a = new C0121a(11073);
                        c0121a.m1200a("SelectPointer", i);
                        c0121a.m1200a("Index", i2);
                        UI_VideoCutController.this.mo410a(c0121a, 0L);
                        break;
                    default:
                        UI_VideoCutController.this.f8233b.m7994c(268435455L);
                        break;
                }
            }
        }
    };

    /* renamed from: J */
    private C0075a.b f8230J = new C0075a.b() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController.4
        /* JADX WARN: Removed duplicated region for block: B:7:0x0022 A[FALL_THROUGH, RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0022 A[RETURN, SYNTHETIC] */
        @Override // GeneralFunction.p010i.p011a.C0075a.b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean mo738a(int r5, int r6, android.view.MotionEvent r7) {
            /*
                r4 = this;
                r2 = 4194304(0x400000, double:2.0722615E-317)
                r0 = 1
                int r1 = r7.getAction()
                r1 = r1 & 255(0xff, float:3.57E-43)
                switch(r1) {
                    case 0: goto L18;
                    case 1: goto L24;
                    case 2: goto L2f;
                    case 3: goto Ld;
                    case 4: goto Ld;
                    case 5: goto L18;
                    case 6: goto L24;
                    default: goto Ld;
                }
            Ld:
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController r1 = ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController.this
                ui_Controller.ui_StartMode.UI_ModeMain r1 = r1.f8233b
                boolean r1 = r1.m7984a(r2)
                if (r1 != 0) goto L22
            L17:
                return r0
            L18:
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController r1 = ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController.this
                ui_Controller.ui_StartMode.UI_ModeMain r1 = r1.f8233b
                boolean r1 = r1.m7984a(r2)
                if (r1 == 0) goto L17
            L22:
                r0 = 0
                goto L17
            L24:
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController r1 = ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController.this
                ui_Controller.ui_StartMode.UI_ModeMain r1 = r1.f8233b
                boolean r1 = r1.m7984a(r2)
                if (r1 != 0) goto L22
                goto L17
            L2f:
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController r1 = ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController.this
                ui_Controller.ui_StartMode.UI_ModeMain r1 = r1.f8233b
                boolean r1 = r1.m7984a(r2)
                if (r1 == 0) goto L17
                switch(r5) {
                    case 1: goto L3d;
                    case 2: goto L3d;
                    default: goto L3c;
                }
            L3c:
                goto L22
            L3d:
                a.c.a r0 = new a.c.a
                r1 = 11072(0x2b40, float:1.5515E-41)
                r0.<init>(r1)
                java.lang.String r1 = "SelectPointer"
                r0.m1200a(r1, r5)
                java.lang.String r1 = "Index"
                r0.m1200a(r1, r6)
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController r1 = ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController.this
                r2 = 0
                r1.mo410a(r0, r2)
                goto L22
            */
            throw new UnsupportedOperationException("Method not decompiled: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController.C17404.mo738a(int, int, android.view.MotionEvent):boolean");
        }
    };

    /* renamed from: K */
    private View.OnTouchListener f8231K = new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController.6
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int i;
            int i2;
            switch (view.getId()) {
                case R.id.IB_ui_videocut_ArrowIcon /* 2131755992 */:
                    i = R.drawable.gallery_button_arrowback_press;
                    i2 = R.drawable.gallery_button_arrowback_normal;
                    break;
                case R.id.IB_ui_videocut_SaveIcon /* 2131755995 */:
                    i = R.drawable.gallery_button_save_press;
                    i2 = R.drawable.gallery_button_save_normal;
                    break;
                case R.id.IB_ui_videocut_PlayIcon /* 2131755998 */:
                    i = R.drawable.gallery_button_arrowdown_press;
                    i2 = R.drawable.gallery_button_arrowdown_normal;
                    break;
                default:
                    i2 = -1;
                    i = -1;
                    break;
            }
            if (motionEvent.getAction() == 0) {
                ((ImageButton) view).setImageResource(i);
            }
            if (motionEvent.getAction() == 2 && (motionEvent.getX() < 0.0f || motionEvent.getX() > view.getWidth() || motionEvent.getY() < 0.0f || motionEvent.getY() > view.getHeight())) {
                ((ImageButton) view).setImageResource(i2);
            }
            if (motionEvent.getAction() == 1) {
                ((ImageButton) view).setImageResource(i2);
                return false;
            }
            return false;
        }
    };

    /* renamed from: L */
    private View.OnClickListener f8232L = new View.OnClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController.7
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.IB_ui_videocut_ArrowIcon /* 2131755992 */:
                    if (UI_VideoCutController.this.f8233b.m7984a(1L)) {
                        UI_VideoCutController.this.mo408a(32768, 0L);
                        break;
                    }
                    break;
                case R.id.IB_ui_videocut_SaveIcon /* 2131755995 */:
                    if (UI_VideoCutController.this.f8233b.m7984a(8388608L)) {
                        UI_VideoCutController.this.f8233b.m7988b(268435455L);
                        UI_VideoCutController.this.mo408a(11075, 0L);
                        break;
                    }
                    break;
                case R.id.IB_ui_videocut_PlayIcon /* 2131755998 */:
                    if (UI_VideoCutController.this.f8233b.m7984a(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE)) {
                        UI_VideoCutController.this.mo408a(11074, 0L);
                        break;
                    }
                    break;
                case R.id.B_ui_videocut_MemoryFullConfirm /* 2131756009 */:
                    UI_VideoCutController.this.mo408a(11077, 0L);
                    break;
                default:
                    UI_VideoCutController.this.m7459a("error press", 3);
                    break;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7459a(String str, int i) {
        C0052d.m465a("UI_VideoCutController", str, i);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo408a(int i, long j) {
        if (this.f8233b != null) {
            this.f8233b.m7981a(new C0121a(i), j);
        } else {
            m7459a("SendUiMsg error!! Msg=" + i, 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo410a(C0121a c0121a, long j) {
        if (this.f8233b != null) {
            this.f8233b.m7981a(c0121a, j);
        } else {
            m7459a("SendUiMsg error!! MsgEx=" + c0121a.m1208b().what, 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo413b(int i, long j) {
        if (this.f8233b != null) {
            this.f8233b.m7987b(i, j);
        } else {
            m7459a("UI_SendAidMsg error!!", 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo415b(C0121a c0121a, long j) {
        if (this.f8233b != null) {
            this.f8233b.m7990b(c0121a, j);
        } else {
            m7459a("UI_SendAidMsg error!!", 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public boolean mo417b() {
        return this.f8242k == 2;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f8233b.m7984a(1L)) {
            mo408a(32768, 0L);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo416b(Message message) {
        m7459a("AidServer_Handler:0x" + Integer.toHexString(message.what), 3);
        this.f8245n.m7541a(message);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m7459a("onCreate", 3);
        this.f8233b = (UI_ModeMain) getApplication();
        this.f8233b.m8016v();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f8240i = displayMetrics.widthPixels;
        this.f8241j = displayMetrics.heightPixels;
        if (this.f8241j > this.f8240i) {
            this.f8242k = 1;
            setContentView(R.layout.ui_videocut_port);
        } else {
            this.f8242k = 2;
            setContentView(R.layout.ui_videocut_port);
        }
        this.f8245n = new C1750f(this);
        this.f8238g = new C0067c();
        this.f8234c = this.f8233b.f8782c.f7653k;
        this.f8235d = this.f8233b.f8782c.f7653k.f7478b;
        this.f8233b.m7977a(3344, this);
        m7455A();
        mo408a(12033, 100L);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m7459a("onConfigurationChanged", 3);
        this.f8233b.m8016v();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f8240i = displayMetrics.widthPixels;
        this.f8241j = displayMetrics.heightPixels;
        if (this.f8239h != null) {
            this.f8239h.m196a(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        if (configuration.orientation == 2) {
            m7459a("ui_phonegallery_land", 3);
        } else {
            m7459a("ui_phonegallery_port", 3);
        }
        m7474c(configuration.orientation);
        m7484i();
        this.f8242k = configuration.orientation;
        C0121a c0121a = new C0121a(12038);
        c0121a.m1200a("mode", 3328);
        mo410a(c0121a, 200L);
        C0091o.m888a();
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f8244m.enable();
        C0121a c0121a = new C0121a(12034);
        c0121a.m1200a("mode", 3328);
        mo410a(c0121a, 0L);
        if (!m7495t()) {
            m407a(8452);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.f8233b.m7974a() == 3360) {
            m407a(32768);
        }
        this.f8244m.disable();
        C0121a c0121a = new C0121a(12035);
        c0121a.m1200a("mode", 3328);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onStop() {
        super.onStop();
        C0121a c0121a = new C0121a(12036);
        c0121a.m1200a("mode", 3328);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        C0121a c0121a = new C0121a(12037);
        c0121a.m1200a("mode", 3328);
        mo410a(c0121a, 0L);
    }

    /* renamed from: c */
    protected void m7473c() {
        this.f8235d.f7562x = true;
        if (this.f8235d.f7542d == 2) {
            this.f8236e = true;
            this.f8233b.m7988b(268435455L);
            if (this.f8233b.m7974a() == 3360) {
                m407a(32768);
            } else if (this.f8238g != null) {
                this.f8238g.m627a();
                this.f8238g = null;
            }
            mo408a(8452, 100L);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo411a(Message message) {
        this.f8245n.m7542b(message);
    }

    /* renamed from: d */
    protected void m7476d() {
        m7465v();
        m7466w();
        m7467x();
        m7468y();
        m7469z();
        m7477d(1);
        m7474c(this.f8242k);
    }

    /* renamed from: v */
    private void m7465v() {
        this.f8239h = (SphericalVideoPlayer) findViewById(R.id.TV_ui_videocut_VideoPlayer);
        this.f8239h.setPlayerStatusListener(new SphericalVideoPlayer.InterfaceC0032f() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController.1
            @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0032f
            /* renamed from: a */
            public void mo233a(int i) {
                UI_VideoCutController.this.m7459a("ReturnVideoStatus " + i, 3);
                C0121a c0121a = new C0121a(9097);
                c0121a.m1200a("360PlayerStatus", i);
                UI_VideoCutController.this.mo410a(c0121a, 0L);
            }
        });
        m7478e();
        this.f8235d.f7505F = -1;
        this.f8235d.f7506G = -1;
    }

    /* renamed from: e */
    protected void m7478e() {
        this.f8239h.m211f();
        this.f8239h.m201a(false);
        this.f8239h.setEnable(true);
        this.f8239h.setPlayerMode(1);
        this.f8239h.setViewType(3);
        this.f8239h.setVideoFilePath(this.f8235d.f7540b.m536o(this.f8235d.f7557s));
        this.f8239h.setInteractiveMode(1);
        this.f8239h.m212g();
    }

    /* renamed from: f */
    protected int m7480f() {
        if (this.f8239h != null) {
            return this.f8239h.m209d();
        }
        return -1;
    }

    /* renamed from: g */
    protected void m7482g() {
        if (this.f8239h != null) {
            this.f8239h.m202b();
        }
    }

    /* renamed from: w */
    private void m7466w() {
        this.f8223C = (LinearLayout) findViewById(R.id.LL_ui_videocut_VideoControlBar);
        this.f8254w = (FrameLayout) findViewById(R.id.FL_ui_videocut_SelectScrollBar);
        this.f8253v = (ImageButton) findViewById(R.id.IB_ui_videocut_PlayIcon);
        this.f8257z = (TextView) findViewById(R.id.TV_ui_videocut_MovieStartTime);
        this.f8221A = (TextView) findViewById(R.id.TV_ui_videocut_MovieEndTime);
        this.f8256y = (TextView) findViewById(R.id.TV_ui_videocut_MovieLength);
        this.f8253v.setOnClickListener(this.f8232L);
    }

    /* renamed from: h */
    protected void m7483h() {
        if (this.f8235d.f7505F < 0 || this.f8235d.f7506G < 0) {
            this.f8235d.f7505F = 0;
            this.f8235d.f7506G = this.f8239h.getDuration() / 1000;
        }
        boolean z = this.f8255x != null ? this.f8255x.f589a : true;
        m7487l();
        if (this.f8254w.getChildCount() <= 0) {
            this.f8255x = new C0075a(this, this.f8254w, true, (this.f8239h.getDuration() / 1000) + 1, 1, this.f8235d.f7505F, this.f8235d.f7506G, z, 2);
            this.f8255x.m734a(this.f8229I);
            this.f8255x.m735a(this.f8230J);
        }
    }

    /* renamed from: i */
    protected void m7484i() {
        if (this.f8255x != null) {
            final int width = this.f8254w.getWidth();
            this.f8254w.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    UI_VideoCutController.this.m7459a("AAA Widget Width:" + UI_VideoCutController.this.f8254w.getWidth() + " Height:" + UI_VideoCutController.this.f8254w.getHeight(), 0);
                    if (width == UI_VideoCutController.this.f8254w.getWidth()) {
                        UI_VideoCutController.this.m7459a("Widget Width not changed!", 3);
                        return;
                    }
                    boolean z = UI_VideoCutController.this.f8255x.f589a;
                    UI_VideoCutController.this.f8255x.m732a();
                    UI_VideoCutController.this.f8254w.removeAllViews();
                    UI_VideoCutController.this.f8255x = new C0075a(UI_VideoCutController.this, UI_VideoCutController.this.f8254w, true, (UI_VideoCutController.this.f8239h.getDuration() / 1000) + 1, 1, UI_VideoCutController.this.f8235d.f7505F, UI_VideoCutController.this.f8235d.f7506G, z, 2);
                    UI_VideoCutController.this.f8255x.m734a(UI_VideoCutController.this.f8229I);
                    UI_VideoCutController.this.f8255x.m735a(UI_VideoCutController.this.f8230J);
                    UI_VideoCutController.this.f8254w.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            });
        }
    }

    /* renamed from: j */
    protected void m7485j() {
        this.f8249r.setText("" + new DecimalFormat("#.##").format(Math.round(((m7486k() / 1024.0f) / 1024.0f) * 100.0f) / 100.0f) + "MB");
    }

    /* renamed from: k */
    protected float m7486k() {
        if (this.f8246o <= 0) {
            this.f8246o = new File(this.f8235d.f7540b.m536o(this.f8235d.f7557s)).length();
        }
        return (this.f8246o * (this.f8235d.f7506G - this.f8235d.f7505F)) / (this.f8239h.getDuration() / 1000);
    }

    /* renamed from: a */
    protected void m7471a(boolean z) {
        if (z) {
            this.f8250s.setImageResource(R.drawable.gallery_top_save_black);
            this.f8252u.setTextColor(getResources().getColor(R.color.white));
            this.f8252u.setText(getResources().getString(R.string.edit_save));
        } else {
            this.f8250s.setImageResource(R.drawable.gallery_top_save_gray);
            this.f8252u.setTextColor(getResources().getColor(R.color.gray50));
            this.f8252u.setText(getResources().getString(R.string.edit_save));
        }
        this.f8250s.setEnabled(z);
    }

    /* renamed from: c */
    protected void m7474c(int i) {
        int min = Math.min(this.f8240i, this.f8241j);
        int max = Math.max(this.f8240i, this.f8241j);
        if (this.f8239h != null) {
            min = this.f8239h.getWidth();
            max = this.f8239h.getHeight();
        }
        if (this.f8222B != null && this.f8223C != null) {
            if (i == 2) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f8222B.getLayoutParams());
                layoutParams.height = (min * 140) / 1600;
                this.f8222B.setLayoutParams(layoutParams);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(this.f8223C.getLayoutParams());
                layoutParams2.height = (min * 210) / 1600;
                this.f8223C.setLayoutParams(layoutParams2);
                return;
            }
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(this.f8222B.getLayoutParams());
            layoutParams3.height = (max * 140) / 1600;
            this.f8222B.setLayoutParams(layoutParams3);
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(this.f8223C.getLayoutParams());
            layoutParams4.height = (max * 210) / 1600;
            this.f8223C.setLayoutParams(layoutParams4);
        }
    }

    /* renamed from: d */
    protected void m7477d(int i) {
        switch (i) {
            case 1:
                this.f8253v.setImageResource(R.drawable.gallery_videocut_play);
                this.f8254w.setVisibility(0);
                this.f8257z.setVisibility(0);
                this.f8221A.setVisibility(0);
                this.f8256y.setVisibility(0);
                this.f8249r.setVisibility(0);
                this.f8250s.setVisibility(0);
                this.f8252u.setVisibility(0);
                this.f8222B.setVisibility(0);
                break;
            case 2:
                this.f8253v.setImageResource(R.drawable.gallery_videocut_stop);
                this.f8254w.setVisibility(4);
                this.f8257z.setVisibility(4);
                this.f8221A.setVisibility(4);
                this.f8256y.setVisibility(4);
                this.f8249r.setVisibility(4);
                this.f8250s.setVisibility(4);
                this.f8252u.setVisibility(4);
                this.f8222B.setVisibility(4);
                break;
        }
    }

    /* renamed from: l */
    protected void m7487l() {
        int i = this.f8235d.f7505F;
        int i2 = this.f8235d.f7506G;
        int i3 = i2 - i;
        this.f8257z.setText(String.format("%02d", Integer.valueOf(i / 60)) + ":" + String.format("%02d", Integer.valueOf(i % 60)));
        this.f8221A.setText(String.format("%02d", Integer.valueOf(i2 / 60)) + ":" + String.format("%02d", Integer.valueOf(i2 % 60)));
        this.f8256y.setText(String.format("%02d", Integer.valueOf(i3 / 60)) + ":" + String.format("%02d", Integer.valueOf(i3 % 60)));
        m7471a(this.f8239h.getDuration() / 1000 > i3);
        m7485j();
    }

    /* renamed from: e */
    protected void m7479e(int i) {
        if (this.f8239h != null) {
            this.f8239h.seekTo(i);
            m7459a("Current Position: " + this.f8239h.getCurrentPosition(), 3);
        }
    }

    /* renamed from: m */
    protected void m7488m() {
        this.f8239h.start();
    }

    /* renamed from: n */
    protected void m7489n() {
        this.f8239h.pause();
    }

    /* renamed from: o */
    protected void m7490o() {
        m7494s();
        this.f8239h.m216k();
        this.f8239h.m214i();
    }

    /* renamed from: p */
    protected boolean m7491p() {
        return this.f8239h.m209d() == 5 || this.f8239h.m209d() == 1;
    }

    /* renamed from: q */
    protected void m7492q() {
        switch (this.f8235d.f7502C) {
            case 3:
                m407a(8448);
                break;
            case 4:
                m407a(8452);
                break;
        }
    }

    /* renamed from: x */
    private void m7467x() {
        int m784a;
        this.f8222B = (LinearLayout) findViewById(R.id.LL_ui_videocut_TopLayout);
        this.f8222B.setVisibility(0);
        this.f8247p = (ImageButton) findViewById(R.id.IB_ui_videocut_ArrowIcon);
        this.f8247p.setImageResource(R.drawable.gallery_top_back_black);
        this.f8250s = (ImageButton) findViewById(R.id.IB_ui_videocut_SaveIcon);
        this.f8252u = (TextView) findViewById(R.id.TV_ui_videocut_SaveIcon);
        this.f8248q = (TextView) findViewById(R.id.TV_ui_videocut_VideoCut);
        this.f8249r = (TextView) findViewById(R.id.TV_ui_videocut_FileSize);
        if (mo417b()) {
            m784a = C0079k.m784a(this, this.f8241j / 23);
        } else {
            m784a = C0079k.m784a(this, this.f8241j / 44);
        }
        this.f8248q.setTextSize(m784a);
        this.f8249r.setTextSize(m784a);
        this.f8248q.setText(getString(R.string.video_cut));
        this.f8248q.setTextColor(getResources().getColor(R.color.black));
        this.f8249r.setTextColor(getResources().getColor(R.color.white));
        this.f8247p.setOnClickListener(this.f8232L);
        this.f8250s.setOnClickListener(this.f8232L);
    }

    /* renamed from: y */
    private void m7468y() {
        this.f8224D = (LinearLayout) findViewById(R.id.LL_ui_videocut_MemoryFullLayout);
        this.f8224D.setVisibility(4);
        this.f8224D.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController.5
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f8225E = (Button) findViewById(R.id.B_ui_videocut_MemoryFullConfirm);
        this.f8225E.setOnClickListener(this.f8232L);
    }

    /* renamed from: b */
    protected void m7472b(boolean z) {
        if (z) {
            this.f8224D.setVisibility(0);
        } else {
            this.f8224D.setVisibility(4);
        }
    }

    /* renamed from: r */
    protected int m7493r() {
        long m461a;
        int i = 0;
        long m7486k = 52428800 + ((long) m7486k());
        switch (this.f8235d.f7542d) {
            case 1:
                m461a = C0052d.m461a(C1658c.f7455c, -1);
                break;
            case 2:
                m461a = C0052d.m461a(this.f8233b.f8782c.f7653k.f7478b.f7528ab, -1);
                break;
            default:
                m7459a("Error database select mode:" + this.f8235d.f7542d, 0);
                m461a = -1;
                break;
        }
        if (m461a == -1) {
            i = -1;
        } else if (m461a < m7486k) {
            i = 1;
        }
        m7459a("dlAvailableSize: " + m461a + ", ApproximateFileSize: " + ((long) m7486k()), 3);
        m7459a("checkMemoryFull: " + i + ", database mode: " + this.f8235d.f7542d, 3);
        return i;
    }

    /* renamed from: z */
    private void m7469z() {
        this.f8226F = (LinearLayout) findViewById(R.id.LL_ui_videocut_ProgressLayout);
        this.f8226F.setVisibility(4);
        this.f8227G = (ImageView) findViewById(R.id.IV_ui_videocut_ProgressIcon);
        this.f8228H = (LinearLayout) findViewById(R.id.LL_ui_videocut_BlackScreen);
        this.f8228H.setVisibility(4);
    }

    /* renamed from: s */
    protected void m7494s() {
        this.f8228H.setVisibility(0);
    }

    /* renamed from: c */
    protected void m7475c(boolean z) {
        if (z) {
            this.f8226F.setVisibility(0);
            ((AnimationDrawable) this.f8227G.getDrawable()).start();
            this.f8235d.f7564z = true;
        } else {
            this.f8226F.setVisibility(4);
            ((AnimationDrawable) this.f8227G.getDrawable()).stop();
            this.f8235d.f7564z = false;
        }
    }

    /* renamed from: t */
    protected boolean m7495t() {
        return new File(this.f8235d.f7540b.m536o(this.f8235d.f7557s)).exists();
    }

    /* renamed from: A */
    private void m7455A() {
        this.f8244m = new OrientationEventListener(this) { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_VideoCutController.8
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                if (i != -1) {
                    if (i > 350 || i < 10) {
                        if (UI_VideoCutController.this.f8243l != 1) {
                            UI_VideoCutController.this.m7481f(1);
                            UI_VideoCutController.this.f8243l = 1;
                            return;
                        }
                        return;
                    }
                    if (i > 80 && i < 100) {
                        if (UI_VideoCutController.this.f8243l != 8) {
                            UI_VideoCutController.this.m7481f(8);
                            UI_VideoCutController.this.f8243l = 8;
                            return;
                        }
                        return;
                    }
                    if (i > 170 && i < 190) {
                        if (UI_VideoCutController.this.f8243l != 9) {
                            UI_VideoCutController.this.m7481f(9);
                            UI_VideoCutController.this.f8243l = 9;
                            return;
                        }
                        return;
                    }
                    if (i > 260 && i < 280 && UI_VideoCutController.this.f8243l != 0) {
                        UI_VideoCutController.this.m7481f(0);
                        UI_VideoCutController.this.f8243l = 0;
                    }
                }
            }
        };
    }

    /* renamed from: f */
    public void m7481f(int i) {
        C0052d.m464a(this, i);
    }

    /* renamed from: a */
    protected void m7470a(String str) {
        if (new File(str).exists()) {
            C0101a c0101a = new C0101a();
            C0102b c0102b = new C0102b();
            c0102b.f763a = getResources().getString(R.string.internal_app_version);
            c0102b.f764b = this.f8233b.f8782c.f7649g.f7631c;
            int m954a = c0101a.m954a(str, c0102b);
            if (m954a != 0) {
                m7459a("addMetaDataInfo fail: " + m954a, 1);
                return;
            }
            return;
        }
        m7459a("Original File Not Exist!", 1);
    }

    /* renamed from: u */
    protected void m7496u() {
        switch (this.f8235d.f7542d) {
            case 1:
                this.f8235d.f7545g = 0;
                break;
            case 2:
                this.f8235d.f7546h = 0;
                break;
        }
    }
}
