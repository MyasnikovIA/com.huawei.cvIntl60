package ui_Controller.ui_Liveview;

import GeneralFunction.C0043a;
import GeneralFunction.C0047c;
import GeneralFunction.C0052d;
import GeneralFunction.C0056e;
import GeneralFunction.C0068g;
import GeneralFunction.C0079k;
import GeneralFunction.C0089n;
import GeneralFunction.C0091o;
import GeneralFunction.Player.player.C0041h;
import GeneralFunction.Player.player.SphericalVideoPlayer;
import GeneralFunction.p001a.ActivityC0044a;
import GeneralFunction.p005e.C0057a;
import GeneralFunction.p005e.C0058b;
import GeneralFunction.p008g.C0069a;
import GeneralFunction.p014l.C0082a;
import GeneralFunction.p014l.C0084b;
import GeneralFunction.p014l.C0085c;
import GeneralFunction.p016m.C0088a;
import GeneralFunction.p017n.C0090a;
import GeneralFunction.p021r.C0097a;
import GeneralFunction.p021r.C0098b;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.AnimationDrawable;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Environment;
import android.os.Message;
import android.os.PowerManager;
import android.support.design.widget.TabLayout;
import android.support.design.widget.TextInputLayout;
import android.support.v4.app.ActivityCompat;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.TextureView;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SeekBar;
import android.widget.Space;
import android.widget.TextView;
import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.api.client.http.HttpStatusCodes;
import com.huawei.cvIntl60.R;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import p026a.p027a.p028a.C0114d;
import p026a.p032c.C0121a;
import ui_Controller.CustomWidget.C1655b;
import ui_Controller.p109a.C1658c;
import ui_Controller.p110b.C1668j;
import ui_Controller.p110b.C1669k;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* loaded from: classes.dex */
public class UI_LiveViewController extends ActivityC0044a implements TextureView.SurfaceTextureListener {

    /* renamed from: g */
    public static final String f8324g = Environment.getExternalStorageDirectory().getPath() + "/DCIM/VS8010W/2016_05_27/100_PICO/PIC_8005.JPG";

    /* renamed from: b */
    protected int f8403b = 0;

    /* renamed from: l */
    private boolean f8507l = false;

    /* renamed from: m */
    private int f8508m = 0;

    /* renamed from: n */
    private int f8509n = 0;

    /* renamed from: o */
    private int f8510o = -1;

    /* renamed from: p */
    private int f8511p = -1;

    /* renamed from: q */
    private C1830b f8512q = null;

    /* renamed from: r */
    private C1829a f8513r = null;

    /* renamed from: c */
    protected UI_ModeMain f8456c = null;

    /* renamed from: d */
    protected C1668j f8500d = null;

    /* renamed from: e */
    protected PowerManager.WakeLock f8501e = null;

    /* renamed from: s */
    private ImageButton f8514s = null;

    /* renamed from: f */
    public SphericalVideoPlayer f8502f = null;

    /* renamed from: t */
    private LinearLayout f8515t = null;

    /* renamed from: u */
    private ImageView f8516u = null;

    /* renamed from: v */
    private ImageButton f8517v = null;

    /* renamed from: w */
    private ImageButton f8518w = null;

    /* renamed from: x */
    private ImageView f8519x = null;

    /* renamed from: y */
    private ImageButton f8520y = null;

    /* renamed from: z */
    private LinearLayout f8521z = null;

    /* renamed from: A */
    private ImageButton f8325A = null;

    /* renamed from: B */
    private ImageButton f8326B = null;

    /* renamed from: C */
    private ImageButton f8327C = null;

    /* renamed from: D */
    private ImageButton f8328D = null;

    /* renamed from: E */
    private HorizontalScrollView f8329E = null;

    /* renamed from: F */
    private HorizontalScrollView f8330F = null;

    /* renamed from: G */
    private ImageButton f8331G = null;

    /* renamed from: H */
    private ImageButton f8332H = null;

    /* renamed from: I */
    private ImageButton f8333I = null;

    /* renamed from: J */
    private ImageButton f8334J = null;

    /* renamed from: K */
    private ImageButton f8335K = null;

    /* renamed from: L */
    private ImageButton f8336L = null;

    /* renamed from: M */
    private TextView f8337M = null;

    /* renamed from: N */
    private TextView f8338N = null;

    /* renamed from: O */
    private TextView f8339O = null;

    /* renamed from: P */
    private TextView f8340P = null;

    /* renamed from: Q */
    private TextView f8341Q = null;

    /* renamed from: R */
    private TextView f8342R = null;

    /* renamed from: S */
    private LinearLayout f8343S = null;

    /* renamed from: T */
    private LinearLayout f8344T = null;

    /* renamed from: U */
    private LinearLayout f8345U = null;

    /* renamed from: V */
    private LinearLayout f8346V = null;

    /* renamed from: W */
    private LinearLayout f8347W = null;

    /* renamed from: X */
    private ArrayList<ImageButton> f8348X = new ArrayList<>(5);

    /* renamed from: Y */
    private ArrayList<LinearLayout> f8349Y = new ArrayList<>(5);

    /* renamed from: Z */
    private ImageButton f8350Z = null;

    /* renamed from: aa */
    private ImageButton f8377aa = null;

    /* renamed from: ab */
    private ImageButton f8378ab = null;

    /* renamed from: ac */
    private ImageButton f8379ac = null;

    /* renamed from: ad */
    private ImageButton f8380ad = null;

    /* renamed from: ae */
    private ImageButton f8381ae = null;

    /* renamed from: af */
    private ImageButton f8382af = null;

    /* renamed from: ag */
    private ImageButton f8383ag = null;

    /* renamed from: ah */
    private ImageButton f8384ah = null;

    /* renamed from: ai */
    private ImageButton f8385ai = null;

    /* renamed from: aj */
    private TextView f8386aj = null;

    /* renamed from: ak */
    private TextView f8387ak = null;

    /* renamed from: al */
    private TextView f8388al = null;

    /* renamed from: am */
    private TextView f8389am = null;

    /* renamed from: an */
    private TextView f8390an = null;

    /* renamed from: ao */
    private TextView f8391ao = null;

    /* renamed from: ap */
    private TextView f8392ap = null;

    /* renamed from: aq */
    private TextView f8393aq = null;

    /* renamed from: ar */
    private TextView f8394ar = null;

    /* renamed from: as */
    private TextView f8395as = null;

    /* renamed from: at */
    private LinearLayout f8396at = null;

    /* renamed from: au */
    private LinearLayout f8397au = null;

    /* renamed from: av */
    private LinearLayout f8398av = null;

    /* renamed from: aw */
    private LinearLayout f8399aw = null;

    /* renamed from: ax */
    private LinearLayout f8400ax = null;

    /* renamed from: ay */
    private LinearLayout f8401ay = null;

    /* renamed from: az */
    private LinearLayout f8402az = null;

    /* renamed from: aA */
    private LinearLayout f8351aA = null;

    /* renamed from: aB */
    private LinearLayout f8352aB = null;

    /* renamed from: aC */
    private ArrayList<ImageButton> f8353aC = new ArrayList<>(9);

    /* renamed from: aD */
    private ArrayList<LinearLayout> f8354aD = new ArrayList<>(9);

    /* renamed from: aE */
    private ImageButton f8355aE = null;

    /* renamed from: aF */
    private LinearLayout f8356aF = null;

    /* renamed from: aG */
    private LinearLayout f8357aG = null;

    /* renamed from: aH */
    private LinearLayout f8358aH = null;

    /* renamed from: aI */
    private LinearLayout f8359aI = null;

    /* renamed from: aJ */
    private LinearLayout f8360aJ = null;

    /* renamed from: aK */
    private LinearLayout f8361aK = null;

    /* renamed from: aL */
    private TextView f8362aL = null;

    /* renamed from: aM */
    private TextView f8363aM = null;

    /* renamed from: aN */
    private ImageButton f8364aN = null;

    /* renamed from: aO */
    private ImageView f8365aO = null;

    /* renamed from: aP */
    private LinearLayout f8366aP = null;

    /* renamed from: aQ */
    private ImageButton f8367aQ = null;

    /* renamed from: aR */
    private LinearLayout f8368aR = null;

    /* renamed from: aS */
    private ImageView f8369aS = null;

    /* renamed from: aT */
    private ImageButton f8370aT = null;

    /* renamed from: aU */
    private TextView f8371aU = null;

    /* renamed from: aV */
    private SeekBar f8372aV = null;

    /* renamed from: aW */
    private TextView f8373aW = null;

    /* renamed from: aX */
    private TextView f8374aX = null;

    /* renamed from: aY */
    private LinearLayout f8375aY = null;

    /* renamed from: aZ */
    private LinearLayout f8376aZ = null;

    /* renamed from: ba */
    private ImageButton f8430ba = null;

    /* renamed from: bb */
    private ImageButton f8431bb = null;

    /* renamed from: bc */
    private ImageView f8432bc = null;

    /* renamed from: bd */
    private LinearLayout f8433bd = null;

    /* renamed from: be */
    private ImageView f8434be = null;

    /* renamed from: bf */
    private LinearLayout f8435bf = null;

    /* renamed from: bg */
    private TextView f8436bg = null;

    /* renamed from: bh */
    private LinearLayout f8437bh = null;

    /* renamed from: bi */
    private TextView f8438bi = null;

    /* renamed from: bj */
    private ImageView f8439bj = null;

    /* renamed from: bk */
    private LinearLayout f8440bk = null;

    /* renamed from: bl */
    private ImageView f8441bl = null;

    /* renamed from: bm */
    private LinearLayout f8442bm = null;

    /* renamed from: bn */
    private LinearLayout f8443bn = null;

    /* renamed from: bo */
    private ImageView f8444bo = null;

    /* renamed from: bp */
    private TextView f8445bp = null;

    /* renamed from: bq */
    private ImageButton f8446bq = null;

    /* renamed from: br */
    private ImageButton f8447br = null;

    /* renamed from: bs */
    private ImageButton f8448bs = null;

    /* renamed from: bt */
    private TextView f8449bt = null;

    /* renamed from: bu */
    private LinearLayout f8450bu = null;

    /* renamed from: bv */
    private Button f8451bv = null;

    /* renamed from: h */
    protected LinearLayout f8503h = null;

    /* renamed from: i */
    protected LinearLayout f8504i = null;

    /* renamed from: j */
    protected ImageView f8505j = null;

    /* renamed from: bw */
    private ImageButton f8452bw = null;

    /* renamed from: bx */
    private ImageButton f8453bx = null;

    /* renamed from: by */
    private ImageButton f8454by = null;

    /* renamed from: bz */
    private ImageButton f8455bz = null;

    /* renamed from: bA */
    private ImageButton f8404bA = null;

    /* renamed from: bB */
    private ImageButton f8405bB = null;

    /* renamed from: bC */
    private ImageButton f8406bC = null;

    /* renamed from: bD */
    private ImageButton f8407bD = null;

    /* renamed from: bE */
    private ImageButton f8408bE = null;

    /* renamed from: bF */
    private ImageButton f8409bF = null;

    /* renamed from: bG */
    private ImageButton f8410bG = null;

    /* renamed from: bH */
    private ImageButton f8411bH = null;

    /* renamed from: bI */
    private TextView f8412bI = null;

    /* renamed from: bJ */
    private TextView f8413bJ = null;

    /* renamed from: bK */
    private TextView f8414bK = null;

    /* renamed from: bL */
    private TextView f8415bL = null;

    /* renamed from: bM */
    private TextView f8416bM = null;

    /* renamed from: bN */
    private TextView f8417bN = null;

    /* renamed from: bO */
    private TextView f8418bO = null;

    /* renamed from: bP */
    private TextView f8419bP = null;

    /* renamed from: bQ */
    private TextView f8420bQ = null;

    /* renamed from: bR */
    private TextView f8421bR = null;

    /* renamed from: bS */
    private TextView f8422bS = null;

    /* renamed from: bT */
    private TextView f8423bT = null;

    /* renamed from: bU */
    private LinearLayout f8424bU = null;

    /* renamed from: bV */
    private TextView f8425bV = null;

    /* renamed from: bW */
    private ArrayList<ImageButton> f8426bW = null;

    /* renamed from: bX */
    private ArrayList<TextView> f8427bX = null;

    /* renamed from: bY */
    private List<Integer> f8428bY = null;

    /* renamed from: bZ */
    private TabLayout f8429bZ = null;

    /* renamed from: ca */
    private TextInputLayout f8474ca = null;

    /* renamed from: cb */
    private EditText f8475cb = null;

    /* renamed from: cc */
    private TextView f8476cc = null;

    /* renamed from: cd */
    private Space f8477cd = null;

    /* renamed from: ce */
    private TextInputLayout f8478ce = null;

    /* renamed from: cf */
    private EditText f8479cf = null;

    /* renamed from: cg */
    private TextView f8480cg = null;

    /* renamed from: ch */
    private LinearLayout f8481ch = null;

    /* renamed from: ci */
    private LinearLayout f8482ci = null;

    /* renamed from: cj */
    private C1827a f8483cj = null;

    /* renamed from: ck */
    private C1828b f8484ck = null;

    /* renamed from: cl */
    private ListView f8485cl = null;

    /* renamed from: cm */
    private ListView f8486cm = null;

    /* renamed from: cn */
    private Integer[] f8487cn = null;

    /* renamed from: co */
    private Integer[] f8488co = null;

    /* renamed from: cp */
    private int[] f8489cp = null;

    /* renamed from: cq */
    private ArrayList<String> f8490cq = null;

    /* renamed from: cr */
    private ArrayList<String> f8491cr = null;

    /* renamed from: cs */
    private ArrayList<Integer> f8492cs = null;

    /* renamed from: ct */
    private String[] f8493ct = null;

    /* renamed from: cu */
    private ImageButton f8494cu = null;

    /* renamed from: cv */
    private ImageButton f8495cv = null;

    /* renamed from: cw */
    private TextView f8496cw = null;

    /* renamed from: cx */
    private LinearLayout f8497cx = null;

    /* renamed from: cy */
    private LinearLayout f8498cy = null;

    /* renamed from: cz */
    private LinearLayout f8499cz = null;

    /* renamed from: cA */
    private TextView f8457cA = null;

    /* renamed from: cB */
    private ImageButton f8458cB = null;

    /* renamed from: cC */
    private ImageButton f8459cC = null;

    /* renamed from: cD */
    private LinearLayout f8460cD = null;

    /* renamed from: cE */
    private ImageButton f8461cE = null;

    /* renamed from: cF */
    private ImageButton f8462cF = null;

    /* renamed from: cG */
    private TextView f8463cG = null;

    /* renamed from: cH */
    private ArrayList<String> f8464cH = null;

    /* renamed from: cI */
    private int[] f8465cI = null;

    /* renamed from: cJ */
    private LinearLayout f8466cJ = null;

