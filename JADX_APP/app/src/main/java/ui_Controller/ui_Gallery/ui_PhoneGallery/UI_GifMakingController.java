package ui_Controller.ui_Gallery.ui_PhoneGallery;

import GeneralFunction.C0043a;
import GeneralFunction.C0047c;
import GeneralFunction.C0052d;
import GeneralFunction.C0079k;
import GeneralFunction.C0091o;
import GeneralFunction.Player.GifGenerate.GifGenerate;
import GeneralFunction.p001a.ActivityC0044a;
import GeneralFunction.p010i.p011a.C0075a;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Message;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import com.huawei.cvIntl60.R;
import java.io.File;
import p026a.p032c.C0121a;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkMediaCodecInfo;
import ui_Controller.CustomWidget.C1649a;
import ui_Controller.p110b.C1660b;
import ui_Controller.p110b.C1663e;
import ui_Controller.ui_Liveview.UI_LiveViewController;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* loaded from: classes.dex */
public class UI_GifMakingController extends ActivityC0044a {

    /* renamed from: S */
    private Space f7868S;

    /* renamed from: o */
    private int f7890o = 0;

    /* renamed from: p */
    private int f7891p = 0;

    /* renamed from: q */
    private int f7892q = -1;

    /* renamed from: r */
    private int f7893r = -1;

    /* renamed from: s */
    private int f7894s = 0;

    /* renamed from: t */
    private OrientationEventListener f7895t = null;

    /* renamed from: u */
    private C1745a f7896u = null;

    /* renamed from: b */
    protected UI_ModeMain f7877b = null;

    /* renamed from: c */
    protected C1660b f7878c = null;

    /* renamed from: d */
    protected C1663e f7879d = null;

    /* renamed from: e */
    protected int f7880e = 0;

    /* renamed from: f */
    protected boolean f7881f = false;

    /* renamed from: g */
    protected boolean f7882g = false;

    /* renamed from: h */
    protected boolean f7883h = false;

    /* renamed from: i */
    protected boolean f7884i = false;

    /* renamed from: j */
    protected boolean f7885j = false;

    /* renamed from: k */
    protected int f7886k = 0;

    /* renamed from: v */
    private ImageButton f7897v = null;

    /* renamed from: w */
    private ImageButton f7898w = null;

    /* renamed from: x */
    private ImageButton f7899x = null;

    /* renamed from: y */
    private ImageButton f7900y = null;

    /* renamed from: z */
    private ImageButton f7901z = null;

    /* renamed from: A */
    private FrameLayout f7850A = null;

    /* renamed from: B */
    private TextView f7851B = null;

    /* renamed from: C */
    private TextView f7852C = null;

    /* renamed from: D */
    private TextView f7853D = null;

    /* renamed from: E */
    private TextView f7854E = null;

    /* renamed from: F */
    private FrameLayout f7855F = null;

    /* renamed from: l */
    protected GifGenerate f7887l = null;

    /* renamed from: G */
    private FrameLayout f7856G = null;

    /* renamed from: H */
    private LinearLayout f7857H = null;

    /* renamed from: I */
    private LinearLayout f7858I = null;

    /* renamed from: J */
    private Button f7859J = null;

    /* renamed from: K */
    private FrameLayout f7860K = null;

    /* renamed from: m */
    protected C0075a f7888m = null;

    /* renamed from: L */
    private LinearLayout f7861L = null;

    /* renamed from: M */
    private ImageButton f7862M = null;

    /* renamed from: N */
    private ImageButton f7863N = null;

    /* renamed from: O */
    private ImageButton f7864O = null;

    /* renamed from: P */
    private ImageButton f7865P = null;

    /* renamed from: Q */
    private ImageButton f7866Q = null;

    /* renamed from: R */
    private ImageView f7867R = null;

    /* renamed from: T */
    private LinearLayout f7869T = null;

    /* renamed from: U */
    private Button f7870U = null;

    /* renamed from: V */
    private LinearLayout f7871V = null;

    /* renamed from: W */
    private ImageView f7872W = null;

    /* renamed from: n */
    protected int f7889n = 0;