    /* renamed from: k */
    protected C0082a.a f8506k = new C0082a.a() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.45
        @Override // GeneralFunction.p014l.C0082a.a
        /* renamed from: a */
        public void mo809a(C0085c c0085c) {
            UI_LiveViewController.this.m7607a("ShareResultCallback result: " + c0085c.f675a, 3);
            UI_LiveViewController.this.f8500d.f7650h.f7694aL.m805a((C0082a.a) null);
            UI_LiveViewController.this.f8500d.f7650h.f7694aL = null;
        }
    };

    /* renamed from: cK */
    private View.OnClickListener f8467cK = new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.56
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (UI_LiveViewController.this.m7680k(view.getId())) {
                UI_LiveViewController.this.m7737a(false);
                UI_LiveViewController.this.m7768e(view.getId());
            }
        }
    };

    /* renamed from: cL */
    private SphericalVideoPlayer.InterfaceC0032f f8468cL = new SphericalVideoPlayer.InterfaceC0032f() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.64
        @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0032f
        /* renamed from: a */
        public void mo233a(int i) {
            UI_LiveViewController.this.m7607a("returnVideoStatus", 3);
            if (UI_LiveViewController.this.f8502f != null) {
                C0121a c0121a = new C0121a(8718);
                c0121a.m1200a("sphericalVideoPlayerStatus", i);
                UI_LiveViewController.this.mo410a(c0121a, 0L);
            }
        }
    };

    /* renamed from: cM */
    private C1655b.a f8469cM = new C1655b.a() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.65
    };

    /* renamed from: cN */
    private View.OnClickListener f8470cN = new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.11
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.IB_ui_live_edit_menu_topBack /* 2131755783 */:
                    if (UI_LiveViewController.this.f8460cD.isShown()) {
                        UI_LiveViewController.this.m7727X();
                    }
                    UI_LiveViewController.this.m7769e(false);
                    UI_LiveViewController.this.f8429bZ.m1919a(UI_LiveViewController.this.f8500d.f7650h.f7707ae).m1963e();
                    break;
                case R.id.IB_ui_live_edit_menu_topConfirm /* 2131755785 */:
                    if (UI_LiveViewController.this.f8460cD.isShown()) {
                        UI_LiveViewController.this.m7727X();
                    }
                    UI_LiveViewController.this.m7653au();
                    UI_LiveViewController.this.m7769e(false);
                    UI_LiveViewController.this.f8429bZ.m1919a(UI_LiveViewController.this.f8500d.f7650h.f7707ae).m1963e();
                    break;
                case R.id.IB_ui_live_setting_menu_topBack /* 2131755795 */:
                    UI_LiveViewController.this.m7772f(false);
                    break;
                case R.id.IB_ui_live_setting_submenu_topBack /* 2131755799 */:
                    UI_LiveViewController.this.m7772f(false);
                    UI_LiveViewController.this.m7774g(false);
                    break;
            }
        }
    };

    /* renamed from: cO */
    private View.OnClickListener f8471cO = new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.48
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            for (int i = 0; i < UI_LiveViewController.this.f8348X.size(); i++) {
                ((LinearLayout) UI_LiveViewController.this.f8349Y.get(i)).setBackgroundResource(0);
                ((LinearLayout) UI_LiveViewController.this.f8349Y.get(i)).setBackgroundColor(-15263977);
            }
            switch (view.getId()) {
                case R.id.IB_WB_ButtonTitle /* 2131755657 */:
                    ((LinearLayout) UI_LiveViewController.this.f8349Y.get(0)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m855n(0);
                    UI_LiveViewController.this.f8329E.smoothScrollTo(UI_LiveViewController.this.f8329E.getWidth() * UI_LiveViewController.this.f8329E.getLayoutDirection(), 0);
                    break;
                case R.id.IB_WB_Button1 /* 2131755661 */:
                    ((LinearLayout) UI_LiveViewController.this.f8349Y.get(0)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m855n(0);
                    break;
                case R.id.IB_WB_Button2 /* 2131755664 */:
                    ((LinearLayout) UI_LiveViewController.this.f8349Y.get(1)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m855n(1);
                    break;
                case R.id.IB_WB_Button3 /* 2131755667 */:
                    ((LinearLayout) UI_LiveViewController.this.f8349Y.get(2)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m855n(2);
                    break;
                case R.id.IB_WB_Button4 /* 2131755670 */:
                    ((LinearLayout) UI_LiveViewController.this.f8349Y.get(3)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m855n(3);
                    break;
                case R.id.IB_WB_Button5 /* 2131755673 */:
                    ((LinearLayout) UI_LiveViewController.this.f8349Y.get(4)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m855n(4);
                    break;
            }
            if (view.getId() == R.id.IB_WB_ButtonTitle || view.getId() == R.id.IB_WB_Button1) {
                UI_LiveViewController.this.f8331G.setImageResource(R.drawable.shooting_effectmenu_wb_white);
                UI_LiveViewController.this.f8337M.setTextColor(UI_LiveViewController.this.getResources().getColor(R.color.white));
            } else {
                UI_LiveViewController.this.f8331G.setImageResource(R.drawable.shooting_effectmenu_icon_wb_green);
                UI_LiveViewController.this.f8337M.setTextColor(UI_LiveViewController.this.getResources().getColor(R.color.iconcolor));
            }
            UI_LiveViewController.this.mo408a(8758, 0L);
        }
    };

    /* renamed from: cP */
    private View.OnClickListener f8472cP = new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.49
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            for (int i = 0; i < UI_LiveViewController.this.f8353aC.size(); i++) {
                ((LinearLayout) UI_LiveViewController.this.f8354aD.get(i)).setBackgroundColor(-15263977);
                ((LinearLayout) UI_LiveViewController.this.f8354aD.get(i)).setBackgroundResource(0);
            }
            switch (view.getId()) {
                case R.id.IB_Filter_ButtonTitle /* 2131755676 */:
                    ((LinearLayout) UI_LiveViewController.this.f8354aD.get(0)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m857o(0);
                    UI_LiveViewController.this.f8330F.smoothScrollTo(UI_LiveViewController.this.f8330F.getWidth() * UI_LiveViewController.this.f8330F.getLayoutDirection(), 0);
                    break;
                case R.id.IB_Filter_Button1 /* 2131755680 */:
                    ((LinearLayout) UI_LiveViewController.this.f8354aD.get(0)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m857o(0);
                    break;
                case R.id.IB_Filter_Button2 /* 2131755683 */:
                    ((LinearLayout) UI_LiveViewController.this.f8354aD.get(1)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m857o(1);
                    break;
                case R.id.IB_Filter_Button3 /* 2131755686 */:
                    ((LinearLayout) UI_LiveViewController.this.f8354aD.get(2)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m857o(2);
                    break;
                case R.id.IB_Filter_Button4 /* 2131755689 */:
                    ((LinearLayout) UI_LiveViewController.this.f8354aD.get(3)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m857o(3);
                    break;
                case R.id.IB_Filter_Button5 /* 2131755692 */:
                    ((LinearLayout) UI_LiveViewController.this.f8354aD.get(4)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m857o(4);
                    break;
                case R.id.IB_Filter_Button6 /* 2131755695 */:
                    ((LinearLayout) UI_LiveViewController.this.f8354aD.get(5)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m857o(5);
                    break;
                case R.id.IB_Filter_Button7 /* 2131755698 */:
                    ((LinearLayout) UI_LiveViewController.this.f8354aD.get(6)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m857o(6);
                    break;
                case R.id.IB_Filter_Button8 /* 2131755701 */:
                    ((LinearLayout) UI_LiveViewController.this.f8354aD.get(7)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m857o(7);
                    break;
                case R.id.IB_Filter_Button9 /* 2131755704 */:
                    ((LinearLayout) UI_LiveViewController.this.f8354aD.get(8)).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                    C0088a.m857o(8);
                    break;
            }
            if (view.getId() == R.id.IB_Filter_ButtonTitle || view.getId() == R.id.IB_Filter_Button1) {
                UI_LiveViewController.this.f8350Z.setImageResource(R.drawable.shooting_effectmenu_filter_white);
                UI_LiveViewController.this.f8386aj.setTextColor(UI_LiveViewController.this.getResources().getColor(R.color.white));
            } else {
                UI_LiveViewController.this.f8350Z.setImageResource(R.drawable.shooting_effectmenu_icon_filter_green);
                UI_LiveViewController.this.f8386aj.setTextColor(UI_LiveViewController.this.getResources().getColor(R.color.iconcolor));
            }
            UI_LiveViewController.this.mo408a(8759, 0L);
        }
    };

    /* renamed from: cQ */
    private C0098b.a f8473cQ = new C0098b.a() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.62
        @Override // GeneralFunction.p021r.C0098b.a
        /* renamed from: a */
        public void mo950a(boolean z) {
            UI_LiveViewController.this.m7607a("OnMuxerInitial: " + z, 3);
            C0121a c0121a = new C0121a(8742);
            c0121a.m1204a("muxerInitResult", z);
            UI_LiveViewController.this.m409a(c0121a);
        }

        @Override // GeneralFunction.p021r.C0098b.a
        /* renamed from: a */
        public void mo948a(long j) {
            UI_LiveViewController.this.f8456c.f8782c.f7650h.f7685aC = j / 1000;
            UI_LiveViewController.this.m407a(8736);
        }

        @Override // GeneralFunction.p021r.C0098b.a
        /* renamed from: a */
        public void mo949a(String str) {
            C0058b c0058b;
            UI_LiveViewController.this.m7607a("*****Save file done*****", 3);
            UI_LiveViewController.this.m7639aZ();
            UI_LiveViewController.this.m7607a("Video durarion2: " + ((UI_LiveViewController.this.f8500d.f7650h.f7686aD - UI_LiveViewController.this.f8500d.f7650h.f7685aC) / 1000), 3);
            if (UI_LiveViewController.this.f8456c.m7974a() != 305) {
                UI_LiveViewController.this.m7607a("Current mode not correct: " + UI_LiveViewController.this.f8456c.m7974a(), 1);
                return;
            }
            if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7674S == 5) {
                UI_LiveViewController.this.m407a(8727);
                return;
            }
            if (str != null) {
                File file = new File(C1658c.f7458f);
                if (!file.exists()) {
                    file.mkdirs();
                }
                try {
                    C0069a.m647c(UI_LiveViewController.this.f8456c.f8782c.f7653k.f7478b.f7526a.m520e(UI_LiveViewController.this.f8500d.f7653k.f7481e.m561c(), 0), C1658c.f7458f + "QuickView.jpg");
                } catch (IOException e) {
                    e.printStackTrace();
                }
                UI_LiveViewController.this.m7749ag();
            } else {
                UI_LiveViewController.this.f8500d.f7653k.f7481e.m553a(UI_LiveViewController.this.f8500d.f7653k.f7481e.m561c(), 0);
                UI_LiveViewController.this.f8456c.m8018x();
                if (C0088a.m820a() == 1) {
                    c0058b = UI_LiveViewController.this.f8500d.f7653k.f7483g;
                } else {
                    c0058b = UI_LiveViewController.this.f8500d.f7653k.f7482f;
                }
                UI_LiveViewController.this.f8500d.f7653k.f7478b.f7526a.m507a(UI_LiveViewController.this.f8500d.f7653k.f7481e.m550a(), c0058b);
            }
            UI_LiveViewController.this.m407a(8727);
        }
    };

    /* renamed from: c */
    protected void m7761c() {
        this.f8500d.f7650h.f7660E.m739a();
    }

    /* renamed from: d */
    protected void m7764d() {
        this.f8500d.f7650h.f7660E.m740b();
    }

    /* renamed from: e */
    protected void m7767e() {
        this.f8500d.f7650h.f7662G.m739a();
    }

    /* renamed from: f */
    protected void m7770f() {
        this.f8500d.f7650h.f7662G.m740b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7607a(String str, int i) {
        C0052d.m465a("UI_LiveViewController", str, i);
    }

    /* renamed from: g */
    protected boolean m7775g() {
        return this.f8507l;
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo408a(int i, long j) {
        if (this.f8456c != null) {
            this.f8456c.m7981a(new C0121a(i), j);
        } else {
            m7607a("SendUiMsg error!! Msg=" + i, 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo410a(C0121a c0121a, long j) {
        if (this.f8456c != null) {
            this.f8456c.m7981a(c0121a, j);
        } else {
            m7607a("SendUiMsg error!! MsgEx=" + c0121a.m1208b().what, 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo413b(int i, long j) {
        if (this.f8456c != null) {
            this.f8456c.m7987b(i, j);
        } else {
            m7607a("UI_SendAidMsg error!!", 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public boolean mo417b() {
        return this.f8510o == 2;
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo416b(Message message) {
        m7607a("AidServer_Handler:0x" + Integer.toHexString(message.what), 3);
        this.f8512q.m7840j(message);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m7607a("onCreate", 0);
        this.f8507l = true;
        this.f8456c = (UI_ModeMain) getApplication();
        this.f8456c.m8016v();
        m7790m(true);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f8508m = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
        this.f8509n = Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels);
        this.f8510o = 1;
        setContentView(R.layout.ui_liveview_portrait);
        this.f8512q = new C1830b(this);
        this.f8513r = new C1829a(this);
        this.f8500d = this.f8456c.f8782c;
        this.f8456c.m7977a(272, this);
        this.f8456c.f8780a = getPreferences(0);
        this.f8456c.f8781b = this.f8456c.f8780a.edit();
        this.f8456c.f8782c.f7650h.f7731d = 288;
        this.f8456c.f8782c.f7650h.f7748u = 0;
        m7646an();
        m7638aY();
        m7799t();
        m7760b(true, false);
        m7759b(true, getResources().getString(R.string.connecting));
        m7657ay();
        m7645am();
        if (this.f8456c.f8782c.f7653k.f7478b.f7526a.m526g(this.f8500d.f7653k.f7481e.m561c(), 0) == null) {
            m7796q();
            m412b(20508);
        }
        m7665bd();
        mo408a(12033, 200L);
    }

    /* renamed from: am */
    private void m7645am() {
        registerReceiver(this.f8456c.f8782c.f7650h.f7719aq, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    /* renamed from: h */
    protected void m7776h() {
        if (C0088a.m867t() && C0088a.m869u()) {
            m7779i();
        }
        C0088a.m870v();
    }

    /* renamed from: i */
    protected void m7779i() {
        this.f8500d.f7653k.f7478b.f7555q = new C0043a(getApplicationContext(), true, getResources().getString(R.string.sdcard_removed), 2000);
        C0088a.m821a(0);
        C0090a.m887b(this.f8456c).putInt("storeLocation", C0088a.m820a()).apply();
        m7664bc();
        this.f8500d.f7653k.f7478b.f7562x = true;
    }

    /* renamed from: j */
    protected void m7782j() {
        SharedPreferences.Editor m887b = C0090a.m887b(this.f8456c);
        m887b.putInt("currentMode", this.f8456c.f8782c.f7650h.f7675T).apply();
        m887b.putInt("pipMode", this.f8456c.f8782c.f7650h.f7676U).apply();
        m887b.putInt("liveCurrentMode", this.f8456c.f8782c.f7650h.f7707ae).apply();
    }

    /* renamed from: an */
    private void m7646an() {
        this.f8456c.f8782c.f7650h.f7707ae = C0090a.m886a(this.f8456c).getInt("liveCurrentMode", 0);
        this.f8456c.f8782c.f7650h.f7675T = C0090a.m886a(this.f8456c).getInt("currentMode", 0);
        this.f8456c.f8782c.f7650h.f7676U = C0090a.m886a(this.f8456c).getInt("pipMode", 0);
        C0088a.m821a(C0090a.m886a(this.f8456c).getInt("storeLocation", 0));
        C0088a.m826b(C0090a.m886a(this.f8456c).getInt("videoResolution", 0));
        C0088a.m831c(C0090a.m886a(this.f8456c).getInt("photoResolution", 0));
        C0088a.m834d(C0090a.m886a(this.f8456c).getInt("liveViewMode", 0));
        C0088a.m837e(C0090a.m886a(this.f8456c).getInt("recordingTime", 0));
        C0088a.m839f(C0090a.m886a(this.f8456c).getInt("getSelfTimer", 0));
        C0088a.m841g(C0090a.m886a(this.f8456c).getInt("pipView", 1));
        C0088a.m843h(C0090a.m886a(this.f8456c).getInt("shutterSound", 0));
        C0088a.m845i(C0090a.m886a(this.f8456c).getInt("waterMark", 0));
        this.f8500d.f7654l.f7613n = C0090a.m886a(this.f8456c).getBoolean("haveNewApkVersion", false);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f8456c.m8016v();
        C0091o.m888a();
        if (!this.f8456c.f8783d.m1264b()) {
            m7760b(true, true);
            m7740a(true, getResources().getString(R.string.no_camera));
            m7759b(false, "");
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        m7607a("onNewIntent", 0);
        this.f8507l = true;
        this.f8456c.m7977a(272, this);
        setIntent(intent);
        this.f8456c.f8782c.f7650h.f7724av = null;
        C0121a c0121a = new C0121a(12041);
        c0121a.m1200a("mode", 256);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onResume() {
        super.onResume();
        m7607a("onResume", 0);
        this.f8507l = true;
        if (this.f8456c.f8782c.f7650h.f7691aI != null) {
            m7739a(true, this.f8456c.f8782c.f7650h.f7691aI);
        }
        if (!this.f8456c.f8783d.m1266d() && this.f8456c.m7974a() != 288) {
            m7714K();
        }
        C0121a c0121a = new C0121a(12034);
        c0121a.m1200a("mode", 256);
        mo410a(c0121a, 0L);
        this.f8456c.f8782c.f7650h.f7718ap.enable();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z && this.f8502f != null && this.f8456c.f8782c.f7650h.f7731d != 305 && this.f8456c.f8782c.f7650h.f7731d != 304 && this.f8456c.f8782c.f7650h.f7692aJ) {
            int m209d = this.f8502f.m209d();
            SphericalVideoPlayer sphericalVideoPlayer = this.f8502f;
            if (m209d == 2) {
                this.f8456c.f8782c.f7650h.f7691aI = this.f8502f.getBitmap();
                this.f8456c.f8782c.f7650h.f7692aJ = false;
            }
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onPause() {
        super.onPause();
        m7607a("onPause", 0);
        this.f8507l = false;
        if (this.f8502f != null && this.f8456c.f8782c.f7650h.f7731d != 305 && this.f8456c.f8782c.f7650h.f7731d != 304 && this.f8456c.f8782c.f7650h.f7692aJ) {
            int m209d = this.f8502f.m209d();
            SphericalVideoPlayer sphericalVideoPlayer = this.f8502f;
            if (m209d == 2) {
                this.f8456c.f8782c.f7650h.f7691aI = this.f8502f.getBitmap();
                this.f8456c.f8782c.f7650h.f7692aJ = false;
            }
        }
        C0121a c0121a = new C0121a(12035);
        c0121a.m1200a("mode", 256);
        mo410a(c0121a, 0L);
        this.f8456c.f8782c.f7650h.f7718ap.disable();
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onStop() {
        super.onStop();
        this.f8507l = false;
        C0121a c0121a = new C0121a(12036);
        c0121a.m1200a("mode", 256);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        m7607a("onDestroy", 0);
        this.f8507l = false;
        this.f8456c.f8782c.f7648f = true;
        C0121a c0121a = new C0121a(12037);
        c0121a.m1200a("mode", 256);
        mo410a(c0121a, 0L);
        try {
            unregisterReceiver(this.f8456c.f8782c.f7650h.f7719aq);
        } catch (IllegalArgumentException e) {
            m7607a("Exception: unregister battery info receiver failed!", 0);
        }
        m7662ba();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        m7607a("onSurfaceTextureAvailable:" + i + " " + i2, 3);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        m7607a("onSurfaceTextureDestroyed", 3);
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        m7607a("onSurfaceTextureSizeChanged:" + i + " " + i2, 3);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo411a(Message message) {
        this.f8512q.m7831a(message);
    }

    /* renamed from: c */
    protected void m7762c(int i) {
        this.f8502f.setFrameRate(i);
    }

    /* renamed from: a */
    protected void m7733a(C0114d c0114d) {
        this.f8502f.m198a(c0114d.f872a, c0114d.f874c, c0114d.f875d);
    }

    /* renamed from: k */
    protected boolean m7786k() {
        return this.f8502f != null && this.f8502f.m209d() == 2;
    }

    /* renamed from: l */
    protected boolean m7788l() {
        return this.f8503h != null && this.f8503h.isShown();
    }

    /* renamed from: a */
    protected void m7737a(boolean z) {
        if (z) {
            m7789m();
            this.f8504i.setVisibility(0);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f8503h, "translationY", 1600.0f, 0.0f);
            ofFloat.setDuration(500L);
            ofFloat.start();
            this.f8503h.setVisibility(0);
            return;
        }
        this.f8504i.setVisibility(4);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f8503h, "translationY", 0.0f, 1600.0f);
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                UI_LiveViewController.this.f8503h.setVisibility(4);
            }
        });
        ofFloat2.setDuration(500L);
        ofFloat2.start();
    }

    /* renamed from: ao */
    private List<Integer> m7647ao() {
        ArrayList arrayList = new ArrayList();
        this.f8500d.f7653k.f7478b.f7532af = C0052d.m469b(this);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f8500d.f7653k.f7478b.f7532af.size()) {
                switch (this.f8500d.f7653k.f7478b.f7532af.get(i2).intValue()) {
                    case 1:
                    case 3:
                    case 7:
                    case 8:
                    case 9:
                        arrayList.add(this.f8500d.f7653k.f7478b.f7532af.get(i2));
                        break;
                }
                i = i2 + 1;
            } else {
                return arrayList;
            }
        }
    }

    /* renamed from: ap */
    private void m7648ap() {
        this.f8503h = (LinearLayout) findViewById(R.id.LL_Liveview_shareLayout);
        this.f8504i = (LinearLayout) findViewById(R.id.LL_Liveview_blank_shareLayout);
        m7737a(false);
        this.f8505j = (ImageView) findViewById(R.id.IB_Liveview_btnShareCancel);
        this.f8505j.setImageResource(R.drawable.system_close_white);
        this.f8452bw = (ImageButton) findViewById(R.id.IB_Liveview_Share_Button1);
        this.f8453bx = (ImageButton) findViewById(R.id.IB_Liveview_Share_Button2);
        this.f8454by = (ImageButton) findViewById(R.id.IB_Liveview_Share_Button3);
        this.f8455bz = (ImageButton) findViewById(R.id.IB_Liveview_Share_Button4);
        this.f8404bA = (ImageButton) findViewById(R.id.IB_Liveview_Share_Button5);
        this.f8405bB = (ImageButton) findViewById(R.id.IB_Liveview_Share_Button6);
        this.f8406bC = (ImageButton) findViewById(R.id.IB_Liveview_Share_Button7);
        this.f8407bD = (ImageButton) findViewById(R.id.IB_Liveview_Share_Button8);
        this.f8408bE = (ImageButton) findViewById(R.id.IB_Liveview_Share_Button9);
        this.f8409bF = (ImageButton) findViewById(R.id.IB_Liveview_Share_Button10);
        this.f8410bG = (ImageButton) findViewById(R.id.IB_Liveview_Share_Button11);
        this.f8411bH = (ImageButton) findViewById(R.id.IB_Liveview_Share_Button12);
        this.f8452bw.setOnClickListener(this.f8467cK);
        this.f8453bx.setOnClickListener(this.f8467cK);
        this.f8454by.setOnClickListener(this.f8467cK);
        this.f8455bz.setOnClickListener(this.f8467cK);
        this.f8404bA.setOnClickListener(this.f8467cK);
        this.f8405bB.setOnClickListener(this.f8467cK);
        this.f8406bC.setOnClickListener(this.f8467cK);
        this.f8407bD.setOnClickListener(this.f8467cK);
        this.f8408bE.setOnClickListener(this.f8467cK);
        this.f8409bF.setOnClickListener(this.f8467cK);
        this.f8410bG.setOnClickListener(this.f8467cK);
        this.f8411bH.setOnClickListener(this.f8467cK);
        this.f8412bI = (TextView) findViewById(R.id.TV_Liveview_Share_Button1);
        this.f8413bJ = (TextView) findViewById(R.id.TV_Liveview_Share_Button2);
        this.f8414bK = (TextView) findViewById(R.id.TV_Liveview_Share_Button3);
        this.f8415bL = (TextView) findViewById(R.id.TV_Liveview_Share_Button4);
        this.f8416bM = (TextView) findViewById(R.id.TV_Liveview_Share_Button5);
        this.f8417bN = (TextView) findViewById(R.id.TV_Liveview_Share_Button6);
        this.f8418bO = (TextView) findViewById(R.id.TV_Liveview_Share_Button7);
        this.f8419bP = (TextView) findViewById(R.id.TV_Liveview_Share_Button8);
        this.f8420bQ = (TextView) findViewById(R.id.TV_Liveview_Share_Button9);
        this.f8421bR = (TextView) findViewById(R.id.TV_Liveview_Share_Button10);
        this.f8422bS = (TextView) findViewById(R.id.TV_Liveview_Share_Button11);
        this.f8423bT = (TextView) findViewById(R.id.TV_Liveview_Share_Button12);
        int m784a = C0079k.m784a(this, this.f8509n / 50);
        this.f8412bI.setTextSize(m784a);
        this.f8413bJ.setTextSize(m784a);
        this.f8414bK.setTextSize(m784a);
        this.f8415bL.setTextSize(m784a);
        this.f8416bM.setTextSize(m784a);
        this.f8417bN.setTextSize(m784a);
        this.f8418bO.setTextSize(m784a);
        this.f8419bP.setTextSize(m784a);
        this.f8420bQ.setTextSize(m784a);
        this.f8421bR.setTextSize(m784a);
        this.f8422bS.setTextSize(m784a);
        this.f8423bT.setTextSize(m784a);
        this.f8426bW = new ArrayList<>();
        this.f8426bW.add(this.f8452bw);
        this.f8426bW.add(this.f8453bx);
        this.f8426bW.add(this.f8454by);
        this.f8426bW.add(this.f8455bz);
        this.f8426bW.add(this.f8404bA);
        this.f8426bW.add(this.f8405bB);
        this.f8426bW.add(this.f8406bC);
        this.f8426bW.add(this.f8407bD);
        this.f8426bW.add(this.f8408bE);
        this.f8426bW.add(this.f8409bF);
        this.f8426bW.add(this.f8410bG);
        this.f8426bW.add(this.f8411bH);
        this.f8427bX = new ArrayList<>();
        this.f8427bX.add(this.f8412bI);
        this.f8427bX.add(this.f8413bJ);
        this.f8427bX.add(this.f8414bK);
        this.f8427bX.add(this.f8415bL);
        this.f8427bX.add(this.f8416bM);
        this.f8427bX.add(this.f8417bN);
        this.f8427bX.add(this.f8418bO);
        this.f8427bX.add(this.f8419bP);
        this.f8427bX.add(this.f8420bQ);
        this.f8427bX.add(this.f8421bR);
        this.f8427bX.add(this.f8422bS);
        this.f8427bX.add(this.f8423bT);
        this.f8424bU = (LinearLayout) findViewById(R.id.LL_Liveview_SNSLayout);
        this.f8425bV = (TextView) findViewById(R.id.TV_Liveview_share_no_sns);
        this.f8504i.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.12
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    UI_LiveViewController.this.m7737a(false);
                }
                if (motionEvent.getAction() == 2) {
                }
                if (motionEvent.getAction() == 1) {
                }
                return true;
            }
        });
        this.f8503h.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.23
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                }
                if (motionEvent.getAction() == 2) {
                }
                if (motionEvent.getAction() == 1) {
                }
                return true;
            }
        });
        this.f8505j.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.34
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                }
                if (motionEvent.getAction() == 2) {
                }
                if (motionEvent.getAction() == 1) {
                    UI_LiveViewController.this.m7737a(false);
                }
                return true;
            }
        });
    }

    /* renamed from: d */
    protected void m7765d(int i) {
        C0084b c0084b = new C0084b();
        c0084b.f666f = this.f8500d.f7650h.f7690aH;
        c0084b.f663c = 12288;
        c0084b.f662b = 4096;
        switch (i) {
            case 1:
                c0084b.f661a = 8192;
                break;
            case 2:
                c0084b.f661a = 8201;
                break;
            case 3:
                c0084b.f661a = 8197;
                break;
            case 4:
                c0084b.f661a = 8199;
                break;
            case 5:
                c0084b.f661a = 8200;
                break;
            case 7:
                c0084b.f661a = 8194;
                break;
            case 8:
                c0084b.f661a = 8202;
                break;
            case 9:
                c0084b.f661a = 8195;
                break;
            case 11:
                c0084b.f661a = 8203;
                break;
        }
        this.f8500d.f7650h.f7694aL = new C0082a();
        this.f8500d.f7650h.f7694aL.m807a(this);
        this.f8500d.f7650h.f7694aL.m805a(this.f8506k);
        this.f8500d.f7650h.f7694aL.m803a(c0084b, this);
    }

    /* renamed from: e */
    protected void m7768e(int i) {
        switch (i) {
            case R.id.IB_Liveview_Share_Button1 /* 2131755747 */:
                if (this.f8428bY.size() > 0) {
                    m7765d(this.f8428bY.get(0).intValue());
                    break;
                }
                break;
            case R.id.IB_Liveview_Share_Button2 /* 2131755749 */:
                if (this.f8428bY.size() > 1) {
                    m7765d(this.f8428bY.get(1).intValue());
                    break;
                }
                break;
            case R.id.IB_Liveview_Share_Button3 /* 2131755751 */:
                if (this.f8428bY.size() > 2) {
                    m7765d(this.f8428bY.get(2).intValue());
                    break;
                }
                break;
            case R.id.IB_Liveview_Share_Button4 /* 2131755753 */:
                if (this.f8428bY.size() > 3) {
                    m7765d(this.f8428bY.get(3).intValue());
                    break;
                }
                break;
            case R.id.IB_Liveview_Share_Button5 /* 2131755755 */:
                if (this.f8428bY.size() > 4) {
                    m7765d(this.f8428bY.get(4).intValue());
                    break;
                }
                break;
            case R.id.IB_Liveview_Share_Button6 /* 2131755757 */:
                if (this.f8428bY.size() > 5) {
                    m7765d(this.f8428bY.get(5).intValue());
                    break;
                }
                break;
            case R.id.IB_Liveview_Share_Button7 /* 2131755759 */:
                if (this.f8428bY.size() > 6) {
                    m7765d(this.f8428bY.get(6).intValue());
                    break;
                }
                break;
            case R.id.IB_Liveview_Share_Button8 /* 2131755761 */:
                if (this.f8428bY.size() > 7) {
                    m7765d(this.f8428bY.get(7).intValue());
                    break;
                }
                break;
            case R.id.IB_Liveview_Share_Button9 /* 2131755763 */:
                if (this.f8428bY.size() > 8) {
                    m7765d(this.f8428bY.get(8).intValue());
                    break;
                }
                break;
            case R.id.IB_Liveview_Share_Button10 /* 2131755765 */:
                if (this.f8428bY.size() > 9) {
                    m7765d(this.f8428bY.get(9).intValue());
                    break;
                }
                break;
            case R.id.IB_Liveview_Share_Button11 /* 2131755767 */:
                if (this.f8428bY.size() > 10) {
                    m7765d(this.f8428bY.get(10).intValue());
                    break;
                }
                break;
            case R.id.IB_Liveview_Share_Button12 /* 2131755769 */:
                if (this.f8428bY.size() > 11) {
                    m7765d(this.f8428bY.get(11).intValue());
                    break;
                }
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public boolean m7680k(int i) {
        for (int i2 = 0; i2 < this.f8456c.f8782c.f7650h.f7702aT; i2++) {
            if (i == this.f8426bW.get(i2).getId()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: m */
    protected void m7789m() {
        this.f8428bY = m7647ao();
        this.f8456c.f8782c.f7650h.f7702aT = this.f8428bY.size();
        for (int i = 0; i < 5; i++) {
            this.f8426bW.get(i).setImageResource(0);
            this.f8427bX.get(i).setText("");
        }
        if (this.f8428bY.size() == 0) {
            this.f8424bU.setVisibility(8);
            this.f8425bV.setVisibility(0);
            return;
        }
        this.f8424bU.setVisibility(0);
        this.f8425bV.setVisibility(8);
        for (int i2 = 0; i2 < this.f8428bY.size(); i2++) {
            switch (this.f8428bY.get(i2).intValue()) {
                case 0:
                    this.f8426bW.get(i2).setImageResource(R.drawable.gallery_share_youtube_english);
                    this.f8427bX.get(i2).setText(getResources().getString(R.string.share_sns_youtube));
                    break;
                case 1:
                    this.f8426bW.get(i2).setImageResource(R.drawable.gallery_share_fb_english);
                    this.f8427bX.get(i2).setText(getResources().getString(R.string.share_sns_facebook));
                    break;
                case 7:
                    this.f8426bW.get(i2).setImageResource(R.drawable.gallery_share_line_english);
                    this.f8427bX.get(i2).setText(getResources().getString(R.string.share_sns_line));
                    break;
                case 8:
                    this.f8426bW.get(i2).setImageResource(R.drawable.gallery_share_whatsapp_english);
                    this.f8427bX.get(i2).setText(getResources().getString(R.string.share_sns_whatsapp));
                    break;
                case 9:
                    this.f8426bW.get(i2).setImageResource(R.drawable.gallery_share_twitter_english);
                    this.f8427bX.get(i2).setText(getResources().getString(R.string.share_sns_twitter));
                    break;
                case 11:
                    this.f8426bW.get(i2).setImageResource(R.drawable.gallery_share_youku_english);
                    this.f8427bX.get(i2).setText(getResources().getString(R.string.share_sns_youku));
                    break;
                case 12:
                    this.f8426bW.get(i2).setImageResource(R.drawable.gallery_share_vk_english);
                    this.f8427bX.get(i2).setText(getResources().getString(R.string.share_sns_vk));
                    break;
                case 13:
                    this.f8426bW.get(i2).setImageResource(R.drawable.gallery_share_snapchat_english);
                    this.f8427bX.get(i2).setText(getResources().getString(R.string.share_sns_snapchat));
                    break;
                case 14:
                    this.f8426bW.get(i2).setImageResource(R.drawable.gallery_share_instagram_english);
                    this.f8427bX.get(i2).setText(getResources().getString(R.string.share_sns_instagram));
                    break;
            }
        }
    }

    /* renamed from: n */
    protected void m7791n() {
        if (this.f8502f != null) {
            m7607a("liveviewSphericalVideoPlayer != null", 0);
            this.f8502f = null;
        } else {
            m7607a("liveviewSphericalVideoPlayer == null", 0);
        }
        this.f8502f = (SphericalVideoPlayer) findViewById(R.id.TV_ui_liveview_h264LiveView);
        this.f8502f.setVisibility(0);
        m7607a("h: " + this.f8502f.getHeight() + " w: " + this.f8502f.getWidth(), 3);
    }

    /* renamed from: o */
    protected void m7793o() {
        if (this.f8456c.f8783d.m1264b()) {
            if (this.f8456c.f8782c.f7650h.f7724av == null) {
                m7607a("objActivity.objModeMain.gsUI.sView.sCurrentSphericalParameter == null", 3);
                this.f8456c.f8782c.f7650h.f7724av = new C0041h();
            }
            if (this.f8502f != null) {
                this.f8456c.f8782c.f7650h.f7724av.f382s = this.f8502f.getSphericalParameter().f382s;
                this.f8456c.f8782c.f7650h.f7724av.f376m = this.f8502f.getSphericalParameter().f376m;
                this.f8456c.f8782c.f7650h.f7724av.f375l = this.f8502f.getSphericalParameter().f375l;
                this.f8456c.f8782c.f7650h.f7724av.f331a = 3;
                this.f8456c.f8782c.f7650h.f7724av.f380q = this.f8502f.getSphericalParameter().f380q;
                this.f8456c.f8782c.f7650h.f7724av.f381r = this.f8502f.getSphericalParameter().f381r;
            }
            m7607a("get objActivity.objModeMain.gsUI.sView.sCurrentSphericalParameter.playerFormat: " + this.f8456c.f8782c.f7650h.f7724av.f376m, 3);
            m7607a("get objActivity.objModeMain.gsUI.sView.sCurrentSphericalParameter.viewType: " + this.f8456c.f8782c.f7650h.f7724av.f331a, 3);
            return;
        }
        this.f8456c.f8782c.f7650h.f7724av = null;
    }

    /* renamed from: p */
    protected void m7795p() {
        m7607a("init360LiveView", 4);
        m7791n();
        this.f8502f.m211f();
        m7607a("GetPlayerStatus(): " + this.f8502f.m209d(), 3);
        this.f8502f.setPlayerStatusListener(this.f8468cL);
    }

    /* renamed from: q */
    protected void m7796q() {
        String[] list;
        File file = new File(C1658c.f7458f);
        if (file.isDirectory() && (list = file.list()) != null) {
            for (String str : list) {
                new File(file, str).delete();
            }
        }
    }

    /* renamed from: f */
    protected void m7771f(int i) {
        switch (i) {
            case 49:
                m7741a(true, true);
                break;
            case 50:
                this.f8456c.m7988b(268435455L);
                mo408a(8818, 0L);
                break;
            case 53:
                this.f8456c.m7988b(268435455L);
                this.f8500d.f7650h.f7738k = false;
                m7773g(64);
                m7741a(false, true);
                break;
        }
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: a */
    protected void m7738a(boolean z, int i) {
        m7607a("recordTime: " + i, 3);
        double d = (this.f8456c.f8782c.f7650h.f7687aE / 1024.0d) / 1024.0d;
        double d2 = (this.f8456c.f8782c.f7650h.f7753z / 1024.0d) / 1024.0d;
        if (z) {
            this.f8362aL.setText(String.format("%02d:%02d", Integer.valueOf((i / 60) % 60), Integer.valueOf(i % 60)));
            ObjectAnimator.ofFloat(this.f8365aO, "alpha", 0.0f, 1.0f).setDuration(1000L).start();
            DecimalFormat decimalFormat = new DecimalFormat("#.#");
            String format = decimalFormat.format(d - d2);
            if (d - d2 <= 0.0d) {
                format = String.format("%d", 0);
                m7607a("dlStorageSizeBeforRecording: " + d, 3);
                m7607a("dlAvailableMemorySize: " + d2, 3);
            }
            this.f8363aM.setText(format + "MB / " + decimalFormat.format(d2 / 1024.0d) + "GB");
            if (i == m7694r(C0088a.m836e())) {
                m407a(8725);
            }
        } else {
            this.f8362aL.setText(String.format("%02d:%02d", Integer.valueOf((i / 60) % 60), Integer.valueOf(i % 60)));
            DecimalFormat decimalFormat2 = new DecimalFormat("#.#");
            this.f8363aM.setText(decimalFormat2.format(d - d2) + "MB / " + decimalFormat2.format(d2 / 1024.0d) + "GB");
        }
        if (m7750ah()) {
            m407a(8778);
        }
    }

    /* renamed from: r */
    protected void m7797r() {
        double m461a;
        DecimalFormat decimalFormat = new DecimalFormat("#.#");
        if (C0088a.m820a() == 0) {
            m461a = C0052d.m461a(C1658c.f7453a, 0);
        } else {
            m461a = C0052d.m461a(this.f8456c.f8782c.f7653k.f7478b.f7528ab, 0);
        }
        this.f8363aM.setText(String.format("%d", 0) + "MB / " + decimalFormat.format(Double.parseDouble(Double.toString(((m461a / 1024.0d) / 1024.0d) / 1024.0d))) + "GB");
    }

    /* renamed from: g */
    protected void m7773g(int i) {
        switch (i) {
            case 64:
                this.f8500d.f7650h.f7729b = 262;
                m7757b(true);
                break;
            case 65:
                this.f8500d.f7650h.f7729b = 256;
                m7757b(false);
                break;
        }
    }

    /* renamed from: b */
    protected void m7757b(boolean z) {
        if (z) {
            this.f8515t.setAlpha(0.7f);
            this.f8515t.setBackgroundColor(getResources().getColor(R.color.black));
            this.f8515t.setVisibility(0);
            ((AnimationDrawable) this.f8516u.getDrawable()).start();
            return;
        }
        this.f8515t.setBackgroundColor(getResources().getColor(R.color.transparent));
        this.f8515t.setVisibility(4);
        ((AnimationDrawable) this.f8516u.getDrawable()).stop();
    }

    /* renamed from: a */
    protected void m7741a(boolean z, boolean z2) {
        if (z) {
            if (z2) {
                this.f8500d.f7650h.f7735h = 0;
            }
            this.f8500d.f7650h.f7656A = new Timer();
            this.f8500d.f7650h.f7656A.scheduleAtFixedRate(new TimerTask() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.66
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    UI_LiveViewController.this.f8500d.f7650h.f7735h++;
                    UI_LiveViewController.this.m407a(8825);
                }
            }, 1000L, 1000L);
            return;
        }
        m7607a("*****lPlayTime: " + this.f8500d.f7650h.f7735h, 0);
        this.f8500d.f7650h.f7684aB = this.f8500d.f7650h.f7735h;
        if (z2) {
            this.f8500d.f7650h.f7735h = 0;
        }
        if (this.f8500d.f7650h.f7656A != null) {
            this.f8500d.f7650h.f7741n = false;
            this.f8500d.f7650h.f7656A.cancel();
            this.f8500d.f7650h.f7656A = null;
        }
    }

    /* renamed from: s */
    protected void m7798s() {
        m7607a("ReleaseAndUnlockAllLiveViewFrame_S", 3);
        m7761c();
        m7764d();
        m7607a("ReleaseAndUnlockAllLiveViewFrame_E", 3);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        m7607a("onActivityResult requestCode:" + i, 3);
        this.f8456c.m8003h().m757a(i, i2, intent);
        super.onActivityResult(i, i2, intent);
    }

    /* renamed from: t */
    protected void m7799t() {
        m7795p();
        m7658az();
        m7627aN();
        m7630aQ();
        m7621aH();
        m7626aM();
        m7623aJ();
        m7631aR();
        m7622aI();
        m7624aK();
        m7632aS();
        m7628aO();
        m7650ar();
        m7633aT();
        m7614aA();
        m7629aP();
        m7656ax();
        m7649aq();
        m7654av();
        m7652at();
        m7648ap();
    }

    /* renamed from: aq */
    private void m7649aq() {
        this.f8450bu = (LinearLayout) findViewById(R.id.LL_ui_Liveview_FailLayout);
        this.f8451bv = (Button) findViewById(R.id.B_ui_Liveview_Fail_Button);
        this.f8451bv.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LiveViewController.this.m7763c(false);
            }
        });
        this.f8450bu.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    /* renamed from: c */
    protected void m7763c(boolean z) {
        if (z) {
            this.f8450bu.setVisibility(0);
        } else {
            this.f8450bu.setVisibility(4);
        }
    }

    /* renamed from: u */
    protected boolean m7800u() {
        return this.f8450bu != null && this.f8450bu.isShown();
    }

    /* renamed from: v */
    protected boolean m7801v() {
        return this.f8460cD != null && this.f8460cD.isShown();
    }

    /* renamed from: w */
    protected boolean m7802w() {
        return this.f8481ch != null && this.f8481ch.isShown();
    }

    /* renamed from: x */
    protected boolean m7803x() {
        return this.f8482ci != null && this.f8482ci.isShown();
    }

    /* renamed from: y */
    protected boolean m7804y() {
        if (this.f8481ch != null && this.f8481ch.isShown()) {
            return true;
        }
        if (this.f8482ci != null) {
            return this.f8482ci.isShown();
        }
        return false;
    }

    /* renamed from: ar */
    private void m7650ar() {
        this.f8443bn = (LinearLayout) findViewById(R.id.LL_Broadcasting_Layout);
        this.f8444bo = (ImageView) findViewById(R.id.IV_Broadcasting_Icon);
        this.f8445bp = (TextView) findViewById(R.id.TV_Current_Broadcasting_Time);
        this.f8446bq = (ImageButton) findViewById(R.id.IB_ui_Broadcast_Stop_Button);
        this.f8447br = (ImageButton) findViewById(R.id.IB_ui_Broadcast_Share_Button);
        if (this.f8500d.f7650h.f7707ae == 0) {
            this.f8447br.setVisibility(4);
        } else {
            this.f8447br.setVisibility(0);
        }
        this.f8448bs = (ImageButton) findViewById(R.id.IB_ui_Broadcast_Pause_Play_Button);
        this.f8449bt = (TextView) findViewById(R.id.TV_ui_LiveSettingText_fix);
        this.f8449bt.setText(this.f8464cH.get(C0088a.m852m()));
        this.f8443bn.setVisibility(4);
        this.f8443bn.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f8448bs.setImageResource(R.drawable.shooting_shutterkey_live_pause);
        this.f8447br.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UI_LiveViewController.this.f8500d.f7650h.f7730c != 299 && UI_LiveViewController.this.f8500d.f7650h.f7730c != 300) {
                    UI_LiveViewController.this.m7607a("error case of btnYoutubeShare ", 4);
                } else {
                    UI_LiveViewController.this.mo408a(8792, 0L);
                }
            }
        });
        this.f8446bq.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UI_LiveViewController.this.f8500d.f7650h.f7730c != 299 && UI_LiveViewController.this.f8500d.f7650h.f7730c != 300) {
                    UI_LiveViewController.this.m7607a("error case of btnYoutubeStop ", 4);
                } else if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7707ae == 1) {
                    C0091o.m893a((Context) UI_LiveViewController.this, true, false, UI_LiveViewController.this.getResources().getString(R.string.broadcast_check_stop_title), UI_LiveViewController.this.getResources().getString(R.string.broadcast_check_stop_description), new String[]{UI_LiveViewController.this.getResources().getString(R.string.dialog_option_no), UI_LiveViewController.this.getResources().getString(R.string.dialog_option_yes)}, new int[]{0, 8785}, true);
                } else {
                    C0091o.m893a((Context) UI_LiveViewController.this, true, false, UI_LiveViewController.this.getResources().getString(R.string.broadcast_check_stop_title), UI_LiveViewController.this.getResources().getString(R.string.broadcast_check_stop_description), new String[]{UI_LiveViewController.this.getResources().getString(R.string.dialog_option_no), UI_LiveViewController.this.getResources().getString(R.string.dialog_option_yes)}, new int[]{0, 8796}, true);
                }
            }
        });
        this.f8448bs.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LiveViewController.this.m7618aE();
            }
        });
    }

    /* renamed from: z */
    protected void m7805z() {
        this.f8448bs.setImageResource(R.drawable.shooting_shutterkey_live_pause);
    }

    /* renamed from: d */
    protected void m7766d(boolean z) {
        if (z) {
            ObjectAnimator.ofFloat(this.f8443bn, "translationY", 500.0f, 0.0f).setDuration(300L).start();
            this.f8443bn.setVisibility(0);
            this.f8500d.f7650h.f7735h = (int) (this.f8500d.f7650h.f7670O / 30);
            this.f8445bp.setText(String.format("%02d:%02d", Integer.valueOf((this.f8500d.f7650h.f7735h / 60) % 60), Integer.valueOf(this.f8500d.f7650h.f7735h % 60)));
            m7741a(true, false);
            return;
        }
        m7759b(false, "");
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f8443bn, "translationY", 0.0f, 500.0f);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                UI_LiveViewController.this.f8443bn.setVisibility(4);
            }
        });
        ofFloat.setDuration(300L);
        ofFloat.start();
        m7741a(false, false);
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: b */
    protected void m7758b(boolean z, int i) {
        String format;
        m7607a("broadcastTime: " + i, 3);
        if (z) {
            if (i >= 3600) {
                format = String.format("%d:%02d:%02d", Integer.valueOf(i / 3600), Integer.valueOf((i / 60) % 60), Integer.valueOf(i % 60));
            } else {
                format = String.format("%02d:%02d", Integer.valueOf((i / 60) % 60), Integer.valueOf(i % 60));
            }
            this.f8445bp.setText(format);
            ObjectAnimator.ofFloat(this.f8444bo, "alpha", 0.0f, 1.0f).setDuration(800L).start();
            return;
        }
        this.f8445bp.setText("00:00");
    }

    /* renamed from: ui_Controller.ui_Liveview.UI_LiveViewController$a */
    protected class C1827a extends BaseAdapter {

        /* renamed from: b */
        private int[] f8595b;

        /* renamed from: c */
        private List<String> f8596c;

        /* renamed from: d */
        private String[] f8597d;

        /* renamed from: e */
        private List<Integer> f8598e;

        public C1827a(Context context, List<String> list, String[] strArr, int[] iArr, List<Integer> list2) {
            this.f8596c = list;
            this.f8595b = iArr;
            this.f8597d = strArr;
            this.f8598e = list2;
        }

        /* renamed from: a */
        public void m7806a() {
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f8598e.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f8596c.get((int) getItemId(i));
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.f8598e.get(i).intValue();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = LayoutInflater.from(UI_LiveViewController.this.getApplicationContext()).inflate(R.layout.setting_menu, (ViewGroup) null);
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.LL_ui_setting_menu_listview_text);
            LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.LL_ui_setting_menu_listview_icon);
            linearLayout.getLayoutParams().height = UI_LiveViewController.this.f8509n / 11;
            linearLayout2.getLayoutParams().height = UI_LiveViewController.this.f8509n / 11;
            ((ImageView) inflate.findViewById(R.id.setting_menu_list_icon)).setImageResource(this.f8595b[i]);
            ((TextView) inflate.findViewById(R.id.textTitle)).setText(this.f8596c.get(i));
            ((TextView) inflate.findViewById(R.id.textDetail)).setText(this.f8597d[i]);
            return inflate;
        }
    }

    /* renamed from: ui_Controller.ui_Liveview.UI_LiveViewController$b */
    protected class C1828b extends BaseAdapter {

        /* renamed from: b */
        private int[] f8600b;

        /* renamed from: c */
        private List<String> f8601c;

        /* renamed from: d */
        private List<Integer> f8602d;

        public C1828b(Context context, List<String> list, int[] iArr, List<Integer> list2) {
            this.f8601c = list;
            this.f8600b = iArr;
            this.f8602d = list2;
        }

        /* renamed from: a */
        public void m7807a() {
            notifyDataSetChanged();
        }

        /* renamed from: a */
        public void m7808a(int i, View view, ViewGroup viewGroup) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < getCount()) {
                    if (i3 == i) {
                        ((ImageView) view.findViewById(R.id.setting_submenu_list_icon)).setImageResource(R.drawable.settings_radio_on);
                    } else {
                        ((ImageView) viewGroup.getChildAt(i3).findViewById(R.id.setting_submenu_list_icon)).setImageResource(R.drawable.settings_radio_off);
                    }
                    i2 = i3 + 1;
                } else {
                    return;
                }
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f8602d.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f8601c.get((int) getItemId(i));
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.f8602d.get(i).intValue();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = LayoutInflater.from(UI_LiveViewController.this.getApplicationContext()).inflate(R.layout.setting_submenu, (ViewGroup) null);
            ((LinearLayout) inflate.findViewById(R.id.LL_ui_setting_submenu_listview_text)).getLayoutParams().height = UI_LiveViewController.this.f8509n / 11;
            ((LinearLayout) inflate.findViewById(R.id.LL_ui_setting_submenu_listview_icon)).getLayoutParams().height = UI_LiveViewController.this.f8509n / 11;
            ((TextView) inflate.findViewById(R.id.textDetail)).setText(this.f8601c.get(i));
            ((ImageView) inflate.findViewById(R.id.setting_submenu_list_icon)).setImageResource(this.f8600b[i]);
            return inflate;
        }
    }

    /* renamed from: as */
    private void m7651as() {
        this.f8489cp = new int[]{R.drawable.settings_radio_off, R.drawable.settings_radio_off};
    }

    /* renamed from: A */
    public void m7704A() {
        this.f8493ct = new String[this.f8490cq.size()];
        this.f8493ct[0] = this.f8491cr.get(C0088a.m852m());
    }

    /* renamed from: at */
    private void m7652at() {
        m7651as();
        int[] iArr = {R.drawable.settings_arrow};
        this.f8490cq = new ArrayList<>();
        this.f8490cq.add(getResources().getString(R.string.bitrate));
        this.f8491cr = new ArrayList<>();
        this.f8491cr.add(getResources().getString(R.string.mbps_4));
        this.f8491cr.add(getResources().getString(R.string.mbps_8));
        m7704A();
        this.f8487cn = new Integer[]{0};
        this.f8488co = new Integer[]{0, 1};
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(this.f8487cn));
        this.f8481ch = (LinearLayout) findViewById(R.id.LL_ui_live_setting_menu);
        this.f8485cl = (ListView) findViewById(R.id.LV_ui_live_setting_menu);
        this.f8494cu = (ImageButton) findViewById(R.id.IB_ui_live_setting_menu_topBack);
        this.f8494cu.setOnClickListener(this.f8470cN);
        this.f8483cj = new C1827a(this, this.f8490cq, this.f8493ct, iArr, arrayList);
        this.f8485cl.setAdapter((ListAdapter) this.f8483cj);
        this.f8485cl.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.9
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                UI_LiveViewController.this.f8456c.f8782c.f7650h.f7697aO = i;
                if (i == 0) {
                    UI_LiveViewController.this.m7682l(i);
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(UI_LiveViewController.this.f8482ci, "translationX", 1600.0f, 0.0f);
                    ofFloat.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.9.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            UI_LiveViewController.this.m7772f(false);
                            UI_LiveViewController.this.m7691p(false);
                        }
                    });
                    ofFloat.setDuration(300L);
                    UI_LiveViewController.this.m7691p(true);
                    if (UI_LiveViewController.this.f8456c.f8783d.m1264b()) {
                        ofFloat.start();
                        UI_LiveViewController.this.m7774g(true);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public void m7682l(int i) {
        this.f8492cs = new ArrayList<>();
        switch (i) {
            case 0:
                this.f8492cs.addAll(Arrays.asList(this.f8488co));
                this.f8489cp[C0088a.m852m()] = R.drawable.settings_radio_on;
                this.f8484ck = new C1828b(this, this.f8491cr, this.f8489cp, this.f8492cs);
                break;
        }
        this.f8482ci = (LinearLayout) findViewById(R.id.LL_ui_live_setting_submenu);
        this.f8486cm = (ListView) findViewById(R.id.LV_ui_live_setting_submenu);
        this.f8495cv = (ImageButton) findViewById(R.id.IB_ui_live_setting_submenu_topBack);
        this.f8495cv.setOnClickListener(this.f8470cN);
        this.f8496cw = (TextView) findViewById(R.id.TV_ui_live_setting_submenu_title);
        this.f8496cw.setText(this.f8490cq.get(i));
        this.f8486cm.setAdapter((ListAdapter) this.f8484ck);
        this.f8486cm.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.10
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                UI_LiveViewController.this.f8456c.f8782c.f7650h.f7698aP = i2;
                UI_LiveViewController.this.f8484ck.m7808a(i2, view, adapterView);
                UI_LiveViewController.this.m7705B();
            }
        });
    }

    /* renamed from: B */
    protected void m7705B() {
        m7607a("lLiveSelectOption: " + this.f8456c.f8782c.f7650h.f7697aO + "  lLiveSubSelectOption: " + this.f8456c.f8782c.f7650h.f7698aP, 3);
        switch (this.f8456c.f8782c.f7650h.f7697aO) {
            case 0:
                C0088a.m847j(this.f8456c.f8782c.f7650h.f7698aP);
                this.f8463cG.setText(this.f8464cH.get(C0088a.m852m()));
                this.f8449bt.setText(this.f8464cH.get(C0088a.m852m()));
                this.f8493ct[this.f8456c.f8782c.f7650h.f7697aO] = this.f8491cr.get(this.f8456c.f8782c.f7650h.f7698aP);
                for (int i = 0; i < this.f8489cp.length; i++) {
                    if (i == this.f8456c.f8782c.f7650h.f7698aP) {
                        this.f8489cp[i] = R.drawable.settings_radio_on;
                    } else {
                        this.f8489cp[i] = R.drawable.settings_radio_off;
                    }
                }
                m7774g(false);
                m7772f(true);
                break;
        }
        this.f8483cj.m7806a();
        if (this.f8484ck != null) {
            this.f8484ck.m7807a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: au */
    public void m7653au() {
        this.f8500d.f7650h.f7707ae = this.f8429bZ.getSelectedTabPosition();
        this.f8462cF.setImageResource(this.f8465cI[this.f8500d.f7650h.f7707ae]);
        if (this.f8500d.f7650h.f7707ae == 0) {
            this.f8447br.setVisibility(4);
        } else {
            this.f8447br.setVisibility(0);
        }
        m7685n(this.f8500d.f7650h.f7707ae);
    }

    /* renamed from: av */
    private void m7654av() {
        this.f8457cA = (TextView) findViewById(R.id.TV_ui_Live_Title_livePlatform);
        int m784a = C0079k.m784a(this, this.f8508m / 26);
        this.f8457cA.setTextSize(new C0047c(m784a).m436f((int) (m784a * 0.9d)).m430a());
        this.f8458cB = (ImageButton) findViewById(R.id.IB_ui_live_edit_menu_topBack);
        this.f8458cB.setOnClickListener(this.f8470cN);
        this.f8459cC = (ImageButton) findViewById(R.id.IB_ui_live_edit_menu_topConfirm);
        this.f8459cC.setOnClickListener(this.f8470cN);
        m7655aw();
        this.f8460cD = (LinearLayout) findViewById(R.id.LL_ui_Liveview_EditLayout);
        this.f8475cb = (EditText) findViewById(R.id.ET_ui_Live_Title_EditText);
        this.f8476cc = (TextView) findViewById(R.id.TV_ui_Live_Title_EditCounter);
        this.f8477cd = (Space) findViewById(R.id.S_ui_Live_Space);
        this.f8479cf = (EditText) findViewById(R.id.ET_ui_Live_Description_EditText);
        this.f8480cg = (TextView) findViewById(R.id.TV_ui_Live_Description_EditCounter);
        this.f8429bZ.m1919a(this.f8500d.f7650h.f7707ae).m1963e();
        m7684m(this.f8500d.f7650h.f7707ae);
        this.f8460cD.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.13
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                UI_LiveViewController.this.m7727X();
                UI_LiveViewController.this.f8460cD.setFocusable(true);
                UI_LiveViewController.this.f8460cD.setFocusableInTouchMode(true);
                return true;
            }
        });
        this.f8475cb.addTextChangedListener(new TextWatcher() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.14

            /* renamed from: b */
            private int f8528b = 100;

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                UI_LiveViewController.this.m7605a(editable, UI_LiveViewController.this.f8475cb, this, this.f8528b, UI_LiveViewController.this.f8476cc);
            }
        });
        this.f8479cf.addTextChangedListener(new TextWatcher() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.15

            /* renamed from: b */
            private int f8530b = 250;

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                UI_LiveViewController.this.m7605a(editable, UI_LiveViewController.this.f8479cf, this, this.f8530b, UI_LiveViewController.this.f8480cg);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7605a(Editable editable, EditText editText, TextWatcher textWatcher, int i, TextView textView) {
        int selectionStart = editText.getSelectionStart();
        int selectionEnd = editText.getSelectionEnd();
        editText.removeTextChangedListener(textWatcher);
        if (!TextUtils.isEmpty(editText.getText())) {
            while (m7666c(editable.toString()) > i) {
                editable.delete(selectionStart - 1, selectionEnd);
                selectionStart--;
                selectionEnd--;
            }
        }
        textView.setText(Integer.toString(m7666c(editable.toString())) + "/" + i);
        editText.setSelection(selectionStart);
        editText.addTextChangedListener(textWatcher);
    }

    /* renamed from: c */
    private int m7666c(String str) {
        try {
            str.getBytes("GBK");
            return str.length();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* renamed from: aw */
    private void m7655aw() {
        this.f8474ca = (TextInputLayout) findViewById(R.id.TIL_ui_Live_Title_TextInputLayout);
        this.f8478ce = (TextInputLayout) findViewById(R.id.TIL_ui_Live_Description_TextInputLayout);
        this.f8429bZ = (TabLayout) findViewById(R.id.TL_ui_Live_Select_TabLayout);
        this.f8429bZ.setTabGravity(0);
        this.f8429bZ.m1923a(this.f8429bZ.m1918a().m1961d(R.string.share_sns_facebook));
        this.f8429bZ.m1923a(this.f8429bZ.m1918a().m1961d(R.string.share_sns_youtube));
        this.f8429bZ.m1919a(0).m1960c(this.f8465cI[0]);
        this.f8429bZ.m1919a(1).m1960c(this.f8465cI[1]);
        this.f8429bZ.m1922a(new TabLayout.InterfaceC0260c() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.16
            @Override // android.support.design.widget.TabLayout.InterfaceC0259b
            /* renamed from: a */
            public void mo1938a(TabLayout.C0263f c0263f) {
                UI_LiveViewController.this.m7684m(c0263f.m1959c());
            }

            @Override // android.support.design.widget.TabLayout.InterfaceC0259b
            /* renamed from: b */
            public void mo1939b(TabLayout.C0263f c0263f) {
            }

            @Override // android.support.design.widget.TabLayout.InterfaceC0259b
            /* renamed from: c */
            public void mo1940c(TabLayout.C0263f c0263f) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m7684m(int i) {
        if (i == 0) {
            this.f8479cf.setText(this.f8500d.f7650h.f7699aQ);
            this.f8474ca.setVisibility(8);
            this.f8476cc.setVisibility(8);
            this.f8477cd.setVisibility(8);
            return;
        }
        this.f8475cb.setText(this.f8500d.f7650h.f7700aR);
        this.f8479cf.setText(this.f8500d.f7650h.f7701aS);
        this.f8474ca.setVisibility(0);
        this.f8476cc.setVisibility(0);
        this.f8477cd.setVisibility(0);
        this.f8475cb.requestFocus();
    }

    /* renamed from: C */
    protected C1829a m7706C() {
        return this.f8513r;
    }

    /* renamed from: ax */
    private void m7656ax() {
        this.f8440bk = (LinearLayout) findViewById(R.id.LL_Recordindg_Capturing_Process_Layout);
        this.f8441bl = (ImageView) findViewById(R.id.IV_ui_Recordindg_Capturing_Process_View);
        this.f8442bm = (LinearLayout) findViewById(R.id.LL_Recordindg_Capturing_Thumbnail_Layout);
        this.f8440bk.setVisibility(4);
        this.f8440bk.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.17
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    /* renamed from: a */
    protected void m7732a(int i, boolean z) {
        if (z) {
            this.f8355aE.setImageBitmap(null);
            if (i == 0) {
                this.f8441bl.setImageResource(R.drawable.shooting_shutterkey_photo);
            } else if (i == 1) {
                this.f8441bl.setImageResource(R.drawable.shooting_shutterkey_video);
            }
            this.f8442bm.setBackgroundColor(getResources().getColor(android.R.color.black));
            this.f8440bk.setVisibility(0);
            m7784j(z);
            return;
        }
        this.f8440bk.setVisibility(4);
        this.f8441bl.setImageResource(0);
        m7784j(z);
    }

    /* renamed from: ay */
    private void m7657ay() {
        this.f8456c.f8782c.f7650h.f7720ar = 100;
        this.f8456c.f8782c.f7650h.f7719aq = new BroadcastReceiver() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.18
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                switch (intent.getAction()) {
                    case "android.intent.action.BATTERY_CHANGED":
                        int i = UI_LiveViewController.this.f8456c.f8782c.f7650h.f7720ar;
                        UI_LiveViewController.this.f8456c.f8782c.f7650h.f7720ar = intent.getIntExtra("level", 0);
                        UI_LiveViewController.this.m7607a("Current battery level: " + UI_LiveViewController.this.f8456c.f8782c.f7650h.f7720ar + "%", 3);
                        if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7720ar <= 10 && i > 10) {
                            UI_LiveViewController.this.m7607a("lPhoneBatteryLevel<= 10", 3);
                            if (UI_LiveViewController.this.f8456c.f8783d.m1264b()) {
                                if (UI_LiveViewController.this.f8456c.m7974a() == 336 || UI_LiveViewController.this.f8456c.m7974a() == 416) {
                                    UI_LiveViewController.this.m407a(8797);
                                    break;
                                } else {
                                    UI_LiveViewController.this.m407a(8726);
                                    break;
                                }
                            }
                        }
                        break;
                }
            }
        };
    }

    /* renamed from: az */
    private void m7658az() {
        this.f8435bf = (LinearLayout) findViewById(R.id.LL_ui_Warning_Msg_Layout);
        this.f8436bg = (TextView) findViewById(R.id.TV_ui_Warning_Msg_Content);
        this.f8435bf.setVisibility(4);
    }

    /* renamed from: aA */
    private void m7614aA() {
        this.f8376aZ = (LinearLayout) findViewById(R.id.LL_ui_No_Connection_Layout);
        this.f8430ba = (ImageButton) findViewById(R.id.IB_ui_ThumbnailButton_Noconnection);
        this.f8431bb = (ImageButton) findViewById(R.id.IB_ui_SettingButton_No_Connection);
        this.f8432bc = (ImageView) findViewById(R.id.IV_ui_LiveView_No_Connection);
        this.f8375aY = (LinearLayout) findViewById(R.id.LL_ModeSlider_No_Connection);
        this.f8375aY.setX(((this.f8508m * 420) / 960) / 3);
        this.f8433bd = (LinearLayout) findViewById(R.id.LL_ui_No_Connection_Line_Layout);
        this.f8434be = (ImageView) findViewById(R.id.IV_ui_No_Connection_Line);
        this.f8376aZ.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.19
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f8431bb.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.20
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LiveViewController.this.m407a(8454);
            }
        });
        this.f8430ba.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.21
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LiveViewController.this.m407a(8452);
            }
        });
    }

    /* renamed from: b */
    protected void m7760b(boolean z, boolean z2) {
        if (z) {
            if (this.f8456c.f8782c.f7654l.f7613n) {
                this.f8431bb.setImageResource(R.drawable.shooting_settings_red);
            } else {
                this.f8431bb.setImageResource(R.drawable.shooting_settings_white);
            }
            if (this.f8456c.f8783d.m1264b() && this.f8456c.f8782c.f7650h.f7691aI != null) {
                this.f8432bc.setImageBitmap(this.f8456c.f8782c.f7650h.f7691aI);
            } else {
                this.f8432bc.setImageResource(R.drawable.shooting_nocamera_re);
            }
            m412b(20508);
            this.f8376aZ.setVisibility(0);
            if (z2) {
                this.f8434be.setImageResource(R.drawable.shooting_nocamera_outline);
                this.f8433bd.setVisibility(0);
                return;
            } else {
                this.f8434be.setImageResource(0);
                this.f8433bd.setVisibility(4);
                return;
            }
        }
        this.f8431bb.setImageResource(0);
        this.f8432bc.setImageResource(0);
        this.f8376aZ.setVisibility(4);
        this.f8434be.setImageResource(0);
        this.f8433bd.setVisibility(4);
    }

    /* renamed from: D */
    protected boolean m7707D() {
        return this.f8376aZ.isShown();
    }

    /* renamed from: E */
    protected boolean m7708E() {
        return (!this.f8437bh.isShown() || this.f8438bi.getText().equals(getResources().getString(R.string.broadcast_initialize_busy)) || this.f8438bi.getText().equals(getResources().getString(R.string.broadcast_wait_active))) ? false : true;
    }

    /* renamed from: F */
    protected boolean m7709F() {
        return this.f8437bh.isShown();
    }

    /* renamed from: a */
    protected void m7740a(boolean z, String str) {
        if (z) {
            if (this.f8436bg.getText().equals(str) && this.f8435bf.getVisibility() == 0) {
                m7607a("No need to update warning layout", 2);
                return;
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f8435bf, "translationY", -100.0f, 0.0f);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.22
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (UI_LiveViewController.this.f8435bf != null) {
                        UI_LiveViewController.this.f8435bf.setVisibility(0);
                    }
                }
            });
            ofFloat.setDuration(300L);
            ofFloat.start();
            this.f8435bf.setVisibility(0);
            this.f8436bg.setText(str);
            return;
        }
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f8435bf, "translationY", 0.0f, -100.0f);
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.24
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (UI_LiveViewController.this.f8435bf != null) {
                    UI_LiveViewController.this.f8435bf.setVisibility(4);
                }
            }
        });
        ofFloat2.setDuration(250L);
        ofFloat2.start();
    }

    /* renamed from: G */
    protected Bitmap m7710G() {
        C0058b c0058b;
        String m534m;
        m7607a("BARRY PATH: " + this.f8456c.f8782c.f7653k.f7478b.f7526a.m528h(this.f8500d.f7653k.f7481e.m561c(), 0), 3);
        if (C0088a.m820a() == 1) {
            c0058b = this.f8500d.f7653k.f7483g;
        } else {
            c0058b = this.f8500d.f7653k.f7482f;
        }
        ArrayList<C0057a> arrayList = c0058b.f492a;
        this.f8500d.f7653k.f7478b.f7526a.m507a(this.f8500d.f7653k.f7481e.m550a(), c0058b);
        if (arrayList.size() == 0) {
            return null;
        }
        if (this.f8456c.f8782c.f7653k.f7478b.f7526a.m528h(arrayList.get(0).f490b, 0) == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = 4;
        Bitmap bitmap = null;
        for (int i = 0; i < 5; i++) {
            String m536o = this.f8456c.f8782c.f7653k.f7478b.f7526a.m536o(i);
            if (m536o != null && new File(m536o).exists() && (bitmap = BitmapFactory.decodeFile((m534m = this.f8456c.f8782c.f7653k.f7478b.f7526a.m534m(i)), options)) != null) {
                m7607a("THM_GroupIndex: " + i + "; thm path: " + m534m, 0);
                return bitmap;
            }
        }
        return bitmap;
    }

    /* renamed from: a */
    protected void m7735a(String str) {
        if (new File(str).exists()) {
            Bitmap decodeFile = BitmapFactory.decodeFile(str);
            Bitmap m7730a = m7730a(decodeFile, decodeFile.getHeight());
            decodeFile.recycle();
            this.f8355aE.setImageBitmap(m7730a);
            this.f8430ba.setImageBitmap(m7730a);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f8355aE, "alpha", 0.0f, 1.0f);
            ofFloat.setDuration(300L);
            ofFloat.start();
            return;
        }
        this.f8355aE.setImageResource(R.drawable.shooting_thumbnail_empty);
        this.f8430ba.setImageResource(R.drawable.shooting_thumbnail_empty);
    }

    /* renamed from: H */
    protected void m7711H() {
        this.f8442bm.setBackgroundColor(getResources().getColor(android.R.color.transparent));
        m7735a(C1658c.f7458f + "QuickView.jpg");
    }

    /* renamed from: a */
    protected void m7734a(Bitmap bitmap) {
        this.f8355aE.setImageBitmap(null);
        this.f8430ba.setImageBitmap(null);
        if (bitmap != null) {
            this.f8355aE.setImageBitmap(bitmap);
            this.f8430ba.setImageBitmap(bitmap);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f8355aE, "alpha", 0.0f, 1.0f);
            ofFloat.setDuration(500L);
            ofFloat.start();
        } else {
            this.f8355aE.setImageResource(R.drawable.shooting_thumbnail_empty);
            this.f8430ba.setImageResource(R.drawable.shooting_thumbnail_empty);
        }
        this.f8500d.f7653k.f7478b.f7526a.m507a(this.f8500d.f7653k.f7481e.m550a(), this.f8500d.f7653k.f7482f);
    }

    /* renamed from: I */
    protected void m7712I() {
        this.f8518w.setEnabled(false);
        this.f8355aE.setEnabled(false);
        this.f8456c.f8782c.f7650h.f7750w = true;
    }

    /* renamed from: J */
    protected void m7713J() {
        m7607a("enable all leave button", 1);
        this.f8518w.setEnabled(true);
        this.f8355aE.setEnabled(true);
        this.f8456c.f8782c.f7650h.f7750w = false;
    }

    /* renamed from: K */
    protected void m7714K() {
        this.f8517v.setEnabled(false);
        this.f8328D.setEnabled(false);
        m7712I();
    }

    /* renamed from: L */
    protected void m7715L() {
        this.f8517v.setEnabled(true);
        this.f8328D.setEnabled(true);
        m7713J();
    }

    /* renamed from: a */
    protected void m7739a(boolean z, Bitmap bitmap) {
        if (z) {
            this.f8519x.setImageBitmap(bitmap);
            this.f8519x.setVisibility(0);
        } else {
            this.f8519x.setVisibility(4);
            this.f8519x.setImageBitmap(bitmap);
        }
    }

    /* renamed from: M */
    protected boolean m7716M() {
        return this.f8519x.isShown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aB */
    public void m7615aB() {
        if (this.f8456c.m7974a() == 400) {
            m407a(8790);
        }
        if (this.f8456c.f8782c.f7650h.f7675T == 0) {
            if (!this.f8456c.f8782c.f7650h.f7681Z) {
                if (C0088a.m838f() != 0) {
                    m7725V();
                    m7785k(true);
                    this.f8456c.f8782c.f7650h.f7681Z = true;
                    return;
                } else {
                    this.f8456c.f8782c.f7650h.f7681Z = false;
                    m7712I();
                    m407a(8775);
                    return;
                }
            }
            return;
        }
        if (this.f8456c.f8782c.f7650h.f7675T == 1) {
            if (!m7719P()) {
                m407a(8800);
                return;
            }
            if (!this.f8456c.f8782c.f7650h.f7681Z) {
                if (C0088a.m838f() != 0) {
                    this.f8517v.setEnabled(false);
                    m7725V();
                    m7785k(true);
                    this.f8456c.f8782c.f7650h.f7681Z = true;
                    return;
                }
                this.f8456c.f8782c.f7650h.f7681Z = false;
                m407a(8774);
                return;
            }
            return;
        }
        if (!m7719P()) {
            m407a(8800);
        } else if (this.f8456c.f8782c.f7650h.f7707ae == 0) {
            m407a(8795);
        } else {
            m407a(8798);
        }
    }

    /* renamed from: N */
    protected void m7717N() {
        for (String str : C1658c.f7471s) {
            if (ActivityCompat.checkSelfPermission(this, str) == -1) {
                ActivityCompat.requestPermissions(this, C1658c.f7471s, 300);
                return;
            }
        }
        m407a(8799);
    }

    /* renamed from: O */
    protected void m7718O() {
        for (String str : C1658c.f7472t) {
            if (ActivityCompat.checkSelfPermission(this, str) == -1) {
                ActivityCompat.requestPermissions(this, C1658c.f7472t, 400);
                return;
            }
        }
    }

    /* renamed from: P */
    public boolean m7719P() {
        if (ActivityCompat.checkSelfPermission(this, "android.permission.RECORD_AUDIO") != -1) {
            return true;
        }
        m7607a("Manifest.permission.RECORD_AUDIO false", 0);
        return false;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        m7607a("onRequestPermissionsResult() " + i, 4);
        if (strArr.length != 0) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (iArr[i2] != 0) {
                    if (ActivityCompat.shouldShowRequestPermissionRationale(this, strArr[i2])) {
                        if (i == 300) {
                            C0091o.m892a((Context) this, true, false, getResources().getString(R.string.warning), getResources().getString(R.string.permission_deny_msg), new String[]{getResources().getString(R.string.dialog_option_cancel), getResources().getString(R.string.dialog_option_ok)}, new int[]{0, 8798});
                            return;
                        } else {
                            C0091o.m892a((Context) this, true, false, getResources().getString(R.string.warning), getResources().getString(R.string.permission_deny_msg), new String[]{getResources().getString(R.string.dialog_option_cancel), getResources().getString(R.string.dialog_option_ok)}, new int[]{0, 8800});
                            return;
                        }
                    }
                    if (i == 300) {
                        C0091o.m889a((Context) this, true, false, getResources().getString(R.string.warning), getResources().getString(R.string.permission_always_deny_msg), getResources().getString(R.string.dialog_option_ok), 0);
                        return;
                    } else {
                        if (ActivityCompat.checkSelfPermission(this, "android.permission.RECORD_AUDIO") == -1) {
                            C0091o.m889a((Context) this, true, false, getResources().getString(R.string.warning), getResources().getString(R.string.permission_always_deny_msg), getResources().getString(R.string.dialog_option_ok), 0);
                            return;
                        }
                        return;
                    }
                }
            }
        }
        if (i == 300) {
            m407a(8799);
        }
    }

    /* renamed from: Q */
    protected void m7720Q() {
        if (this.f8456c.m8003h().m771g().m1019d()) {
            m407a(8784);
        } else {
            C0091o.m889a((Context) this, true, true, getResources().getString(R.string.google_play_service_error_title), getResources().getString(R.string.google_play_service_error_description), getResources().getString(R.string.dialog_option_ok), 12039);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aC */
    public void m7616aC() {
        if (this.f8456c.f8782c.f7650h.f7675T == 0) {
            if (this.f8456c.f8782c.f7650h.f7681Z) {
                m7784j(true);
                this.f8456c.f8782c.f7650h.f7704ab.end();
                this.f8456c.f8782c.f7650h.f7681Z = false;
                return;
            }
            return;
        }
        if (this.f8456c.f8782c.f7650h.f7675T == 1 && this.f8456c.f8782c.f7650h.f7681Z) {
            this.f8456c.f8782c.f7650h.f7704ab.end();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aD */
    public void m7617aD() {
        m407a(8778);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aE */
    public void m7618aE() {
        if (this.f8500d.f7650h.f7730c == 299) {
            this.f8448bs.setImageResource(R.drawable.shooting_shutterkey_live_play);
            this.f8500d.f7650h.f7730c = 300;
            if (this.f8500d.f7650h.f7716an != null) {
                this.f8500d.f7650h.f7716an.m923a(true);
            }
            if (this.f8456c.f8782c.f7650h.f7707ae == 1) {
                m407a(10768);
            }
            m7741a(false, false);
            return;
        }
        if (this.f8500d.f7650h.f7730c == 300) {
            this.f8448bs.setImageResource(R.drawable.shooting_shutterkey_live_pause);
            this.f8500d.f7650h.f7730c = 299;
            if (this.f8500d.f7650h.f7716an != null) {
                this.f8500d.f7650h.f7716an.m923a(false);
            }
            if (this.f8456c.f8782c.f7650h.f7707ae == 1) {
                m407a(10769);
            }
            m7741a(true, false);
        }
    }

    /* renamed from: aF */
    private void m7619aF() {
        this.f8464cH = new ArrayList<>();
        this.f8464cH.add(getResources().getString(R.string.mbps_4_1280_640));
        this.f8464cH.add(getResources().getString(R.string.mbps_8_1280_640));
    }

    /* renamed from: aG */
    private void m7620aG() {
        this.f8465cI = new int[]{R.drawable.shooting_sns_fb, R.drawable.shooting_sns_youtube};
    }

    /* renamed from: aH */
    private void m7621aH() {
        m7619aF();
        m7620aG();
        this.f8497cx = (LinearLayout) findViewById(R.id.LL_Live_SelectLayout);
        this.f8498cy = (LinearLayout) findViewById(R.id.LL_EffectAndASetting);
        this.f8499cz = (LinearLayout) findViewById(R.id.LL_Live_SettingLayout);
        this.f8462cF = (ImageButton) findViewById(R.id.IB_ui_LiveButton);
        this.f8462cF.setImageResource(this.f8465cI[this.f8456c.f8782c.f7650h.f7707ae]);
        this.f8461cE = (ImageButton) findViewById(R.id.IB_ui_LiveSettingButton);
        this.f8463cG = (TextView) findViewById(R.id.TV_ui_LiveSettingText);
        this.f8463cG.setText(this.f8464cH.get(C0088a.m852m()));
        this.f8519x = (ImageView) findViewById(R.id.IV_ui_TempLiveView);
        this.f8517v = (ImageButton) findViewById(R.id.IB_ui_CaptureButton);
        this.f8518w = (ImageButton) findViewById(R.id.IB_ui_SettingButton);
        if (this.f8456c.f8782c.f7654l.f7613n) {
            this.f8518w.setImageResource(R.drawable.shooting_settings_red);
        } else {
            this.f8518w.setImageResource(R.drawable.shooting_settings_white);
        }
        this.f8328D = (ImageButton) findViewById(R.id.IB_ui_EffectToolButton);
        this.f8355aE = (ImageButton) findViewById(R.id.IB_ui_ThumbnailButton);
        this.f8355aE.setImageResource(R.drawable.shooting_thumbnail_empty);
        m7712I();
        m7739a(false, (Bitmap) null);
        this.f8355aE.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.25
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LiveViewController.this.m407a(8452);
            }
        });
        this.f8517v.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.26
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LiveViewController.this.m7615aB();
            }
        });
        this.f8517v.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.27
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 0) {
                        if (C0088a.m838f() == 0) {
                            UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_photo);
                        } else {
                            UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_photo_selftimer);
                        }
                    } else if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T != 1) {
                        UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_live);
                    } else if (C0088a.m838f() == 0) {
                        UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_video);
                    } else {
                        UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_video_selftimer);
                    }
                }
                if (motionEvent.getAction() == 2 && (motionEvent.getX() < 0.0f || motionEvent.getX() > UI_LiveViewController.this.f8517v.getWidth() || motionEvent.getY() < 0.0f || motionEvent.getY() > UI_LiveViewController.this.f8517v.getHeight())) {
                    if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 0) {
                        if (C0088a.m838f() == 0) {
                            UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_photo);
                        } else {
                            UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_photo_selftimer);
                        }
                    } else if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T != 1) {
                        UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_live);
                    } else if (C0088a.m838f() == 0) {
                        UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_video);
                    } else {
                        UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_video_selftimer);
                    }
                    return false;
                }
                if (motionEvent.getAction() == 1) {
                    if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 0) {
                        if (C0088a.m838f() == 0) {
                            UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_photo);
                        } else {
                            UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_photo_selftimer);
                        }
                    } else if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T != 1) {
                        UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_live);
                    } else if (C0088a.m838f() == 0) {
                        UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_video);
                    } else {
                        UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_video_selftimer);
                    }
                }
                return false;
            }
        });
        this.f8328D.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.28
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UI_LiveViewController.this.f8456c.m7974a() == 272 || UI_LiveViewController.this.f8456c.m7974a() == 400) {
                    UI_LiveViewController.this.f8328D.setEnabled(false);
                    UI_LiveViewController.this.m407a(8790);
                }
            }
        });
        this.f8462cF.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.29
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LiveViewController.this.m7684m(UI_LiveViewController.this.f8456c.f8782c.f7650h.f7707ae);
                UI_LiveViewController.this.m7769e(true);
            }
        });
        this.f8518w.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.30
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LiveViewController.this.m407a(8454);
            }
        });
        this.f8461cE.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.31
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LiveViewController.this.m7772f(true);
            }
        });
    }

    /* renamed from: e */
    protected void m7769e(boolean z) {
        if (z) {
            this.f8460cD.setVisibility(0);
        } else {
            this.f8460cD.setVisibility(4);
        }
    }

    /* renamed from: f */
    protected void m7772f(boolean z) {
        if (z) {
            this.f8481ch.setVisibility(0);
        } else {
            this.f8481ch.setVisibility(4);
        }
    }

    /* renamed from: g */
    protected void m7774g(boolean z) {
        if (this.f8482ci != null) {
            if (z) {
                this.f8482ci.setVisibility(0);
            } else {
                this.f8482ci.setVisibility(4);
            }
        }
    }

    /* renamed from: n */
    private void m7685n(int i) {
        switch (i) {
            case 0:
                this.f8500d.f7650h.f7699aQ = this.f8479cf.getText().toString();
                break;
            case 1:
                this.f8500d.f7650h.f7700aR = this.f8475cb.getText().toString();
                this.f8500d.f7650h.f7701aS = this.f8479cf.getText().toString();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public void m7688o(int i) {
        if (i == 2) {
            this.f8355aE.setVisibility(4);
            this.f8498cy.setVisibility(4);
            this.f8497cx.setVisibility(0);
            this.f8499cz.setVisibility(0);
            return;
        }
        this.f8355aE.setVisibility(0);
        this.f8498cy.setVisibility(0);
        this.f8497cx.setVisibility(4);
        this.f8499cz.setVisibility(4);
    }

    /* renamed from: h */
    protected void m7778h(boolean z) {
        if (z) {
            m7606a(this.f8356aF, 500);
            this.f8357aG.setVisibility(0);
            this.f8328D.setImageResource(R.drawable.shooting_effect_green);
            if (C0088a.m846j() == 6) {
                this.f8370aT.setImageResource(R.drawable.shooting_effectmenu_ev_white);
                this.f8371aU.setTextColor(getResources().getColor(R.color.white));
            } else {
                this.f8370aT.setImageResource(R.drawable.shooting_effectmenu_icon_ev_green);
                this.f8371aU.setTextColor(getResources().getColor(R.color.iconcolor));
            }
            this.f8372aV.setBackgroundResource(R.drawable.shooting_effectmenu_ev_mid);
            if (C0088a.m848k() == 0) {
                this.f8331G.setImageResource(R.drawable.shooting_effectmenu_wb_white);
                this.f8337M.setTextColor(getResources().getColor(R.color.white));
            } else {
                this.f8331G.setImageResource(R.drawable.shooting_effectmenu_icon_wb_green);
                this.f8337M.setTextColor(getResources().getColor(R.color.iconcolor));
            }
            this.f8332H.setImageResource(R.drawable.shooting_effectimage_wb_awb);
            this.f8333I.setImageResource(R.drawable.shooting_effectimage_wb_daylight);
            this.f8334J.setImageResource(R.drawable.shooting_effectimage_wb_cloudy);
            this.f8335K.setImageResource(R.drawable.shooting_effectimage_wb_tungsten);
            this.f8336L.setImageResource(R.drawable.shooting_effectimage_wb_fluorescent);
            int m784a = C0079k.m784a(this, this.f8508m / 35);
            this.f8338N.setText(R.string.white_balance_auto);
            this.f8339O.setText(R.string.white_balance_sunny);
            this.f8340P.setText(R.string.white_balance_cloudy);
            this.f8341Q.setText(R.string.white_balance_tungsten);
            this.f8342R.setText(R.string.white_balance_fluorescent);
            C0047c m447q = new C0047c(m784a).m432b((int) (m784a * 0.9d)).m433c((int) (m784a * 0.8d)).m444n((int) (m784a * 0.9d)).m435e((int) (m784a * 0.8d)).m437g((int) (m784a * 0.8d)).m434d((int) (m784a * 0.8d)).m443m((int) (m784a * 0.9d)).m441k((int) (m784a * 0.9d)).m442l((int) (m784a * 0.9d)).m438h((int) (m784a * 0.9d)).m445o((int) (m784a * 0.9d)).m439i((int) (m784a * 0.9d)).m446p((int) (m784a * 0.8d)).m440j((int) (m784a * 0.8d)).m436f((int) (m784a * 0.8d)).m447q((int) (m784a * 0.8d));
            this.f8338N.setTextSize(m447q.m430a());
            this.f8339O.setTextSize(m447q.m430a());
            this.f8340P.setTextSize(m447q.m430a());
            this.f8341Q.setTextSize(m447q.m430a());
            this.f8342R.setTextSize(m447q.m430a());
            if (C0088a.m850l() == 0) {
                this.f8350Z.setImageResource(R.drawable.shooting_effectmenu_filter_white);
                this.f8386aj.setTextColor(getResources().getColor(R.color.white));
            } else {
                this.f8350Z.setImageResource(R.drawable.shooting_effectmenu_icon_filter_green);
                this.f8386aj.setTextColor(getResources().getColor(R.color.iconcolor));
            }
            this.f8377aa.setImageResource(R.drawable.shooting_effectimage_filter_off);
            this.f8378ab.setImageResource(R.drawable.shooting_effectimage_filter_f1);
            this.f8379ac.setImageResource(R.drawable.shooting_effectimage_filter_f2);
            this.f8380ad.setImageResource(R.drawable.shooting_effectimage_filter_f3);
            this.f8381ae.setImageResource(R.drawable.shooting_effectimage_filter_f4);
            this.f8382af.setImageResource(R.drawable.shooting_effectimage_filter_f5);
            this.f8383ag.setImageResource(R.drawable.shooting_effectimage_filter_f6);
            this.f8384ah.setImageResource(R.drawable.shooting_effectimage_filter_f7);
            this.f8385ai.setImageResource(R.drawable.shooting_effectimage_filter_f8);
            this.f8387ak.setText(R.string.filter_none);
            this.f8388al.setText(R.string.filter_faded);
            this.f8389am.setText(R.string.filter_nimbus);
            this.f8390an.setText(R.string.filter_tea);
            this.f8391ao.setText(R.string.filter_twilight);
            this.f8392ap.setText(R.string.filter_sapphire);
            this.f8393aq.setText(R.string.filter_vintage);
            this.f8394ar.setText(R.string.filter_black_white);
            this.f8395as.setText(R.string.filter_newspaper);
            C0047c m447q2 = new C0047c(m784a).m432b((int) (m784a * 0.9d)).m433c((int) (m784a * 0.8d)).m444n((int) (m784a * 0.9d)).m435e((int) (m784a * 0.8d)).m437g((int) (m784a * 0.8d)).m434d((int) (m784a * 0.8d)).m443m((int) (m784a * 0.9d)).m441k((int) (m784a * 0.9d)).m442l((int) (m784a * 0.9d)).m438h((int) (m784a * 0.9d)).m445o((int) (m784a * 0.9d)).m439i((int) (m784a * 0.9d)).m446p((int) (m784a * 0.8d)).m440j((int) (m784a * 0.8d)).m436f((int) (m784a * 0.8d)).m447q((int) (m784a * 0.8d));
            this.f8387ak.setTextSize(m447q2.m430a());
            this.f8388al.setTextSize(m447q2.m430a());
            this.f8389am.setTextSize(m447q2.m430a());
            this.f8390an.setTextSize(m447q2.m430a());
            this.f8391ao.setTextSize(m447q2.m430a());
            this.f8392ap.setTextSize(m447q2.m430a());
            this.f8393aq.setTextSize(m447q2.m430a());
            this.f8394ar.setTextSize(m447q2.m430a());
            this.f8395as.setTextSize(m447q2.m430a());
            return;
        }
        m7660b(this.f8356aF, 500);
        this.f8357aG.setVisibility(4);
        this.f8328D.setImageResource(R.drawable.shooting_effect_white);
    }

    /* renamed from: aI */
    private void m7622aI() {
        this.f8521z = (LinearLayout) findViewById(R.id.LL_ModeSlider);
        this.f8327C = (ImageButton) findViewById(R.id.IB_LiveModeButton);
        this.f8325A = (ImageButton) findViewById(R.id.IB_CaptureModeButton);
        this.f8326B = (ImageButton) findViewById(R.id.IB_RecordModeButton);
        this.f8326B.setVisibility(0);
        this.f8327C.setVisibility(0);
        this.f8325A.setVisibility(0);
        this.f8325A.setImageResource(R.drawable.shooting_mode_photo_white);
        this.f8326B.setImageResource(R.drawable.shooting_mode_video_white);
        this.f8327C.setImageResource(R.drawable.shooting_mode_live_white);
        if (this.f8456c.f8782c.f7650h.f7675T == 1) {
            if (C0088a.m838f() == 0) {
                this.f8517v.setImageResource(R.drawable.shooting_shutterkey_video);
            } else {
                this.f8517v.setImageResource(R.drawable.shooting_shutterkey_video_selftimer);
            }
            this.f8517v.setVisibility(0);
        } else if (this.f8456c.f8782c.f7650h.f7675T == 0) {
            if (C0088a.m838f() == 0) {
                this.f8517v.setImageResource(R.drawable.shooting_shutterkey_photo);
            } else {
                this.f8517v.setImageResource(R.drawable.shooting_shutterkey_photo_selftimer);
            }
            this.f8517v.setVisibility(0);
            m7731a(1, 0, 0);
        } else {
            this.f8517v.setImageResource(R.drawable.shooting_shutterkey_live);
            this.f8517v.setVisibility(0);
            m7731a(1, 2, 0);
        }
        m7688o(this.f8456c.f8782c.f7650h.f7675T);
        this.f8325A.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.32
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LiveViewController.this.f8325A.setImageResource(R.drawable.shooting_mode_photo_green);
                UI_LiveViewController.this.f8326B.setImageResource(R.drawable.shooting_mode_video_white);
                UI_LiveViewController.this.f8327C.setImageResource(R.drawable.shooting_mode_live_white);
                if (!UI_LiveViewController.this.f8500d.f7650h.f7695aM) {
                    if (C0088a.m838f() == 0) {
                        UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_photo);
                    } else {
                        UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_photo_selftimer);
                    }
                    UI_LiveViewController.this.m7750ah();
                } else {
                    UI_LiveViewController.this.m7792n(true);
                }
                if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T != 0) {
                    if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 1) {
                        UI_LiveViewController.this.m7731a(1, 0, 300);
                    } else if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 2) {
                        UI_LiveViewController.this.m7731a(2, 0, 300);
                    }
                }
                UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T = 0;
                UI_LiveViewController.this.m7688o(UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T);
            }
        });
        this.f8327C.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.33
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LiveViewController.this.f8327C.setImageResource(R.drawable.shooting_mode_live_green);
                UI_LiveViewController.this.f8325A.setImageResource(R.drawable.shooting_mode_photo_white);
                UI_LiveViewController.this.f8326B.setImageResource(R.drawable.shooting_mode_video_white);
                UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_live);
                if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 0) {
                    UI_LiveViewController.this.m7731a(0, 2, 300);
                } else if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 1) {
                    UI_LiveViewController.this.m7731a(1, 2, 300);
                } else if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 2) {
                }
                UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T = 2;
                if (UI_LiveViewController.this.f8500d.f7650h.f7695aM) {
                    UI_LiveViewController.this.m7792n(false);
                }
                UI_LiveViewController.this.m7688o(UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T);
                UI_LiveViewController.this.m407a(8800);
            }
        });
        this.f8326B.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.35
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LiveViewController.this.f8326B.setImageResource(R.drawable.shooting_mode_video_green);
                UI_LiveViewController.this.f8327C.setImageResource(R.drawable.shooting_mode_live_white);
                UI_LiveViewController.this.f8325A.setImageResource(R.drawable.shooting_mode_photo_white);
                if (!UI_LiveViewController.this.f8500d.f7650h.f7695aM) {
                    if (C0088a.m838f() == 0) {
                        UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_video);
                    } else {
                        UI_LiveViewController.this.f8517v.setImageResource(R.drawable.shooting_shutterkey_video_selftimer);
                    }
                    UI_LiveViewController.this.m7750ah();
                } else {
                    UI_LiveViewController.this.m7792n(true);
                }
                if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 0) {
                    UI_LiveViewController.this.m7731a(0, 1, 300);
                } else if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T != 1 && UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 2) {
                    UI_LiveViewController.this.m7731a(2, 1, 300);
                }
                UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T = 1;
                UI_LiveViewController.this.m7688o(UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T);
                UI_LiveViewController.this.m407a(8800);
            }
        });
    }

    /* renamed from: aJ */
    private void m7623aJ() {
        this.f8520y = (ImageButton) findViewById(R.id.IB_ui_FullScreenButton);
        if (this.f8456c.f8782c.f7650h.f7676U == 0) {
            this.f8520y.setImageResource(R.drawable.shooting_pip_show);
        } else {
            this.f8520y.setImageResource(R.drawable.shooting_pip_hide);
        }
        if (C0088a.m840g() == 1) {
            this.f8520y.setVisibility(4);
            this.f8520y.setEnabled(false);
        }
        this.f8520y.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.36
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7676U == 1) {
                    UI_LiveViewController.this.m7634aU();
                    UI_LiveViewController.this.f8502f.setIsShowThumbNail(false);
                    UI_LiveViewController.this.f8520y.setImageResource(R.drawable.shooting_pip_show);
                    UI_LiveViewController.this.f8456c.f8782c.f7650h.f7676U = 0;
                    return;
                }
                UI_LiveViewController.this.m7634aU();
                UI_LiveViewController.this.f8502f.setIsShowThumbNail(true);
                UI_LiveViewController.this.f8520y.setImageResource(R.drawable.shooting_pip_hide);
                UI_LiveViewController.this.f8456c.f8782c.f7650h.f7676U = 1;
            }
        });
    }

    /* renamed from: aK */
    private void m7624aK() {
        this.f8356aF = (LinearLayout) findViewById(R.id.LL_Effect_Tool_Layout);
        this.f8357aG = (LinearLayout) findViewById(R.id.LL_Effect_Tool_UpBlank_Layout);
        this.f8358aH = (LinearLayout) findViewById(R.id.LL_Effect_Tool_Blank_Layout);
        this.f8356aF.setVisibility(4);
        this.f8357aG.setVisibility(4);
        this.f8357aG.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.37
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    UI_LiveViewController.this.m407a(8790);
                }
                if (motionEvent.getAction() == 2) {
                }
                if (motionEvent.getAction() == 1) {
                }
                return true;
            }
        });
        this.f8358aH.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.38
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return false;
            }
        });
        this.f8356aF.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.39
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    /* renamed from: aL */
    private void m7625aL() {
        this.f8456c.f8782c.f7650h.f7678W = new ArrayList<>();
        this.f8456c.f8782c.f7650h.f7678W.add(getResources().getString(R.string.exposure_negitive_20));
        this.f8456c.f8782c.f7650h.f7678W.add(getResources().getString(R.string.exposure_negitive_17));
        this.f8456c.f8782c.f7650h.f7678W.add(getResources().getString(R.string.exposure_negitive_13));
        this.f8456c.f8782c.f7650h.f7678W.add(getResources().getString(R.string.exposure_negitive_10));
        this.f8456c.f8782c.f7650h.f7678W.add(getResources().getString(R.string.exposure_negitive_07));
        this.f8456c.f8782c.f7650h.f7678W.add(getResources().getString(R.string.exposure_negitive_03));
        this.f8456c.f8782c.f7650h.f7678W.add(getResources().getString(R.string.exposure_0));
        this.f8456c.f8782c.f7650h.f7678W.add(getResources().getString(R.string.exposure_positive_03));
        this.f8456c.f8782c.f7650h.f7678W.add(getResources().getString(R.string.exposure_positive_07));
        this.f8456c.f8782c.f7650h.f7678W.add(getResources().getString(R.string.exposure_positive_10));
        this.f8456c.f8782c.f7650h.f7678W.add(getResources().getString(R.string.exposure_positive_13));
        this.f8456c.f8782c.f7650h.f7678W.add(getResources().getString(R.string.exposure_positive_17));
        this.f8456c.f8782c.f7650h.f7678W.add(getResources().getString(R.string.exposure_positive_20));
    }

    /* renamed from: aM */
    private void m7626aM() {
        m7625aL();
        this.f8370aT = (ImageButton) findViewById(R.id.IB_EV_ButtonTitle);
        this.f8371aU = (TextView) findViewById(R.id.TV_EV_ButtonTitle);
        this.f8371aU.setTextSize(new C0047c(13).m444n((int) (13 * 0.9d)).m430a());
        this.f8371aU.setText(getResources().getString(R.string.effect_exposure));
        this.f8372aV = (SeekBar) findViewById(R.id.SB_EV_Bar);
        m7607a("UI_SettingControl.GetEvType(): " + C0088a.m846j(), 3);
        this.f8372aV.setProgress(C0088a.m846j());
        this.f8373aW = (TextView) findViewById(R.id.TV_EV_Value);
        this.f8373aW.setText(this.f8456c.f8782c.f7650h.f7678W.get(C0088a.m846j()));
        this.f8370aT.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.40
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C0088a.m853m(6);
                UI_LiveViewController.this.f8370aT.setImageResource(R.drawable.shooting_effectmenu_ev_white);
                UI_LiveViewController.this.f8371aU.setTextColor(UI_LiveViewController.this.getResources().getColor(R.color.white));
                UI_LiveViewController.this.f8372aV.setProgress(C0088a.m846j());
                UI_LiveViewController.this.f8373aW.setText(UI_LiveViewController.this.f8456c.f8782c.f7650h.f7678W.get(C0088a.m846j()));
                UI_LiveViewController.this.mo408a(8753, 0L);
            }
        });
        this.f8372aV.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.41

            /* renamed from: a */
            int f8559a = C0088a.m854n();

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                this.f8559a = i;
                UI_LiveViewController.this.f8373aW.setText(UI_LiveViewController.this.f8456c.f8782c.f7650h.f7678W.get(i));
                UI_LiveViewController.this.m7690p(this.f8559a);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public void m7690p(int i) {
        switch (i) {
            case 0:
                C0088a.m853m(0);
                break;
            case 1:
                C0088a.m853m(1);
                break;
            case 2:
                C0088a.m853m(2);
                break;
            case 3:
                C0088a.m853m(3);
                break;
            case 4:
                C0088a.m853m(4);
                break;
            case 5:
                C0088a.m853m(5);
                break;
            case 6:
                C0088a.m853m(6);
                break;
            case 7:
                C0088a.m853m(7);
                break;
            case 8:
                C0088a.m853m(8);
                break;
            case 9:
                C0088a.m853m(9);
                break;
            case 10:
                C0088a.m853m(10);
                break;
            case 11:
                C0088a.m853m(11);
                break;
            case 12:
                C0088a.m853m(12);
                break;
        }
        if (i == 6) {
            this.f8370aT.setImageResource(R.drawable.shooting_effectmenu_ev_white);
            this.f8371aU.setTextColor(getResources().getColor(R.color.white));
        } else {
            this.f8370aT.setImageResource(R.drawable.shooting_effectmenu_icon_ev_green);
            this.f8371aU.setTextColor(getResources().getColor(R.color.iconcolor));
        }
        if (!this.f8456c.m7992b(8753)) {
            mo408a(8753, 0L);
        }
    }

    /* renamed from: aN */
    private void m7627aN() {
        this.f8329E = (HorizontalScrollView) findViewById(R.id.HSV_WB);
        this.f8329E.setSmoothScrollingEnabled(true);
        this.f8331G = (ImageButton) findViewById(R.id.IB_WB_ButtonTitle);
        this.f8337M = (TextView) findViewById(R.id.TV_WB_ButtonTitle);
        this.f8337M.setText(getResources().getString(R.string.effect_white_balance));
        this.f8332H = (ImageButton) findViewById(R.id.IB_WB_Button1);
        this.f8333I = (ImageButton) findViewById(R.id.IB_WB_Button2);
        this.f8334J = (ImageButton) findViewById(R.id.IB_WB_Button3);
        this.f8335K = (ImageButton) findViewById(R.id.IB_WB_Button4);
        this.f8336L = (ImageButton) findViewById(R.id.IB_WB_Button5);
        this.f8338N = (TextView) findViewById(R.id.TV_WB_Button1);
        this.f8339O = (TextView) findViewById(R.id.TV_WB_Button2);
        this.f8340P = (TextView) findViewById(R.id.TV_WB_Button3);
        this.f8341Q = (TextView) findViewById(R.id.TV_WB_Button4);
        this.f8342R = (TextView) findViewById(R.id.TV_WB_Button5);
        this.f8343S = (LinearLayout) findViewById(R.id.LL_WB_Button_Layout1);
        this.f8344T = (LinearLayout) findViewById(R.id.LL_WB_Button_Layout2);
        this.f8345U = (LinearLayout) findViewById(R.id.LL_WB_Button_Layout3);
        this.f8346V = (LinearLayout) findViewById(R.id.LL_WB_Button_Layout4);
        this.f8347W = (LinearLayout) findViewById(R.id.LL_WB_Button_Layout5);
        this.f8348X.add(this.f8332H);
        this.f8348X.add(this.f8333I);
        this.f8348X.add(this.f8334J);
        this.f8348X.add(this.f8335K);
        this.f8348X.add(this.f8336L);
        this.f8349Y.add(this.f8343S);
        this.f8349Y.add(this.f8344T);
        this.f8349Y.add(this.f8345U);
        this.f8349Y.add(this.f8346V);
        this.f8349Y.add(this.f8347W);
        this.f8331G.setOnClickListener(this.f8471cO);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f8348X.size()) {
                this.f8348X.get(i2).setOnClickListener(this.f8471cO);
                i = i2 + 1;
            } else {
                this.f8349Y.get(C0088a.m848k()).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                return;
            }
        }
    }

    /* renamed from: i */
    protected void m7781i(boolean z) {
        if (z) {
            this.f8364aN.setEnabled(false);
        } else {
            this.f8364aN.setEnabled(true);
        }
    }

    /* renamed from: aO */
    private void m7628aO() {
        double m461a;
        this.f8360aJ = (LinearLayout) findViewById(R.id.LL_Recordindg_Blank_Layout);
        this.f8361aK = (LinearLayout) findViewById(R.id.LL_Recordindg_Layout);
        this.f8362aL = (TextView) findViewById(R.id.TV_Current_Rec_Time);
        this.f8363aM = (TextView) findViewById(R.id.TV_Avaliable_Memory);
        this.f8364aN = (ImageButton) findViewById(R.id.IB_ui_Recording_Stop_Button);
        this.f8365aO = (ImageView) findViewById(R.id.IV_Recording_Icon);
        DecimalFormat decimalFormat = new DecimalFormat("#.#");
        if (C0088a.m820a() == 1) {
            this.f8456c.f8782c.f7653k.f7478b.f7528ab = m7751ai();
            m461a = C0052d.m461a(this.f8456c.f8782c.f7653k.f7478b.f7528ab, 0);
        } else {
            m461a = C0052d.m461a(C1658c.f7453a, 0);
        }
        this.f8363aM.setText(String.format("%d", 0) + "MB / " + decimalFormat.format(Double.parseDouble(Double.toString(((m461a / 1024.0d) / 1024.0d) / 1024.0d))) + "GB");
        this.f8364aN.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.42
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LiveViewController.this.m7617aD();
            }
        });
        this.f8360aJ.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.43
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return false;
            }
        });
        this.f8361aK.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.44
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    /* renamed from: R */
    protected void m7721R() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f8361aK, "translationY", 0.0f, 500.0f);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.46
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                UI_LiveViewController.this.f8361aK.setVisibility(4);
                UI_LiveViewController.this.f8365aO.setImageResource(0);
                UI_LiveViewController.this.f8364aN.setImageResource(0);
            }
        });
        ofFloat.setDuration(300L);
        ofFloat.start();
    }

    /* renamed from: aP */
    private void m7629aP() {
        this.f8437bh = (LinearLayout) findViewById(R.id.LL_ui_Liveview_ProgressLayout);
        this.f8437bh.setVisibility(4);
        this.f8438bi = (TextView) findViewById(R.id.TV_ui_Liveview_Content);
        this.f8439bj = (ImageView) findViewById(R.id.IV_ui_Liveview_ProgressIcon);
        this.f8437bh.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.47
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    /* renamed from: b */
    protected void m7759b(boolean z, String str) {
        if (this.f8437bh != null && this.f8438bi != null && this.f8439bj != null) {
            if (str.equals(getResources().getString(R.string.connecting)) && (!this.f8456c.f8783d.m1264b() || this.f8456c.f8782c.f7647e)) {
                this.f8438bi.setText("");
                this.f8439bj.setVisibility(4);
                if (z) {
                    this.f8437bh.setVisibility(0);
                    return;
                } else {
                    this.f8437bh.setVisibility(4);
                    return;
                }
            }
            this.f8439bj.setVisibility(0);
            this.f8439bj.setImageResource(R.drawable.anim_system_busy);
            if (z) {
                this.f8437bh.setVisibility(0);
                this.f8438bi.setText(str);
                ((AnimationDrawable) this.f8439bj.getDrawable()).start();
            } else {
                this.f8437bh.setVisibility(4);
                this.f8438bi.setText(str);
                ((AnimationDrawable) this.f8439bj.getDrawable()).stop();
                this.f8439bj.setImageResource(0);
            }
        }
    }

    /* renamed from: aQ */
    private void m7630aQ() {
        this.f8330F = (HorizontalScrollView) findViewById(R.id.HSV_Filter);
        this.f8330F.setSmoothScrollingEnabled(true);
        this.f8350Z = (ImageButton) findViewById(R.id.IB_Filter_ButtonTitle);
        this.f8386aj = (TextView) findViewById(R.id.TV_Filter_ButtonTitle);
        this.f8386aj.setText(getResources().getString(R.string.effect_filter));
        this.f8377aa = (ImageButton) findViewById(R.id.IB_Filter_Button1);
        this.f8378ab = (ImageButton) findViewById(R.id.IB_Filter_Button2);
        this.f8379ac = (ImageButton) findViewById(R.id.IB_Filter_Button3);
        this.f8380ad = (ImageButton) findViewById(R.id.IB_Filter_Button4);
        this.f8381ae = (ImageButton) findViewById(R.id.IB_Filter_Button5);
        this.f8382af = (ImageButton) findViewById(R.id.IB_Filter_Button6);
        this.f8383ag = (ImageButton) findViewById(R.id.IB_Filter_Button7);
        this.f8384ah = (ImageButton) findViewById(R.id.IB_Filter_Button8);
        this.f8385ai = (ImageButton) findViewById(R.id.IB_Filter_Button9);
        this.f8387ak = (TextView) findViewById(R.id.TV_Filter_Button1);
        this.f8388al = (TextView) findViewById(R.id.TV_Filter_Button2);
        this.f8389am = (TextView) findViewById(R.id.TV_Filter_Button3);
        this.f8390an = (TextView) findViewById(R.id.TV_Filter_Button4);
        this.f8391ao = (TextView) findViewById(R.id.TV_Filter_Button5);
        this.f8392ap = (TextView) findViewById(R.id.TV_Filter_Button6);
        this.f8393aq = (TextView) findViewById(R.id.TV_Filter_Button7);
        this.f8394ar = (TextView) findViewById(R.id.TV_Filter_Button8);
        this.f8395as = (TextView) findViewById(R.id.TV_Filter_Button9);
        this.f8396at = (LinearLayout) findViewById(R.id.LL_Filter_Button_Layout1);
        this.f8397au = (LinearLayout) findViewById(R.id.LL_Filter_Button_Layout2);
        this.f8398av = (LinearLayout) findViewById(R.id.LL_Filter_Button_Layout3);
        this.f8399aw = (LinearLayout) findViewById(R.id.LL_Filter_Button_Layout4);
        this.f8400ax = (LinearLayout) findViewById(R.id.LL_Filter_Button_Layout5);
        this.f8401ay = (LinearLayout) findViewById(R.id.LL_Filter_Button_Layout6);
        this.f8402az = (LinearLayout) findViewById(R.id.LL_Filter_Button_Layout7);
        this.f8351aA = (LinearLayout) findViewById(R.id.LL_Filter_Button_Layout8);
        this.f8352aB = (LinearLayout) findViewById(R.id.LL_Filter_Button_Layout9);
        this.f8353aC.add(this.f8377aa);
        this.f8353aC.add(this.f8378ab);
        this.f8353aC.add(this.f8379ac);
        this.f8353aC.add(this.f8380ad);
        this.f8353aC.add(this.f8381ae);
        this.f8353aC.add(this.f8382af);
        this.f8353aC.add(this.f8383ag);
        this.f8353aC.add(this.f8384ah);
        this.f8353aC.add(this.f8385ai);
        this.f8354aD.add(this.f8396at);
        this.f8354aD.add(this.f8397au);
        this.f8354aD.add(this.f8398av);
        this.f8354aD.add(this.f8399aw);
        this.f8354aD.add(this.f8400ax);
        this.f8354aD.add(this.f8401ay);
        this.f8354aD.add(this.f8402az);
        this.f8354aD.add(this.f8351aA);
        this.f8354aD.add(this.f8352aB);
        this.f8350Z.setOnClickListener(this.f8472cP);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f8353aC.size()) {
                this.f8353aC.get(i2).setOnClickListener(this.f8472cP);
                i = i2 + 1;
            } else {
                this.f8354aD.get(C0088a.m850l()).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
                return;
            }
        }
    }

    /* renamed from: S */
    protected void m7722S() {
        int size;
        int size2;
        int width = this.f8343S.getWidth();
        int width2 = this.f8396at.getWidth();
        if (this.f8329E.getLayoutDirection() == 0) {
            size = C0088a.m848k();
            size2 = C0088a.m850l();
        } else {
            size = (this.f8348X.size() - 1) - C0088a.m848k();
            size2 = (this.f8353aC.size() - 1) - C0088a.m850l();
        }
        this.f8329E.scrollTo(size * width, 0);
        this.f8330F.scrollTo(size2 * width2, 0);
    }

    /* renamed from: T */
    protected void m7723T() {
        for (int i = 0; i < this.f8353aC.size(); i++) {
            this.f8354aD.get(i).setBackgroundColor(-15263977);
            this.f8354aD.get(i).setBackgroundResource(0);
        }
        this.f8354aD.get(C0088a.m850l()).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
        if (C0088a.m850l() == 0) {
            this.f8350Z.setImageResource(R.drawable.shooting_effectmenu_filter_white);
            this.f8386aj.setTextColor(getResources().getColor(R.color.white));
        } else {
            this.f8350Z.setImageResource(R.drawable.shooting_effectmenu_icon_filter_green);
            this.f8386aj.setTextColor(getResources().getColor(R.color.iconcolor));
        }
        for (int i2 = 0; i2 < this.f8348X.size(); i2++) {
            this.f8349Y.get(i2).setBackgroundResource(0);
            this.f8349Y.get(i2).setBackgroundColor(-15263977);
        }
        this.f8349Y.get(C0088a.m848k()).setBackgroundResource(R.drawable.shooting_effectmenu_cursor);
        if (C0088a.m848k() == 0) {
            this.f8331G.setImageResource(R.drawable.shooting_effectmenu_wb_white);
            this.f8337M.setTextColor(getResources().getColor(R.color.white));
        } else {
            this.f8331G.setImageResource(R.drawable.shooting_effectmenu_icon_wb_green);
            this.f8337M.setTextColor(getResources().getColor(R.color.iconcolor));
        }
        this.f8372aV.setProgress(C0088a.m846j());
        this.f8373aW.setText(this.f8456c.f8782c.f7650h.f7678W.get(C0088a.m846j()));
        if (C0088a.m846j() == 6) {
            this.f8370aT.setImageResource(R.drawable.shooting_effectmenu_ev_white);
            this.f8371aU.setTextColor(getResources().getColor(R.color.white));
        } else {
            this.f8370aT.setImageResource(R.drawable.shooting_effectmenu_icon_ev_green);
            this.f8371aU.setTextColor(getResources().getColor(R.color.iconcolor));
        }
    }

    /* renamed from: aR */
    private void m7631aR() {
        this.f8359aI = (LinearLayout) findViewById(R.id.LL_ui_Finger_Detect);
        this.f8359aI.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.50

            /* renamed from: a */
            float f8570a = 0.0f;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    this.f8570a = motionEvent.getX();
                } else if (motionEvent.getAction() == 1) {
                    if (motionEvent.getX() - this.f8570a > 80.0f) {
                        if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 0) {
                            if (UI_LiveViewController.this.f8521z.getLayoutDirection() != 0) {
                                UI_LiveViewController.this.m7604a(0, 1);
                            }
                        } else if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 1) {
                            if (UI_LiveViewController.this.f8521z.getLayoutDirection() == 0) {
                                UI_LiveViewController.this.m7604a(1, 0);
                            } else {
                                UI_LiveViewController.this.m7604a(1, 2);
                            }
                        } else if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 2 && UI_LiveViewController.this.f8521z.getLayoutDirection() == 0) {
                            UI_LiveViewController.this.m7604a(2, 1);
                        }
                    } else if (this.f8570a - motionEvent.getX() > 80.0f) {
                        if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 0) {
                            if (UI_LiveViewController.this.f8521z.getLayoutDirection() == 0) {
                                UI_LiveViewController.this.m7604a(0, 1);
                            }
                        } else if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 1) {
                            if (UI_LiveViewController.this.f8521z.getLayoutDirection() == 0) {
                                UI_LiveViewController.this.m7604a(1, 2);
                            } else {
                                UI_LiveViewController.this.m7604a(1, 0);
                            }
                        } else if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 2 && UI_LiveViewController.this.f8521z.getLayoutDirection() != 0) {
                            UI_LiveViewController.this.m7604a(2, 1);
                        }
                    }
                }
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7604a(int i, int i2) {
        m7688o(i2);
        switch (i2) {
            case 0:
                if (!this.f8500d.f7650h.f7695aM) {
                    if (C0088a.m838f() == 0) {
                        this.f8517v.setImageResource(R.drawable.shooting_shutterkey_photo);
                    } else {
                        this.f8517v.setImageResource(R.drawable.shooting_shutterkey_photo_selftimer);
                    }
                }
                m7750ah();
                m7731a(i, i2, 300);
                this.f8456c.f8782c.f7650h.f7675T = 0;
                m7777h(this.f8456c.f8782c.f7650h.f7675T);
                break;
            case 1:
                if (!this.f8500d.f7650h.f7695aM) {
                    if (C0088a.m838f() == 0) {
                        this.f8517v.setImageResource(R.drawable.shooting_shutterkey_video);
                    } else {
                        this.f8517v.setImageResource(R.drawable.shooting_shutterkey_video_selftimer);
                    }
                }
                m7750ah();
                m7731a(i, i2, 300);
                this.f8456c.f8782c.f7650h.f7675T = 1;
                m7777h(this.f8456c.f8782c.f7650h.f7675T);
                break;
            case 2:
                this.f8517v.setImageResource(R.drawable.shooting_shutterkey_live);
                m7731a(i, i2, 300);
                this.f8456c.f8782c.f7650h.f7675T = 2;
                m7777h(this.f8456c.f8782c.f7650h.f7675T);
                m7750ah();
                break;
            default:
                m7607a("Mode is error!", 0);
                break;
        }
    }

    /* renamed from: aS */
    private void m7632aS() {
        this.f8374aX = (TextView) findViewById(R.id.TV_Self_Timer);
        this.f8374aX.setVisibility(4);
        this.f8366aP = (LinearLayout) findViewById(R.id.LL_Self_Timer_Layout);
        this.f8367aQ = (ImageButton) findViewById(R.id.IB_ui_Self_Timer_Button);
        this.f8366aP.setVisibility(4);
        this.f8367aQ.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.51
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LiveViewController.this.m7616aC();
            }
        });
        this.f8366aP.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.52
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    /* renamed from: aT */
    private void m7633aT() {
        this.f8368aR = (LinearLayout) findViewById(R.id.LL_ui_Capture_Rec_Progress);
        this.f8368aR.setVisibility(4);
        this.f8369aS = (ImageView) findViewById(R.id.IV_ui_Capture_Rec_Anim);
        this.f8368aR.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.53
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    /* renamed from: j */
    protected void m7784j(boolean z) {
        this.f8369aS.setImageResource(R.drawable.anim_shooting_busy);
        if (z) {
            this.f8368aR.setVisibility(0);
            ((AnimationDrawable) this.f8369aS.getDrawable()).start();
        } else {
            this.f8368aR.setVisibility(4);
            ((AnimationDrawable) this.f8369aS.getDrawable()).stop();
            this.f8369aS.setImageResource(0);
        }
    }

    /* renamed from: U */
    protected void m7724U() {
        C1669k c1669k = this.f8456c.f8782c.f7650h;
        int i = c1669k.f7680Y;
        c1669k.f7680Y = i - 1;
        if (i == 1) {
            C0068g.m632a(3);
            this.f8456c.f8782c.f7650h.f7680Y = m7692q(C0088a.m838f()) / 1000;
            this.f8374aX.setText(Integer.toString(this.f8456c.f8782c.f7650h.f7680Y));
            this.f8456c.f8782c.f7650h.f7681Z = false;
            this.f8374aX.setVisibility(4);
            return;
        }
        ObjectAnimator.ofFloat(this.f8374aX, "alpha", 0.0f, 1.0f).setDuration(500L).start();
        this.f8374aX.setText(Integer.toString(this.f8456c.f8782c.f7650h.f7680Y));
        m7637aX();
    }

    /* renamed from: V */
    protected void m7725V() {
        C0068g.m632a(3);
        this.f8456c.f8782c.f7650h.f7680Y = m7692q(C0088a.m838f()) / 1000;
        this.f8456c.f8782c.f7650h.f7681Z = false;
        this.f8374aX.setText(Integer.toString(this.f8456c.f8782c.f7650h.f7680Y));
        this.f8374aX.setVisibility(4);
    }

    /* renamed from: a */
    private void m7606a(LinearLayout linearLayout, int i) {
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(linearLayout, (linearLayout.getWidth() * 7) / 10, linearLayout.getHeight(), 0.0f, Math.max(linearLayout.getWidth(), linearLayout.getHeight()));
        linearLayout.setVisibility(0);
        createCircularReveal.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.54
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                UI_LiveViewController.this.f8328D.setEnabled(true);
            }
        });
        createCircularReveal.setDuration(i);
        createCircularReveal.start();
    }

    /* renamed from: b */
    private void m7660b(final LinearLayout linearLayout, int i) {
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(linearLayout, (linearLayout.getWidth() * 7) / 10, linearLayout.getHeight(), linearLayout.getWidth(), 0.0f);
        createCircularReveal.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.55
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                linearLayout.setVisibility(4);
                UI_LiveViewController.this.f8328D.setEnabled(true);
                UI_LiveViewController.this.f8370aT.setImageResource(0);
                UI_LiveViewController.this.f8372aV.setBackgroundResource(0);
                UI_LiveViewController.this.f8331G.setImageResource(0);
                UI_LiveViewController.this.f8332H.setImageResource(0);
                UI_LiveViewController.this.f8333I.setImageResource(0);
                UI_LiveViewController.this.f8334J.setImageResource(0);
                UI_LiveViewController.this.f8335K.setImageResource(0);
                UI_LiveViewController.this.f8336L.setImageResource(0);
                UI_LiveViewController.this.f8350Z.setImageResource(0);
                UI_LiveViewController.this.f8377aa.setImageResource(0);
                UI_LiveViewController.this.f8378ab.setImageResource(0);
                UI_LiveViewController.this.f8379ac.setImageResource(0);
                UI_LiveViewController.this.f8380ad.setImageResource(0);
                UI_LiveViewController.this.f8381ae.setImageResource(0);
                UI_LiveViewController.this.f8382af.setImageResource(0);
                UI_LiveViewController.this.f8383ag.setImageResource(0);
                UI_LiveViewController.this.f8384ah.setImageResource(0);
                UI_LiveViewController.this.f8385ai.setImageResource(0);
            }
        });
        createCircularReveal.setDuration(i);
        createCircularReveal.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aU */
    public void m7634aU() {
        new Path();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f8520y, "rotation", 180.0f, 0.0f, 0.0f);
        ofFloat.setDuration(1000L);
        ofFloat.start();
    }

    /* renamed from: a */
    private ObjectAnimator m7603a(Object obj, int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat((ImageButton) obj, "rotation", 0.0f, 360.0f);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.57
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                UI_LiveViewController.this.m7725V();
                UI_LiveViewController.this.f8517v.setEnabled(true);
                if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7703aa) {
                    UI_LiveViewController.this.m7785k(false);
                    UI_LiveViewController.this.m7725V();
                    UI_LiveViewController.this.f8456c.f8782c.f7650h.f7703aa = false;
                } else if (UI_LiveViewController.this.m406a() != 0) {
                    UI_LiveViewController.this.m7785k(false);
                    UI_LiveViewController.this.m7725V();
                    UI_LiveViewController.this.m7607a("Activity not ready, ignore record msg", 0);
                } else if (UI_LiveViewController.this.f8456c.f8782c.f7650h.f7675T == 0) {
                    UI_LiveViewController.this.f8456c.f8782c.f7650h.f7681Z = false;
                    UI_LiveViewController.this.m407a(8775);
                } else {
                    UI_LiveViewController.this.m407a(8774);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
            }
        });
        ofFloat.setDuration(i);
        ofFloat.start();
        return ofFloat;
    }

    /* renamed from: h */
    protected void m7777h(int i) {
        if (i == 0) {
            this.f8325A.setImageResource(R.drawable.shooting_mode_photo_green);
            this.f8326B.setImageResource(R.drawable.shooting_mode_video_white);
            this.f8327C.setImageResource(R.drawable.shooting_mode_live_white);
        } else if (i == 1) {
            this.f8325A.setImageResource(R.drawable.shooting_mode_photo_white);
            this.f8326B.setImageResource(R.drawable.shooting_mode_video_green);
            this.f8327C.setImageResource(R.drawable.shooting_mode_live_white);
        } else if (i == 2) {
            this.f8325A.setImageResource(R.drawable.shooting_mode_photo_white);
            this.f8326B.setImageResource(R.drawable.shooting_mode_video_white);
            this.f8327C.setImageResource(R.drawable.shooting_mode_live_green);
        }
    }

    /* renamed from: W */
    protected void m7726W() {
        if (this.f8481ch != null && (this.f8466cJ.isShown() || this.f8481ch.isShown())) {
            m7772f(false);
        }
        if (this.f8482ci != null && (this.f8466cJ.isShown() || this.f8482ci.isShown())) {
            m7774g(false);
        }
        if (this.f8460cD != null && this.f8460cD.isShown()) {
            m7727X();
            m7769e(false);
            this.f8429bZ.m1919a(this.f8500d.f7650h.f7707ae).m1963e();
        }
    }

    /* renamed from: X */
    protected void m7727X() {
        InputMethodManager inputMethodManager;
        if (getCurrentFocus() != null && (inputMethodManager = (InputMethodManager) getSystemService("input_method")) != null) {
            inputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 0);
        }
    }

    /* renamed from: a */
    protected void m7731a(int i, int i2, int i3) {
        int width = this.f8521z.getWidth() / 3;
        int i4 = this.f8521z.getLayoutDirection() != 0 ? 1 : -1;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f8521z, "translationX", (i - 1) * width * i4, i4 * width * (i2 - 1));
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.58
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
            }
        });
        ofFloat.setDuration(i3);
        ofFloat.start();
    }

    /* renamed from: Y */
    protected void m7728Y() {
        this.f8517v.setEnabled(false);
        this.f8366aP.setVisibility(4);
        this.f8456c.f8782c.f7650h.f7681Z = false;
        this.f8365aO.setImageResource(R.drawable.shooting_recording);
        this.f8364aN.setImageResource(R.drawable.shooting_shutterkey_video_stop);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f8361aK, "translationY", 500.0f, 0.0f);
        ofFloat.setDuration(150L);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.59
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                UI_LiveViewController.this.f8517v.setEnabled(true);
            }
        });
        ofFloat.start();
        this.f8361aK.setVisibility(0);
        this.f8362aL.setText(String.format("%02d:%02d", 0, 0));
    }

    /* renamed from: k */
    protected void m7785k(boolean z) {
        if (!z) {
            this.f8366aP.setVisibility(4);
            this.f8374aX.setVisibility(4);
            this.f8456c.f8782c.f7650h.f7681Z = false;
            this.f8367aQ.setImageResource(0);
            return;
        }
        this.f8366aP.setVisibility(0);
        this.f8367aQ.setImageResource(R.drawable.shooting_shutterkey_selftimer_ring2);
        this.f8456c.f8782c.f7650h.f7704ab = m7603a(this.f8367aQ, m7692q(C0088a.m838f()));
        this.f8374aX.setVisibility(0);
        ObjectAnimator.ofFloat(this.f8374aX, "alpha", 0.0f, 1.0f).setDuration(500L).start();
        this.f8500d.f7650h.f7696aN = 0;
        C0068g.m633a(3, 1000);
        this.f8456c.f8782c.f7650h.f7681Z = true;
        m7637aX();
    }

    /* renamed from: Z */
    protected boolean m7729Z() {
        if (m7802w()) {
            m7772f(false);
        } else if (m7803x()) {
            m7774g(false);
            m7772f(true);
        } else {
            if (!m7801v()) {
                return false;
            }
            m7769e(false);
            this.f8429bZ.m1919a(this.f8500d.f7650h.f7707ae).m1963e();
        }
        return true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f8456c.m7984a(1L) && !this.f8456c.f8782c.f7650h.f7750w) {
            this.f8456c.m7988b(268435455L);
            mo408a(32768, 0L);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f8456c.f8783d.m1264b() && (i == 25 || i == 24)) {
            if (m7801v()) {
                return super.onKeyDown(i, keyEvent);
            }
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 25 || i == 24) {
            if (!this.f8456c.f8783d.m1264b()) {
                return true;
            }
            int m7974a = this.f8456c.m7974a();
            if (this.f8368aR.isShown() || m7800u() || m7663bb() || m7801v()) {
                return true;
            }
            switch (m7974a) {
                case 272:
                case 400:
                    if (this.f8456c.f8782c.f7650h.f7681Z) {
                        m7616aC();
                        break;
                    } else {
                        m7615aB();
                        break;
                    }
                case 288:
                case 305:
                    m7607a("Ignore volume key while capturing or record-stopping", 0);
                    break;
                case HttpStatusCodes.STATUS_CODE_NOT_MODIFIED /* 304 */:
                    m7617aD();
                    break;
                case 336:
                case 416:
                    m7618aE();
                    break;
                default:
                    m7607a("Ignore volume key at unknown mode: " + m7974a, 0);
                    break;
            }
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    /* renamed from: q */
    private int m7692q(int i) {
        switch (i) {
            case 1:
                return 2000;
            case 2:
                return ExoPlayer.Factory.DEFAULT_MIN_REBUFFER_MS;
            case 3:
                return 10000;
            default:
                return 0;
        }
    }

    /* renamed from: r */
    private int m7694r(int i) {
        switch (i) {
            case 0:
                return 10;
            case 1:
                return 300;
            default:
                return 0;
        }
    }

    /* renamed from: aa */
    protected void m7743aa() {
        this.f8456c.f8782c.f7650h.f7751x = false;
        this.f8456c.f8782c.f7650h.f7752y = false;
    }

    /* renamed from: ab */
    protected boolean m7744ab() {
        return this.f8456c.f8782c.f7650h.f7752y && this.f8456c.f8782c.f7650h.f7751x;
    }

    /* renamed from: ac */
    protected void m7745ac() {
        this.f8456c.m7977a(272, this);
        m7713J();
        if (this.f8456c.f8782c.f7650h.f7674S != 1) {
            this.f8456c.m7994c(268435455L);
        }
        if (this.f8456c.f8782c.f7650h.f7723au) {
            this.f8456c.f8782c.f7650h.f7723au = false;
            m7607a("Send RESUME MSG by stop recording", 3);
            m407a(8734);
        }
    }

    /* renamed from: ad */
    protected void m7746ad() {
        if (this.f8456c.f8782c.f7650h.f7715am == null) {
            this.f8500d.f7650h.f7725aw = System.currentTimeMillis();
            if (C0088a.m820a() == 1) {
                this.f8500d.f7653k.f7478b.f7528ab = m7751ai();
                if (this.f8500d.f7653k.f7478b.f7528ab == null) {
                    C0088a.m821a(0);
                    C0090a.m887b(this.f8456c).putInt("storeLocation", C0088a.m820a()).apply();
                    this.f8500d.f7650h.f7726ax = C0069a.m640a(C1658c.f7455c, C0069a.m639a(Long.valueOf(this.f8500d.f7650h.f7725aw), "mp4"));
                } else {
                    this.f8500d.f7650h.f7726ax = C0069a.m640a(this.f8500d.f7653k.f7478b.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM/CV60/", C0069a.m639a(Long.valueOf(this.f8500d.f7650h.f7725aw), "mp4"));
                }
            } else {
                this.f8500d.f7650h.f7726ax = C0069a.m640a(C1658c.f7455c, C0069a.m639a(Long.valueOf(this.f8500d.f7650h.f7725aw), "mp4"));
            }
            this.f8500d.f7650h.f7715am = new C0098b(this.f8500d.f7650h.f7726ax, true, getResources().getString(R.string.internal_app_version), this.f8500d.f7649g.f7631c);
            if (this.f8500d.f7650h.f7715am != null) {
                this.f8500d.f7650h.f7715am.m943a(this.f8473cQ);
                this.f8500d.f7650h.f7716an = new C0097a(new C0097a.a() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.60
                    @Override // GeneralFunction.p021r.C0097a.a
                    /* renamed from: a */
                    public void mo928a(MediaFormat mediaFormat) {
                        if (UI_LiveViewController.this.f8500d.f7650h.f7715am != null) {
                            UI_LiveViewController.this.f8500d.f7650h.f7715am.m938a(mediaFormat);
                        }
                    }

                    @Override // GeneralFunction.p021r.C0097a.a
                    /* renamed from: a */
                    public void mo929a(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
                        if (UI_LiveViewController.this.f8500d.f7650h.f7715am != null) {
                            UI_LiveViewController.this.f8500d.f7650h.f7686aD = bufferInfo.presentationTimeUs / 1000;
                            UI_LiveViewController.this.f8500d.f7650h.f7715am.m939a(byteBuffer, bufferInfo);
                        }
                    }

                    @Override // GeneralFunction.p021r.C0097a.a
                    /* renamed from: a */
                    public void mo927a() {
                        if (UI_LiveViewController.this.f8500d.f7650h.f7715am != null) {
                            UI_LiveViewController.this.f8500d.f7650h.f7715am.m937a();
                        }
                    }
                });
                this.f8500d.f7650h.f7716an.m920a();
                return;
            }
            return;
        }
        m7607a("objMp4Muxer != null", 0);
    }

    /* renamed from: a */
    protected void m7742a(byte[] bArr) {
        MediaFormat createVideoFormat;
        m7607a("Recording initLiveviewFramIntoRecorder", 3);
        if (C0088a.m825b() == 0) {
            createVideoFormat = MediaFormat.createVideoFormat(MimeTypes.VIDEO_H264, 1920, 960);
        } else {
            createVideoFormat = MediaFormat.createVideoFormat(MimeTypes.VIDEO_H264, 1280, 640);
        }
        byte[] m479c = C0056e.m479c(bArr);
        byte[] m480d = C0056e.m480d(bArr);
        if (m479c != null && m480d != null) {
            this.f8500d.f7650h.f7715am.m941a(m479c.length + m480d.length);
            createVideoFormat.setByteBuffer("csd-0", ByteBuffer.wrap(m479c));
            createVideoFormat.setByteBuffer("csd-1", ByteBuffer.wrap(m480d));
        }
        this.f8500d.f7650h.f7715am.m947b(createVideoFormat);
    }

    /* renamed from: b */
    protected void m7755b(C0114d c0114d) {
        boolean m478b = C0056e.m478b(c0114d.f872a.m454a());
        this.f8500d.f7650h.f7686aD = ((this.f8500d.f7650h.f7727ay * 1000) + (((this.f8500d.f7650h.f7728az * 1000) * 1000) / this.f8500d.f7650h.f7683aA)) / 1000;
        this.f8500d.f7650h.f7715am.m940a(c0114d.f872a.m454a(), c0114d.f872a.f469a, this.f8500d.f7650h.f7727ay + ((this.f8500d.f7650h.f7728az * 1000) / 30), m478b);
    }

    /* renamed from: ae */
    protected void m7747ae() {
        m7787l(true);
    }

    /* renamed from: l */
    protected void m7787l(boolean z) {
        C0058b c0058b;
        m7607a("Recording stopRecorder", 3);
        if (this.f8500d.f7650h.f7716an == null) {
            m7607a("No need to stop audio recorder, send MSG_UI_VIEW_SAVE_VIDEO_FILE_DONE directly", 1);
            m407a(8727);
            return;
        }
        if (this.f8500d.f7650h.f7715am == null) {
            this.f8500d.f7650h.f7716an.m924b();
            m7607a("No need to stop Muxer, send MSG_UI_VIEW_SAVE_VIDEO_FILE_DONE directly", 1);
            m407a(8727);
            return;
        }
        this.f8500d.f7650h.f7716an.m924b();
        this.f8500d.f7650h.f7715am.m946b();
        if (z && this.f8500d.f7650h.f7674S != 5) {
            String str = this.f8500d.f7650h.f7726ax;
            int m561c = this.f8500d.f7653k.f7481e.m561c();
            String substring = str.substring(0, str.lastIndexOf("/") + 1);
            String substring2 = str.substring(str.lastIndexOf("/") + 1, str.length());
            int m878z = C0088a.m878z();
            int m811A = C0088a.m811A();
            int i = (int) ((this.f8500d.f7650h.f7686aD - this.f8500d.f7650h.f7685aC) / 1000);
            if (C0088a.m820a() == 1) {
                this.f8500d.f7653k.f7481e.m558a(substring2, substring, -1L, 1, 1, m878z, m811A, i, this.f8500d.f7650h.f7725aw, this.f8500d.f7650h.f7725aw, m561c + 1, 0, true, true, true, true, false, true, true, true, false);
            } else {
                this.f8500d.f7653k.f7481e.m558a(substring2, substring, -1L, 1, 1, m878z, m811A, i, this.f8500d.f7650h.f7725aw, this.f8500d.f7650h.f7725aw, m561c + 1, 0, true, true, true, true, false, true, true, false, false);
            }
            m7607a("Video durarion: " + i, 3);
            this.f8456c.m8018x();
            this.f8500d.f7653k.f7481e.m549a(this.f8500d.f7653k.f7479c, this.f8500d.f7653k.f7482f, this.f8500d.f7653k.f7483g, this.f8500d.f7653k.f7484h);
            if (C0088a.m820a() == 1) {
                c0058b = this.f8500d.f7653k.f7483g;
            } else {
                c0058b = this.f8500d.f7653k.f7482f;
            }
            this.f8500d.f7653k.f7478b.f7526a.m507a(this.f8500d.f7653k.f7481e.m550a(), c0058b);
        }
    }

    /* renamed from: i */
    protected void m7780i(int i) {
        switch (i) {
            case 0:
                m7635aV();
                break;
            case 1:
                m7636aW();
                break;
        }
    }

    /* renamed from: aV */
    private void m7635aV() {
        if (C0088a.m842h() == 0) {
            C0089n.m881a().m883b();
        }
    }

    /* renamed from: aW */
    private void m7636aW() {
        if (C0088a.m842h() == 0) {
            C0089n.m881a().m884c();
        }
    }

    /* renamed from: aX */
    private void m7637aX() {
        m7607a("playSelfTimerBeepSound() " + this.f8500d.f7650h.f7696aN, 3);
        if (C0088a.m842h() == 0 && this.f8500d.f7650h.f7696aN < m7692q(C0088a.m838f()) / 1000) {
            C0089n.m881a().m885d();
        }
        this.f8500d.f7650h.f7696aN++;
    }

    /* renamed from: a */
    public Bitmap m7730a(Bitmap bitmap, int i) {
        if (bitmap.getWidth() == 160 && bitmap.getHeight() == 120) {
            int height = (bitmap.getHeight() / 3) * 2;
            bitmap = Bitmap.createBitmap(bitmap, 0, (bitmap.getHeight() - height) / 2, bitmap.getWidth(), height);
        }
        if ((bitmap.getWidth() == 5376 && bitmap.getHeight() == 2688) || (bitmap.getWidth() == 3840 && bitmap.getHeight() == 1920)) {
            int height2 = (bitmap.getHeight() * 510) / 720;
            bitmap = Bitmap.createBitmap(bitmap, (bitmap.getWidth() - height2) / 2, (bitmap.getHeight() - height2) / 2, height2, height2);
        }
        int height3 = bitmap.getHeight();
        m7607a("radius: " + height3, 3);
        if (bitmap.getWidth() != height3 || bitmap.getHeight() != height3) {
            int width = (bitmap.getWidth() / 4) * 2;
            bitmap = Bitmap.createBitmap(bitmap, (bitmap.getWidth() - width) / 2, 0, width, bitmap.getHeight());
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setDither(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(Color.parseColor("#BAB399"));
        canvas.drawCircle((bitmap.getWidth() / 2.0f) + 0.7f, (bitmap.getHeight() / 2.0f) + 0.7f, (bitmap.getWidth() / 2.0f) + 0.1f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return createBitmap;
    }

    /* renamed from: j */
    public void m7783j(int i) {
        C0052d.m464a(this, i);
    }

    /* renamed from: af */
    protected void m7748af() {
        m7607a("setReversePortrait()", 3);
        this.f8456c.f8782c.f7650h.f7706ad = true;
        m7783j(9);
        this.f8510o = 1;
        this.f8511p = 9;
        this.f8456c.f8782c.f7650h.f7705ac = 9;
    }

    /* renamed from: aY */
    private void m7638aY() {
        this.f8456c.f8782c.f7650h.f7718ap = new OrientationEventListener(this.f8456c) { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.61
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                UI_LiveViewController.this.f8456c.f8782c.f7650h.f7748u = i;
                if (i != -1) {
                    UI_LiveViewController.this.f8456c.f8782c.f7650h.f7706ad = true;
                    if (i > 350 || i < 10) {
                        if (!UI_LiveViewController.this.f8456c.f8783d.m1264b()) {
                            if (UI_LiveViewController.this.f8511p != 1) {
                                UI_LiveViewController.this.m7783j(1);
                                UI_LiveViewController.this.f8511p = 1;
                                UI_LiveViewController.this.f8456c.f8782c.f7650h.f7705ac = 1;
                                return;
                            }
                            return;
                        }
                        if (UI_LiveViewController.this.f8511p != 9) {
                            UI_LiveViewController.this.m7783j(9);
                            UI_LiveViewController.this.f8511p = 9;
                            UI_LiveViewController.this.f8456c.f8782c.f7650h.f7705ac = 9;
                            return;
                        }
                        return;
                    }
                    if (i > 170 && i < 190 && UI_LiveViewController.this.f8511p != 9) {
                        UI_LiveViewController.this.m7783j(9);
                        UI_LiveViewController.this.f8511p = 9;
                        UI_LiveViewController.this.f8456c.f8782c.f7650h.f7705ac = 9;
                    }
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aZ */
    public void m7639aZ() {
        this.f8456c.f8782c.f7650h.f7716an.m926c();
        this.f8456c.f8782c.f7650h.f7716an.m921a((C0097a.a) null);
        this.f8500d.f7650h.f7728az = 0L;
        this.f8500d.f7650h.f7715am = null;
    }

    /* renamed from: ba */
    private void m7662ba() {
        this.f8436bg.setText("");
        this.f8438bi.setText("");
        this.f8519x.setImageBitmap(null);
        this.f8517v.setBackground(null);
        this.f8517v.setImageResource(0);
        this.f8518w.setBackground(null);
        this.f8518w.setImageResource(0);
        this.f8520y.setBackground(null);
        this.f8520y.setImageResource(0);
        this.f8327C.setBackground(null);
        this.f8327C.setImageResource(0);
        this.f8325A.setBackground(null);
        this.f8325A.setImageResource(0);
        this.f8326B.setBackground(null);
        this.f8326B.setImageResource(0);
        this.f8327C.setBackground(null);
        this.f8327C.setImageResource(0);
        this.f8328D.setBackground(null);
        this.f8328D.setImageResource(0);
        this.f8370aT.setImageResource(0);
        this.f8331G.setImageResource(0);
        this.f8350Z.setImageResource(0);
        this.f8372aV.setOnSeekBarChangeListener(null);
        this.f8372aV.clearFocus();
        this.f8332H.setBackground(null);
        this.f8332H.setImageResource(0);
        this.f8333I.setBackground(null);
        this.f8333I.setImageResource(0);
        this.f8334J.setBackground(null);
        this.f8334J.setImageResource(0);
        this.f8335K.setBackground(null);
        this.f8335K.setImageResource(0);
        this.f8336L.setBackground(null);
        this.f8336L.setImageResource(0);
        this.f8337M.setText("");
        this.f8338N.setText("");
        this.f8339O.setText("");
        this.f8340P.setText("");
        this.f8341Q.setText("");
        this.f8342R.setText("");
        this.f8377aa.setBackground(null);
        this.f8378ab.setBackground(null);
        this.f8379ac.setBackground(null);
        this.f8380ad.setBackground(null);
        this.f8381ae.setBackground(null);
        this.f8382af.setBackground(null);
        this.f8383ag.setBackground(null);
        this.f8384ah.setBackground(null);
        this.f8385ai.setBackground(null);
        this.f8377aa.setImageResource(0);
        this.f8378ab.setImageResource(0);
        this.f8379ac.setImageResource(0);
        this.f8380ad.setImageResource(0);
        this.f8381ae.setImageResource(0);
        this.f8382af.setImageResource(0);
        this.f8383ag.setImageResource(0);
        this.f8384ah.setImageResource(0);
        this.f8385ai.setImageResource(0);
        this.f8386aj.setText("");
        this.f8387ak.setText("");
        this.f8388al.setText("");
        this.f8389am.setText("");
        this.f8390an.setText("");
        this.f8391ao.setText("");
        this.f8392ap.setText("");
        this.f8393aq.setText("");
        this.f8394ar.setText("");
        this.f8395as.setText("");
        this.f8355aE.setBackground(null);
        this.f8355aE.setImageResource(0);
        this.f8355aE.setImageBitmap(null);
        this.f8364aN.setBackground(null);
        this.f8364aN.setImageResource(0);
        this.f8365aO.setBackground(null);
        this.f8365aO.setImageResource(0);
        this.f8367aQ.setBackground(null);
        this.f8367aQ.setImageResource(0);
        this.f8369aS.setBackground(null);
        this.f8369aS.setImageResource(0);
        this.f8430ba.setBackground(null);
        this.f8430ba.setImageResource(0);
        this.f8430ba.setImageBitmap(null);
        this.f8431bb.setBackground(null);
        this.f8431bb.setImageResource(0);
        this.f8432bc.setBackground(null);
        this.f8432bc.setImageResource(0);
        this.f8434be.setBackground(null);
        this.f8434be.setImageResource(0);
        this.f8439bj.setBackground(null);
        this.f8439bj.setImageResource(0);
        this.f8441bl.setBackground(null);
        this.f8441bl.setImageResource(0);
        this.f8362aL.setText("");
        this.f8363aM.setText("");
        this.f8348X.clear();
        this.f8349Y.clear();
        this.f8353aC.clear();
        this.f8354aD.clear();
        this.f8502f.setPlayerStatusListener(null);
        this.f8502f = null;
        this.f8396at.setBackgroundColor(0);
        this.f8396at.setBackground(null);
        this.f8397au.setBackgroundColor(0);
        this.f8397au.setBackground(null);
        this.f8398av.setBackgroundColor(0);
        this.f8398av.setBackground(null);
        this.f8399aw.setBackgroundColor(0);
        this.f8399aw.setBackground(null);
        this.f8400ax.setBackgroundColor(0);
        this.f8400ax.setBackground(null);
        this.f8401ay.setBackgroundColor(0);
        this.f8401ay.setBackground(null);
        this.f8402az.setBackgroundColor(0);
        this.f8402az.setBackground(null);
        this.f8351aA.setBackgroundColor(0);
        this.f8351aA.setBackground(null);
        this.f8352aB.setBackgroundColor(0);
        this.f8352aB.setBackground(null);
        this.f8343S.setBackgroundColor(0);
        this.f8343S.setBackground(null);
        this.f8344T.setBackgroundColor(0);
        this.f8344T.setBackground(null);
        this.f8345U.setBackgroundColor(0);
        this.f8345U.setBackground(null);
        this.f8346V.setBackgroundColor(0);
        this.f8346V.setBackground(null);
        this.f8347W.setBackgroundColor(0);
        this.f8347W.setBackground(null);
        this.f8517v = null;
        this.f8518w = null;
        this.f8520y = null;
        this.f8327C = null;
        this.f8325A = null;
        this.f8326B = null;
        this.f8328D = null;
        this.f8329E = null;
        this.f8330F = null;
        this.f8331G = null;
        this.f8332H = null;
        this.f8333I = null;
        this.f8334J = null;
        this.f8335K = null;
        this.f8336L = null;
        this.f8343S = null;
        this.f8344T = null;
        this.f8345U = null;
        this.f8346V = null;
        this.f8347W = null;
        this.f8348X = null;
        this.f8349Y = null;
        this.f8350Z = null;
        this.f8377aa = null;
        this.f8378ab = null;
        this.f8379ac = null;
        this.f8380ad = null;
        this.f8381ae = null;
        this.f8382af = null;
        this.f8383ag = null;
        this.f8384ah = null;
        this.f8385ai = null;
        this.f8396at = null;
        this.f8397au = null;
        this.f8398av = null;
        this.f8399aw = null;
        this.f8400ax = null;
        this.f8401ay = null;
        this.f8402az = null;
        this.f8351aA = null;
        this.f8352aB = null;
        this.f8387ak = null;
        this.f8388al = null;
        this.f8389am = null;
        this.f8390an = null;
        this.f8391ao = null;
        this.f8392ap = null;
        this.f8393aq = null;
        this.f8394ar = null;
        this.f8395as = null;
        this.f8353aC = null;
        this.f8354aD = null;
        this.f8355aE = null;
        this.f8356aF = null;
        this.f8357aG = null;
        this.f8358aH = null;
        this.f8359aI = null;
        this.f8360aJ = null;
        this.f8361aK = null;
        this.f8362aL = null;
        this.f8363aM = null;
        this.f8364aN = null;
        this.f8365aO = null;
        this.f8366aP = null;
        this.f8367aQ = null;
        this.f8368aR = null;
        this.f8369aS = null;
        this.f8370aT = null;
        this.f8372aV = null;
        this.f8373aW = null;
        this.f8374aX = null;
        this.f8376aZ = null;
        this.f8430ba = null;
        this.f8431bb = null;
        this.f8432bc = null;
        this.f8434be = null;
        this.f8433bd = null;
        this.f8435bf = null;
        this.f8436bg = null;
        this.f8437bh = null;
        this.f8438bi = null;
        this.f8439bj = null;
        this.f8440bk = null;
        this.f8441bl = null;
        this.f8442bm = null;
        this.f8519x = null;
        this.f8521z = null;
        this.f8375aY = null;
        this.f8443bn = null;
        this.f8444bo.setBackground(null);
        this.f8444bo.setImageResource(0);
        this.f8445bp.setText("");
        this.f8446bq.setBackground(null);
        this.f8446bq.setImageResource(0);
        this.f8447br.setBackground(null);
        this.f8447br.setImageResource(0);
        this.f8448bs.setBackground(null);
        this.f8448bs.setImageResource(0);
        this.f8449bt.setText("");
        this.f8450bu = null;
        this.f8451bv = null;
        this.f8429bZ = null;
        this.f8474ca = null;
        this.f8475cb.setText("");
        this.f8476cc.setText("");
        this.f8477cd = null;
        this.f8478ce = null;
        this.f8479cf.setText("");
        this.f8480cg.setText("");
        this.f8481ch = null;
        this.f8482ci = null;
        this.f8483cj = null;
        this.f8484ck = null;
        this.f8485cl = null;
        this.f8486cm = null;
        this.f8494cu.setBackground(null);
        this.f8494cu.setImageResource(0);
        this.f8497cx = null;
        this.f8498cy = null;
        this.f8499cz = null;
        this.f8458cB.setBackground(null);
        this.f8458cB.setImageResource(0);
        this.f8459cC.setBackground(null);
        this.f8459cC.setImageResource(0);
        this.f8460cD = null;
        this.f8461cE.setBackground(null);
        this.f8461cE.setImageResource(0);
        this.f8462cF.setBackground(null);
        this.f8462cF.setImageResource(0);
        this.f8463cG.setText("");
    }

    /* renamed from: ag */
    protected void m7749ag() {
        int m561c = this.f8500d.f7653k.f7481e.m561c();
        try {
            long length = new File(this.f8456c.f8782c.f7653k.f7478b.f7526a.m528h(m561c, 0)).length();
            m7607a("lFileSize:" + length, 3);
            this.f8456c.f8782c.f7653k.f7481e.m554a(m561c, 0, length);
            this.f8456c.m8018x();
        } catch (NullPointerException e) {
            e.printStackTrace();
            m7607a("Skip update data size", 0);
        }
    }

    /* renamed from: ah */
    protected boolean m7750ah() {
        return m7790m(false);
    }

    /* renamed from: m */
    protected boolean m7790m(boolean z) {
        if (z) {
            if (C0088a.m820a() == 0) {
                this.f8456c.f8782c.f7650h.f7753z = C0052d.m461a(C1658c.f7453a, 0);
            } else {
                if (this.f8456c.f8782c.f7653k.f7478b.f7528ab == null) {
                    this.f8456c.f8782c.f7653k.f7478b.f7528ab = m7751ai();
                }
                if (this.f8456c.f8782c.f7653k.f7478b.f7528ab != null) {
                    this.f8456c.f8782c.f7650h.f7753z = C0052d.m461a(this.f8456c.f8782c.f7653k.f7478b.f7528ab, 0);
                }
            }
        } else {
            m412b(20507);
        }
        return this.f8456c.f8782c.f7650h.f7753z < 52428800;
    }

    /* renamed from: bb */
    private boolean m7663bb() {
        return this.f8456c.f8782c.f7650h.f7753z < 52428800;
    }

    /* renamed from: n */
    protected void m7792n(boolean z) {
        if (z) {
            m7740a(true, getResources().getString(R.string.memory_full));
            this.f8517v.setEnabled(false);
            this.f8517v.setImageResource(R.drawable.shooting_shutterkey_disable);
            return;
        }
        m7740a(false, "");
        this.f8517v.setEnabled(true);
        if (this.f8456c.f8782c.f7650h.f7675T == 0) {
            if (C0088a.m838f() == 0) {
                this.f8517v.setImageResource(R.drawable.shooting_shutterkey_photo);
                return;
            } else {
                this.f8517v.setImageResource(R.drawable.shooting_shutterkey_photo_selftimer);
                return;
            }
        }
        if (this.f8456c.f8782c.f7650h.f7675T == 1) {
            if (C0088a.m838f() == 0) {
                this.f8517v.setImageResource(R.drawable.shooting_shutterkey_video);
                return;
            } else {
                this.f8517v.setImageResource(R.drawable.shooting_shutterkey_video_selftimer);
                return;
            }
        }
        this.f8517v.setImageResource(R.drawable.shooting_shutterkey_live);
    }

    /* renamed from: a */
    protected void m7736a(String str, boolean z) {
        this.f8500d.f7653k.f7478b.f7555q = new C0043a(this.f8456c, str, 2000, z);
    }

    /* renamed from: ai */
    protected String m7751ai() {
        return C0052d.m462a(this);
    }

    /* renamed from: o */
    protected void m7794o(boolean z) {
        if (z) {
            this.f8518w.setImageResource(R.drawable.shooting_settings_red);
            this.f8431bb.setImageResource(R.drawable.shooting_settings_red);
        } else {
            this.f8518w.setImageResource(R.drawable.shooting_settings_white);
            this.f8431bb.setImageResource(R.drawable.shooting_settings_white);
        }
    }

    /* renamed from: bc */
    private void m7664bc() {
        if (this.f8456c.m7974a() != 288) {
            if (this.f8456c.m7974a() == 304) {
                this.f8456c.f8782c.f7650h.f7674S = 5;
                m407a(8778);
            } else {
                m412b(20508);
            }
        }
        m7750ah();
    }

    /* renamed from: aj */
    protected boolean m7752aj() {
        m7607a("GetPlayerStatus():" + this.f8502f.m209d(), 3);
        return this.f8502f.m209d() == 2 || this.f8502f.m209d() == 3 || this.f8502f.m209d() == 4 || this.f8502f.m209d() == 5;
    }

    /* renamed from: b */
    public void m7756b(String str) {
        if (str != null) {
            m7607a("notifyFileToSystem", 3);
            new File(str);
            C0069a.m641a(this, str);
        }
    }

    /* renamed from: bd */
    private void m7665bd() {
        this.f8466cJ = (LinearLayout) findViewById(R.id.LL_ui_live_protect_layout);
        this.f8466cJ.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Liveview.UI_LiveViewController.63
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public void m7691p(boolean z) {
        if (z) {
            this.f8466cJ.setVisibility(0);
        } else {
            this.f8466cJ.setVisibility(4);
        }
    }

    /* renamed from: ak */
    protected void m7753ak() {
        if (this.f8501e != null) {
            this.f8501e.release();
            this.f8501e = null;
        }
    }

    /* renamed from: al */
    protected void m7754al() {
        PowerManager powerManager = (PowerManager) getSystemService("power");
        if (this.f8501e != null) {
            m7753ak();
        }
        this.f8501e = powerManager.newWakeLock(536870922, "Lexiconda");
        this.f8501e.acquire();
    }
}