    /* renamed from: X */
    private C0075a.a f7873X = new C0075a.a() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.6
        @Override // GeneralFunction.p010i.p011a.C0075a.a
        /* renamed from: a */
        public void mo737a(int i, int i2) {
            if (UI_GifMakingController.this.f7877b.m7984a(4194304L)) {
                UI_GifMakingController.this.m7140a("ACTION CLICK", 3);
                switch (i) {
                    case 1:
                    case 2:
                        C0121a c0121a = new C0121a(11017);
                        c0121a.m1200a("SelectPointer", i);
                        c0121a.m1200a("Index", i2);
                        UI_GifMakingController.this.mo410a(c0121a, 0L);
                        break;
                    default:
                        UI_GifMakingController.this.f7877b.m7994c(268435455L);
                        break;
                }
            }
        }
    };

    /* renamed from: Y */
    private C0075a.b f7874Y = new C0075a.b() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.7
        /* JADX WARN: Removed duplicated region for block: B:7:0x002a A[FALL_THROUGH, RETURN, SYNTHETIC] */
        @Override // GeneralFunction.p010i.p011a.C0075a.b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean mo738a(int r6, int r7, android.view.MotionEvent r8) {
            /*
                r5 = this;
                r4 = 3
                r2 = 4194304(0x400000, double:2.0722615E-317)
                r0 = 1
                int r1 = r8.getAction()
                r1 = r1 & 255(0xff, float:3.57E-43)
                switch(r1) {
                    case 0: goto L19;
                    case 1: goto L2c;
                    case 2: goto L3e;
                    case 3: goto Le;
                    case 4: goto Le;
                    case 5: goto L19;
                    case 6: goto L2c;
                    default: goto Le;
                }
            Le:
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController r1 = ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.this
                ui_Controller.ui_StartMode.UI_ModeMain r1 = r1.f7877b
                boolean r1 = r1.m7984a(r2)
                if (r1 != 0) goto L2a
            L18:
                return r0
            L19:
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController r1 = ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.this
                ui_Controller.ui_StartMode.UI_ModeMain r1 = r1.f7877b
                boolean r1 = r1.m7984a(r2)
                if (r1 == 0) goto L18
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController r0 = ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.this
                java.lang.String r1 = "ACTION DOWN"
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.m7142a(r0, r1, r4)
            L2a:
                r0 = 0
                goto L18
            L2c:
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController r1 = ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.this
                ui_Controller.ui_StartMode.UI_ModeMain r1 = r1.f7877b
                boolean r1 = r1.m7984a(r2)
                if (r1 == 0) goto L18
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController r0 = ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.this
                java.lang.String r1 = "ACTION UP"
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.m7142a(r0, r1, r4)
                goto L2a
            L3e:
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController r1 = ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.this
                ui_Controller.ui_StartMode.UI_ModeMain r1 = r1.f7877b
                boolean r1 = r1.m7984a(r2)
                if (r1 == 0) goto L18
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController r0 = ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.this
                java.lang.String r1 = "ACTION MOVE"
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.m7142a(r0, r1, r4)
                switch(r6) {
                    case 1: goto L53;
                    case 2: goto L53;
                    default: goto L52;
                }
            L52:
                goto L2a
            L53:
                a.c.a r0 = new a.c.a
                r1 = 11016(0x2b08, float:1.5437E-41)
                r0.<init>(r1)
                java.lang.String r1 = "SelectPointer"
                r0.m1200a(r1, r6)
                java.lang.String r1 = "Index"
                r0.m1200a(r1, r7)
                ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController r1 = ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.this
                r2 = 0
                r1.mo410a(r0, r2)
                goto L2a
            */
            throw new UnsupportedOperationException("Method not decompiled: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.C16857.mo738a(int, int, android.view.MotionEvent):boolean");
        }
    };

    /* renamed from: Z */
    private View.OnTouchListener f7875Z = new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.11
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int i = R.drawable.gallery_button_arrowdown_press;
            int i2 = R.drawable.gallery_button_save_normal;
            switch (view.getId()) {
                case R.id.IB_ui_gifmaking_ArrowIcon /* 2131755592 */:
                    i2 = R.drawable.gallery_button_arrowback_normal;
                    i = R.drawable.gallery_button_arrowback_press;
                    break;
                case R.id.FL_ui_gifmaking_DirectionIconLayout /* 2131755593 */:
                case R.id.TV_ui_gifmaking_DirectionIcon /* 2131755595 */:
                case R.id.TV_ui_gifmaking_StampListIcon /* 2131755597 */:
                case R.id.TV_ui_gifmaking_PlayIcon /* 2131755599 */:
                case R.id.TV_ui_gifmaking_SaveIcon /* 2131755601 */:
                case R.id.SP_gifmaking_StampSpace /* 2131755602 */:
                case R.id.IV_ui_gifmaking_StampIcon /* 2131755603 */:
                case R.id.LL_ui_gifmaking_StampSelection /* 2131755604 */:
                case R.id.IB_ui_gifmaking_StampSelection0 /* 2131755605 */:
                default:
                    i2 = -1;
                    i = -1;
                    break;
                case R.id.IB_ui_gifmaking_DirectionIcon /* 2131755594 */:
                    i2 = R.drawable.gallery_button_arrowdown_normal;
                    break;
                case R.id.IB_ui_gifmaking_StampListIcon /* 2131755596 */:
                    i2 = R.drawable.gallery_button_arrowdown_normal;
                    break;
                case R.id.IB_ui_gifmaking_PlayIcon /* 2131755598 */:
                    i2 = R.drawable.gallery_button_arrowdown_normal;
                    break;
                case R.id.IB_ui_gifmaking_SaveIcon /* 2131755600 */:
                    i = R.drawable.gallery_button_save_press;
                    break;
                case R.id.IB_ui_gifmaking_StampSelection1 /* 2131755606 */:
                    i = R.drawable.gallery_button_save_press;
                    break;
                case R.id.IB_ui_gifmaking_StampSelection2 /* 2131755607 */:
                    i = R.drawable.gallery_button_save_press;
                    break;
                case R.id.IB_ui_gifmaking_StampSelection3 /* 2131755608 */:
                    i = R.drawable.gallery_button_save_press;
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

    /* renamed from: aa */
    private View.OnClickListener f7876aa = new View.OnClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.FL_ui_gifmaking_VideoPlayer /* 2131755585 */:
                    UI_GifMakingController.this.m7168n();
                    break;
                case R.id.IB_ui_gifmaking_ArrowIcon /* 2131755592 */:
                    if (UI_GifMakingController.this.f7877b.m7984a(1L)) {
                        UI_GifMakingController.this.mo408a(32768, 0L);
                        break;
                    }
                    break;
                case R.id.IB_ui_gifmaking_DirectionIcon /* 2131755594 */:
                    if (UI_GifMakingController.this.f7877b.m7984a(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE)) {
                        UI_GifMakingController.this.mo408a(11008, 0L);
                        break;
                    }
                    break;
                case R.id.IB_ui_gifmaking_StampListIcon /* 2131755596 */:
                    if (UI_GifMakingController.this.f7877b.m7984a(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE)) {
                        UI_GifMakingController.this.mo408a(11010, 0L);
                        break;
                    }
                    break;
                case R.id.IB_ui_gifmaking_PlayIcon /* 2131755598 */:
                    if (UI_GifMakingController.this.f7877b.m7984a(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE)) {
                        UI_GifMakingController.this.mo408a(11011, 0L);
                        break;
                    }
                    break;
                case R.id.IB_ui_gifmaking_SaveIcon /* 2131755600 */:
                    if (UI_GifMakingController.this.f7877b.m7984a(8388608L)) {
                        UI_GifMakingController.this.mo408a(11012, 0L);
                        break;
                    }
                    break;
                case R.id.IB_ui_gifmaking_StampSelection0 /* 2131755605 */:
                    UI_GifMakingController.this.mo408a(11022, 0L);
                    break;
                case R.id.IB_ui_gifmaking_StampSelection1 /* 2131755606 */:
                    UI_GifMakingController.this.mo408a(11013, 0L);
                    break;
                case R.id.IB_ui_gifmaking_StampSelection2 /* 2131755607 */:
                    UI_GifMakingController.this.mo408a(11014, 0L);
                    break;
                case R.id.IB_ui_gifmaking_StampSelection3 /* 2131755608 */:
                    UI_GifMakingController.this.mo408a(11015, 0L);
                    break;
                case R.id.IB_ui_gifmaking_StampSelection4 /* 2131755609 */:
                    UI_GifMakingController.this.mo408a(11023, 0L);
                    break;
                case R.id.B_ui_gifmaking_MemoryFullConfirm /* 2131755616 */:
                    UI_GifMakingController.this.mo408a(11021, 0L);
                    break;
                default:
                    UI_GifMakingController.this.m7140a("error press", 3);
                    break;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7140a(String str, int i) {
        C0052d.m465a("UI_GifMakingController", str, i);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo408a(int i, long j) {
        if (this.f7877b != null) {
            this.f7877b.m7981a(new C0121a(i), j);
        } else {
            m7140a("SendUiMsg error!! Msg=" + i, 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo410a(C0121a c0121a, long j) {
        if (this.f7877b != null) {
            this.f7877b.m7981a(c0121a, j);
        } else {
            m7140a("SendUiMsg error!! MsgEx=" + c0121a.m1208b().what, 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo413b(int i, long j) {
        if (this.f7877b != null) {
            this.f7877b.m7987b(i, j);
        } else {
            m7140a("UI_SendAidMsg error!!", 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public boolean mo417b() {
        return this.f7892q == 2;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f7877b.m7984a(1L)) {
            mo408a(32768, 0L);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo416b(Message message) {
        m7140a("AidServer_Handler:0x" + Integer.toHexString(message.what), 3);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m7140a("onCreate", 3);
        this.f7877b = (UI_ModeMain) getApplication();
        this.f7877b.m8016v();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f7890o = displayMetrics.widthPixels;
        this.f7891p = displayMetrics.heightPixels;
        this.f7878c = this.f7877b.f8782c.f7653k;
        this.f7879d = this.f7877b.f8782c.f7653k.f7478b;
        if (this.f7891p > this.f7890o) {
            this.f7892q = 1;
            if (this.f7879d.f7523X.f331a == 6) {
                setContentView(R.layout.ui_gifmaking_port_crystalball);
            } else {
                setContentView(R.layout.ui_gifmaking_port);
            }
        } else {
            this.f7892q = 2;
            if (this.f7879d.f7523X.f331a == 6) {
                setContentView(R.layout.ui_gifmaking_port_crystalball);
            } else {
                setContentView(R.layout.ui_gifmaking_port);
            }
        }
        this.f7896u = new C1745a(this);
        switch (this.f7879d.f7540b.m504a(this.f7879d.f7557s)) {
            case 0:
                this.f7882g = true;
                this.f7877b.m7977a(3600, this);
                break;
            case 1:
            case 5:
                this.f7877b.m7977a(3601, this);
                this.f7882g = false;
                break;
            case 2:
            case 3:
            case 4:
            default:
                m7140a("Unknow file type: " + this.f7879d.f7540b.m504a(this.f7879d.f7557s), 3);
                break;
        }
        m7136A();
        if (this.f7877b.m8002g()) {
            mo408a(12033, 100L);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m7140a("onConfigurationChanged", 3);
        this.f7877b.m8016v();
        if (this.f7892q != configuration.orientation) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            this.f7890o = displayMetrics.widthPixels;
            this.f7891p = displayMetrics.heightPixels;
            if (configuration.orientation == 2) {
                m7140a("ui_phonegallery_land", 3);
                setContentView(R.layout.ui_gifmaking_port);
            } else {
                m7140a("ui_phonegallery_port", 3);
            }
            this.f7892q = configuration.orientation;
            C0121a c0121a = new C0121a(12038);
            c0121a.m1200a("mode", 3584);
            mo410a(c0121a, 200L);
            C0091o.m888a();
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f7895t.enable();
        if (!m7172r()) {
            this.f7884i = true;
            mo408a(8452, 0L);
        }
        C0121a c0121a = new C0121a(12034);
        c0121a.m1200a("mode", 3584);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f7895t.disable();
        if (this.f7877b.m7974a() == 3632) {
            m7155d();
            m7154c(false);
            this.f7877b.m7994c(268435455L);
        }
        C0121a c0121a = new C0121a(12035);
        c0121a.m1200a("mode", 3584);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onStop() {
        super.onStop();
        C0121a c0121a = new C0121a(12036);
        c0121a.m1200a("mode", 3584);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        C0121a c0121a = new C0121a(12037);
        c0121a.m1200a("mode", 3584);
        mo410a(c0121a, 0L);
    }

    /* renamed from: c */
    protected void m7152c() {
        this.f7883h = true;
        this.f7879d.f7562x = true;
        if (this.f7879d.f7542d == 2) {
            if (this.f7877b.m7974a() == 3632) {
                m7140a("remove SD card when generating", 2);
                m7155d();
            } else if (this.f7877b.m7974a() == 3616) {
                m7140a("remove SD card when previewing", 2);
                m7155d();
            } else {
                this.f7885j = true;
                mo408a(8452, 100L);
            }
        }
    }

    /* renamed from: d */
    protected void m7155d() {
        this.f7887l.m31a();
        if (this.f7882g) {
            this.f7877b.m7975a(3600);
        } else {
            this.f7877b.m7975a(3601);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo411a(Message message) {
        this.f7896u.m7499a(message);
    }

    /* renamed from: e */
    protected void m7157e() {
        m7146w();
        m7144u();
        m7147x();
        m7148y();
        m7149z();
        m7153c(1);
    }

    /* renamed from: u */
    private void m7144u() {
        this.f7855F = (FrameLayout) findViewById(R.id.FL_ui_gifmaking_VideoPlayer);
        this.f7887l = (GifGenerate) findViewById(R.id.TV_ui_gifmaking_VideoPlayer);
        this.f7894s = (this.f7890o * 890) / IMediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR;
        if (this.f7879d.f7523X.f331a == 6) {
            this.f7887l.setLayoutParams(new LinearLayout.LayoutParams(this.f7894s, this.f7894s));
        } else {
            this.f7887l.setLayoutParams(new LinearLayout.LayoutParams(this.f7894s, this.f7894s / 2));
        }
        this.f7887l.setPlayerStatusListener(new GifGenerate.InterfaceC0008d() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.1
            @Override // GeneralFunction.Player.GifGenerate.GifGenerate.InterfaceC0008d
            /* renamed from: a */
            public void mo47a(int i) {
                UI_GifMakingController.this.m7140a("ReturnVideoStatus " + i, 3);
                C0121a c0121a = new C0121a(11020);
                c0121a.m1200a("360PlayerStatus", i);
                UI_GifMakingController.this.mo410a(c0121a, 0L);
            }
        });
        this.f7887l.setGifGenerateStatusListener(new GifGenerate.InterfaceC0011g() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.4
            @Override // GeneralFunction.Player.GifGenerate.GifGenerate.InterfaceC0011g
            /* renamed from: a */
            public void mo106a(int i) {
                UI_GifMakingController.this.m7140a("gifGenerateStatusChange: " + i, 3);
                C0121a c0121a = new C0121a(11019);
                c0121a.m1200a("GifGenerateStatus", i);
                UI_GifMakingController.this.mo410a(c0121a, 0L);
            }
        });
        if (this.f7877b.m7974a() == 3600) {
            m7161g();
        } else if (this.f7877b.m7974a() == 3601) {
            m7159f();
            this.f7879d.f7505F = -1;
            this.f7879d.f7506G = -1;
        }
        this.f7855F.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.5
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                UI_GifMakingController.this.m7139a(Math.min(i3, i4), Math.max(i3, i4));
            }
        });
    }

    /* renamed from: f */
    protected void m7159f() {
        this.f7887l.m40d();
        this.f7887l.setEnable(true);
        this.f7887l.setSphericalParameter(this.f7879d.f7523X);
        if (this.f7879d.f7523X.f331a == 6) {
            this.f7887l.m33a(450, 450);
        }
        this.f7887l.setPlayerMode(1);
        this.f7887l.setVideoFilePath(this.f7879d.f7540b.m536o(this.f7879d.f7557s));
        this.f7887l.m41e();
    }

    /* renamed from: g */
    protected void m7161g() {
        this.f7887l.m40d();
        this.f7887l.setEnable(true);
        this.f7887l.setSphericalParameter(this.f7879d.f7523X);
        if (this.f7879d.f7523X.f331a == 6) {
            this.f7887l.m33a(450, 450);
        }
        this.f7887l.setPlayerMode(3);
        this.f7887l.m41e();
        this.f7887l.setGifFromImageDirect(1);
    }

    /* renamed from: h */
    protected void m7162h() {
        String m536o = this.f7879d.f7540b.m536o(this.f7879d.f7557s);
        int m509b = this.f7879d.f7540b.m509b(this.f7879d.f7557s);
        int m512c = this.f7879d.f7540b.m512c(this.f7879d.f7557s);
        int m470c = C0052d.m470c(m536o);
        m7140a("lOrientation: " + m470c, 3);
        this.f7887l.m35a(C1649a.m7016b(m536o, 18096128, m509b, m512c), m470c, true);
    }

    /* renamed from: i */
    protected int m7163i() {
        if (this.f7887l != null) {
            return this.f7887l.m39c();
        }
        return -1;
    }

    /* renamed from: j */
    protected boolean m7164j() {
        return this.f7887l.m39c() == 5 || this.f7887l.m39c() == 1;
    }

    /* renamed from: k */
    protected void m7165k() {
        if (this.f7887l != null) {
            this.f7887l.m38b();
        }
    }

    /* renamed from: v */
    private void m7145v() {
        this.f7880e = this.f7887l.getDuration() / 1000;
        if (this.f7880e < 1) {
            this.f7880e = 1;
        }
        if (this.f7879d.f7521V / 1000 >= this.f7880e) {
            this.f7879d.f7521V = (this.f7880e - 1) * 1000;
        }
        if (this.f7880e <= 10) {
            this.f7879d.f7505F = this.f7879d.f7521V / 1000 >= this.f7880e ? this.f7880e - 1 : this.f7879d.f7521V / 1000;
            this.f7879d.f7506G = this.f7879d.f7505F + 4 >= this.f7880e ? this.f7880e : this.f7879d.f7505F + 4;
            return;
        }
        if (this.f7879d.f7521V / 1000 > this.f7880e - 10) {
            this.f7889n = this.f7880e - 10;
            this.f7879d.f7505F = (this.f7879d.f7521V / 1000) - (this.f7880e - 10);
            this.f7879d.f7506G = this.f7879d.f7505F + 4 < 10 ? this.f7879d.f7505F + 4 : 10;
            return;
        }
        this.f7889n = this.f7879d.f7521V / 1000;
        this.f7879d.f7505F = 0;
        this.f7879d.f7506G = 4;
    }

    /* renamed from: l */
    protected void m7166l() {
        if (this.f7879d.f7505F < 0 || this.f7879d.f7506G < 0) {
            m7145v();
        }
        this.f7860K.removeAllViews();
        this.f7888m = new C0075a(this, this.f7860K, true, this.f7880e <= 10 ? this.f7880e + 1 : 11, 1, this.f7879d.f7505F, this.f7879d.f7506G, true);
        this.f7888m.m734a(this.f7873X);
        this.f7888m.m735a(this.f7874Y);
        if (this.f7880e <= 10) {
            this.f7856G.setVisibility(4);
            m7158e(this.f7879d.f7505F * 1000);
            return;
        }
        this.f7856G.setVisibility(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.f7858I.getLayoutParams());
        m7140a("AAA" + this.f7858I.getWidth(), 3);
        layoutParams.width = (this.f7890o / this.f7880e) * 10;
        this.f7858I.setLayoutParams(layoutParams);
        m7167m();
    }

    /* renamed from: m */
    protected void m7167m() {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(this.f7858I.getLayoutParams());
        marginLayoutParams.setMargins((this.f7889n * this.f7890o) / this.f7880e, 0, 0, 0);
        this.f7858I.setLayoutParams(new FrameLayout.LayoutParams(marginLayoutParams));
        m7158e(this.f7879d.f7505F * 1000);
    }

    /* renamed from: c */
    protected void m7153c(int i) {
        switch (i) {
            case 1:
                this.f7898w.setAlpha(1.0f);
                this.f7851B.setAlpha(1.0f);
                this.f7899x.setAlpha(1.0f);
                this.f7852C.setAlpha(1.0f);
                this.f7899x.setEnabled(true);
                this.f7900y.setImageResource(R.drawable.gallery_top_play_black);
                this.f7853D.setText(getResources().getString(R.string.edit_preview));
                this.f7901z.setAlpha(1.0f);
                this.f7854E.setAlpha(1.0f);
                if (!this.f7882g) {
                    this.f7860K.setVisibility(0);
                    if (this.f7880e <= 10) {
                        this.f7856G.setVisibility(4);
                    } else {
                        this.f7856G.setVisibility(0);
                    }
                    this.f7850A.setVisibility(8);
                    break;
                } else {
                    this.f7860K.setVisibility(4);
                    this.f7856G.setVisibility(4);
                    this.f7850A.setVisibility(0);
                    break;
                }
            case 2:
                this.f7898w.setAlpha(0.3f);
                this.f7851B.setAlpha(0.3f);
                this.f7899x.setAlpha(0.3f);
                this.f7852C.setAlpha(0.3f);
                this.f7899x.setEnabled(false);
                this.f7900y.setImageResource(R.drawable.gallery_top_play_stop);
                this.f7853D.setText(getResources().getString(R.string.edit_stop));
                this.f7901z.setAlpha(0.3f);
                this.f7854E.setAlpha(0.3f);
                if (!this.f7882g) {
                    this.f7860K.setVisibility(4);
                    this.f7856G.setVisibility(4);
                    this.f7850A.setVisibility(8);
                    break;
                } else {
                    this.f7860K.setVisibility(4);
                    this.f7856G.setVisibility(4);
                    this.f7850A.setVisibility(0);
                    break;
                }
        }
    }

    /* renamed from: n */
    protected void m7168n() {
        this.f7861L.setVisibility(4);
        this.f7899x.setImageResource(R.drawable.gallery_top_logo_black);
        this.f7852C.setTextColor(getResources().getColor(R.color.white));
        this.f7855F.setOnClickListener(null);
    }

    /* renamed from: o */
    protected void m7169o() {
        if (this.f7861L.getVisibility() != 0) {
            this.f7861L.setVisibility(0);
            this.f7899x.setImageResource(R.drawable.gallery_top_logo_green);
            this.f7852C.setTextColor(getResources().getColor(R.color.iconcolor));
            this.f7855F.setOnClickListener(this.f7876aa);
            return;
        }
        this.f7861L.setVisibility(4);
        this.f7899x.setImageResource(R.drawable.gallery_top_logo_black);
        this.f7852C.setTextColor(getResources().getColor(R.color.white));
        this.f7855F.setOnClickListener(null);
    }

    /* renamed from: a */
    protected void m7150a(boolean z) {
        if (this.f7867R != null) {
            if (z) {
                this.f7867R.setVisibility(0);
            } else {
                this.f7867R.setVisibility(4);
            }
        }
    }

    /* renamed from: d */
    protected void m7156d(int i) {
        this.f7886k = i;
        this.f7862M.setImageResource(0);
        this.f7863N.setImageResource(0);
        this.f7864O.setImageResource(0);
        this.f7865P.setImageResource(0);
        this.f7866Q.setImageResource(0);
        switch (i) {
            case 0:
                this.f7867R.setImageResource(0);
                this.f7862M.setImageResource(R.drawable.gallery_logolist_cursor);
                break;
            case 1:
                this.f7867R.setImageResource(R.drawable.gallery_logolist_logo_1_500x70);
                this.f7863N.setImageResource(R.drawable.gallery_logolist_cursor);
                break;
            case 2:
                this.f7867R.setImageResource(R.drawable.gallery_logolist_logo_2_500x70);
                this.f7864O.setImageResource(R.drawable.gallery_logolist_cursor);
                break;
            case 3:
                this.f7867R.setImageResource(R.drawable.gallery_logolist_logo_3_500x70);
                this.f7865P.setImageResource(R.drawable.gallery_logolist_cursor);
                break;
            case 4:
                this.f7867R.setImageResource(R.drawable.gallery_logolist_logo_4_500x70);
                this.f7866Q.setImageResource(R.drawable.gallery_logolist_cursor);
                break;
        }
    }

    /* renamed from: p */
    protected void m7170p() {
        if (this.f7898w.getTag().equals(Integer.valueOf(R.drawable.gallery_top_lr_black))) {
            this.f7898w.setTag(Integer.valueOf(R.drawable.gallery_top_rl_black));
            this.f7898w.setImageResource(R.drawable.gallery_top_rl_black);
            this.f7887l.setGifFromImageDirect(0);
        } else {
            this.f7898w.setTag(Integer.valueOf(R.drawable.gallery_top_lr_black));
            this.f7898w.setImageResource(R.drawable.gallery_top_lr_black);
            this.f7887l.setGifFromImageDirect(1);
        }
    }

    /* renamed from: e */
    protected void m7158e(int i) {
        m7140a("Position: " + i + " lCurrentVideoLengthBarStartPoint: " + this.f7889n, 3);
        if (this.f7887l != null) {
            m7140a("Current Position S: " + this.f7887l.getCurrentPosition(), 3);
            this.f7887l.seekTo((this.f7889n * 1000) + i);
            m7140a("Current Position E: " + this.f7887l.getCurrentPosition(), 3);
        }
    }

    /* renamed from: q */
    protected void m7171q() {
        this.f7887l.pause();
    }

    /* renamed from: w */
    private void m7146w() {
        this.f7860K = (FrameLayout) findViewById(R.id.FL_ui_gifmaking_SelectScrollBar);
        this.f7856G = (FrameLayout) findViewById(R.id.FL_ui_gifmaking_VideoLengthBar);
        this.f7857H = (LinearLayout) findViewById(R.id.LL_ui_gifmaking_UnselectedVideoLengthBar);
        this.f7857H.setBackgroundColor(getResources().getColor(R.color.white));
        this.f7858I = (LinearLayout) findViewById(R.id.LL_ui_gifmaking_SelectedVideoLengthBar);
        this.f7858I.setBackgroundColor(getResources().getColor(R.color.turquoise));
        this.f7859J = (Button) findViewById(R.id.B_ui_gifmaking_VideoLengthBarTouchArea);
        this.f7859J.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.8
            /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0007. Please report as an issue. */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction() & 255) {
                }
                int x = (((int) motionEvent.getX()) * UI_GifMakingController.this.f7880e) / UI_GifMakingController.this.f7890o;
                UI_GifMakingController.this.m7140a("AAA t " + ((int) motionEvent.getX()) + " / " + UI_GifMakingController.this.f7890o, 3);
                if (x > UI_GifMakingController.this.f7880e - 5) {
                    UI_GifMakingController.this.f7889n = UI_GifMakingController.this.f7880e - 10;
                } else if (x < 5) {
                    UI_GifMakingController.this.f7889n = 0;
                } else {
                    UI_GifMakingController.this.f7889n = x - 5;
                }
                UI_GifMakingController.this.m7167m();
                return false;
            }
        });
        this.f7897v = (ImageButton) findViewById(R.id.IB_ui_gifmaking_ArrowIcon);
        this.f7897v.setImageResource(R.drawable.gallery_top_back_black);
        this.f7897v.setVisibility(4);
        this.f7898w = (ImageButton) findViewById(R.id.IB_ui_gifmaking_DirectionIcon);
        this.f7898w.setImageResource(R.drawable.gallery_top_lr_black);
        this.f7898w.setTag(Integer.valueOf(R.drawable.gallery_top_lr_black));
        this.f7899x = (ImageButton) findViewById(R.id.IB_ui_gifmaking_StampListIcon);
        this.f7899x.setImageResource(R.drawable.gallery_top_logo_black);
        this.f7900y = (ImageButton) findViewById(R.id.IB_ui_gifmaking_PlayIcon);
        this.f7900y.setImageResource(R.drawable.gallery_top_play_black);
        this.f7901z = (ImageButton) findViewById(R.id.IB_ui_gifmaking_SaveIcon);
        this.f7901z.setImageResource(R.drawable.gallery_top_save_black);
        this.f7897v.setOnClickListener(this.f7876aa);
        this.f7898w.setOnClickListener(this.f7876aa);
        this.f7899x.setOnClickListener(this.f7876aa);
        this.f7900y.setOnClickListener(this.f7876aa);
        this.f7901z.setOnClickListener(this.f7876aa);
        this.f7850A = (FrameLayout) findViewById(R.id.FL_ui_gifmaking_DirectionIconLayout);
        this.f7851B = (TextView) findViewById(R.id.TV_ui_gifmaking_DirectionIcon);
        this.f7852C = (TextView) findViewById(R.id.TV_ui_gifmaking_StampListIcon);
        this.f7853D = (TextView) findViewById(R.id.TV_ui_gifmaking_PlayIcon);
        this.f7854E = (TextView) findViewById(R.id.TV_ui_gifmaking_SaveIcon);
        int m784a = C0079k.m784a(this, Math.min(this.f7890o, this.f7891p) / 40);
        this.f7851B.setText(getResources().getString(R.string.edit_direction));
        this.f7852C.setText(getResources().getString(R.string.edit_logo));
        this.f7853D.setText(getResources().getString(R.string.edit_preview));
        this.f7854E.setText(getResources().getString(R.string.edit_save));
        C0047c m436f = new C0047c(m784a).m434d((int) (m784a * 0.9d)).m445o((int) (m784a * 0.9d)).m436f((int) (m784a * 0.9d));
        this.f7851B.setTextSize(m436f.m430a());
        this.f7852C.setTextSize(m436f.m430a());
        this.f7853D.setTextSize(m436f.m430a());
        this.f7854E.setTextSize(m436f.m430a());
    }

    /* renamed from: x */
    private void m7147x() {
        this.f7867R = (ImageView) findViewById(R.id.IV_ui_gifmaking_StampIcon);
        this.f7868S = (Space) findViewById(R.id.SP_gifmaking_StampSpace);
        this.f7867R.setImageResource(0);
        m7150a(false);
        int min = Math.min(this.f7890o, this.f7891p);
        int max = Math.max(this.f7890o, this.f7891p);
        if (this.f7855F != null) {
            max = this.f7855F.getHeight();
        }
        m7139a(min, max);
        this.f7861L = (LinearLayout) findViewById(R.id.LL_ui_gifmaking_StampSelection);
        this.f7861L.setBackgroundResource(R.drawable.gallery_logolist);
        this.f7861L.setVisibility(4);
        this.f7862M = (ImageButton) findViewById(R.id.IB_ui_gifmaking_StampSelection0);
        this.f7862M.setBackgroundResource(R.drawable.gallery_logolist_logo_0);
        this.f7862M.setImageResource(R.drawable.gallery_logolist_cursor);
        this.f7863N = (ImageButton) findViewById(R.id.IB_ui_gifmaking_StampSelection1);
        this.f7863N.setBackgroundResource(R.drawable.gallery_logolist_logo_1);
        this.f7864O = (ImageButton) findViewById(R.id.IB_ui_gifmaking_StampSelection2);
        this.f7864O.setBackgroundResource(R.drawable.gallery_logolist_logo_2);
        this.f7865P = (ImageButton) findViewById(R.id.IB_ui_gifmaking_StampSelection3);
        this.f7865P.setBackgroundResource(R.drawable.gallery_logolist_logo_3);
        this.f7866Q = (ImageButton) findViewById(R.id.IB_ui_gifmaking_StampSelection4);
        this.f7866Q.setBackgroundResource(R.drawable.gallery_logolist_logo_4);
        this.f7862M.setOnClickListener(this.f7876aa);
        this.f7863N.setOnClickListener(this.f7876aa);
        this.f7864O.setOnClickListener(this.f7876aa);
        this.f7865P.setOnClickListener(this.f7876aa);
        this.f7866Q.setOnClickListener(this.f7876aa);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7139a(int i, int i2) {
        this.f7868S.setVisibility(8);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f7867R.getLayoutParams());
        if (this.f7879d.f7523X.f331a == 6) {
            layoutParams.height = (int) ((i * 58.75d) / 900.0d);
            layoutParams.leftMargin = ((i * 5) / IMediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR) + ((((i * 890) / IMediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR) * 10) / IjkMediaCodecInfo.RANK_LAST_CHANCE);
            layoutParams.topMargin = (int) (((((i2 * 222.5d) / 1600.0d) + this.f7894s) - layoutParams.height) - ((int) (i * 0.0757d)));
        } else {
            layoutParams.height = (int) ((i * 44.5d) / 900.0d);
            layoutParams.leftMargin = ((i * 5) / IMediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR) + ((((i * 890) / IMediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR) * 10) / IjkMediaCodecInfo.RANK_LAST_CHANCE);
            layoutParams.topMargin = (int) (((((i2 * 577.5d) / 1600.0d) + (this.f7894s / 2)) - layoutParams.height) - ((int) (i * 0.0215d)));
        }
        this.f7867R.setLayoutParams(layoutParams);
    }

    /* renamed from: y */
    private void m7148y() {
        this.f7869T = (LinearLayout) findViewById(R.id.LL_ui_gifmaking_MemoryFullLayout);
        this.f7869T.setVisibility(4);
        this.f7869T.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.9
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f7870U = (Button) findViewById(R.id.B_ui_gifmaking_MemoryFullConfirm);
        this.f7870U.setOnClickListener(this.f7876aa);
    }

    /* renamed from: b */
    protected void m7151b(boolean z) {
        if (z) {
            this.f7869T.setVisibility(0);
        } else {
            this.f7869T.setVisibility(4);
        }
    }

    /* renamed from: z */
    private void m7149z() {
        this.f7871V = (LinearLayout) findViewById(R.id.LL_ui_gifmaking_ProgressLayout);
        this.f7871V.setVisibility(4);
        this.f7871V.setAlpha(0.8f);
        this.f7871V.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.10
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f7872W = (ImageView) findViewById(R.id.IV_ui_gifmaking_ProgressIcon);
    }

    /* renamed from: c */
    protected void m7154c(boolean z) {
        if (z) {
            this.f7871V.setVisibility(0);
            ((AnimationDrawable) this.f7872W.getDrawable()).start();
            this.f7879d.f7564z = true;
        } else {
            this.f7871V.setVisibility(4);
            ((AnimationDrawable) this.f7872W.getDrawable()).stop();
            this.f7879d.f7564z = false;
        }
    }

    /* renamed from: r */
    protected boolean m7172r() {
        return new File(this.f7879d.f7540b.m536o(this.f7879d.f7557s)).exists();
    }

    /* renamed from: f */
    public void m7160f(int i) {
        C0052d.m464a(this, i);
    }

    /* renamed from: A */
    private void m7136A() {
        this.f7895t = new OrientationEventListener(this) { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_GifMakingController.3
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                if (i != -1) {
                    if (i > 350 || i < 10) {
                        if (UI_GifMakingController.this.f7893r != 1) {
                            UI_GifMakingController.this.m7160f(1);
                            UI_GifMakingController.this.f7893r = 1;
                            return;
                        }
                        return;
                    }
                    if (i > 170 && i < 190 && UI_GifMakingController.this.f7893r != 9) {
                        UI_GifMakingController.this.m7160f(9);
                        UI_GifMakingController.this.f7893r = 9;
                    }
                }
            }
        };
    }

    /* renamed from: s */
    protected void m7173s() {
        this.f7887l = null;
        m7150a(false);
        Intent intent = new Intent(this, (Class<?>) UI_PhoneGalleryController.class);
        if (this.f7885j) {
            intent.putExtra("mode", 1024);
            this.f7885j = false;
            this.f7879d.f7555q = new C0043a((Context) this.f7877b, true, getResources().getString(R.string.sdcard_removed), 2000);
        } else {
            intent.putExtra("mode", 1056);
        }
        this.f7877b.m7978a(1024, this, intent);
        this.f7877b.m7977a(0, (ActivityC0044a) null);
        this.f7877b.m7988b(268435455L);
    }

    /* renamed from: t */
    protected void m7174t() {
        this.f7887l = null;
        this.f7877b.m7978a(256, this, new Intent(this, (Class<?>) UI_LiveViewController.class));
        this.f7877b.m7977a(0, (ActivityC0044a) null);
        this.f7877b.m7988b(268435455L);
        this.f7879d.f7542d = 1;
    }
}
