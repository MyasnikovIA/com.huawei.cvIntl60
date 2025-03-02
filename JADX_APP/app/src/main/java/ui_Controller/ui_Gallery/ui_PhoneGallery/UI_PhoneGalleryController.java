package ui_Controller.ui_Gallery.ui_PhoneGallery;

import GeneralFunction.C0043a;
import GeneralFunction.C0047c;
import GeneralFunction.C0052d;
import GeneralFunction.C0068g;
import GeneralFunction.C0079k;
import GeneralFunction.C0091o;
import GeneralFunction.Player.player.C0041h;
import GeneralFunction.Player.player.SphericalVideoPlayer;
import GeneralFunction.p001a.ActivityC0044a;
import GeneralFunction.p005e.C0057a;
import GeneralFunction.p005e.C0060d;
import GeneralFunction.p008g.C0069a;
import GeneralFunction.p014l.C0082a;
import GeneralFunction.p014l.C0084b;
import GeneralFunction.p014l.C0085c;
import GeneralFunction.p016m.C0088a;
import GeneralFunction.p017n.C0090a;
import GeneralFunction.p022s.C0101a;
import GeneralFunction.p022s.C0103c;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.database.Cursor;
import android.database.CursorIndexOutOfBoundsException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.os.PowerManager;
import android.os.Process;
import android.provider.MediaStore;
import android.support.design.widget.TabLayout;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.InputDeviceCompat;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Space;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.exoplayer.ExoPlayer;
import com.huawei.cvIntl60.R;
import com.p052a.p053a.ComponentCallbacks2C0735c;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import p026a.p029b.p031b.C0120a;
import p026a.p032c.C0121a;
import ui_Controller.CustomWidget.C1649a;
import ui_Controller.CustomWidget.C1655b;
import ui_Controller.CustomWidget.ListHorizontalScrollView.ListHorizontalScrollView;
import ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView;
import ui_Controller.CustomWidget.ZoomableImageView;
import ui_Controller.CustomWidget.p107a.p108a.C1650a;
import ui_Controller.p109a.C1656a;
import ui_Controller.p109a.C1657b;
import ui_Controller.p109a.C1658c;
import ui_Controller.p110b.C1659a;
import ui_Controller.p110b.C1660b;
import ui_Controller.p110b.C1662d;
import ui_Controller.p110b.C1663e;
import ui_Controller.ui_Gallery.C1674a;
import ui_Controller.ui_Gallery.C1676b;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* loaded from: classes.dex */
public class UI_PhoneGalleryController extends ActivityC0044a {

    /* renamed from: G */
    private static int f7991G = 500;

    /* renamed from: Q */
    private TabLayout f8007Q;

    /* renamed from: R */
    private ImageButton f8008R;

    /* renamed from: T */
    private PopupWindow f8010T;

    /* renamed from: U */
    private PopupWindow f8011U;

    /* renamed from: V */
    private PopupWindow f8012V;

    /* renamed from: W */
    private ArrayList<String> f8013W;

    /* renamed from: X */
    private ArrayList<String> f8014X;

    /* renamed from: bA */
    private ListView f8070bA;

    /* renamed from: bB */
    private C1748d f8071bB;

    /* renamed from: bF */
    private C0082a f8075bF;

    /* renamed from: bt */
    private LinearLayout f8115bt;

    /* renamed from: bu */
    private ImageButton f8116bu;

    /* renamed from: bv */
    private ImageButton f8117bv;

    /* renamed from: bw */
    private LinearLayout f8118bw;

    /* renamed from: bx */
    private View f8119bx;

    /* renamed from: by */
    private TextView f8120by;

    /* renamed from: bz */
    private ImageButton f8121bz;

    /* renamed from: H */
    private Context f7998H = this;

    /* renamed from: I */
    private Activity f7999I = this;

    /* renamed from: J */
    private boolean f8000J = false;

    /* renamed from: K */
    private int f8001K = 0;

    /* renamed from: L */
    private int f8002L = 0;

    /* renamed from: M */
    private int f8003M = -1;

    /* renamed from: N */
    private int f8004N = -1;

    /* renamed from: b */
    protected C1747c f8069b = null;

    /* renamed from: c */
    protected UI_ModeMain f8122c = null;

    /* renamed from: d */
    protected C1660b f8158d = null;

    /* renamed from: e */
    protected C1663e f8159e = null;

    /* renamed from: f */
    protected ImageButton f8160f = null;

    /* renamed from: g */
    protected ImageButton f8161g = null;

    /* renamed from: h */
    protected ImageButton f8162h = null;

    /* renamed from: i */
    protected TextView f8163i = null;

    /* renamed from: j */
    protected ImageButton f8164j = null;

    /* renamed from: k */
    protected ImageButton f8165k = null;

    /* renamed from: O */
    private Space f8005O = null;

    /* renamed from: l */
    protected LinearLayout f8166l = null;

    /* renamed from: m */
    protected LinearLayout f8167m = null;

    /* renamed from: n */
    protected ImageView f8168n = null;

    /* renamed from: P */
    private StickyGridHeadersGridView f8006P = null;

    /* renamed from: S */
    private boolean f8009S = false;

    /* renamed from: o */
    protected boolean f8169o = true;

    /* renamed from: p */
    protected boolean f8170p = false;

    /* renamed from: q */
    protected boolean f8171q = false;

    /* renamed from: r */
    protected boolean f8172r = false;

    /* renamed from: s */
    protected LinearLayout f8173s = null;

    /* renamed from: t */
    protected LinearLayout f8174t = null;

    /* renamed from: u */
    protected ImageView f8175u = null;

    /* renamed from: Y */
    private ImageButton f8015Y = null;

    /* renamed from: Z */
    private ImageButton f8016Z = null;

    /* renamed from: aa */
    private ImageButton f8043aa = null;

    /* renamed from: ab */
    private ImageButton f8044ab = null;

    /* renamed from: ac */
    private ImageButton f8045ac = null;

    /* renamed from: ad */
    private ImageButton f8046ad = null;

    /* renamed from: ae */
    private ImageButton f8047ae = null;

    /* renamed from: af */
    private ImageButton f8048af = null;

    /* renamed from: ag */
    private ImageButton f8049ag = null;

    /* renamed from: ah */
    private ImageButton f8050ah = null;

    /* renamed from: ai */
    private ImageButton f8051ai = null;

    /* renamed from: aj */
    private ImageButton f8052aj = null;

    /* renamed from: ak */
    private TextView f8053ak = null;

    /* renamed from: al */
    private TextView f8054al = null;

    /* renamed from: am */
    private TextView f8055am = null;

    /* renamed from: an */
    private TextView f8056an = null;

    /* renamed from: ao */
    private TextView f8057ao = null;

    /* renamed from: ap */
    private TextView f8058ap = null;

    /* renamed from: aq */
    private TextView f8059aq = null;

    /* renamed from: ar */
    private TextView f8060ar = null;

    /* renamed from: as */
    private TextView f8061as = null;

    /* renamed from: at */
    private TextView f8062at = null;

    /* renamed from: au */
    private TextView f8063au = null;

    /* renamed from: av */
    private TextView f8064av = null;

    /* renamed from: aw */
    private ImageButton f8065aw = null;

    /* renamed from: ax */
    private ImageButton f8066ax = null;

    /* renamed from: ay */
    private ImageButton f8067ay = null;

    /* renamed from: az */
    private ImageButton f8068az = null;

    /* renamed from: aA */
    private ImageButton f8017aA = null;

    /* renamed from: aB */
    private ImageButton f8018aB = null;

    /* renamed from: aC */
    private ImageButton f8019aC = null;

    /* renamed from: aD */
    private ImageButton f8020aD = null;

    /* renamed from: aE */
    private ImageButton f8021aE = null;

    /* renamed from: aF */
    private ImageButton f8022aF = null;

    /* renamed from: aG */
    private ImageButton f8023aG = null;

    /* renamed from: aH */
    private ImageButton f8024aH = null;

    /* renamed from: aI */
    private TextView f8025aI = null;

    /* renamed from: aJ */
    private TextView f8026aJ = null;

    /* renamed from: aK */
    private TextView f8027aK = null;

    /* renamed from: aL */
    private TextView f8028aL = null;

    /* renamed from: aM */
    private TextView f8029aM = null;

    /* renamed from: aN */
    private TextView f8030aN = null;

    /* renamed from: aO */
    private TextView f8031aO = null;

    /* renamed from: aP */
    private TextView f8032aP = null;

    /* renamed from: aQ */
    private TextView f8033aQ = null;

    /* renamed from: aR */
    private TextView f8034aR = null;

    /* renamed from: aS */
    private TextView f8035aS = null;

    /* renamed from: aT */
    private TextView f8036aT = null;

    /* renamed from: aU */
    private LinearLayout f8037aU = null;

    /* renamed from: aV */
    private TextView f8038aV = null;

    /* renamed from: aW */
    private ArrayList<ImageButton> f8039aW = null;

    /* renamed from: aX */
    private ArrayList<TextView> f8040aX = null;

    /* renamed from: aY */
    private LinearLayout f8041aY = null;

    /* renamed from: aZ */
    private ArrayList<ImageButton> f8042aZ = null;

    /* renamed from: ba */
    private ArrayList<TextView> f8096ba = null;

    /* renamed from: bb */
    private LinearLayout f8097bb = null;

    /* renamed from: bc */
    private ImageButton f8098bc = null;

    /* renamed from: bd */
    private TextView f8099bd = null;

    /* renamed from: be */
    private Button f8100be = null;

    /* renamed from: bf */
    private ArrayList<ImageView> f8101bf = new ArrayList<>(9);

    /* renamed from: bg */
    private EditText f8102bg = null;

    /* renamed from: bh */
    private ImageView f8103bh = null;

    /* renamed from: bi */
    private TextView f8104bi = null;

    /* renamed from: bj */
    private LinearLayout f8105bj = null;

    /* renamed from: bk */
    private WebView f8106bk = null;

    /* renamed from: bl */
    private Button f8107bl = null;

    /* renamed from: bm */
    private Button f8108bm = null;

    /* renamed from: bn */
    private LinearLayout f8109bn = null;

    /* renamed from: bo */
    private TextView f8110bo = null;

    /* renamed from: bp */
    private OrientationEventListener f8111bp = null;

    /* renamed from: bq */
    private LinearLayout f8112bq = null;

    /* renamed from: br */
    private FrameLayout f8113br = null;

    /* renamed from: bs */
    private ZoomableImageView f8114bs = null;

    /* renamed from: v */
    protected Bitmap f8176v = null;

    /* renamed from: bC */
    private boolean f8072bC = false;

    /* renamed from: bD */
    private boolean f8073bD = false;

    /* renamed from: w */
    protected boolean f8177w = false;

    /* renamed from: x */
    protected boolean f8178x = false;

    /* renamed from: y */
    protected ArrayList<Integer> f8179y = null;

    /* renamed from: z */
    protected boolean f8180z = false;

    /* renamed from: A */
    protected boolean f7992A = false;

    /* renamed from: bE */
    private final String[] f8074bE = {"android.permission.WRITE_EXTERNAL_STORAGE"};

    /* renamed from: bG */
    private String f8076bG = null;

    /* renamed from: B */
    protected C0082a.a f7993B = new C0082a.a() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.1
        @Override // GeneralFunction.p014l.C0082a.a
        /* renamed from: a */
        public void mo809a(C0085c c0085c) {
            UI_PhoneGalleryController.this.m7221a("ShareResultCallback result: " + c0085c.f675a, 3);
            if (UI_PhoneGalleryController.this.f8159e.f7544f > 0) {
                UI_PhoneGalleryController.this.mo408a(9054, 500L);
                UI_PhoneGalleryController.this.f8159e.f7548j.clear();
            }
            if (UI_PhoneGalleryController.this.m7430p()) {
                UI_PhoneGalleryController.this.m407a(9129);
            }
        }
    };

    /* renamed from: bH */
    private View.OnClickListener f8077bH = new View.OnClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.11
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            File file;
            if (UI_PhoneGalleryController.this.m7286u(view.getId())) {
                UI_PhoneGalleryController.this.m7442t(false);
                ArrayList<File> arrayList = new ArrayList<>();
                if (UI_PhoneGalleryController.this.f8159e.f7542d == 3 || UI_PhoneGalleryController.this.f8159e.f7500A) {
                    if (UI_PhoneGalleryController.this.f8122c.m7974a() == 1056 || UI_PhoneGalleryController.this.f8159e.f7500A) {
                        if (UI_PhoneGalleryController.this.f8159e.f7500A) {
                            file = new File(UI_PhoneGalleryController.this.f8159e.f7501B);
                        } else {
                            file = new File(UI_PhoneGalleryController.this.f8159e.f7540b.m536o(UI_PhoneGalleryController.this.f8159e.f7557s));
                        }
                        UI_PhoneGalleryController.this.m7221a("GetFullPath: " + UI_PhoneGalleryController.this.f8159e.f7540b.m536o(UI_PhoneGalleryController.this.f8159e.f7557s), 3);
                        arrayList.add(file);
                        UI_PhoneGalleryController.this.f8159e.f7534ah = view.getId();
                        UI_PhoneGalleryController.this.f8159e.f7539am = arrayList;
                        UI_PhoneGalleryController.this.m407a(8976);
                        return;
                    }
                    UI_PhoneGalleryController.this.m7348aJ();
                    for (int i = 0; i < UI_PhoneGalleryController.this.f8159e.f7548j.size(); i++) {
                        arrayList.add(new File(UI_PhoneGalleryController.this.f8159e.f7540b.m536o(UI_PhoneGalleryController.this.f8159e.f7548j.get(i).intValue())));
                        if (!arrayList.get(i).exists()) {
                            UI_PhoneGalleryController.this.m7388c(UI_PhoneGalleryController.this.getResources().getString(R.string.file_not_exist));
                            return;
                        }
                    }
                    UI_PhoneGalleryController.this.f8159e.f7534ah = view.getId();
                    UI_PhoneGalleryController.this.f8159e.f7539am = arrayList;
                    UI_PhoneGalleryController.this.m407a(8976);
                    return;
                }
                if (UI_PhoneGalleryController.this.f8122c.m7974a() == 1059) {
                    if (UI_PhoneGalleryController.this.f8090bU.isPlaying()) {
                        UI_PhoneGalleryController.this.m7296D();
                        UI_PhoneGalleryController.this.m7294C();
                        UI_PhoneGalleryController.this.m7367an();
                    }
                    File file2 = new File(UI_PhoneGalleryController.this.f8159e.f7540b.m536o(UI_PhoneGalleryController.this.f8159e.f7557s));
                    UI_PhoneGalleryController.this.m7221a("GetFullPath: " + UI_PhoneGalleryController.this.f8159e.f7540b.m536o(UI_PhoneGalleryController.this.f8159e.f7557s), 3);
                    arrayList.add(file2);
                    UI_PhoneGalleryController.this.f8159e.f7548j.clear();
                    UI_PhoneGalleryController.this.f8159e.f7548j.add(Integer.valueOf(UI_PhoneGalleryController.this.f8159e.f7557s));
                    UI_PhoneGalleryController.this.f8159e.f7534ah = view.getId();
                    UI_PhoneGalleryController.this.f8159e.f7539am = arrayList;
                    UI_PhoneGalleryController.this.m407a(8976);
                    return;
                }
                UI_PhoneGalleryController.this.m7348aJ();
                for (int i2 = 0; i2 < UI_PhoneGalleryController.this.f8159e.f7548j.size(); i2++) {
                    arrayList.add(new File(UI_PhoneGalleryController.this.f8159e.f7540b.m536o(UI_PhoneGalleryController.this.f8159e.f7548j.get(i2).intValue())));
                    if (!arrayList.get(i2).exists()) {
                        UI_PhoneGalleryController.this.m7391d(0);
                        UI_PhoneGalleryController.this.mo408a(9053, 0L);
                        return;
                    }
                }
                UI_PhoneGalleryController.this.f8159e.f7534ah = view.getId();
                UI_PhoneGalleryController.this.f8159e.f7539am = arrayList;
                UI_PhoneGalleryController.this.m407a(8976);
            }
        }
    };

    /* renamed from: bI */
    private StickyGridHeadersGridView.InterfaceC1566c f8078bI = new StickyGridHeadersGridView.InterfaceC1566c() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.14
        @Override // com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView.InterfaceC1566c
        /* renamed from: a */
        public void mo6707a(AdapterView<?> adapterView, View view, long j) {
            UI_PhoneGalleryController.this.m7221a("click header " + j, 4);
            if (UI_PhoneGalleryController.this.f8122c.m7984a(1024L) && UI_PhoneGalleryController.this.f8159e.f7544f != 0) {
                C0121a c0121a = new C0121a(9020);
                c0121a.m1200a("header id", (int) j);
                UI_PhoneGalleryController.this.mo410a(c0121a, 0L);
            }
        }
    };

    /* renamed from: bJ */
    private AdapterView.OnItemLongClickListener f8079bJ = new AdapterView.OnItemLongClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.15
        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            UI_PhoneGalleryController.this.m7221a("ItemLongClick", 3);
            if (UI_PhoneGalleryController.this.f8159e.f7544f != 5) {
                UI_PhoneGalleryController.this.f8159e.f7544f = 5;
                UI_PhoneGalleryController.this.f8159e.f7551m.m7057c(5);
                UI_PhoneGalleryController.this.f8159e.f7551m.m7054b();
                UI_PhoneGalleryController.this.m7401f(true);
                UI_PhoneGalleryController.this.m7435r(false);
            }
            UI_PhoneGalleryController.this.m7287v(i);
            return true;
        }
    };

    /* renamed from: bK */
    private AdapterView.OnItemClickListener f8080bK = new AdapterView.OnItemClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.16
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            UI_PhoneGalleryController.this.m7221a("click item " + i, 4);
            if (UI_PhoneGalleryController.this.f8122c.m7984a(1024L)) {
                if (UI_PhoneGalleryController.this.f8159e.f7544f > 0) {
                    UI_PhoneGalleryController.this.m7287v(i);
                } else if (UI_PhoneGalleryController.this.f8122c.m7974a() == 1040) {
                    C0121a c0121a = new C0121a(8965);
                    c0121a.m1200a("SelectIndex", i);
                    UI_PhoneGalleryController.this.mo410a(c0121a, 0L);
                }
            }
        }
    };

    /* renamed from: bL */
    private View.OnClickListener f8081bL = new View.OnClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.17
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String string;
            String string2;
            int i;
            switch (view.getId()) {
                case R.id.IB_ui_multiview_btnCancel /* 2131755467 */:
                    UI_PhoneGalleryController.this.f8122c.m7976a(32768, 0L);
                    break;
                case R.id.TV_ui_multiview_SelectCount /* 2131755468 */:
                case R.id.SPACE_ui_multiview_MoveAndShare /* 2131755471 */:
                case R.id.GV_ui_multiview_HeaderGridView /* 2131755474 */:
                case R.id.LL_ui_multiview_NoFileLayout /* 2131755475 */:
                case R.id.IV_ui_multiview_NoFileImage /* 2131755476 */:
                case R.id.TV_ui_multiview_NoFileText /* 2131755477 */:
                default:
                    UI_PhoneGalleryController.this.m7221a("Error Button", 3);
                    break;
                case R.id.IB_ui_multiview_selectAll /* 2131755469 */:
                    UI_PhoneGalleryController.this.m7441t();
                    break;
                case R.id.IB_ui_multiview_btnMoveTab /* 2131755470 */:
                    if (UI_PhoneGalleryController.this.f8159e.f7542d == 1) {
                        if (UI_PhoneGalleryController.this.f8159e.f7551m.m7060e() == 1) {
                            string2 = UI_PhoneGalleryController.this.getResources().getString(R.string.move_single_to_sdcard_dialog);
                        } else if (UI_PhoneGalleryController.this.f8159e.f7551m.m7060e() > 1) {
                            string2 = UI_PhoneGalleryController.this.getResources().getString(R.string.move_multi_to_sdcard_dialog);
                        }
                        C0091o.m893a(UI_PhoneGalleryController.this.f7998H, true, true, UI_PhoneGalleryController.this.getResources().getString(R.string.move), string2, new String[]{UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_cancel), UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_ok_for_two_button)}, new int[]{0, 9045}, true);
                        break;
                    } else if (UI_PhoneGalleryController.this.f8159e.f7542d == 2) {
                        if (UI_PhoneGalleryController.this.f8159e.f7551m.m7060e() == 1) {
                            string = UI_PhoneGalleryController.this.getResources().getString(R.string.move_single_to_phone_dialog);
                        } else if (UI_PhoneGalleryController.this.f8159e.f7551m.m7060e() > 1) {
                            string = UI_PhoneGalleryController.this.getResources().getString(R.string.move_multi_to_phone_dialog);
                        }
                        C0091o.m893a(UI_PhoneGalleryController.this.f7998H, true, true, UI_PhoneGalleryController.this.getResources().getString(R.string.move), string, new String[]{UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_cancel), UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_ok_for_two_button)}, new int[]{0, 9046}, true);
                        break;
                    }
                    break;
                case R.id.IB_ui_multiview_btnShareTab /* 2131755472 */:
                    if (UI_PhoneGalleryController.this.f8159e.f7551m.m7060e() >= 1) {
                        UI_PhoneGalleryController.this.m7348aJ();
                        int i2 = 0;
                        int i3 = 0;
                        int i4 = 0;
                        while (i2 < UI_PhoneGalleryController.this.f8159e.f7548j.size()) {
                            if (UI_PhoneGalleryController.this.f8159e.f7540b.m533l(UI_PhoneGalleryController.this.f8159e.f7548j.get(i2).intValue())) {
                                i4++;
                                i = i3;
                            } else {
                                i = i3 + 1;
                            }
                            i2++;
                            i3 = i;
                        }
                        UI_PhoneGalleryController.this.f8159e.f7548j.clear();
                        if (i4 > 0 && i3 > 0) {
                            UI_PhoneGalleryController.this.m7334a(true, UI_PhoneGalleryController.this.getResources().getString(R.string.cant_show_photo_video_description));
                            C0068g.m633a(4, ExoPlayer.Factory.DEFAULT_MIN_BUFFER_MS);
                            break;
                        } else if (i3 > 9) {
                            UI_PhoneGalleryController.this.m7334a(true, UI_PhoneGalleryController.this.getResources().getString(R.string.only_nine_photo_description));
                            C0068g.m633a(4, ExoPlayer.Factory.DEFAULT_MIN_BUFFER_MS);
                            break;
                        } else if (i4 > 1) {
                            UI_PhoneGalleryController.this.m7334a(true, UI_PhoneGalleryController.this.getResources().getString(R.string.only_one_video_description));
                            C0068g.m633a(4, ExoPlayer.Factory.DEFAULT_MIN_BUFFER_MS);
                            break;
                        } else {
                            UI_PhoneGalleryController.this.f8122c.m7980a(new C0121a(9008));
                            break;
                        }
                    }
                    break;
                case R.id.IB_ui_multiview_btnDeleteTab /* 2131755473 */:
                    UI_PhoneGalleryController.this.f8122c.m7980a(new C0121a(9001));
                    break;
                case R.id.IB_ui_ShootingModeButton /* 2131755478 */:
                    UI_PhoneGalleryController.this.f8122c.m7976a(8448, 0L);
                    break;
            }
        }
    };

    /* renamed from: bM */
    private LinearLayout f8082bM = null;

    /* renamed from: bN */
    private LinearLayout f8083bN = null;

    /* renamed from: bO */
    private C1655b f8084bO = null;

    /* renamed from: bP */
    private C1676b f8085bP = null;

    /* renamed from: bQ */
    private LinearLayout f8086bQ = null;

    /* renamed from: bR */
    private ListHorizontalScrollView f8087bR = null;

    /* renamed from: bS */
    private SingleHorizontalScrollView f8088bS = null;

    /* renamed from: bT */
    private LinearLayout f8089bT = null;

    /* renamed from: bU */
    private SphericalVideoPlayer f8090bU = null;

    /* renamed from: bV */
    private LinearLayout f8091bV = null;

    /* renamed from: bW */
    private ImageView f8092bW = null;

    /* renamed from: bX */
    private TextView f8093bX = null;

    /* renamed from: bY */
    private Button f8094bY = null;

    /* renamed from: bZ */
    private LinearLayout f8095bZ = null;

    /* renamed from: ca */
    private ImageButton f8132ca = null;

    /* renamed from: cb */
    private TextView f8133cb = null;

    /* renamed from: cc */
    private ImageButton f8134cc = null;

    /* renamed from: cd */
    private ImageButton f8135cd = null;

    /* renamed from: ce */
    private FrameLayout f8136ce = null;

    /* renamed from: cf */
    private ImageButton f8137cf = null;

    /* renamed from: cg */
    private ImageButton f8138cg = null;

    /* renamed from: ch */
    private Space f8139ch = null;

    /* renamed from: ci */
    private LinearLayout f8140ci = null;

    /* renamed from: cj */
    private ImageButton f8141cj = null;

    /* renamed from: ck */
    private ImageButton f8142ck = null;

    /* renamed from: cl */
    private ImageButton f8143cl = null;

    /* renamed from: cm */
    private ImageButton f8144cm = null;

    /* renamed from: cn */
    private TextView f8145cn = null;

    /* renamed from: co */
    private TextView f8146co = null;

    /* renamed from: cp */
    private TextView f8147cp = null;

    /* renamed from: cq */
    private TextView f8148cq = null;

    /* renamed from: cr */
    private LinearLayout f8149cr = null;

    /* renamed from: cs */
    private LinearLayout f8150cs = null;

    /* renamed from: ct */
    private LinearLayout f8151ct = null;

    /* renamed from: cu */
    private LinearLayout f8152cu = null;

    /* renamed from: cv */
    private LinearLayout f8153cv = null;

    /* renamed from: cw */
    private ImageButton f8154cw = null;

    /* renamed from: cx */
    private ListView f8155cx = null;

    /* renamed from: cy */
    private TextView f8156cy = null;

    /* renamed from: cz */
    private View f8157cz = null;

    /* renamed from: cA */
    private C1748d f8123cA = null;

    /* renamed from: cB */
    private FrameLayout f8124cB = null;

    /* renamed from: C */
    protected boolean f7994C = false;

    /* renamed from: D */
    protected boolean f7995D = false;

    /* renamed from: E */
    protected PowerManager.WakeLock f7996E = null;

    /* renamed from: cC */
    private C1676b.a f8125cC = new C1676b.a() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.24
        @Override // ui_Controller.ui_Gallery.C1676b.a
        /* renamed from: a */
        public void mo7130a(int i, Bitmap bitmap) {
            UI_PhoneGalleryController.this.m7221a("onCurrentImgChanged " + i + " " + bitmap, 4);
            C0121a c0121a = new C0121a(9100);
            c0121a.m1200a("update index", i);
            UI_PhoneGalleryController.this.mo410a(c0121a, 0L);
        }
    };

    /* renamed from: cD */
    private C1676b.b f8126cD = new C1676b.b() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.25
        @Override // ui_Controller.ui_Gallery.C1676b.b
        /* renamed from: a */
        public void mo7131a(int i, Bitmap bitmap) {
            int i2;
            UI_PhoneGalleryController.this.m7221a("onMainImageLoadDone " + i + " " + UI_PhoneGalleryController.this.f8159e.f7557s, 4);
            if (UI_PhoneGalleryController.this.f8159e.f7542d == 3 && !UI_PhoneGalleryController.this.f8085bP.m7129d(UI_PhoneGalleryController.this.f8159e.f7557s)) {
                UI_PhoneGalleryController.this.m7404g(false);
            }
            if ((UI_PhoneGalleryController.this.f8122c.m7974a() == 1059 || UI_PhoneGalleryController.this.f8122c.m7974a() == 1056) && i == (i2 = UI_PhoneGalleryController.this.f8159e.f7557s) && UI_PhoneGalleryController.this.m7288w(i2)) {
                UI_PhoneGalleryController.this.m7404g(true);
                if (!UI_PhoneGalleryController.this.f7992A) {
                    UI_PhoneGalleryController.this.f7992A = true;
                    UI_PhoneGalleryController.this.mo408a(9139, 0L);
                }
            }
            C0121a c0121a = new C0121a(9099);
            c0121a.m1200a("update index", i);
            c0121a.m1202a("update bitmap", new C0121a.a(bitmap));
            UI_PhoneGalleryController.this.mo410a(c0121a, 0L);
        }
    };

    /* renamed from: cE */
    private SphericalVideoPlayer.InterfaceC0027a f8127cE = new SphericalVideoPlayer.InterfaceC0027a() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.28
        @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0027a
        /* renamed from: a */
        public void mo230a(int i) {
            switch (i) {
                case 0:
                    if (!UI_PhoneGalleryController.this.f7994C) {
                        UI_PhoneGalleryController.this.mo408a(9120, 0L);
                        break;
                    } else {
                        UI_PhoneGalleryController.this.f7994C = false;
                        break;
                    }
                case 1:
                    if (UI_PhoneGalleryController.this.m7291A()) {
                        UI_PhoneGalleryController.this.m7446v(true);
                        break;
                    } else if (!UI_PhoneGalleryController.this.m7422m()) {
                        UI_PhoneGalleryController.this.m7404g(true);
                        UI_PhoneGalleryController.this.mo413b(20501, 0L);
                        break;
                    }
                    break;
                case 2:
                    if (!UI_PhoneGalleryController.this.f7994C) {
                        UI_PhoneGalleryController.this.mo408a(9118, 0L);
                        break;
                    } else {
                        UI_PhoneGalleryController.this.f7994C = false;
                        break;
                    }
                case 3:
                    UI_PhoneGalleryController.this.m7221a("MediaControllerAdditionalButton_Drag", 2);
                    if (!UI_PhoneGalleryController.this.f7994C) {
                        UI_PhoneGalleryController.this.mo408a(9122, 0L);
                        break;
                    } else {
                        UI_PhoneGalleryController.this.f7994C = false;
                        break;
                    }
                case 4:
                    UI_PhoneGalleryController.this.m407a(32768);
                    break;
                case 5:
                    UI_PhoneGalleryController.this.m407a(32769);
                    break;
            }
            UI_PhoneGalleryController.this.m7247bi();
        }

        @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0027a
        /* renamed from: a */
        public void mo229a() {
            UI_PhoneGalleryController.this.onUserInteraction();
        }
    };

    /* renamed from: cF */
    private View.OnClickListener f8128cF = new View.OnClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.30
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UI_PhoneGalleryController.this.onUserInteraction();
            switch (view.getId()) {
                case R.id.LL_ui_singleview_BottomList_Drag_Layout /* 2131755932 */:
                case R.id.IB_ui_singleview_BottomList_Drag /* 2131755933 */:
                    UI_PhoneGalleryController.this.m7322X();
                    if (UI_PhoneGalleryController.this.f8159e.f7513N == 3) {
                        UI_PhoneGalleryController.this.m7453z(false);
                    }
                    if (UI_PhoneGalleryController.this.f8159e.f7513N != 2) {
                        UI_PhoneGalleryController.this.m7381b(2, false);
                        break;
                    }
                    break;
                case R.id.LL_ui_singleview_BottomList_Gyroscope_Layout /* 2131755935 */:
                case R.id.IB_ui_singleview_BottomList_Gyroscope /* 2131755936 */:
                    UI_PhoneGalleryController.this.m7322X();
                    if (UI_PhoneGalleryController.this.f8159e.f7513N == 3) {
                        UI_PhoneGalleryController.this.m7453z(false);
                    }
                    if (UI_PhoneGalleryController.this.f8159e.f7513N != 1) {
                        UI_PhoneGalleryController.this.m7381b(1, false);
                        break;
                    }
                    break;
                case R.id.LL_ui_singleview_BottomList_VR_Layout /* 2131755938 */:
                case R.id.IB_ui_singleview_BottomList_VR /* 2131755939 */:
                    UI_PhoneGalleryController.this.m7322X();
                    if (UI_PhoneGalleryController.this.f8159e.f7513N != 3) {
                        UI_PhoneGalleryController.this.m7453z(true);
                        break;
                    }
                    break;
                case R.id.LL_ui_singleview_BottomList_Fisheye_Layout /* 2131755942 */:
                case R.id.IB_ui_singleview_BottomList_Fisheye /* 2131755943 */:
                    UI_PhoneGalleryController.this.m7289x(3);
                    UI_PhoneGalleryController.this.m7322X();
                    break;
                case R.id.LL_ui_singleview_BottomList_Perspective_Layout /* 2131755945 */:
                case R.id.IB_ui_singleview_BottomList_Perspective /* 2131755946 */:
                    UI_PhoneGalleryController.this.m7289x(2);
                    UI_PhoneGalleryController.this.m7322X();
                    break;
                case R.id.LL_ui_singleview_BottomList_CrystalBall_Layout /* 2131755948 */:
                case R.id.IB_ui_singleview_BottomList_CrystalBall /* 2131755949 */:
                    UI_PhoneGalleryController.this.m7289x(6);
                    UI_PhoneGalleryController.this.m7322X();
                    break;
                case R.id.LL_ui_singleview_BottomList_LittlePlanet_Layout /* 2131755951 */:
                case R.id.IB_ui_singleview_BottomList_LittlePlanet /* 2131755952 */:
                    UI_PhoneGalleryController.this.m7289x(5);
                    UI_PhoneGalleryController.this.m7322X();
                    break;
                case R.id.LL_ui_singleview_EditTool_ConvertToGif_Layout /* 2131755955 */:
                case R.id.IB_ui_singleview_EditTool_ConvertToGif /* 2131755956 */:
                    UI_PhoneGalleryController.this.m7322X();
                    UI_PhoneGalleryController.this.mo408a(8466, 0L);
                    break;
                case R.id.LL_ui_singleview_EditTool_NormalPicOrMovieEdit_Layout /* 2131755958 */:
                case R.id.IB_ui_singleview_EditTool_NormalPicOrMovieEdit /* 2131755959 */:
                    UI_PhoneGalleryController.this.m7322X();
                    if (UI_PhoneGalleryController.this.f8159e.f7540b.m504a(UI_PhoneGalleryController.this.f8159e.f7557s) == 1) {
                        UI_PhoneGalleryController.this.mo408a(8465, 0L);
                        break;
                    } else if (UI_PhoneGalleryController.this.f8159e.f7540b.m504a(UI_PhoneGalleryController.this.f8159e.f7557s) == 0) {
                        UI_PhoneGalleryController.this.mo408a(8467, 0L);
                        break;
                    }
                    break;
                case R.id.LL_ui_singleview_Snapshot_Cancel_Layout /* 2131755971 */:
                case R.id.IB_ui_singleview_Snapshot_Cancel /* 2131755972 */:
                    UI_PhoneGalleryController.this.m407a(9129);
                    break;
                case R.id.LL_ui_singleview_Snapshot_Confirm_Layout /* 2131755974 */:
                case R.id.IB_ui_singleview_Snapshot_Confirm /* 2131755975 */:
                    UI_PhoneGalleryController.this.m7322X();
                    UI_PhoneGalleryController.this.m407a(9128);
                    break;
            }
        }
    };

    /* renamed from: F */
    public PopupWindow.OnDismissListener f7997F = new PopupWindow.OnDismissListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.31
        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            UI_PhoneGalleryController.this.f8143cl.setImageResource(R.drawable.gallery_bottom_edit);
            UI_PhoneGalleryController.this.f8147cp.setTextColor(UI_PhoneGalleryController.this.getResources().getColor(R.color.white));
            UI_PhoneGalleryController.this.m7218K(false);
            UI_PhoneGalleryController.this.m7219L(false);
            UI_PhoneGalleryController.this.mo408a(9125, 100L);
        }
    };

    /* renamed from: cG */
    private SphericalVideoPlayer.InterfaceC0032f f8129cG = new SphericalVideoPlayer.InterfaceC0032f() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.32
        @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0032f
        /* renamed from: a */
        public void mo233a(int i) {
            UI_PhoneGalleryController.this.m7221a("ReturnVideoStatus " + i, 2);
            C0121a c0121a = new C0121a(9097);
            c0121a.m1200a("360PlayerStatus", i);
            UI_PhoneGalleryController.this.mo410a(c0121a, 0L);
        }
    };

    /* renamed from: cH */
    private View.OnClickListener f8130cH = new View.OnClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.33
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.LL_ui_singleview_LayoutViewType /* 2131755514 */:
                    if (!UI_PhoneGalleryController.this.f7994C) {
                        UI_PhoneGalleryController.this.m7218K(true);
                        UI_PhoneGalleryController.this.mo408a(9121, 0L);
                        break;
                    } else {
                        UI_PhoneGalleryController.this.f7994C = false;
                        break;
                    }
                case R.id.LL_ui_singleview_LayoutSnapshot /* 2131755517 */:
                    if (UI_PhoneGalleryController.this.m7291A()) {
                        UI_PhoneGalleryController.this.m7446v(true);
                        break;
                    } else {
                        UI_PhoneGalleryController.this.m7407h(false);
                        UI_PhoneGalleryController.this.m7404g(true);
                        UI_PhoneGalleryController.this.mo413b(20501, 0L);
                        break;
                    }
                case R.id.LL_ui_singleview_LayoutEdit /* 2131755520 */:
                    if (!UI_PhoneGalleryController.this.f7994C) {
                        UI_PhoneGalleryController.this.f8143cl.setImageResource(R.drawable.gallery_bottom_edit_green);
                        UI_PhoneGalleryController.this.f8147cp.setTextColor(UI_PhoneGalleryController.this.getResources().getColor(R.color.iconcolor));
                        UI_PhoneGalleryController.this.mo408a(9119, 0L);
                        break;
                    } else {
                        UI_PhoneGalleryController.this.f7994C = false;
                        break;
                    }
                case R.id.LL_ui_singleview_LayoutDrag /* 2131755523 */:
                    if (!UI_PhoneGalleryController.this.f7994C) {
                        UI_PhoneGalleryController.this.m7219L(true);
                        UI_PhoneGalleryController.this.mo408a(9123, 0L);
                        break;
                    } else {
                        UI_PhoneGalleryController.this.f7994C = false;
                        break;
                    }
                default:
                    UI_PhoneGalleryController.this.m7221a("error press", 3);
                    break;
            }
        }
    };

    /* renamed from: cI */
    private View.OnClickListener f8131cI = new View.OnClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.35
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.B_ui_MemoryFullConfirm /* 2131755350 */:
                    UI_PhoneGalleryController.this.m7446v(false);
                    break;
                case R.id.IB_EditPreview_Share /* 2131755489 */:
                    UI_PhoneGalleryController.this.m7438s();
                    if (C0120a.m1196a(UI_PhoneGalleryController.this.f7999I)) {
                        UI_PhoneGalleryController.this.m7442t(true);
                        break;
                    } else {
                        C0091o.m892a(UI_PhoneGalleryController.this.f7998H, true, true, UI_PhoneGalleryController.this.getResources().getString(R.string.unable_to_connect), UI_PhoneGalleryController.this.getResources().getString(R.string.unable_to_connect_message), new String[]{UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_cancel), UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_settings)}, new int[]{12039, 12050});
                        break;
                    }
                case R.id.IB_EditPreview_DeleteOrMore /* 2131755490 */:
                    if (UI_PhoneGalleryController.this.f8072bC) {
                        UI_PhoneGalleryController.this.m7421m(false);
                        UI_PhoneGalleryController.this.m7416k(true);
                        break;
                    } else {
                        C0091o.m894a(UI_PhoneGalleryController.this.f7998H, true, true, UI_PhoneGalleryController.this.getResources().getString(R.string.delete_image_title), UI_PhoneGalleryController.this.getResources().getString(R.string.delete_one_image_confirm), new String[]{UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_cancel), UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_delete)}, new int[]{0, 9092}, true, R.color.red);
                        break;
                    }
                case R.id.IB_ui_singleview_btnReturn /* 2131755498 */:
                    UI_PhoneGalleryController.this.mo408a(32768, 0L);
                    break;
                case R.id.IB_ui_singleview_btnShareTab /* 2131755500 */:
                    UI_PhoneGalleryController.this.m7438s();
                    if (C0120a.m1196a(UI_PhoneGalleryController.this.f7999I)) {
                        UI_PhoneGalleryController.this.m7442t(true);
                    } else {
                        C0091o.m892a(UI_PhoneGalleryController.this.f7998H, true, true, UI_PhoneGalleryController.this.getResources().getString(R.string.unable_to_connect), UI_PhoneGalleryController.this.getResources().getString(R.string.unable_to_connect_message), new String[]{UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_cancel), UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_settings)}, new int[]{12039, 12050});
                    }
                    UI_PhoneGalleryController.this.m7448w(false);
                    break;
                case R.id.IB_ui_singleview_btnMoreTab /* 2131755501 */:
                    UI_PhoneGalleryController.this.m7293B(true);
                    UI_PhoneGalleryController.this.m7448w(false);
                    break;
                case R.id.IB_ui_singleview_MoreSettingReturn /* 2131755505 */:
                    UI_PhoneGalleryController.this.m7448w(true);
                    UI_PhoneGalleryController.this.f8153cv.setVisibility(4);
                    break;
                case R.id.IB_ui_singleview_Previous /* 2131755509 */:
                    if (UI_PhoneGalleryController.this.f8122c.m7984a(67108864L)) {
                        UI_PhoneGalleryController.this.m7404g(true);
                        UI_PhoneGalleryController.this.f8122c.m7988b(268435455L);
                        int m7974a = UI_PhoneGalleryController.this.f8122c.m7974a();
                        if (m7974a == 1059) {
                            UI_PhoneGalleryController.this.mo408a(9093, 0L);
                            break;
                        } else if (m7974a == 1056) {
                            UI_PhoneGalleryController.this.mo408a(9124, 0L);
                            break;
                        }
                    }
                    break;
                case R.id.IB_ui_singleview_Next /* 2131755511 */:
                    if (UI_PhoneGalleryController.this.f8122c.m7984a(67108864L)) {
                        UI_PhoneGalleryController.this.m7404g(true);
                        UI_PhoneGalleryController.this.f8122c.m7988b(268435455L);
                        int m7974a2 = UI_PhoneGalleryController.this.f8122c.m7974a();
                        if (m7974a2 == 1059) {
                            UI_PhoneGalleryController.this.mo408a(9094, 0L);
                            break;
                        } else if (m7974a2 == 1056) {
                            UI_PhoneGalleryController.this.mo408a(9126, 0L);
                            break;
                        }
                    }
                    break;
                case R.id.IB_ui_singleview_btnViewType /* 2131755515 */:
                    if (!UI_PhoneGalleryController.this.f7994C) {
                        UI_PhoneGalleryController.this.m7218K(true);
                        UI_PhoneGalleryController.this.mo408a(9121, 0L);
                        break;
                    } else {
                        UI_PhoneGalleryController.this.f7994C = false;
                        break;
                    }
                case R.id.IB_ui_singleview_btnSnapshot /* 2131755518 */:
                    if (UI_PhoneGalleryController.this.m7291A()) {
                        UI_PhoneGalleryController.this.m7446v(true);
                        break;
                    } else {
                        UI_PhoneGalleryController.this.m7407h(false);
                        UI_PhoneGalleryController.this.m7404g(true);
                        UI_PhoneGalleryController.this.mo413b(20501, 0L);
                        break;
                    }
                case R.id.IB_ui_singleview_btnEdit /* 2131755521 */:
                    if (!UI_PhoneGalleryController.this.f7994C) {
                        UI_PhoneGalleryController.this.f8143cl.setImageResource(R.drawable.gallery_bottom_edit_green);
                        UI_PhoneGalleryController.this.f8147cp.setTextColor(UI_PhoneGalleryController.this.getResources().getColor(R.color.iconcolor));
                        UI_PhoneGalleryController.this.mo408a(9119, 0L);
                        break;
                    } else {
                        UI_PhoneGalleryController.this.f7994C = false;
                        break;
                    }
                case R.id.IB_ui_singleview_btnDrag /* 2131755524 */:
                    if (!UI_PhoneGalleryController.this.f7994C) {
                        UI_PhoneGalleryController.this.m7219L(true);
                        UI_PhoneGalleryController.this.mo408a(9123, 0L);
                        break;
                    } else {
                        UI_PhoneGalleryController.this.f7994C = false;
                        break;
                    }
                case R.id.IB_ui_singleview_btnDeleteTab /* 2131755842 */:
                    UI_PhoneGalleryController.this.m7293B(false);
                    UI_PhoneGalleryController.this.mo408a(9088, 0L);
                    break;
                default:
                    UI_PhoneGalleryController.this.m7221a("error press", 3);
                    break;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7221a(String str, int i) {
        C0052d.m465a("UI_PhoneGalleryController", str, i);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo408a(int i, long j) {
        if (this.f8122c != null) {
            this.f8122c.m7981a(new C0121a(i), j);
        } else {
            m7221a("SendUiMsg error!! Msg=" + i, 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo410a(C0121a c0121a, long j) {
        if (this.f8122c != null) {
            this.f8122c.m7981a(c0121a, j);
        } else {
            m7221a("SendUiMsg error!! MsgEx=" + c0121a.m1208b().what, 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo413b(int i, long j) {
        if (this.f8122c != null) {
            this.f8122c.m7987b(i, j);
        } else {
            m7221a("UI_SendAidMsg error!!", 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo415b(C0121a c0121a, long j) {
        if (this.f8122c != null) {
            this.f8122c.m7990b(c0121a, j);
        } else {
            m7221a("UI_SendAidMsg error!!", 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public boolean mo417b() {
        return this.f8003M == 2;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f8122c.m7984a(1L)) {
            if (!m7422m() || m7430p()) {
                this.f8122c.m7988b(268435455L);
                mo408a(32768, 0L);
            }
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z = keyEvent.getRepeatCount() == 0;
        if (i == 79 && z && this.f8090bU != null) {
            m7367an();
            m407a(32769);
        }
        return super.onKeyDown(i, keyEvent);
    }

    /* renamed from: c */
    public void m7384c() {
        if (System.currentTimeMillis() - this.f8122c.f8782c.f7650h.f7679X > 2000) {
            Toast.makeText(this, R.string.press_again_to_quit, 0).show();
            this.f8122c.f8782c.f7650h.f7679X = System.currentTimeMillis();
        } else {
            Process.killProcess(Process.myPid());
            mo408a(12032, 0L);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo416b(Message message) {
        m7221a("AidServer_Handler:0x" + Integer.toHexString(message.what), 3);
        this.f8069b.m7515c(message);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m7221a("ACTIVITY_CREATE", 3);
        this.f8122c = (UI_ModeMain) getApplication();
        this.f8122c.m8016v();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f8001K = displayMetrics.widthPixels;
        this.f8002L = displayMetrics.heightPixels;
        m7221a("ulScreenWidth: " + this.f8001K + " ,ulScreenHeight: " + this.f8002L, 3);
        if (this.f8002L > this.f8001K) {
            this.f8003M = 1;
            setContentView(R.layout.ui_gallery_mode);
        } else {
            this.f8003M = 2;
            setContentView(R.layout.ui_gallery_mode);
        }
        this.f8069b = new C1747c(this);
        this.f8158d = this.f8122c.f8782c.f7653k;
        this.f8158d.f7480d = 0;
        this.f8159e = this.f8122c.f8782c.f7653k.f7478b;
        int intExtra = getIntent().getIntExtra("mode", -1);
        m7221a("mode 111 " + intExtra, 3);
        if (intExtra == 1056) {
            if (this.f8001K > this.f8002L) {
                int i = this.f8001K;
                this.f8001K = this.f8002L;
                this.f8002L = i;
            }
            this.f8122c.m7977a(1056, this);
            this.f8124cB = (FrameLayout) findViewById(R.id.FL_ui_singleview_SingleViewPlayerLayout);
            this.f8124cB.setVisibility(0);
        } else {
            if (this.f8001K > this.f8002L) {
                int i2 = this.f8001K;
                this.f8001K = this.f8002L;
                this.f8002L = i2;
            }
            m7418l(C1662d.m7093a().m7097c());
            this.f8122c.m7977a(1040, this);
            this.f8159e.f7522W = false;
        }
        this.f8075bF = new C0082a();
        this.f8075bF.m807a(this);
        this.f8075bF.m805a(this.f7993B);
        m7250bl();
        m7230aU();
        m7410i(true);
        if (this.f8159e.f7561w) {
            if (ActivityCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") == -1) {
                ActivityCompat.requestPermissions(this, this.f8074bE, 300);
            } else {
                m412b(20499);
            }
        }
        this.f8159e.f7525Z = false;
        this.f8122c.m7988b(1L);
        C0121a c0121a = new C0121a(12033);
        c0121a.m1200a("mode", intExtra);
        mo410a(c0121a, 200L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f8090bU != null && this.f8122c.m7974a() == 1059) {
            m7243be();
        }
        if (this.f8085bP != null) {
            this.f8085bP.m7125b();
        }
        C0121a c0121a = new C0121a(12034);
        c0121a.m1200a("mode", 1024);
        mo410a(c0121a, 0L);
        this.f8111bp.enable();
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onPause() {
        super.onPause();
        m7322X();
        if (this.f8090bU != null && this.f8122c.m7974a() == 1059) {
            if (this.f8090bU.isPlaying()) {
                m7296D();
                m7294C();
            }
            if (!this.f8159e.f7525Z) {
                m7366am();
                m7324Z();
            }
            if (m7430p()) {
                if (this.f7995D) {
                    this.f7995D = false;
                    m7294C();
                }
                if (!this.f8159e.f7500A) {
                    m407a(9129);
                }
            }
        }
        if (this.f8159e.f7544f == 5) {
            this.f8122c.m7997d();
        }
        if (this.f8085bP != null) {
            this.f8085bP.m7120a();
        }
        C0121a c0121a = new C0121a(12035);
        c0121a.m1200a("mode", 1024);
        mo410a(c0121a, 0L);
        this.f8111bp.disable();
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onStop() {
        super.onStop();
        C0121a c0121a = new C0121a(12036);
        c0121a.m1200a("mode", 1024);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        m7417l();
        if (C1657b.m7077b(this.f8122c.m7974a())) {
            m7426o();
            m7314P();
            m7333a(false);
            m7374au();
        }
        this.f8122c.f8782c.f7648f = true;
        C0121a c0121a = new C0121a(12037);
        c0121a.m1200a("mode", 1024);
        mo410a(c0121a, 0L);
    }

    @Override // android.app.Activity
    public void onUserInteraction() {
        super.onUserInteraction();
        if (C1657b.m7077b(this.f8122c.m7974a())) {
            m7333a(true);
        }
    }

    /* renamed from: a */
    protected void m7333a(boolean z) {
        if (z) {
            C0068g.m632a(5);
            C0068g.m633a(5, ExoPlayer.Factory.DEFAULT_MIN_REBUFFER_MS);
        } else {
            C0068g.m632a(5);
        }
    }

    /* renamed from: d */
    protected void m7390d() {
        m7334a(false, "");
        C0068g.m632a(4);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f8075bF.m804a(0, 0, intent, this.f7999I);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        m7221a("onActivityResult requestCode:" + i, 3);
        switch (i) {
            case 1:
                if (this.f8159e.f7544f > 0) {
                    m407a(32768);
                }
                this.f8159e.f7548j.clear();
                break;
            case 2:
                break;
            case 42:
                if (intent != null) {
                    this.f8158d.f7478b.f7527aa = intent.getData();
                    m7221a("get TreeUri:" + intent.getData(), 2);
                    getContentResolver().takePersistableUriPermission(this.f8158d.f7478b.f7527aa, 3);
                    m7351aM();
                    break;
                }
            default:
                this.f8075bF.m804a(i, i2, intent, this.f7999I);
                break;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo411a(Message message) {
        this.f8069b.m7513a(message);
    }

    /* renamed from: e */
    protected void m7395e() {
        m7221a("InitAllUiWidget", 4);
        if (!this.f8170p) {
            m7227aR();
            m7451y();
            this.f8170p = true;
        }
        if (m7344aF() == null) {
            this.f8169o = false;
            m7389c(false);
        } else {
            this.f8169o = true;
            m7389c(true);
        }
        if (this.f8159e.f7561w) {
            if (this.f8171q || this.f8172r) {
                m7432q(true);
                m7404g(true);
            }
            this.f8159e.f7561w = false;
        }
        if (this.f8159e.f7562x) {
            m7346aH();
        }
    }

    /* renamed from: aP */
    private void m7225aP() {
        this.f8007Q = (TabLayout) findViewById(R.id.TL_ui_multiview_HeaderTabLayout);
        this.f8007Q.setTabMode(1);
        this.f8007Q.setTabGravity(0);
        this.f8007Q.m1923a(this.f8007Q.m1918a().m1961d(R.string.phone));
        this.f8007Q.m1923a(this.f8007Q.m1918a().m1961d(R.string.sdcard));
        this.f8007Q.m1923a(this.f8007Q.m1918a().m1961d(R.string.my_album));
        try {
            Field declaredField = this.f8007Q.getClass().getDeclaredField("mTabTextSize");
            declaredField.setAccessible(true);
            float floatValue = ((Float) declaredField.get(this.f8007Q)).floatValue();
            declaredField.set(this.f8007Q, Integer.valueOf(new C0047c((int) floatValue).m444n((int) (floatValue * 0.85d)).m433c((int) (floatValue * 0.85d)).m436f((int) (floatValue * 0.85d)).m437g((int) (floatValue * 0.85d)).m442l((int) (floatValue * 0.85d)).m434d((int) (floatValue * 0.85d)).m438h((int) (floatValue * 0.9d)).m439i((int) (floatValue * 0.9d)).m446p((int) (floatValue * 0.9d)).m440j((int) (floatValue * 0.9d)).m447q((int) (floatValue * 0.85d)).m430a()));
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
        this.f8007Q.m1922a(new TabLayout.InterfaceC0260c() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.12
            @Override // android.support.design.widget.TabLayout.InterfaceC0259b
            /* renamed from: a */
            public void mo1938a(TabLayout.C0263f c0263f) {
                if (UI_PhoneGalleryController.this.f8006P != null) {
                    UI_PhoneGalleryController.this.f8006P.fling(0);
                }
                switch (c0263f.m1959c()) {
                    case 0:
                        UI_PhoneGalleryController.this.f8122c.m7976a(9040, 50L);
                        break;
                    case 1:
                        UI_PhoneGalleryController.this.f8123cA.m7517a(1);
                        UI_PhoneGalleryController.this.f8123cA.m7521b();
                        UI_PhoneGalleryController.this.f8122c.m7976a(9041, 50L);
                        break;
                    case 2:
                        UI_PhoneGalleryController.this.f8123cA.m7517a(2);
                        UI_PhoneGalleryController.this.f8123cA.m7521b();
                        UI_PhoneGalleryController.this.f8122c.m7976a(9042, 50L);
                        break;
                }
                UI_PhoneGalleryController.this.m7221a("TabLayout:" + c0263f.m1959c(), 2);
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

    /* renamed from: b */
    protected void m7382b(boolean z) {
        this.f8169o = z;
        switch (this.f8159e.f7542d) {
            case 1:
                if (z) {
                    this.f8123cA.m7517a(0);
                    this.f8123cA.m7521b();
                    break;
                } else {
                    this.f8123cA.m7517a(3);
                    this.f8123cA.m7521b();
                    break;
                }
            case 2:
                this.f8123cA.m7517a(1);
                this.f8123cA.m7521b();
                break;
        }
        if (this.f8159e.f7542d != 3) {
            m7394d(z);
        }
    }

    /* renamed from: c */
    protected void m7389c(boolean z) {
        if (this.f8007Q != null) {
            View childAt = ((LinearLayout) this.f8007Q.getChildAt(0)).getChildAt(1);
            if (z) {
                childAt.setVisibility(0);
            } else {
                childAt.setVisibility(8);
            }
            if (!z && this.f8122c.m7974a() == 1040) {
                if (this.f8159e.f7542d == 2 || this.f8159e.f7542d == 3) {
                    this.f8007Q.m1919a(0).m1963e();
                }
            }
        }
    }

    /* renamed from: f */
    protected void m7399f() {
        int i = 0;
        switch (this.f8159e.f7542d) {
            case 1:
                m407a(9040);
                break;
            case 2:
                i = 1;
                m407a(9041);
                break;
            case 3:
                m7394d(false);
                m407a(9042);
                i = 2;
                break;
        }
        this.f8007Q.m1919a(i).m1963e();
    }

    /* renamed from: g */
    protected void m7402g() {
        C0088a.m821a(C0090a.m886a(this.f8122c).getInt("storeLocation", 0));
        switch (C0088a.m820a()) {
            case 0:
                this.f8159e.f7542d = 1;
                break;
            case 1:
                this.f8159e.f7542d = 2;
                break;
        }
        m7399f();
    }

    /* renamed from: d */
    protected void m7394d(boolean z) {
        if (z) {
            this.f8162h.setVisibility(0);
            this.f8005O.setVisibility(0);
        } else {
            this.f8162h.setVisibility(8);
            this.f8005O.setVisibility(8);
        }
    }

    /* renamed from: aQ */
    private void m7226aQ() {
        this.f8008R = (ImageButton) findViewById(R.id.IB_ui_ShootingModeButton);
        this.f8008R.setBackgroundResource(R.drawable.gallery_nxn_shootingmode);
        this.f8008R.setOnClickListener(this.f8081bL);
    }

    /* renamed from: aR */
    private void m7227aR() {
        m7221a("InitAllUiWidget", 4);
        m7225aP();
        m7226aQ();
        m7228aS();
        m7235aZ();
        m7239ba();
        m7405h();
        m7234aY();
        m7229aT();
    }

    /* renamed from: h */
    protected void m7405h() {
        this.f8109bn = (LinearLayout) findViewById(R.id.LL_Phone_Gallery_Warning_Layout);
        this.f8110bo = (TextView) findViewById(R.id.TV_Phone_Gallery_Warning_Content);
        this.f8110bo.setTextSize(new C0047c(14).m442l((int) (14 * 0.9d)).m445o((int) (14 * 0.9d)).m430a());
        this.f8109bn.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.23
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    /* renamed from: a */
    protected void m7334a(boolean z, String str) {
        if (z) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f8109bn, "alpha", 0.0f, 1.0f);
            ofFloat.setDuration(500L);
            ofFloat.start();
            this.f8109bn.setVisibility(0);
            this.f8110bo.setText(str);
            return;
        }
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f8109bn, "alpha", 1.0f, 0.0f);
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.34
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (UI_PhoneGalleryController.this.f8109bn != null) {
                    UI_PhoneGalleryController.this.f8109bn.setVisibility(4);
                }
            }
        });
        ofFloat2.setDuration(500L);
        ofFloat2.start();
    }

    /* renamed from: i */
    protected void m7408i() {
        int min = Math.min(this.f8001K, this.f8002L);
        int max = (int) (Math.max(this.f8001K, this.f8002L) * 0.00625d);
        int i = this.f8159e.f7542d == 3 ? 3 : 1;
        this.f8006P = (StickyGridHeadersGridView) findViewById(R.id.GV_ui_multiview_HeaderGridView);
        C1649a.b bVar = new C1649a.b();
        bVar.f7435b = 18096128;
        bVar.f7436c = 810000;
        bVar.f7437d = 3;
        if (this.f8159e.f7542d == 3) {
            bVar.f7434a = C1656a.f7451b;
            bVar.f7438e = 50;
        } else {
            bVar.f7434a = C1656a.f7450a;
            bVar.f7438e = 15;
        }
        bVar.f7439f = false;
        bVar.f7440g = true;
        if (this.f8159e.f7542d == 3) {
            bVar.f7442i = 15;
        } else {
            bVar.f7442i = 5;
        }
        C1649a c1649a = new C1649a(bVar);
        if (this.f8159e.f7542d == 3) {
            this.f8159e.f7551m = new C1650a(this, this.f8159e.f7526a, (int) (min * 0.3135d), this.f8159e.f7544f, true, c1649a);
        } else {
            this.f8159e.f7551m = new C1650a(this, this.f8159e.f7526a, (int) (min * 0.3555d), this.f8159e.f7544f, true, c1649a);
        }
        this.f8159e.f7551m.m7055b(this.f8159e.f7542d);
        this.f8159e.f7551m.m7050a(new C1650a.a() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.37
            @Override // ui_Controller.CustomWidget.p107a.p108a.C1650a.a
            /* renamed from: a */
            public void mo7071a() {
                UI_PhoneGalleryController.this.m7221a("Callback LoadThumbnailDone()", 4);
            }

            @Override // ui_Controller.CustomWidget.p107a.p108a.C1650a.a
            /* renamed from: a */
            public void mo7072a(int i2) {
                UI_PhoneGalleryController.this.m7221a("Callback LoadedErrorFile():" + i2, 2);
                UI_PhoneGalleryController.this.f8179y.add(Integer.valueOf(i2));
                UI_PhoneGalleryController.this.m7404g(true);
                if (!UI_PhoneGalleryController.this.f8180z && UI_PhoneGalleryController.this.f8122c.m7974a() == 1040 && !UI_PhoneGalleryController.this.f8171q) {
                    UI_PhoneGalleryController.this.mo408a(9053, 0L);
                    UI_PhoneGalleryController.this.f8180z = true;
                }
            }
        });
        this.f8006P.setAdapter((ListAdapter) this.f8159e.f7551m);
        this.f8006P.setNumColumns(i);
        this.f8006P.setPadding(0, 0, 0, (int) (this.f8002L * 0.2125d));
        this.f8006P.setClipToPadding(false);
        this.f8006P.setHorizontalSpacing(max);
        this.f8006P.setVerticalSpacing(max);
        this.f8006P.setOnHeaderClickListener(this.f8078bI);
        this.f8006P.setOnItemClickListener(this.f8080bK);
        this.f8006P.setOnItemLongClickListener(this.f8079bJ);
        this.f8006P.setAreHeadersSticky(true);
        this.f8006P.setOverScrollMode(2);
        this.f8179y = new ArrayList<>();
        m7447w();
    }

    /* renamed from: j */
    protected int m7411j() {
        return this.f8006P.getFirstVisiblePosition();
    }

    /* renamed from: c */
    protected void m7385c(int i) {
        this.f8006P.setSelection(i);
        this.f8159e.f7559u = 0;
    }

    /* renamed from: k */
    protected int m7414k() {
        return this.f8179y.size();
    }

    /* renamed from: l */
    protected void m7417l() {
        if (this.f8159e.f7551m != null) {
            this.f8159e.f7551m.m7045a();
            this.f8159e.f7551m = null;
            this.f8006P = null;
        }
    }

    /* renamed from: e */
    protected void m7398e(boolean z) {
        if (z) {
            this.f8006P.setVisibility(0);
        } else {
            this.f8006P.setVisibility(4);
        }
    }

    /* renamed from: aS */
    private void m7228aS() {
        this.f8166l = (LinearLayout) findViewById(R.id.LL_ui_multiview_NormalTopLayout);
        this.f8166l.setVisibility(4);
        this.f8160f = (ImageButton) findViewById(R.id.IB_ui_multiview_btnDeleteTab);
        this.f8161g = (ImageButton) findViewById(R.id.IB_ui_multiview_btnShareTab);
        this.f8163i = (TextView) findViewById(R.id.TV_ui_multiview_SelectCount);
        this.f8164j = (ImageButton) findViewById(R.id.IB_ui_multiview_btnCancel);
        this.f8165k = (ImageButton) findViewById(R.id.IB_ui_multiview_selectAll);
        this.f8162h = (ImageButton) findViewById(R.id.IB_ui_multiview_btnMoveTab);
        this.f8005O = (Space) findViewById(R.id.SPACE_ui_multiview_MoveAndShare);
        this.f8164j.setImageResource(R.drawable.system_close_black);
        this.f8165k.setImageResource(R.drawable.gallery_top_selectall);
        this.f8162h.setImageResource(R.drawable.gallery_top_move);
        this.f8160f.setImageResource(R.drawable.gallery_top_delete);
        this.f8160f.setImageAlpha(100);
        this.f8161g.setImageResource(R.drawable.gallery_top_share_gray);
        this.f8163i.setTextSize(C0079k.m784a(this, this.f8001K / 22));
        this.f8163i.setText(R.string.selected);
        this.f8163i.setTextColor(getResources().getColor(R.color.black));
        this.f8160f.setOnClickListener(this.f8081bL);
        this.f8161g.setOnClickListener(this.f8081bL);
        this.f8164j.setOnClickListener(this.f8081bL);
        this.f8165k.setOnClickListener(this.f8081bL);
        this.f8162h.setOnClickListener(this.f8081bL);
        this.f8166l.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.38
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        m7394d(this.f8169o);
    }

    /* renamed from: f */
    public void m7401f(boolean z) {
        if (z) {
            this.f8166l.setVisibility(0);
        } else {
            this.f8166l.setVisibility(4);
        }
    }

    /* renamed from: aT */
    private void m7229aT() {
        this.f8012V = new PopupWindow(new View(this), -1, -1);
    }

    /* renamed from: g */
    protected void m7404g(boolean z) {
        m7221a("ShowProtectLayout: " + z, 3);
        if (z) {
            this.f8012V.showAtLocation(this.f8091bV, 17, 0, 0);
        } else {
            this.f8012V.dismiss();
        }
    }

    /* renamed from: m */
    protected boolean m7422m() {
        return this.f8012V != null && this.f8012V.isShowing();
    }

    /* renamed from: h */
    protected void m7407h(boolean z) {
        this.f8142ck.setEnabled(z);
    }

    /* renamed from: aU */
    private void m7230aU() {
        this.f8112bq = (LinearLayout) findViewById(R.id.LL_ui_BlackScreen);
        this.f8112bq.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.39
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    /* renamed from: i */
    protected void m7410i(boolean z) {
        m7221a("ShowBlackScreenLayout:" + z, 3);
        if (z) {
            this.f8112bq.setVisibility(0);
        } else {
            this.f8112bq.setVisibility(4);
        }
    }

    /* renamed from: aV */
    private void m7231aV() {
        this.f8113br = (FrameLayout) findViewById(R.id.FL_ui_EditPreview);
        this.f8114bs = (ZoomableImageView) findViewById(R.id.ZIV_ui_EditPreview);
        m7232aW();
        m7233aX();
        this.f8114bs.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.40
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UI_PhoneGalleryController.this.m7425n()) {
                    UI_PhoneGalleryController.this.m7416k(false);
                    UI_PhoneGalleryController.this.m7421m(true);
                }
            }
        });
    }

    /* renamed from: j */
    protected void m7413j(boolean z) {
        if (z) {
            this.f8114bs.setMaxZoom(0.0f);
            this.f8114bs.m7002a(true);
        } else {
            this.f8114bs.setMaxZoom(1.0f);
            this.f8114bs.m7002a(false);
        }
    }

    /* renamed from: aW */
    private void m7232aW() {
        this.f8115bt = (LinearLayout) findViewById(R.id.LL_EditPreview_TopLayout);
        this.f8116bu = (ImageButton) findViewById(R.id.IB_EditPreview_Share);
        this.f8117bv = (ImageButton) findViewById(R.id.IB_EditPreview_DeleteOrMore);
        this.f8116bu.setImageResource(R.drawable.gallery_top_share_white);
        this.f8117bv.setImageResource(R.drawable.gallery_tool_delete);
        this.f8116bu.setOnClickListener(this.f8131cI);
        this.f8117bv.setOnClickListener(this.f8131cI);
    }

    /* renamed from: aX */
    private void m7233aX() {
        this.f8118bw = (LinearLayout) findViewById(R.id.LL_EditPreview_MoreSettingTopLayout);
        this.f8120by = (TextView) findViewById(R.id.TV_EditPreview_MoreSetting);
        this.f8121bz = (ImageButton) findViewById(R.id.IB_EditPreview_MoreSettingReturn);
        this.f8070bA = (ListView) findViewById(R.id.LV_EditPreview_MoreSettingListView);
        this.f8119bx = findViewById(R.id.V_EditPreview_MoreSetting);
        this.f8118bw.setVisibility(4);
        this.f8120by.setTextSize(C0079k.m784a(this, this.f8002L / 35));
        this.f8120by.setText(R.string.more_setting);
        this.f8120by.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f8119bx.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f8121bz.setImageResource(R.drawable.system_close_white);
        this.f8121bz.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_PhoneGalleryController.this.m7416k(false);
                UI_PhoneGalleryController.this.m7421m(true);
            }
        });
        this.f8071bB = new C1748d(this, 2);
        this.f8070bA.setAdapter((ListAdapter) this.f8071bB);
        this.f8070bA.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.5
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                switch ((int) j) {
                    case 2:
                        UI_PhoneGalleryController.this.m7416k(false);
                        UI_PhoneGalleryController.this.m7421m(true);
                        C0091o.m894a(UI_PhoneGalleryController.this.f7998H, true, true, UI_PhoneGalleryController.this.getResources().getString(R.string.delete_image_title), UI_PhoneGalleryController.this.getResources().getString(R.string.delete_one_image_confirm), new String[]{UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_cancel), UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_delete)}, new int[]{0, 9092}, true, R.color.red);
                        break;
                    case 4:
                        UI_PhoneGalleryController.this.m7416k(false);
                        UI_PhoneGalleryController.this.m7421m(true);
                        UI_PhoneGalleryController.this.m7397e(UI_PhoneGalleryController.this.f8159e.f7501B);
                        break;
                }
            }
        });
    }

    /* renamed from: k */
    protected void m7416k(boolean z) {
        if (z) {
            this.f8118bw.setVisibility(0);
        } else {
            this.f8118bw.setVisibility(4);
        }
    }

    /* renamed from: n */
    protected boolean m7425n() {
        return this.f8118bw.getVisibility() == 0;
    }

    /* renamed from: a */
    protected void m7330a(Bitmap bitmap) {
        this.f8114bs.setImageBitmap(bitmap);
        this.f8113br.setVisibility(0);
        this.f8114bs.setVisibility(0);
        if (this.f8159e.f7501B != null && this.f8159e.f7501B.endsWith("gif")) {
            ComponentCallbacks2C0735c.m4551b(getApplication()).m5360a(this.f8159e.f7501B).m5351a((ImageView) this.f8114bs);
        }
    }

    /* renamed from: o */
    protected void m7426o() {
        if (this.f8113br != null && this.f8114bs != null) {
            this.f8113br.setVisibility(4);
            this.f8114bs.setVisibility(4);
            this.f8114bs.m7001a();
            this.f8114bs.setImageResource(0);
            if (this.f8176v != null) {
                this.f8176v.recycle();
                this.f8176v = null;
            }
            if (this.f8159e.f7501B != null && this.f8159e.f7501B.endsWith("gif")) {
                ComponentCallbacks2C0735c.m4551b(getApplication()).m5362a((View) this.f8114bs);
            }
            m7424n(false);
            m7419l(false);
            m7421m(false);
            m7416k(false);
            this.f8159e.f7500A = false;
            this.f8159e.f7501B = null;
        }
    }

    /* renamed from: l */
    protected void m7419l(boolean z) {
        if (z) {
            this.f8117bv.setImageResource(R.drawable.gallery_tool_delete);
            this.f8115bt.setVisibility(0);
            m7413j(false);
            return;
        }
        this.f8115bt.setVisibility(4);
    }

    /* renamed from: m */
    protected void m7421m(boolean z) {
        if (z) {
            this.f8117bv.setImageResource(R.drawable.gallery_top_more);
            this.f8115bt.setVisibility(0);
            this.f8072bC = true;
            m7413j(true);
            return;
        }
        this.f8115bt.setVisibility(4);
        this.f8072bC = false;
    }

    /* renamed from: n */
    protected void m7424n(boolean z) {
        if (z) {
            this.f8113br.setScaleX(0.85f);
            this.f8113br.setScaleY(0.85f);
        } else {
            this.f8113br.setScaleX(1.0f);
            this.f8113br.setScaleY(1.0f);
        }
    }

    /* renamed from: p */
    protected boolean m7430p() {
        return this.f8113br.getVisibility() == 0;
    }

    /* renamed from: aY */
    private void m7234aY() {
        this.f8091bV = (LinearLayout) findViewById(R.id.LL_ui_Gallery_BusyLayout);
        this.f8092bW = (ImageView) findViewById(R.id.IV_ui_Gallery_BusyIcon);
        this.f8093bX = (TextView) findViewById(R.id.TV_ui_Gallery_BusyText);
        this.f8094bY = (Button) findViewById(R.id.B_ui_Gallery_Busy_Button);
        this.f8094bY.setBackgroundResource(R.drawable.btn_bg_blue);
        this.f8094bY.setEnabled(false);
        this.f8093bX.setText(getResources().getString(R.string.moving_files));
        this.f8091bV.setVisibility(4);
        this.f8091bV.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.6
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f8094bY.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C0091o.m893a(UI_PhoneGalleryController.this.f7998H, true, false, UI_PhoneGalleryController.this.getResources().getString(R.string.share), UI_PhoneGalleryController.this.getResources().getString(R.string.share_cancel), new String[]{UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_no), UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_yes)}, new int[]{0, 8971}, true);
            }
        });
    }

    /* renamed from: o */
    protected void m7427o(boolean z) {
        this.f8092bW.setImageResource(R.drawable.anim_system_busy);
        this.f8093bX.setText(getResources().getString(R.string.moving_files));
        this.f8094bY.setVisibility(4);
        this.f8094bY.setEnabled(false);
        if (z) {
            this.f8091bV.setVisibility(0);
            ((AnimationDrawable) this.f8092bW.getDrawable()).start();
            this.f8159e.f7564z = true;
        } else {
            this.f8091bV.setVisibility(4);
            ((AnimationDrawable) this.f8092bW.getDrawable()).stop();
            this.f8159e.f7564z = false;
        }
    }

    /* renamed from: q */
    protected boolean m7433q() {
        return this.f8091bV != null && this.f8091bV.getVisibility() == 0 && this.f8093bX.getText().equals(getResources().getString(R.string.moving_files));
    }

    /* renamed from: p */
    protected void m7429p(boolean z) {
        this.f8092bW.setImageResource(R.drawable.anim_system_busy);
        this.f8093bX.setText(getResources().getString(R.string.saving_files));
        this.f8094bY.setVisibility(4);
        this.f8094bY.setEnabled(false);
        if (z) {
            this.f8091bV.setVisibility(0);
            ((AnimationDrawable) this.f8092bW.getDrawable()).start();
        } else {
            this.f8091bV.setVisibility(4);
            ((AnimationDrawable) this.f8092bW.getDrawable()).stop();
        }
    }

    /* renamed from: q */
    protected void m7432q(boolean z) {
        this.f8092bW.setImageResource(R.drawable.anim_system_busy);
        this.f8093bX.setText(getResources().getString(R.string.scanning_files));
        this.f8094bY.setVisibility(4);
        this.f8094bY.setEnabled(false);
        if (z) {
            this.f8091bV.setVisibility(0);
            ((AnimationDrawable) this.f8092bW.getDrawable()).start();
            this.f8159e.f7564z = true;
        } else {
            this.f8091bV.setVisibility(4);
            ((AnimationDrawable) this.f8092bW.getDrawable()).stop();
            this.f8159e.f7564z = false;
        }
    }

    /* renamed from: r */
    protected boolean m7436r() {
        return this.f8091bV != null && this.f8091bV.getVisibility() == 0;
    }

    /* renamed from: aZ */
    private void m7235aZ() {
        this.f8167m = (LinearLayout) findViewById(R.id.LL_ui_multiview_NoFileLayout);
        this.f8167m.setVisibility(4);
        this.f8168n = (ImageView) findViewById(R.id.IV_ui_multiview_NoFileImage);
        this.f8168n.setImageResource(R.drawable.gallery_nxn_noimage);
    }

    /* renamed from: ba */
    private void m7239ba() {
        this.f8173s = (LinearLayout) findViewById(R.id.LL_ui_view_shareLayout);
        this.f8174t = (LinearLayout) findViewById(R.id.LL_ui_blank_shareLayout);
        m7442t(false);
        this.f8175u = (ImageView) findViewById(R.id.IB_ui_multiview_btnShareCancel);
        this.f8175u.setImageResource(R.drawable.system_close_white);
        this.f8158d.f7478b.f7532af = m7353aO();
        this.f8015Y = (ImageButton) findViewById(R.id.IB_ui_Share_Button1);
        this.f8016Z = (ImageButton) findViewById(R.id.IB_ui_Share_Button2);
        this.f8043aa = (ImageButton) findViewById(R.id.IB_ui_Share_Button3);
        this.f8044ab = (ImageButton) findViewById(R.id.IB_ui_Share_Button4);
        this.f8045ac = (ImageButton) findViewById(R.id.IB_ui_Share_Button5);
        this.f8046ad = (ImageButton) findViewById(R.id.IB_ui_Share_Button6);
        this.f8047ae = (ImageButton) findViewById(R.id.IB_ui_Share_Button7);
        this.f8048af = (ImageButton) findViewById(R.id.IB_ui_Share_Button8);
        this.f8049ag = (ImageButton) findViewById(R.id.IB_ui_Share_Button9);
        this.f8050ah = (ImageButton) findViewById(R.id.IB_ui_Share_Button10);
        this.f8051ai = (ImageButton) findViewById(R.id.IB_ui_Share_Button11);
        this.f8052aj = (ImageButton) findViewById(R.id.IB_ui_Share_Button12);
        this.f8053ak = (TextView) findViewById(R.id.TV_ui_Share_Button1);
        this.f8054al = (TextView) findViewById(R.id.TV_ui_Share_Button2);
        this.f8055am = (TextView) findViewById(R.id.TV_ui_Share_Button3);
        this.f8056an = (TextView) findViewById(R.id.TV_ui_Share_Button4);
        this.f8057ao = (TextView) findViewById(R.id.TV_ui_Share_Button5);
        this.f8058ap = (TextView) findViewById(R.id.TV_ui_Share_Button6);
        this.f8059aq = (TextView) findViewById(R.id.TV_ui_Share_Button7);
        this.f8060ar = (TextView) findViewById(R.id.TV_ui_Share_Button8);
        this.f8061as = (TextView) findViewById(R.id.TV_ui_Share_Button9);
        this.f8062at = (TextView) findViewById(R.id.TV_ui_Share_Button10);
        this.f8063au = (TextView) findViewById(R.id.TV_ui_Share_Button11);
        this.f8064av = (TextView) findViewById(R.id.TV_ui_Share_Button12);
        int m784a = C0079k.m784a(this, this.f8002L / 50);
        this.f8053ak.setTextSize(m784a);
        this.f8054al.setTextSize(m784a);
        this.f8055am.setTextSize(m784a);
        this.f8056an.setTextSize(m784a);
        this.f8057ao.setTextSize(m784a);
        this.f8058ap.setTextSize(m784a);
        this.f8059aq.setTextSize(m784a);
        this.f8060ar.setTextSize(m784a);
        this.f8061as.setTextSize(m784a);
        this.f8062at.setTextSize(m784a);
        this.f8063au.setTextSize(m784a);
        this.f8064av.setTextSize(m784a);
        this.f8065aw = (ImageButton) findViewById(R.id.IB_ui_Share_Button1_Landscape);
        this.f8066ax = (ImageButton) findViewById(R.id.IB_ui_Share_Button2_Landscape);
        this.f8067ay = (ImageButton) findViewById(R.id.IB_ui_Share_Button3_Landscape);
        this.f8068az = (ImageButton) findViewById(R.id.IB_ui_Share_Button4_Landscape);
        this.f8017aA = (ImageButton) findViewById(R.id.IB_ui_Share_Button5_Landscape);
        this.f8018aB = (ImageButton) findViewById(R.id.IB_ui_Share_Button6_Landscape);
        this.f8019aC = (ImageButton) findViewById(R.id.IB_ui_Share_Button7_Landscape);
        this.f8020aD = (ImageButton) findViewById(R.id.IB_ui_Share_Button8_Landscape);
        this.f8021aE = (ImageButton) findViewById(R.id.IB_ui_Share_Button9_Landscape);
        this.f8022aF = (ImageButton) findViewById(R.id.IB_ui_Share_Button10_Landscape);
        this.f8023aG = (ImageButton) findViewById(R.id.IB_ui_Share_Button11_Landscape);
        this.f8024aH = (ImageButton) findViewById(R.id.IB_ui_Share_Button12_Landscape);
        this.f8025aI = (TextView) findViewById(R.id.TV_ui_Share_Button1_Landscape);
        this.f8026aJ = (TextView) findViewById(R.id.TV_ui_Share_Button2_Landscape);
        this.f8027aK = (TextView) findViewById(R.id.TV_ui_Share_Button3_Landscape);
        this.f8028aL = (TextView) findViewById(R.id.TV_ui_Share_Button4_Landscape);
        this.f8029aM = (TextView) findViewById(R.id.TV_ui_Share_Button5_Landscape);
        this.f8030aN = (TextView) findViewById(R.id.TV_ui_Share_Button6_Landscape);
        this.f8031aO = (TextView) findViewById(R.id.TV_ui_Share_Button7_Landscape);
        this.f8032aP = (TextView) findViewById(R.id.TV_ui_Share_Button8_Landscape);
        this.f8033aQ = (TextView) findViewById(R.id.TV_ui_Share_Button9_Landscape);
        this.f8034aR = (TextView) findViewById(R.id.TV_ui_Share_Button10_Landscape);
        this.f8035aS = (TextView) findViewById(R.id.TV_ui_Share_Button11_Landscape);
        this.f8036aT = (TextView) findViewById(R.id.TV_ui_Share_Button12_Landscape);
        this.f8025aI.setTextSize(m784a);
        this.f8026aJ.setTextSize(m784a);
        this.f8027aK.setTextSize(m784a);
        this.f8028aL.setTextSize(m784a);
        this.f8029aM.setTextSize(m784a);
        this.f8030aN.setTextSize(m784a);
        this.f8031aO.setTextSize(m784a);
        this.f8032aP.setTextSize(m784a);
        this.f8033aQ.setTextSize(m784a);
        this.f8034aR.setTextSize(m784a);
        this.f8035aS.setTextSize(m784a);
        this.f8036aT.setTextSize(m784a);
        this.f8015Y.setOnClickListener(this.f8077bH);
        this.f8016Z.setOnClickListener(this.f8077bH);
        this.f8043aa.setOnClickListener(this.f8077bH);
        this.f8044ab.setOnClickListener(this.f8077bH);
        this.f8045ac.setOnClickListener(this.f8077bH);
        this.f8046ad.setOnClickListener(this.f8077bH);
        this.f8047ae.setOnClickListener(this.f8077bH);
        this.f8048af.setOnClickListener(this.f8077bH);
        this.f8049ag.setOnClickListener(this.f8077bH);
        this.f8050ah.setOnClickListener(this.f8077bH);
        this.f8051ai.setOnClickListener(this.f8077bH);
        this.f8052aj.setOnClickListener(this.f8077bH);
        this.f8065aw.setOnClickListener(this.f8077bH);
        this.f8066ax.setOnClickListener(this.f8077bH);
        this.f8067ay.setOnClickListener(this.f8077bH);
        this.f8068az.setOnClickListener(this.f8077bH);
        this.f8017aA.setOnClickListener(this.f8077bH);
        this.f8018aB.setOnClickListener(this.f8077bH);
        this.f8019aC.setOnClickListener(this.f8077bH);
        this.f8020aD.setOnClickListener(this.f8077bH);
        this.f8021aE.setOnClickListener(this.f8077bH);
        this.f8022aF.setOnClickListener(this.f8077bH);
        this.f8023aG.setOnClickListener(this.f8077bH);
        this.f8024aH.setOnClickListener(this.f8077bH);
        this.f8039aW = new ArrayList<>();
        this.f8039aW.add(this.f8015Y);
        this.f8039aW.add(this.f8016Z);
        this.f8039aW.add(this.f8043aa);
        this.f8039aW.add(this.f8044ab);
        this.f8039aW.add(this.f8045ac);
        this.f8039aW.add(this.f8046ad);
        this.f8039aW.add(this.f8047ae);
        this.f8039aW.add(this.f8048af);
        this.f8039aW.add(this.f8049ag);
        this.f8039aW.add(this.f8050ah);
        this.f8039aW.add(this.f8051ai);
        this.f8039aW.add(this.f8052aj);
        this.f8040aX = new ArrayList<>();
        this.f8040aX.add(this.f8053ak);
        this.f8040aX.add(this.f8054al);
        this.f8040aX.add(this.f8055am);
        this.f8040aX.add(this.f8056an);
        this.f8040aX.add(this.f8057ao);
        this.f8040aX.add(this.f8058ap);
        this.f8040aX.add(this.f8059aq);
        this.f8040aX.add(this.f8060ar);
        this.f8040aX.add(this.f8061as);
        this.f8040aX.add(this.f8062at);
        this.f8040aX.add(this.f8063au);
        this.f8040aX.add(this.f8064av);
        this.f8042aZ = new ArrayList<>();
        this.f8042aZ.add(this.f8065aw);
        this.f8042aZ.add(this.f8066ax);
        this.f8042aZ.add(this.f8067ay);
        this.f8042aZ.add(this.f8068az);
        this.f8042aZ.add(this.f8017aA);
        this.f8042aZ.add(this.f8018aB);
        this.f8042aZ.add(this.f8019aC);
        this.f8042aZ.add(this.f8020aD);
        this.f8042aZ.add(this.f8021aE);
        this.f8042aZ.add(this.f8022aF);
        this.f8042aZ.add(this.f8023aG);
        this.f8042aZ.add(this.f8024aH);
        this.f8096ba = new ArrayList<>();
        this.f8096ba.add(this.f8025aI);
        this.f8096ba.add(this.f8026aJ);
        this.f8096ba.add(this.f8027aK);
        this.f8096ba.add(this.f8028aL);
        this.f8096ba.add(this.f8029aM);
        this.f8096ba.add(this.f8030aN);
        this.f8096ba.add(this.f8031aO);
        this.f8096ba.add(this.f8032aP);
        this.f8096ba.add(this.f8033aQ);
        this.f8096ba.add(this.f8034aR);
        this.f8096ba.add(this.f8035aS);
        this.f8096ba.add(this.f8036aT);
        this.f8037aU = (LinearLayout) findViewById(R.id.LL_ui_view_SNSLayout);
        this.f8038aV = (TextView) findViewById(R.id.TV_ui_share_no_sns);
        this.f8041aY = (LinearLayout) findViewById(R.id.LL_ui_view_SNSLayout_Landscape);
        this.f8174t.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.8
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    UI_PhoneGalleryController.this.m7442t(false);
                    if (UI_PhoneGalleryController.this.f8122c.m7974a() == 1056) {
                        UI_PhoneGalleryController.this.m7335a(true, false, false);
                    }
                }
                if (motionEvent.getAction() == 2) {
                }
                if (motionEvent.getAction() == 1) {
                }
                return true;
            }
        });
        this.f8173s.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.9
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
        this.f8175u.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.10
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                }
                if (motionEvent.getAction() == 2) {
                }
                if (motionEvent.getAction() == 1) {
                    UI_PhoneGalleryController.this.m7442t(false);
                    if (UI_PhoneGalleryController.this.f8122c.m7974a() == 1056 || UI_PhoneGalleryController.this.f8159e.f7500A) {
                        UI_PhoneGalleryController.this.m7335a(true, false, false);
                    }
                }
                return true;
            }
        });
    }

    /* renamed from: s */
    protected void m7438s() {
        this.f8158d.f7478b.f7532af = m7353aO();
        this.f8158d.f7478b.f7538al = false;
        for (int i = 0; i < 11; i++) {
            this.f8039aW.get(i).setImageResource(0);
            this.f8042aZ.get(i).setImageResource(0);
            this.f8040aX.get(i).setText("");
            this.f8096ba.get(i).setText("");
        }
        if (this.f8158d.f7478b.f7532af.size() == 0) {
            this.f8158d.f7478b.f7538al = true;
            this.f8037aU.setVisibility(8);
            this.f8041aY.setVisibility(8);
            this.f8038aV.setVisibility(0);
            return;
        }
        if (getResources().getConfiguration().orientation == 1) {
            this.f8037aU.setVisibility(0);
            this.f8041aY.setVisibility(4);
        } else {
            this.f8037aU.setVisibility(4);
            this.f8041aY.setVisibility(0);
        }
        this.f8038aV.setVisibility(8);
        if (this.f8159e.f7542d == 3 || this.f8159e.f7500A) {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (int i2 = 0; i2 < this.f8158d.f7478b.f7532af.size(); i2++) {
                if (this.f8158d.f7478b.f7532af.get(i2).intValue() == 14 || this.f8158d.f7478b.f7532af.get(i2).intValue() == 9 || this.f8158d.f7478b.f7532af.get(i2).intValue() == 13) {
                    if (this.f8159e.f7551m.m7060e() > 1) {
                        z = true;
                    } else {
                        arrayList.add(this.f8158d.f7478b.f7532af.get(i2));
                    }
                } else if (this.f8158d.f7478b.f7532af.get(i2).intValue() == 0 || this.f8158d.f7478b.f7532af.get(i2).intValue() == 11) {
                    z = true;
                } else {
                    arrayList.add(this.f8158d.f7478b.f7532af.get(i2));
                }
            }
            if (z) {
                this.f8158d.f7478b.f7532af = arrayList;
            }
        } else if (this.f8122c.m7974a() == 1040) {
            int i3 = 0;
            while (true) {
                if (i3 >= this.f8159e.f7551m.getCount()) {
                    break;
                }
                if (this.f8159e.f7551m.m7063f(i3)) {
                    if (this.f8159e.f7540b.m532k(i3)) {
                        ArrayList arrayList2 = new ArrayList();
                        boolean z2 = false;
                        for (int i4 = 0; i4 < this.f8158d.f7478b.f7532af.size(); i4++) {
                            if (this.f8158d.f7478b.f7532af.get(i4).intValue() == 14 || this.f8158d.f7478b.f7532af.get(i4).intValue() == 9 || this.f8158d.f7478b.f7532af.get(i4).intValue() == 13) {
                                if (this.f8159e.f7551m.m7060e() > 1) {
                                    z2 = true;
                                } else {
                                    arrayList2.add(this.f8158d.f7478b.f7532af.get(i4));
                                }
                            } else if (this.f8158d.f7478b.f7532af.get(i4).intValue() == 0 || this.f8158d.f7478b.f7532af.get(i4).intValue() == 11) {
                                z2 = true;
                            } else {
                                arrayList2.add(this.f8158d.f7478b.f7532af.get(i4));
                            }
                        }
                        if (z2) {
                            this.f8158d.f7478b.f7532af = arrayList2;
                        }
                    } else if (this.f8159e.f7540b.m533l(i3)) {
                        ArrayList arrayList3 = new ArrayList();
                        boolean z3 = false;
                        for (int i5 = 0; i5 < this.f8158d.f7478b.f7532af.size(); i5++) {
                            if (this.f8158d.f7478b.f7532af.get(i5).intValue() == 3 || this.f8158d.f7478b.f7532af.get(i5).intValue() == 6 || this.f8158d.f7478b.f7532af.get(i5).intValue() == 13) {
                                z3 = true;
                            } else {
                                arrayList3.add(this.f8158d.f7478b.f7532af.get(i5));
                            }
                        }
                        if (z3) {
                            this.f8158d.f7478b.f7532af = arrayList3;
                        }
                    }
                }
                i3++;
            }
        } else if (this.f8159e.f7540b.m532k(this.f8159e.f7557s)) {
            ArrayList arrayList4 = new ArrayList();
            boolean z4 = false;
            for (int i6 = 0; i6 < this.f8158d.f7478b.f7532af.size(); i6++) {
                if (this.f8158d.f7478b.f7532af.get(i6).intValue() == 0 || this.f8158d.f7478b.f7532af.get(i6).intValue() == 11) {
                    z4 = true;
                } else {
                    arrayList4.add(this.f8158d.f7478b.f7532af.get(i6));
                }
            }
            if (z4) {
                this.f8158d.f7478b.f7532af = arrayList4;
            }
        } else if (this.f8159e.f7540b.m533l(this.f8159e.f7557s)) {
            ArrayList arrayList5 = new ArrayList();
            boolean z5 = false;
            for (int i7 = 0; i7 < this.f8158d.f7478b.f7532af.size(); i7++) {
                if (this.f8158d.f7478b.f7532af.get(i7).intValue() == 3 || this.f8158d.f7478b.f7532af.get(i7).intValue() == 6 || this.f8158d.f7478b.f7532af.get(i7).intValue() == 13) {
                    z5 = true;
                } else {
                    arrayList5.add(this.f8158d.f7478b.f7532af.get(i7));
                }
            }
            if (z5) {
                this.f8158d.f7478b.f7532af = arrayList5;
            }
        }
        this.f8122c.f8782c.f7653k.f7488l = this.f8158d.f7478b.f7532af.size();
        for (int i8 = 0; i8 < this.f8158d.f7478b.f7532af.size(); i8++) {
            C0047c c0047c = new C0047c((int) (C0079k.m784a(this, this.f8002L / 50) * 0.9d));
            this.f8040aX.get(i8).setTextSize(c0047c.m430a());
            this.f8096ba.get(i8).setTextSize(c0047c.m430a());
            switch (this.f8158d.f7478b.f7532af.get(i8).intValue()) {
                case 0:
                    this.f8039aW.get(i8).setImageResource(R.drawable.gallery_share_youtube_english);
                    this.f8042aZ.get(i8).setImageResource(R.drawable.gallery_share_youtube_english);
                    this.f8040aX.get(i8).setText(getResources().getString(R.string.share_sns_youtube));
                    this.f8096ba.get(i8).setText(getResources().getString(R.string.share_sns_youtube));
                    break;
                case 1:
                    this.f8039aW.get(i8).setImageResource(R.drawable.gallery_share_fb_english);
                    this.f8042aZ.get(i8).setImageResource(R.drawable.gallery_share_fb_english);
                    this.f8040aX.get(i8).setText(getResources().getString(R.string.share_sns_facebook));
                    this.f8096ba.get(i8).setText(getResources().getString(R.string.share_sns_facebook));
                    break;
                case 7:
                    this.f8039aW.get(i8).setImageResource(R.drawable.gallery_share_line_english);
                    this.f8042aZ.get(i8).setImageResource(R.drawable.gallery_share_line_english);
                    this.f8040aX.get(i8).setText(getResources().getString(R.string.share_sns_line));
                    this.f8096ba.get(i8).setText(getResources().getString(R.string.share_sns_line));
                    break;
                case 8:
                    this.f8039aW.get(i8).setImageResource(R.drawable.gallery_share_whatsapp_english);
                    this.f8042aZ.get(i8).setImageResource(R.drawable.gallery_share_whatsapp_english);
                    this.f8040aX.get(i8).setText(getResources().getString(R.string.share_sns_whatsapp));
                    this.f8096ba.get(i8).setText(getResources().getString(R.string.share_sns_whatsapp));
                    break;
                case 9:
                    this.f8039aW.get(i8).setImageResource(R.drawable.gallery_share_twitter_english);
                    this.f8042aZ.get(i8).setImageResource(R.drawable.gallery_share_twitter_english);
                    this.f8040aX.get(i8).setText(getResources().getString(R.string.share_sns_twitter));
                    this.f8096ba.get(i8).setText(getResources().getString(R.string.share_sns_twitter));
                    break;
                case 10:
                    this.f8039aW.get(i8).setImageResource(R.drawable.gallery_share_googlephoto);
                    this.f8042aZ.get(i8).setImageResource(R.drawable.gallery_share_googlephoto);
                    this.f8040aX.get(i8).setText(getResources().getString(R.string.share_sns_googlephoto));
                    this.f8096ba.get(i8).setText(getResources().getString(R.string.share_sns_googlephoto));
                    break;
                case 11:
                    this.f8039aW.get(i8).setImageResource(R.drawable.gallery_share_youku_english);
                    this.f8042aZ.get(i8).setImageResource(R.drawable.gallery_share_youku_english);
                    this.f8040aX.get(i8).setText(getResources().getString(R.string.share_sns_youku));
                    this.f8096ba.get(i8).setText(getResources().getString(R.string.share_sns_youku));
                    break;
                case 12:
                    this.f8039aW.get(i8).setImageResource(R.drawable.gallery_share_vk_english);
                    this.f8042aZ.get(i8).setImageResource(R.drawable.gallery_share_vk_english);
                    this.f8040aX.get(i8).setText(getResources().getString(R.string.share_sns_vk));
                    this.f8096ba.get(i8).setText(getResources().getString(R.string.share_sns_vk));
                    break;
                case 13:
                    this.f8039aW.get(i8).setImageResource(R.drawable.gallery_share_snapchat_english);
                    this.f8042aZ.get(i8).setImageResource(R.drawable.gallery_share_snapchat_english);
                    this.f8040aX.get(i8).setText(getResources().getString(R.string.share_sns_snapchat));
                    this.f8096ba.get(i8).setText(getResources().getString(R.string.share_sns_snapchat));
                    break;
                case 14:
                    this.f8039aW.get(i8).setImageResource(R.drawable.gallery_share_instagram_english);
                    this.f8042aZ.get(i8).setImageResource(R.drawable.gallery_share_instagram_english);
                    this.f8040aX.get(i8).setText(getResources().getString(R.string.share_sns_instagram));
                    this.f8096ba.get(i8).setText(getResources().getString(R.string.share_sns_instagram));
                    break;
            }
        }
    }

    /* renamed from: a */
    protected void m7327a(int i, ArrayList<File> arrayList) {
        switch (i) {
            case R.id.IB_ui_Share_Button1 /* 2131755531 */:
            case R.id.IB_ui_Share_Button1_Landscape /* 2131755556 */:
                if (this.f8158d.f7478b.f7532af.size() > 0) {
                    m7392d(this.f8158d.f7478b.f7532af.get(0).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button2 /* 2131755533 */:
            case R.id.IB_ui_Share_Button2_Landscape /* 2131755558 */:
                if (this.f8158d.f7478b.f7532af.size() > 1) {
                    m7392d(this.f8158d.f7478b.f7532af.get(1).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button3 /* 2131755535 */:
            case R.id.IB_ui_Share_Button3_Landscape /* 2131755560 */:
                if (this.f8158d.f7478b.f7532af.size() > 2) {
                    m7392d(this.f8158d.f7478b.f7532af.get(2).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button4 /* 2131755537 */:
            case R.id.IB_ui_Share_Button4_Landscape /* 2131755562 */:
                if (this.f8158d.f7478b.f7532af.size() > 3) {
                    m7392d(this.f8158d.f7478b.f7532af.get(3).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button5 /* 2131755539 */:
            case R.id.IB_ui_Share_Button5_Landscape /* 2131755564 */:
                if (this.f8158d.f7478b.f7532af.size() > 4) {
                    m7392d(this.f8158d.f7478b.f7532af.get(4).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button6 /* 2131755541 */:
            case R.id.IB_ui_Share_Button6_Landscape /* 2131755566 */:
                if (this.f8158d.f7478b.f7532af.size() > 5) {
                    m7392d(this.f8158d.f7478b.f7532af.get(5).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button7 /* 2131755543 */:
            case R.id.IB_ui_Share_Button7_Landscape /* 2131755568 */:
                if (this.f8158d.f7478b.f7532af.size() > 6) {
                    m7392d(this.f8158d.f7478b.f7532af.get(6).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button8 /* 2131755545 */:
            case R.id.IB_ui_Share_Button8_Landscape /* 2131755570 */:
                if (this.f8158d.f7478b.f7532af.size() > 7) {
                    m7392d(this.f8158d.f7478b.f7532af.get(7).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button9 /* 2131755547 */:
            case R.id.IB_ui_Share_Button9_Landscape /* 2131755572 */:
                if (this.f8158d.f7478b.f7532af.size() > 8) {
                    m7392d(this.f8158d.f7478b.f7532af.get(8).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button10 /* 2131755549 */:
            case R.id.IB_ui_Share_Button10_Landscape /* 2131755574 */:
                if (this.f8158d.f7478b.f7532af.size() > 9) {
                    m7392d(this.f8158d.f7478b.f7532af.get(9).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button11 /* 2131755551 */:
            case R.id.IB_ui_Share_Button11_Landscape /* 2131755576 */:
                if (this.f8158d.f7478b.f7532af.size() > 10) {
                    m7392d(this.f8158d.f7478b.f7532af.get(10).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button12 /* 2131755553 */:
            case R.id.IB_ui_Share_Button12_Landscape /* 2131755578 */:
                if (this.f8158d.f7478b.f7532af.size() > 11) {
                    m7392d(this.f8158d.f7478b.f7532af.get(11).intValue(), arrayList);
                    break;
                }
                break;
        }
    }

    /* renamed from: b */
    protected void m7380b(int i, ArrayList<File> arrayList) {
        switch (i) {
            case R.id.IB_ui_Share_Button1 /* 2131755531 */:
            case R.id.IB_ui_Share_Button1_Landscape /* 2131755556 */:
                if (this.f8158d.f7478b.f7532af.size() > 0) {
                    m7386c(this.f8158d.f7478b.f7532af.get(0).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button2 /* 2131755533 */:
            case R.id.IB_ui_Share_Button2_Landscape /* 2131755558 */:
                if (this.f8158d.f7478b.f7532af.size() > 1) {
                    m7386c(this.f8158d.f7478b.f7532af.get(1).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button3 /* 2131755535 */:
            case R.id.IB_ui_Share_Button3_Landscape /* 2131755560 */:
                if (this.f8158d.f7478b.f7532af.size() > 2) {
                    m7386c(this.f8158d.f7478b.f7532af.get(2).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button4 /* 2131755537 */:
            case R.id.IB_ui_Share_Button4_Landscape /* 2131755562 */:
                if (this.f8158d.f7478b.f7532af.size() > 3) {
                    m7386c(this.f8158d.f7478b.f7532af.get(3).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button5 /* 2131755539 */:
            case R.id.IB_ui_Share_Button5_Landscape /* 2131755564 */:
                if (this.f8158d.f7478b.f7532af.size() > 4) {
                    m7386c(this.f8158d.f7478b.f7532af.get(4).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button6 /* 2131755541 */:
            case R.id.IB_ui_Share_Button6_Landscape /* 2131755566 */:
                if (this.f8158d.f7478b.f7532af.size() > 5) {
                    m7386c(this.f8158d.f7478b.f7532af.get(5).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button7 /* 2131755543 */:
            case R.id.IB_ui_Share_Button7_Landscape /* 2131755568 */:
                if (this.f8158d.f7478b.f7532af.size() > 6) {
                    m7386c(this.f8158d.f7478b.f7532af.get(6).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button8 /* 2131755545 */:
            case R.id.IB_ui_Share_Button8_Landscape /* 2131755570 */:
                if (this.f8158d.f7478b.f7532af.size() > 7) {
                    m7386c(this.f8158d.f7478b.f7532af.get(7).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button9 /* 2131755547 */:
            case R.id.IB_ui_Share_Button9_Landscape /* 2131755572 */:
                if (this.f8158d.f7478b.f7532af.size() > 8) {
                    m7386c(this.f8158d.f7478b.f7532af.get(8).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button10 /* 2131755549 */:
            case R.id.IB_ui_Share_Button10_Landscape /* 2131755574 */:
                if (this.f8158d.f7478b.f7532af.size() > 9) {
                    m7386c(this.f8158d.f7478b.f7532af.get(9).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button11 /* 2131755551 */:
            case R.id.IB_ui_Share_Button11_Landscape /* 2131755576 */:
                if (this.f8158d.f7478b.f7532af.size() > 10) {
                    m7386c(this.f8158d.f7478b.f7532af.get(10).intValue(), arrayList);
                    break;
                }
                break;
            case R.id.IB_ui_Share_Button12 /* 2131755553 */:
            case R.id.IB_ui_Share_Button12_Landscape /* 2131755578 */:
                if (this.f8158d.f7478b.f7532af.size() > 11) {
                    m7386c(this.f8158d.f7478b.f7532af.get(11).intValue(), arrayList);
                    break;
                }
                break;
        }
    }

    /* renamed from: t */
    private boolean m7285t(int i) {
        return i == 4 || i == 5 || i == 3 || i == 2 || i == 6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public boolean m7286u(int i) {
        for (int i2 = 0; i2 < this.f8122c.f8782c.f7653k.f7488l; i2++) {
            if (i == this.f8039aW.get(i2).getId() || i == this.f8042aZ.get(i2).getId()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: r */
    public void m7435r(boolean z) {
        if (z) {
            this.f8008R.setVisibility(0);
            this.f8008R.setEnabled(true);
        } else {
            this.f8008R.setVisibility(4);
            this.f8008R.setEnabled(false);
        }
    }

    /* renamed from: d */
    protected void m7391d(int i) {
        int m7058d = this.f8159e.f7551m.m7058d();
        if (this.f8159e.f7544f == 5) {
            if (i == -1) {
                i = this.f8159e.f7551m.m7060e();
            }
            this.f8163i.setText(getResources().getString(R.string.selected) + " " + i + " ");
            if (i > 1) {
                this.f8161g.setEnabled(false);
                this.f8161g.setImageResource(R.drawable.gallery_top_share_gray);
                this.f8160f.setEnabled(true);
                this.f8160f.setImageAlpha(255);
                if (this.f8169o) {
                    this.f8162h.setEnabled(true);
                    this.f8162h.setImageAlpha(255);
                } else {
                    this.f8162h.setEnabled(false);
                    this.f8162h.setImageAlpha(100);
                }
            } else {
                this.f8161g.setEnabled(true);
                this.f8161g.setImageResource(R.drawable.gallery_top_share_black);
                this.f8160f.setEnabled(true);
                this.f8160f.setImageAlpha(255);
                if (this.f8169o) {
                    this.f8162h.setEnabled(true);
                    this.f8162h.setImageAlpha(255);
                } else {
                    this.f8162h.setEnabled(false);
                    this.f8162h.setImageAlpha(100);
                }
            }
            if (i == m7058d && m7058d != 0) {
                this.f8009S = true;
                this.f8165k.setImageResource(R.drawable.gallery_top_selectall_black);
            } else {
                this.f8009S = false;
                this.f8165k.setImageResource(R.drawable.gallery_top_selectall);
            }
            if (i == 0) {
                this.f8160f.setEnabled(false);
                this.f8160f.setImageAlpha(100);
                this.f8161g.setEnabled(false);
                this.f8161g.setImageResource(R.drawable.gallery_top_share_gray);
                this.f8162h.setEnabled(false);
                this.f8162h.setImageAlpha(100);
                return;
            }
            m7240bb();
        }
    }

    /* renamed from: bb */
    private void m7240bb() {
        if (this.f8179y.size() > 0) {
            this.f8161g.setEnabled(false);
            this.f8161g.setImageResource(R.drawable.gallery_top_share_gray);
            this.f8162h.setEnabled(false);
            this.f8162h.setImageAlpha(100);
            return;
        }
        this.f8161g.setEnabled(true);
        this.f8161g.setImageResource(R.drawable.gallery_top_share_black);
        this.f8162h.setEnabled(true);
        this.f8162h.setImageAlpha(255);
    }

    /* renamed from: t */
    protected void m7441t() {
        if (!this.f8009S) {
            this.f8122c.m7980a(new C0121a(9017));
            this.f8009S = true;
        } else {
            this.f8122c.m7980a(new C0121a(9018));
            this.f8009S = false;
        }
    }

    /* renamed from: a */
    protected void m7329a(int i, boolean z, int i2, int i3, ArrayList<C1659a> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        C0057a m539r = this.f8159e.f7540b.m539r(i);
        int i4 = m539r.f490b;
        if (z) {
            for (int i5 = 0; i5 < m539r.f491c.size(); i5++) {
                arrayList2.add(m539r.f491c.get(i5));
            }
        } else {
            arrayList2.add(m539r.f491c.get(0));
        }
        arrayList.add(new C1659a(i4, arrayList2, i2, i3));
    }

    /* renamed from: s */
    protected void m7440s(boolean z) {
        m7427o(false);
        if (m7450x()) {
            m7442t(false);
            return;
        }
        if (z) {
            this.f8159e.f7551m.m7053a(false, true);
            this.f8159e.f7551m.m7057c(0);
            this.f8159e.f7551m.m7056c();
        }
        m7391d(0);
        this.f8159e.f7544f = 0;
        m7401f(false);
        m7435r(true);
    }

    /* renamed from: u */
    protected void m7443u() {
        switch (this.f8159e.f7544f) {
            case 0:
                if (this.f8159e.f7540b.m518e() > 0) {
                    this.f8167m.setVisibility(4);
                    break;
                } else {
                    this.f8167m.setVisibility(0);
                    break;
                }
        }
    }

    /* renamed from: e */
    protected void m7396e(int i) {
        switch (this.f8159e.f7542d) {
            case 1:
                this.f8159e.f7545g = i;
                break;
            case 2:
                this.f8159e.f7546h = i;
                break;
            case 3:
                this.f8159e.f7547i = i;
                break;
        }
    }

    /* renamed from: v */
    protected void m7445v() {
        this.f8159e.f7545g = 0;
        this.f8159e.f7546h = 0;
        this.f8159e.f7547i = 0;
    }

    /* renamed from: f */
    protected void m7400f(int i) {
        this.f8006P.setSelection(i);
    }

    /* renamed from: w */
    protected void m7447w() {
        switch (this.f8159e.f7542d) {
            case 1:
                this.f8006P.setSelection(this.f8159e.f7545g);
                break;
            case 2:
                this.f8006P.setSelection(this.f8159e.f7546h);
                break;
            case 3:
                this.f8006P.setSelection(this.f8159e.f7547i);
                break;
        }
    }

    /* renamed from: x */
    protected boolean m7450x() {
        return this.f8173s != null && this.f8173s.getVisibility() == 0;
    }

    /* renamed from: t */
    protected void m7442t(boolean z) {
        if (z) {
            this.f8174t.setVisibility(0);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f8173s, "translationY", 1600.0f, 0.0f);
            ofFloat.setDuration(500L);
            ofFloat.start();
            this.f8173s.setVisibility(0);
            return;
        }
        if (this.f8174t.isShown()) {
            this.f8174t.setVisibility(4);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f8173s, "translationY", 0.0f, 1600.0f);
            ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.13
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    UI_PhoneGalleryController.this.f8173s.setVisibility(4);
                }
            });
            ofFloat2.setDuration(500L);
            ofFloat2.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public void m7287v(int i) {
        if (this.f8159e.f7551m.m7067h(i)) {
            if (this.f8179y.contains(Integer.valueOf(i))) {
                this.f8179y.remove(Integer.valueOf(i));
            } else {
                this.f8179y.add(Integer.valueOf(i));
            }
        }
        this.f8159e.f7551m.m7048a(i, !this.f8159e.f7551m.m7063f(i));
        this.f8159e.f7551m.m7054b();
        m7391d(-1);
    }

    /* renamed from: u */
    protected void m7444u(boolean z) {
        if (z) {
            this.f8124cB.setVisibility(0);
        } else {
            this.f8124cB.setVisibility(4);
        }
    }

    /* renamed from: y */
    protected void m7451y() {
        this.f8124cB = (FrameLayout) findViewById(R.id.FL_ui_singleview_SingleViewPlayerLayout);
        this.f8124cB.setVisibility(4);
        m7241bc();
        m7245bg();
        m7315Q();
        m7246bh();
        m7244bf();
        m7242bd();
        m7231aV();
    }

    /* renamed from: bc */
    private void m7241bc() {
        View inflate = LayoutInflater.from(this).inflate(R.layout.style_memory_full_layout, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.LL_MemoryFullLayout);
        linearLayout.setVisibility(0);
        linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.18
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        ((Button) inflate.findViewById(R.id.B_ui_MemoryFullConfirm)).setOnClickListener(this.f8131cI);
        this.f8011U = new PopupWindow(inflate, -1, -1);
    }

    /* renamed from: v */
    protected void m7446v(boolean z) {
        if (z) {
            this.f8011U.showAtLocation(this.f8124cB, 17, 0, 0);
        } else {
            this.f8011U.dismiss();
        }
    }

    /* renamed from: z */
    protected boolean m7454z() {
        return this.f8011U.isShowing();
    }

    /* renamed from: A */
    protected boolean m7291A() {
        long m461a = C0052d.m461a(C1658c.f7455c, 0);
        m7221a("dlAvailableSize: " + m461a, 3);
        return m461a < 53477376;
    }

    /* renamed from: bd */
    private void m7242bd() {
        this.f8153cv = (LinearLayout) findViewById(R.id.LL_ui_singleview_MoreSettingTopLayout);
        this.f8154cw = (ImageButton) findViewById(R.id.IB_ui_singleview_MoreSettingReturn);
        this.f8155cx = (ListView) findViewById(R.id.LV_ui_singleview_MoreSettingListView);
        this.f8156cy = (TextView) findViewById(R.id.TV_ui_singleview_MoreSetting);
        this.f8157cz = findViewById(R.id.V_ui_singleview_MoreSetting);
        this.f8156cy.setTextSize(C0079k.m784a(this, this.f8002L / 35));
        this.f8156cy.setText(R.string.more_setting);
        this.f8156cy.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.19
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f8157cz.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.20
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f8154cw.setImageResource(R.drawable.system_close_white);
        if (this.f8169o) {
            this.f8123cA = new C1748d(this, 0);
        } else {
            this.f8123cA = new C1748d(this, 3);
        }
        this.f8155cx.setAdapter((ListAdapter) this.f8123cA);
        this.f8153cv.setVisibility(4);
        this.f8154cw.setOnClickListener(this.f8131cI);
        this.f8155cx.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.21
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                switch ((int) j) {
                    case 0:
                        UI_PhoneGalleryController.this.m7304H();
                        break;
                    case 1:
                        UI_PhoneGalleryController.this.m7448w(false);
                        UI_PhoneGalleryController.this.m7293B(false);
                        if (UI_PhoneGalleryController.this.f8159e.f7542d == 1) {
                            C0091o.m893a(UI_PhoneGalleryController.this.f7998H, true, true, UI_PhoneGalleryController.this.getResources().getString(R.string.move), UI_PhoneGalleryController.this.getResources().getString(R.string.move_single_to_sdcard_dialog), new String[]{UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_cancel), UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_ok_for_two_button)}, new int[]{9135, 9132}, true);
                            break;
                        } else {
                            C0091o.m893a(UI_PhoneGalleryController.this.f7998H, true, true, UI_PhoneGalleryController.this.getResources().getString(R.string.move), UI_PhoneGalleryController.this.getResources().getString(R.string.move_single_to_phone_dialog), new String[]{UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_cancel), UI_PhoneGalleryController.this.getResources().getString(R.string.dialog_option_ok_for_two_button)}, new int[]{9135, 9133}, true);
                            break;
                        }
                    case 2:
                        UI_PhoneGalleryController.this.m7448w(false);
                        UI_PhoneGalleryController.this.m7293B(false);
                        UI_PhoneGalleryController.this.mo408a(9088, 0L);
                        break;
                    case 4:
                        UI_PhoneGalleryController.this.m7448w(false);
                        UI_PhoneGalleryController.this.m7293B(false);
                        UI_PhoneGalleryController.this.mo408a(9145, 0L);
                        break;
                }
            }
        });
    }

    /* renamed from: w */
    protected void m7448w(boolean z) {
        if (z) {
            int m504a = this.f8159e.f7540b.m504a(this.f8159e.f7557s);
            m7221a("showAllWidget, lFileType:" + m504a + ", bShow:" + z, 2);
            if (m504a == -1) {
                m7449x(true);
                return;
            }
            if (m504a == 6) {
                m7449x(true);
                if (this.f8159e.f7542d != 3) {
                    m7335a(true, true, true);
                    return;
                } else {
                    m7335a(true, false, false);
                    return;
                }
            }
            if (m504a == 0) {
                if (this.f8159e.f7542d != 3) {
                    m7335a(true, true, true);
                    return;
                } else {
                    m7335a(true, false, false);
                    return;
                }
            }
            m7335a(true, false, true);
            m7449x(false);
            return;
        }
        m7335a(false, false, false);
        m7449x(true);
    }

    /* renamed from: x */
    protected void m7449x(boolean z) {
        this.f8090bU.setMediaControllerHide(z);
    }

    /* renamed from: B */
    protected void m7292B() {
        this.f8090bU.seekTo(0);
        this.f8090bU.m203b(0);
    }

    /* renamed from: g */
    protected void m7403g(int i) {
        this.f8090bU.seekTo(i);
        this.f8090bU.m203b(i);
    }

    /* renamed from: C */
    protected void m7294C() {
        this.f8090bU.m213h();
    }

    /* renamed from: D */
    protected void m7296D() {
        if (this.f8090bU != null) {
            this.f8090bU.pause();
        }
    }

    /* renamed from: E */
    protected void m7298E() {
        if (this.f8090bU != null) {
            this.f8090bU.m210e();
        }
    }

    /* renamed from: F */
    protected void m7300F() {
        if (this.f8090bU != null) {
            this.f8090bU.m202b();
        }
    }

    /* renamed from: be */
    private void m7243be() {
        String m536o = this.f8159e.f7540b.m536o(this.f8159e.f7557s);
        if (m536o != null && !new File(m536o).exists()) {
            m7404g(true);
            if (!this.f7992A) {
                this.f7992A = true;
                mo408a(9139, 0L);
            }
        }
    }

    /* renamed from: G */
    protected void m7302G() {
        if (this.f8090bU != null) {
            String m536o = this.f8159e.f7540b.m536o(this.f8159e.f7557s);
            int m504a = this.f8159e.f7540b.m504a(this.f8159e.f7557s);
            if (!new File(m536o).exists()) {
                m7404g(true);
                if (!this.f7992A) {
                    this.f7992A = true;
                    mo408a(9139, 0L);
                    return;
                }
                return;
            }
            if (m504a == 1) {
                this.f8090bU.start();
                m7294C();
            }
        }
    }

    /* renamed from: H */
    protected void m7304H() {
        int i;
        int i2;
        if (this.f8123cA.m7520a()) {
            m7452y(false);
            m407a(9138);
            this.f8123cA.m7521b();
            m7371ar();
            return;
        }
        m7335a(true, false, true);
        m7452y(true);
        m7418l(6);
        this.f8003M = 2;
        this.f8004N = 6;
        if (this.f8002L > this.f8001K) {
            i = this.f8002L;
            i2 = this.f8001K;
        } else {
            i = this.f8001K;
            i2 = this.f8002L;
        }
        this.f8090bU.m196a(i, i2);
        this.f8159e.f7524Y = this.f8090bU.getInteractiveMode();
        m407a(9137);
        this.f8123cA.m7521b();
        m7449x(true);
    }

    /* renamed from: y */
    protected void m7452y(boolean z) {
        this.f8123cA.m7519a(z);
    }

    /* renamed from: J */
    private void m7217J(boolean z) {
        if (z) {
            this.f8149cr.setEnabled(false);
            this.f8141cj.setEnabled(false);
            this.f8141cj.setImageAlpha(100);
            this.f8145cn.setAlpha(0.4f);
            this.f8150cs.setEnabled(false);
            this.f8142ck.setEnabled(false);
            this.f8142ck.setImageAlpha(100);
            this.f8146co.setAlpha(0.4f);
            this.f8151ct.setEnabled(false);
            this.f8143cl.setEnabled(false);
            this.f8143cl.setImageAlpha(100);
            this.f8147cp.setAlpha(0.4f);
            return;
        }
        this.f8149cr.setEnabled(true);
        this.f8141cj.setEnabled(true);
        this.f8141cj.setImageAlpha(255);
        this.f8145cn.setAlpha(1.0f);
        this.f8150cs.setEnabled(true);
        this.f8142ck.setEnabled(true);
        this.f8142ck.setImageAlpha(255);
        this.f8146co.setAlpha(1.0f);
        this.f8151ct.setEnabled(true);
        this.f8143cl.setEnabled(true);
        this.f8143cl.setImageAlpha(255);
        this.f8147cp.setAlpha(1.0f);
    }

    /* renamed from: z */
    protected void m7453z(boolean z) {
        if (z) {
            this.f8159e.f7513N = 3;
            m7217J(true);
            m7418l(6);
            this.f8003M = 2;
            this.f8090bU.m196a(this.f8002L, this.f8001K);
            this.f8159e.f7524Y = this.f8090bU.getInteractiveMode();
            m407a(9137);
            m7307I(false);
            return;
        }
        m7217J(false);
        m407a(9138);
    }

    /* renamed from: I */
    protected void m7306I() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f8090bU.m196a(Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels), Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels));
        this.f8090bU.setViewMode(1);
        this.f8159e.f7517R = 1;
        m7412j(3);
    }

    /* renamed from: J */
    protected void m7308J() {
        this.f8090bU.setViewMode(0);
        this.f8159e.f7517R = 0;
        m7249bk();
    }

    /* renamed from: A */
    protected void m7290A(boolean z) {
        if (z) {
            this.f8003M = 1;
            switch (this.f8004N) {
                case 1:
                    m7418l(1);
                    this.f8004N = 1;
                    this.f8158d.f7487k = 1;
                    break;
                case 9:
                    m7418l(9);
                    this.f8004N = 9;
                    this.f8158d.f7487k = 9;
                    break;
                default:
                    m7418l(1);
                    this.f8004N = 1;
                    this.f8158d.f7487k = 1;
                    break;
            }
        }
    }

    /* renamed from: bf */
    private void m7244bf() {
        this.f8140ci = (LinearLayout) findViewById(R.id.LL_ui_singleview_BottomNormalLayout);
        this.f8141cj = (ImageButton) findViewById(R.id.IB_ui_singleview_btnViewType);
        this.f8142ck = (ImageButton) findViewById(R.id.IB_ui_singleview_btnSnapshot);
        this.f8143cl = (ImageButton) findViewById(R.id.IB_ui_singleview_btnEdit);
        this.f8144cm = (ImageButton) findViewById(R.id.IB_ui_singleview_btnDrag);
        this.f8145cn = (TextView) findViewById(R.id.TV_ui_singleview_btnViewType);
        this.f8146co = (TextView) findViewById(R.id.TV_ui_singleview_btnSnapshot);
        this.f8147cp = (TextView) findViewById(R.id.TV_ui_singleview_btnEdit);
        this.f8148cq = (TextView) findViewById(R.id.TV_ui_singleview_btnDrag);
        this.f8149cr = (LinearLayout) findViewById(R.id.LL_ui_singleview_LayoutViewType);
        this.f8150cs = (LinearLayout) findViewById(R.id.LL_ui_singleview_LayoutSnapshot);
        this.f8151ct = (LinearLayout) findViewById(R.id.LL_ui_singleview_LayoutEdit);
        this.f8152cu = (LinearLayout) findViewById(R.id.LL_ui_singleview_LayoutDrag);
        this.f8140ci.setVisibility(4);
        this.f8140ci.setBackgroundColor(getResources().getColor(R.color.blackt50));
        this.f8142ck.setImageResource(R.drawable.gallery_bottom_snapshot);
        this.f8143cl.setImageResource(R.drawable.gallery_bottom_edit);
        int m784a = C0079k.m784a(this, this.f8001K / 30);
        C0047c m447q = new C0047c(m784a).m433c((int) (m784a * 0.8d)).m444n((int) (m784a * 0.8d)).m437g((int) (m784a * 0.9d)).m445o((int) (m784a * 0.8d)).m439i((int) (m784a * 0.9d)).m440j((int) (m784a * 0.8d)).m447q((int) (m784a * 0.9d));
        this.f8145cn.setTextSize(m447q.m430a());
        this.f8146co.setTextSize(m447q.m430a());
        this.f8147cp.setTextSize(m447q.m430a());
        this.f8148cq.setTextSize(m447q.m430a());
        m7247bi();
        this.f8141cj.setOnClickListener(this.f8131cI);
        this.f8142ck.setOnClickListener(this.f8131cI);
        this.f8143cl.setOnClickListener(this.f8131cI);
        this.f8144cm.setOnClickListener(this.f8131cI);
        this.f8149cr.setOnClickListener(this.f8130cH);
        this.f8150cs.setOnClickListener(this.f8130cH);
        this.f8151ct.setOnClickListener(this.f8130cH);
        this.f8152cu.setOnClickListener(this.f8130cH);
        this.f8140ci.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.22
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    /* renamed from: a */
    protected void m7335a(boolean z, boolean z2, boolean z3) {
        if (!this.f8159e.f7500A) {
            m7221a("UI_ShowInformation " + z + " " + z2 + " " + z3 + " " + this.f8159e.f7560v, 4);
            if (z) {
                this.f8159e.f7560v = true;
            } else {
                this.f8159e.f7560v = false;
            }
            m7295C(z);
            if (z2) {
                m7299E(true);
            } else {
                m7299E(false);
            }
            if (z3) {
                m7297D(true);
            } else {
                m7297D(false);
            }
        }
    }

    /* renamed from: B */
    protected void m7293B(boolean z) {
        if (this.f8153cv != null) {
            if (z) {
                this.f8153cv.setVisibility(0);
            } else {
                this.f8153cv.setVisibility(4);
            }
        }
    }

    /* renamed from: K */
    protected boolean m7309K() {
        return this.f8153cv != null && this.f8153cv.getVisibility() == 0;
    }

    /* renamed from: L */
    protected boolean m7310L() {
        return m7309K() || C0091o.m897a(this) || m7436r();
    }

    /* renamed from: C */
    protected void m7295C(boolean z) {
        if (z) {
            this.f8095bZ.setVisibility(0);
        } else {
            this.f8095bZ.setVisibility(4);
        }
    }

    /* renamed from: M */
    protected void m7311M() {
        if (this.f8136ce.getVisibility() == 0) {
            if (m7377ax()) {
                this.f8137cf.setVisibility(0);
            } else {
                this.f8137cf.setVisibility(4);
            }
            if (m7376aw()) {
                this.f8138cg.setVisibility(0);
            } else {
                this.f8138cg.setVisibility(4);
            }
        }
    }

    /* renamed from: D */
    protected void m7297D(boolean z) {
        if (z) {
            this.f8136ce.setVisibility(0);
        } else {
            this.f8136ce.setVisibility(4);
        }
        m7311M();
    }

    /* renamed from: E */
    protected void m7299E(boolean z) {
        if (z) {
            this.f8140ci.setVisibility(0);
        } else {
            this.f8140ci.setVisibility(4);
        }
    }

    /* renamed from: h */
    protected void m7406h(int i) {
        if (this.f8159e.f7540b.m530i(i)) {
            m7326a(i, 0);
        } else {
            m7326a(i, 20);
        }
    }

    /* renamed from: a */
    protected void m7326a(int i, int i2) {
        this.f8087bR = (ListHorizontalScrollView) findViewById(R.id.LHSV_ui_singleview_ListView);
        this.f8088bS = (SingleHorizontalScrollView) findViewById(R.id.LHSV_ui_singleview_ImageView);
        C1676b.c cVar = new C1676b.c();
        cVar.f7838a = this.f8001K;
        cVar.f7839b = this.f8002L;
        cVar.f7841d = this.f8088bS;
        cVar.f7842e = this.f8090bU;
        cVar.f7843f = this.f8159e.f7540b;
        cVar.f7844g = this.f8125cC;
        cVar.f7845h = this.f8126cD;
        this.f8085bP = new C1676b(this);
        this.f8085bP.m7124a(this);
        this.f8085bP.m7123a(cVar, i, i2);
        m7328a(this.f8159e.f7540b.m504a(this.f8159e.f7557s), this.f8159e.f7540b.m530i(this.f8159e.f7557s) && !this.f8159e.f7540b.m531j(this.f8159e.f7557s));
        this.f8088bS.setEnableScrolling(true);
    }

    /* renamed from: N */
    protected void m7312N() {
        this.f8088bS.m6945e();
    }

    /* renamed from: O */
    protected void m7313O() {
        this.f8088bS.m6946f();
    }

    /* renamed from: P */
    protected void m7314P() {
        if (this.f8085bP != null) {
            this.f8085bP.m7127c();
        }
    }

    /* renamed from: i */
    protected void m7409i(int i) {
        this.f8085bP.m7128c(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public boolean m7288w(int i) {
        File file = new File(this.f8159e.f7540b.m536o(i));
        if (file.exists() && !this.f8085bP.m7129d(i)) {
            return false;
        }
        m7221a("Error file:" + i + ", " + file.exists(), 1);
        return true;
    }

    /* renamed from: bg */
    private void m7245bg() {
        this.f8136ce = (FrameLayout) findViewById(R.id.FL_ui_singleview_btnPreAndNext);
        this.f8137cf = (ImageButton) findViewById(R.id.IB_ui_singleview_Previous);
        this.f8138cg = (ImageButton) findViewById(R.id.IB_ui_singleview_Next);
        this.f8139ch = (Space) findViewById(R.id.Space_Anchor);
        this.f8137cf.setOnClickListener(this.f8131cI);
        this.f8138cg.setOnClickListener(this.f8131cI);
        this.f8136ce.setVisibility(4);
        int i = this.f8002L / 20;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        layoutParams.setMargins(0, 0, this.f8001K / 15, 0);
        this.f8138cg.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i, i);
        layoutParams2.setMargins(this.f8001K / 15, 0, 0, 0);
        this.f8137cf.setLayoutParams(layoutParams2);
        this.f8137cf.setImageResource(R.drawable.gallery_arrowleft);
        this.f8138cg.setImageResource(R.drawable.gallery_singleview_arrow_right_normal);
    }

    /* renamed from: bh */
    private void m7246bh() {
        this.f8095bZ = (LinearLayout) findViewById(R.id.LL_ui_singleview_TopLayout);
        this.f8095bZ.setVisibility(4);
        this.f8133cb = (TextView) findViewById(R.id.TV_ui_singleview_information);
        this.f8133cb.setTextSize(C0079k.m784a(this, this.f8002L / 44));
        this.f8133cb.setGravity(16);
        this.f8133cb.setTextColor(-1);
        this.f8133cb.setVisibility(4);
        this.f8132ca = (ImageButton) findViewById(R.id.IB_ui_singleview_btnReturn);
        this.f8134cc = (ImageButton) findViewById(R.id.IB_ui_singleview_btnShareTab);
        this.f8135cd = (ImageButton) findViewById(R.id.IB_ui_singleview_btnMoreTab);
        this.f8134cc.setOnClickListener(this.f8131cI);
        this.f8135cd.setOnClickListener(this.f8131cI);
        this.f8095bZ.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.26
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f8134cc.setImageResource(R.drawable.gallery_top_share_white);
        this.f8135cd.setImageResource(R.drawable.gallery_top_more);
        this.f8132ca.setVisibility(4);
    }

    /* renamed from: a */
    public void m7328a(int i, boolean z) {
        m7221a("GallerySingle_UpdateTopLayoutButtons " + i + " " + z, 4);
        if (this.f8159e.f7513N == 0) {
            int i2 = this.f8159e.f7514O;
            if (i2 == 4 || i2 != 5) {
            }
        } else {
            int i3 = this.f8159e.f7514O;
            if (i3 == 4 || i3 == 5) {
                this.f8090bU.setEnable(true);
            } else if (this.f8159e.f7556r) {
                this.f8090bU.setEnable(true);
            } else if (i == 1 || i == 5) {
                this.f8090bU.setEnable(true);
            } else if (i == 2) {
                this.f8090bU.setEnable(false);
            } else if (i == 3) {
                this.f8090bU.setEnable(false);
            } else {
                this.f8090bU.setEnable(true);
            }
        }
        if (this.f8159e.f7556r) {
            int i4 = this.f8159e.f7557s;
            C0060d c0060d = this.f8159e.f7540b;
            this.f8132ca.setVisibility(0);
            if (this.f8085bP == null || !c0060d.m537p(i4)) {
                this.f8134cc.setVisibility(4);
                return;
            } else if (this.f8085bP.m7129d(i4)) {
                this.f8134cc.setVisibility(4);
                return;
            } else {
                this.f8134cc.setVisibility(0);
                return;
            }
        }
        int i5 = this.f8159e.f7557s;
        C0060d c0060d2 = this.f8159e.f7540b;
        this.f8132ca.setVisibility(0);
        if (this.f8159e.f7551m == null || !c0060d2.m537p(i5)) {
            this.f8134cc.setVisibility(4);
        } else if (this.f8159e.f7551m.m7067h(i5)) {
            this.f8134cc.setVisibility(4);
        } else {
            this.f8134cc.setVisibility(0);
        }
    }

    /* renamed from: Q */
    protected void m7315Q() {
        m7221a("GallerySingle_VideoPlayer_Init", 4);
        this.f8089bT = (LinearLayout) findViewById(R.id.LL_ui_singleview_VideoPlayer);
        this.f8090bU = (SphericalVideoPlayer) findViewById(R.id.TV_ui_singleview_VideoPlayer);
        this.f8090bU.setPlayerStatusListener(this.f8129cG);
        this.f8090bU.setAdditionalButtonCallback(this.f8127cE);
        this.f8090bU.setOnClickListener(new SphericalVideoPlayer.InterfaceC0030d() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.27
            @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0030d
            /* renamed from: a */
            public void mo231a(MotionEvent motionEvent) {
                UI_PhoneGalleryController.this.m7221a("TV_ui_singleview_VideoPlayer onClick", 4);
                UI_PhoneGalleryController.this.m407a(8962);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bi */
    public void m7247bi() {
        int i = this.f8159e.f7516Q;
        int i2 = this.f8159e.f7515P;
        switch (i) {
            case 2:
                this.f8141cj.setImageResource(R.drawable.gallery_bottom_perspective_white);
                this.f8145cn.setText(R.string.perspective);
                break;
            case 3:
                this.f8141cj.setImageResource(R.drawable.gallery_bottom_fisheye_white);
                this.f8145cn.setText(R.string.fisheye);
                break;
            case 5:
                this.f8141cj.setImageResource(R.drawable.gallery_bottom_littleplanet_white);
                this.f8145cn.setText(R.string.little_planet);
                break;
            case 6:
                this.f8141cj.setImageResource(R.drawable.gallery_bottom_crystalball_white);
                this.f8145cn.setText(R.string.crystal_ball);
                break;
        }
        switch (i2) {
            case 1:
                this.f8144cm.setImageResource(R.drawable.gallery_bottom_drag_white);
                this.f8148cq.setText(R.string.drag);
                break;
            case 3:
                this.f8144cm.setImageResource(R.drawable.gallery_bottom_gyro_white);
                this.f8148cq.setText(R.string.gyro);
                break;
        }
    }

    /* renamed from: R */
    protected void m7316R() {
        this.f8090bU.m218m();
    }

    /* renamed from: F */
    protected void m7301F(boolean z) {
        View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.ui_singleview_bottom_interactive_tool, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_BottomList_interactive_Layout);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_BottomList_Drag_Layout);
        ImageButton imageButton = (ImageButton) inflate.findViewById(R.id.IB_ui_singleview_BottomList_Drag);
        TextView textView = (TextView) inflate.findViewById(R.id.TV_ui_singleview_BottomList_Drag);
        LinearLayout linearLayout3 = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_BottomList_Gyroscope_Layout);
        ImageButton imageButton2 = (ImageButton) inflate.findViewById(R.id.IB_ui_singleview_BottomList_Gyroscope);
        TextView textView2 = (TextView) inflate.findViewById(R.id.TV_ui_singleview_BottomList_Gyroscope);
        LinearLayout linearLayout4 = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_BottomList_VR_Layout);
        ImageButton imageButton3 = (ImageButton) inflate.findViewById(R.id.IB_ui_singleview_BottomList_VR);
        TextView textView3 = (TextView) inflate.findViewById(R.id.TV_ui_singleview_BottomList_VR);
        int m784a = C0079k.m784a(this.f7998H, Math.min(this.f8001K, this.f8002L) / 33);
        linearLayout.setBackgroundResource(R.drawable.gallery_menu_viewcontrol);
        imageButton.setImageResource(R.drawable.gallery_bottom_drag_white);
        textView.setText(R.string.drag);
        textView.setTextColor(getResources().getColor(R.color.white));
        imageButton2.setImageResource(R.drawable.gallery_bottom_gyro_white);
        textView2.setText(R.string.gyro);
        textView2.setTextColor(getResources().getColor(R.color.white));
        imageButton3.setImageResource(R.drawable.gallery_bottom_vr_white);
        textView3.setText(R.string.f7062vr);
        textView3.setTextColor(getResources().getColor(R.color.white));
        C0047c m447q = new C0047c(m784a).m432b((int) (m784a * 0.8d)).m433c((int) (m784a * 0.8d)).m444n((int) (m784a * 0.8d)).m437g((int) (m784a * 0.8d)).m434d((int) (m784a * 0.8d)).m441k((int) (m784a * 0.8d)).m438h((int) (m784a * 0.8d)).m445o((int) (m784a * 0.8d)).m439i((int) (m784a * 0.9d)).m440j((int) (m784a * 0.8d)).m447q((int) (m784a * 0.9d));
        textView.setTextSize(m447q.m430a());
        textView2.setTextSize(m447q.m430a());
        textView3.setTextSize(m447q.m430a());
        linearLayout2.setOnClickListener(this.f8128cF);
        imageButton.setOnClickListener(this.f8128cF);
        linearLayout3.setOnClickListener(this.f8128cF);
        imageButton2.setOnClickListener(this.f8128cF);
        linearLayout4.setOnClickListener(this.f8128cF);
        imageButton3.setOnClickListener(this.f8128cF);
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        layoutParams.width = (int) (this.f8001K * 0.5d);
        layoutParams.height = (int) (this.f8002L * 0.1d);
        this.f8010T = new PopupWindow(inflate, -2, -2);
        this.f8010T.setTouchable(true);
        this.f8010T.setOutsideTouchable(true);
        this.f8010T.setBackgroundDrawable(new BitmapDrawable(getResources(), (Bitmap) null));
        this.f8010T.setOnDismissListener(this.f7997F);
        this.f8010T.setAnimationStyle(R.style.PopupAnimation);
        if (z) {
            int i = this.f8002L / 20;
            if (C1662d.m7093a().m7096b()) {
                i = 0;
            }
            this.f8010T.showAsDropDown(this.f8139ch, (this.f8139ch.getWidth() / 2) - (layoutParams.width / 3), -((layoutParams.height + this.f8090bU.getMediaControllerHeight()) - i));
        } else {
            this.f8010T.showAsDropDown(this.f8144cm, (int) ((this.f8144cm.getWidth() / 3) - (layoutParams.width / 1.3d)), -((int) (this.f8144cm.getHeight() + (layoutParams.height * 1.1d))));
        }
        this.f8010T.update();
        this.f7994C = true;
    }

    /* renamed from: G */
    protected void m7303G(boolean z) {
        View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.ui_singleview_bottom_viewtype_tool, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_BottomList_ViewType_Layout);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_BottomList_Perspective_Layout);
        ImageButton imageButton = (ImageButton) inflate.findViewById(R.id.IB_ui_singleview_BottomList_Perspective);
        TextView textView = (TextView) inflate.findViewById(R.id.TV_ui_singleview_BottomList_Perspective);
        LinearLayout linearLayout3 = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_BottomList_Fisheye_Layout);
        ImageButton imageButton2 = (ImageButton) inflate.findViewById(R.id.IB_ui_singleview_BottomList_Fisheye);
        TextView textView2 = (TextView) inflate.findViewById(R.id.TV_ui_singleview_BottomList_Fisheye);
        LinearLayout linearLayout4 = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_BottomList_CrystalBall_Layout);
        ImageButton imageButton3 = (ImageButton) inflate.findViewById(R.id.IB_ui_singleview_BottomList_CrystalBall);
        TextView textView3 = (TextView) inflate.findViewById(R.id.TV_ui_singleview_BottomList_CrystalBall);
        LinearLayout linearLayout5 = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_BottomList_LittlePlanet_Layout);
        ImageButton imageButton4 = (ImageButton) inflate.findViewById(R.id.IB_ui_singleview_BottomList_LittlePlanet);
        TextView textView4 = (TextView) inflate.findViewById(R.id.TV_ui_singleview_BottomList_LittlePlanet);
        int m784a = C0079k.m784a(this.f7998H, Math.min(this.f8001K, this.f8002L) / 33);
        if (z) {
            linearLayout.setBackgroundResource(R.drawable.gallery_menu_viewcontrol);
        } else {
            linearLayout.setBackgroundResource(R.drawable.gallery_menu_viewmode);
        }
        imageButton.setImageResource(R.drawable.gallery_bottom_perspective_white);
        textView.setText(R.string.perspective);
        textView.setTextColor(getResources().getColor(R.color.white));
        imageButton2.setImageResource(R.drawable.gallery_bottom_fisheye_white);
        textView2.setText(R.string.fisheye);
        textView2.setTextColor(getResources().getColor(R.color.white));
        imageButton3.setImageResource(R.drawable.gallery_bottom_crystalball_white);
        textView3.setText(R.string.crystal_ball);
        textView3.setTextColor(getResources().getColor(R.color.white));
        imageButton4.setImageResource(R.drawable.gallery_bottom_littleplanet_white);
        textView4.setText(R.string.little_planet);
        textView4.setTextColor(getResources().getColor(R.color.white));
        C0047c m447q = new C0047c(m784a).m432b((int) (m784a * 0.8d)).m433c((int) (m784a * 0.8d)).m444n((int) (m784a * 0.8d)).m437g((int) (m784a * 0.8d)).m434d((int) (m784a * 0.8d)).m441k((int) (m784a * 0.8d)).m438h((int) (m784a * 0.8d)).m445o((int) (m784a * 0.8d)).m439i((int) (m784a * 0.9d)).m446p((int) (m784a * 0.9d)).m440j((int) (m784a * 0.8d)).m447q((int) (m784a * 0.9d));
        textView.setTextSize(m447q.m430a());
        textView2.setTextSize(m447q.m430a());
        textView3.setTextSize(m447q.m430a());
        textView4.setTextSize(m447q.m430a());
        linearLayout2.setOnClickListener(this.f8128cF);
        imageButton.setOnClickListener(this.f8128cF);
        linearLayout3.setOnClickListener(this.f8128cF);
        imageButton2.setOnClickListener(this.f8128cF);
        linearLayout4.setOnClickListener(this.f8128cF);
        imageButton3.setOnClickListener(this.f8128cF);
        linearLayout5.setOnClickListener(this.f8128cF);
        imageButton4.setOnClickListener(this.f8128cF);
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        layoutParams.width = (int) (this.f8001K * 0.7d);
        layoutParams.height = (int) (this.f8002L * 0.1d);
        this.f8010T = new PopupWindow(inflate, -2, -2);
        this.f8010T.setTouchable(true);
        this.f8010T.setOutsideTouchable(true);
        this.f8010T.setBackgroundDrawable(new BitmapDrawable(getResources(), (Bitmap) null));
        this.f8010T.setOnDismissListener(this.f7997F);
        this.f8010T.setAnimationStyle(R.style.PopupAnimation);
        if (z) {
            int i = this.f8002L / 20;
            if (C1662d.m7093a().m7096b()) {
                i = 0;
            }
            this.f8010T.showAsDropDown(this.f8139ch, (int) ((this.f8139ch.getWidth() / 2) - (layoutParams.width * 1.1d)), -((layoutParams.height + this.f8090bU.getMediaControllerHeight()) - i));
        } else {
            this.f8010T.showAsDropDown(this.f8141cj, (this.f8141cj.getWidth() / 3) - (layoutParams.width / 8), -((int) (this.f8141cj.getHeight() + (layoutParams.height * 1.1d))));
        }
        this.f8010T.update();
        this.f7994C = true;
    }

    /* renamed from: S */
    protected void m7317S() {
        View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.ui_singleview_edit_tools, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_EditTool_Layout);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_EditTool_ConvertToGif_Layout);
        ImageButton imageButton = (ImageButton) inflate.findViewById(R.id.IB_ui_singleview_EditTool_ConvertToGif);
        TextView textView = (TextView) inflate.findViewById(R.id.TV_ui_singleview_EditTool_ConvertToGif);
        LinearLayout linearLayout3 = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_EditTool_NormalPicOrMovieEdit_Layout);
        ImageButton imageButton2 = (ImageButton) inflate.findViewById(R.id.IB_ui_singleview_EditTool_NormalPicOrMovieEdit);
        TextView textView2 = (TextView) inflate.findViewById(R.id.TV_ui_singleview_EditTool_NormalPicOrMovieEdit);
        int m784a = C0079k.m784a(this.f7998H, Math.min(this.f8001K, this.f8002L) / 33);
        linearLayout.setBackgroundResource(R.drawable.gallery_editingtools_l2);
        imageButton.setImageResource(R.drawable.gallery_bottom_gif);
        textView.setText(R.string.edit_tool_gif);
        textView.setTextSize(m784a);
        textView.setTextColor(getResources().getColor(R.color.white));
        imageButton2.setImageResource(R.drawable.gallery_bottom_moviecut);
        textView2.setText(R.string.edit_tool_movie_edit);
        textView2.setTextColor(getResources().getColor(R.color.white));
        C0047c m447q = new C0047c(m784a).m432b((int) (m784a * 0.8d)).m433c((int) (m784a * 0.8d)).m444n((int) (m784a * 0.8d)).m437g((int) (m784a * 0.8d)).m434d((int) (m784a * 0.8d)).m441k((int) (m784a * 0.8d)).m438h((int) (m784a * 0.8d)).m445o((int) (m784a * 0.8d)).m439i((int) (m784a * 0.9d)).m440j((int) (m784a * 0.8d)).m447q((int) (m784a * 0.9d));
        textView.setTextSize(m447q.m430a());
        textView2.setTextSize(m447q.m430a());
        linearLayout2.setOnClickListener(this.f8128cF);
        imageButton.setOnClickListener(this.f8128cF);
        linearLayout3.setOnClickListener(this.f8128cF);
        imageButton2.setOnClickListener(this.f8128cF);
        if (this.f8159e.f7540b.m515d(this.f8159e.f7557s) <= 2) {
            linearLayout2.setEnabled(false);
            imageButton.setEnabled(false);
            imageButton.setImageAlpha(100);
            textView.setAlpha(0.4f);
            linearLayout3.setEnabled(false);
            imageButton2.setEnabled(false);
            imageButton2.setImageAlpha(100);
            textView2.setAlpha(0.4f);
        } else {
            linearLayout2.setEnabled(true);
            imageButton.setEnabled(true);
            imageButton.setImageAlpha(255);
            textView.setAlpha(1.0f);
            linearLayout3.setEnabled(true);
            imageButton2.setEnabled(true);
            imageButton2.setImageAlpha(255);
            textView2.setAlpha(1.0f);
        }
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        layoutParams.width = (int) (this.f8001K * 0.4d);
        layoutParams.height = (int) (this.f8002L * 0.1d);
        this.f8010T = new PopupWindow(inflate, -2, -2);
        this.f8010T.setTouchable(true);
        this.f8010T.setOutsideTouchable(true);
        this.f8010T.setBackgroundDrawable(new BitmapDrawable(getResources(), (Bitmap) null));
        this.f8010T.setOnDismissListener(this.f7997F);
        this.f8010T.setAnimationStyle(R.style.PopupAnimation);
        int i = this.f8002L / 20;
        if (C1662d.m7093a().m7096b()) {
            i = 0;
        }
        this.f8010T.showAsDropDown(this.f8139ch, (int) ((this.f8139ch.getWidth() / 2) - (layoutParams.width / 1.5d)), -((layoutParams.height + this.f8090bU.getMediaControllerHeight()) - i));
        this.f8010T.update();
        this.f7994C = true;
    }

    /* renamed from: T */
    protected void m7318T() {
        View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.ui_singleview_edit_tools, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_EditTool_Layout);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_EditTool_ConvertToGif_Layout);
        ImageButton imageButton = (ImageButton) inflate.findViewById(R.id.IB_ui_singleview_EditTool_ConvertToGif);
        TextView textView = (TextView) inflate.findViewById(R.id.TV_ui_singleview_EditTool_ConvertToGif);
        LinearLayout linearLayout3 = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_EditTool_NormalPicOrMovieEdit_Layout);
        ImageButton imageButton2 = (ImageButton) inflate.findViewById(R.id.IB_ui_singleview_EditTool_NormalPicOrMovieEdit);
        TextView textView2 = (TextView) inflate.findViewById(R.id.TV_ui_singleview_EditTool_NormalPicOrMovieEdit);
        int m784a = C0079k.m784a(this.f7998H, Math.min(this.f8001K, this.f8002L) / 33);
        linearLayout.setBackgroundResource(R.drawable.gallery_editingtools_l1);
        imageButton.setImageResource(R.drawable.gallery_bottom_gif);
        textView.setText(R.string.edit_tool_gif);
        textView.setTextColor(getResources().getColor(R.color.white));
        imageButton2.setImageResource(R.drawable.gallery_bottom_covert);
        textView2.setText(R.string.edit_tool_nomal_pic);
        textView2.setTextColor(getResources().getColor(R.color.white));
        C0047c m447q = new C0047c(m784a).m432b((int) (m784a * 0.8d)).m433c((int) (m784a * 0.8d)).m444n((int) (m784a * 0.8d)).m437g((int) (m784a * 0.8d)).m434d((int) (m784a * 0.8d)).m441k((int) (m784a * 0.8d)).m438h((int) (m784a * 0.8d)).m445o((int) (m784a * 0.8d)).m439i((int) (m784a * 0.9d)).m440j((int) (m784a * 0.8d)).m447q((int) (m784a * 0.9d));
        textView.setTextSize(m447q.m430a());
        textView2.setTextSize(m447q.m430a());
        linearLayout2.setOnClickListener(this.f8128cF);
        imageButton.setOnClickListener(this.f8128cF);
        linearLayout3.setOnClickListener(this.f8128cF);
        imageButton2.setOnClickListener(this.f8128cF);
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        layoutParams.width = (int) (this.f8001K * 0.4d);
        layoutParams.height = (int) (this.f8002L * 0.1d);
        this.f8010T = new PopupWindow(inflate, -2, -2);
        this.f8010T.setTouchable(true);
        this.f8010T.setOutsideTouchable(true);
        this.f8010T.setBackgroundDrawable(new BitmapDrawable(getResources(), (Bitmap) null));
        this.f8010T.setOnDismissListener(this.f7997F);
        this.f8010T.setAnimationStyle(R.style.PopupAnimation);
        this.f8010T.showAsDropDown(this.f8143cl, (this.f8143cl.getWidth() / 3) - (layoutParams.width / 4), -((int) (this.f8143cl.getHeight() + (layoutParams.height * 1.1d))));
        this.f8010T.update();
        this.f7994C = true;
    }

    /* renamed from: U */
    protected void m7319U() {
        View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.ui_singleview_snapshot_tools, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_Snapshot_Layout);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_Snapshot_Confirm_Layout);
        ImageButton imageButton = (ImageButton) inflate.findViewById(R.id.IB_ui_singleview_Snapshot_Confirm);
        TextView textView = (TextView) inflate.findViewById(R.id.TV_ui_singleview_Snapshot_Confirm);
        LinearLayout linearLayout3 = (LinearLayout) inflate.findViewById(R.id.LL_ui_singleview_Snapshot_Cancel_Layout);
        ImageButton imageButton2 = (ImageButton) inflate.findViewById(R.id.IB_ui_singleview_Snapshot_Cancel);
        TextView textView2 = (TextView) inflate.findViewById(R.id.TV_ui_singleview_Snapshot_Cancel);
        int m784a = C0079k.m784a(this.f7998H, Math.min(this.f8001K, this.f8002L) / 33);
        linearLayout.setBackgroundColor(getResources().getColor(R.color.blackt50));
        imageButton.setImageResource(R.drawable.gallery_snapshot_yes);
        textView.setText(R.string.edit_save);
        textView.setTextSize(m784a);
        textView.setTextColor(getResources().getColor(R.color.white));
        imageButton2.setImageResource(R.drawable.gallery_snapshot_no);
        textView2.setText(R.string.edit_cancel);
        textView2.setTextSize(m784a);
        textView2.setTextColor(getResources().getColor(R.color.white));
        linearLayout2.setOnClickListener(this.f8128cF);
        imageButton.setOnClickListener(this.f8128cF);
        linearLayout3.setOnClickListener(this.f8128cF);
        imageButton2.setOnClickListener(this.f8128cF);
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        layoutParams.width = (int) (this.f8001K * 0.4d);
        layoutParams.height = (int) (this.f8002L * 0.1d);
        this.f8010T = new PopupWindow(inflate, -2, -2);
        this.f8010T.setTouchable(true);
        this.f8010T.setOutsideTouchable(false);
        this.f8010T.setBackgroundDrawable(new BitmapDrawable(getResources(), (Bitmap) null));
        this.f8010T.setOnDismissListener(this.f7997F);
        this.f8010T.setAnimationStyle(R.style.PopupAnimation);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f8010T.showAtLocation(this.f8140ci, 0, (displayMetrics.widthPixels / 2) - (layoutParams.width / 2), (displayMetrics.heightPixels * 3) / 4);
        this.f8010T.update();
        this.f7994C = true;
    }

    /* renamed from: bj */
    private void m7248bj() {
        this.f8113br.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.29
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                UI_PhoneGalleryController.this.m407a(9144);
                UI_PhoneGalleryController.this.f8113br.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        });
    }

    /* renamed from: V */
    protected void m7320V() {
        this.f7994C = false;
        this.f8090bU.m219n();
    }

    /* renamed from: W */
    public boolean m7321W() {
        return this.f8010T != null && this.f8010T.isShowing();
    }

    /* renamed from: X */
    public void m7322X() {
        if (this.f8010T != null) {
            this.f8010T.dismiss();
        }
    }

    /* renamed from: Y */
    protected void m7323Y() {
        m7221a("GallerySingle_VideoPlayer_PlayPhoto", 4);
        this.f8090bU.setPlayerMode(3);
        this.f8090bU.setViewMode(this.f8159e.f7517R);
        if (this.f8159e.f7523X != null) {
            this.f8159e.f7516Q = this.f8159e.f7523X.f331a;
            this.f8159e.f7515P = this.f8159e.f7523X.f382s;
        }
        this.f8090bU.setInteractiveMode(this.f8159e.f7515P);
        this.f8090bU.setViewType(this.f8159e.f7516Q);
        if (this.f8159e.f7523X != null) {
            this.f8090bU.setSphericalParameter(this.f8159e.f7523X);
        }
        int m209d = this.f8090bU.m209d();
        if (m209d == 1) {
            if (this.f8090bU.m212g() == -1) {
                m7221a("Play fail", 2);
                m7354aa();
            }
        } else {
            m7221a("PlayerStatus error:" + m209d, 2);
        }
        m7305H(false);
        m7371ar();
    }

    /* renamed from: a */
    protected boolean m7336a(Bitmap bitmap, int i, int i2) {
        m7221a("GallerySingle_VideoPlayer_UpdateFrame " + bitmap, 4);
        int m209d = this.f8090bU.m209d();
        int m504a = this.f8159e.f7540b.m504a(this.f8159e.f7557s);
        String m536o = this.f8159e.f7540b.m536o(this.f8159e.f7557s);
        if (m209d == 2) {
            this.f8090bU.m199a(bitmap, C0052d.m470c(m536o), true);
            if (m504a != 0) {
                return true;
            }
            if (!m7310L()) {
                m7335a(true, true, true);
                return true;
            }
            m7335a(false, false, false);
            return true;
        }
        m7221a("360 Player Can't Update Frame " + m209d, 4);
        return false;
    }

    /* renamed from: a */
    protected void m7331a(String str) {
        m7221a("GallerySingle_VideoPlayer_PlayVideo:" + str, 2);
        this.f8090bU.setPlayerMode(1);
        this.f8090bU.setViewMode(this.f8159e.f7517R);
        this.f8090bU.setVideoFilePath(str);
        if (this.f8159e.f7523X != null) {
            this.f8159e.f7516Q = this.f8159e.f7523X.f331a;
            this.f8159e.f7515P = this.f8159e.f7523X.f382s;
        }
        this.f8090bU.setInteractiveMode(this.f8159e.f7515P);
        this.f8090bU.setViewType(this.f8159e.f7516Q);
        if (this.f8159e.f7523X != null) {
            this.f8090bU.setSphericalParameter(this.f8159e.f7523X);
        }
        int m209d = this.f8090bU.m209d();
        if (m209d == 1) {
            if (this.f8090bU.m212g() == -1) {
                m7221a("Play fail", 2);
                m7354aa();
            }
        } else {
            m7221a("PlayerStatus error:" + m209d, 2);
        }
        m7305H(false);
        m7371ar();
    }

    /* renamed from: Z */
    protected void m7324Z() {
        if (this.f8090bU.getSphericalParameter().f382s != 0) {
            this.f8159e.f7523X = new C0041h();
            this.f8159e.f7523X.f376m = this.f8090bU.getSphericalParameter().f376m;
            this.f8159e.f7523X.f375l = this.f8090bU.getSphericalParameter().f375l;
            this.f8159e.f7523X.f331a = this.f8090bU.getSphericalParameter().f331a;
            this.f8159e.f7523X.f380q = this.f8090bU.getSphericalParameter().f380q;
            this.f8159e.f7523X.f381r = this.f8090bU.getSphericalParameter().f381r;
            this.f8159e.f7523X.f382s = this.f8090bU.getSphericalParameter().f382s;
            this.f8159e.f7523X.f368e = this.f8090bU.getSphericalParameter().f368e;
            if (this.f8159e.f7523X.f331a == 0) {
                this.f8159e.f7523X = null;
            }
        }
    }

    /* renamed from: j */
    protected void m7412j(int i) {
        this.f8090bU.setInteractiveMode(i);
    }

    /* renamed from: aa */
    protected void m7354aa() {
        if (m7362ai()) {
            m7449x(true);
            this.f8090bU.m216k();
            this.f8090bU.m214i();
        } else if (this.f8090bU == null) {
            m7221a("Can Not Destroy:TV_ui_singleview_VideoPlayer = null", 0);
        } else {
            m7221a("Can Not Destroy:" + this.f8090bU.m209d(), 0);
        }
    }

    /* renamed from: ab */
    protected boolean m7355ab() {
        if (this.f8090bU == null) {
            return false;
        }
        return this.f8090bU.m209d() == 0 || this.f8090bU.m209d() == 5 || this.f8090bU.m209d() == 1;
    }

    /* renamed from: ac */
    protected boolean m7356ac() {
        return this.f8090bU.m209d() == 2 || this.f8090bU.m209d() == 3;
    }

    /* renamed from: ad */
    protected void m7357ad() {
        this.f8090bU.m211f();
    }

    /* renamed from: ae */
    protected void m7358ae() {
        m7221a("[Video Player]GallerySingle_VideoPlayer_Enable " + m7361ah(), 4);
        this.f8089bT.setVisibility(0);
        this.f8090bU.setVisibility(0);
    }

    /* renamed from: af */
    protected void m7359af() {
        m7221a("[Video Player]GallerySingle_VideoPlayer_Disable", 4);
        this.f8089bT.setVisibility(4);
        this.f8090bU.setVisibility(4);
        m7316R();
    }

    /* renamed from: b */
    protected void m7381b(int i, boolean z) {
        m7221a("GallerySingle_SetDisplayMode " + i + " " + m7361ah(), 4);
        if (i == 1) {
            this.f8159e.f7513N = 1;
            this.f8159e.f7515P = 3;
        } else {
            this.f8159e.f7513N = 2;
            this.f8159e.f7515P = 1;
        }
        m7412j(this.f8159e.f7515P);
        m7328a(this.f8159e.f7540b.m504a(this.f8159e.f7557s), false);
        if (z) {
            m7307I(true);
        } else {
            m7371ar();
        }
    }

    /* renamed from: ag */
    protected C0041h m7360ag() {
        return this.f8090bU.getSphericalParameter();
    }

    /* renamed from: ah */
    protected int m7361ah() {
        if (this.f8090bU != null) {
            return this.f8090bU.m209d();
        }
        return -1;
    }

    /* renamed from: k */
    protected void m7415k(int i) {
        this.f8085bP.m7126b(i);
    }

    /* renamed from: ai */
    protected boolean m7362ai() {
        if (this.f8090bU == null) {
            return false;
        }
        return this.f8090bU.m209d() == 2 || this.f8090bU.m209d() == 3 || this.f8090bU.m209d() == 4 || this.f8090bU.m209d() == 5;
    }

    /* renamed from: aj */
    protected void m7363aj() {
        this.f8176v = Bitmap.createBitmap(m7364ak());
    }

    /* renamed from: ak */
    protected Bitmap m7364ak() {
        return this.f8090bU.getBitmap();
    }

    /* renamed from: b */
    protected boolean m7383b(String str) {
        return m7338a(str, this.f8176v);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected boolean m7338a(java.lang.String r4, android.graphics.Bitmap r5) {
        /*
            r3 = this;
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L19 java.lang.Throwable -> L2a
            r1.<init>(r4)     // Catch: java.lang.Exception -> L19 java.lang.Throwable -> L2a
            android.graphics.Bitmap$CompressFormat r0 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L39
            r2 = 100
            r5.compress(r0, r2, r1)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L39
            r0 = 1
            if (r1 == 0) goto L13
            r1.close()     // Catch: java.io.IOException -> L14
        L13:
            return r0
        L14:
            r1 = move-exception
            r1.printStackTrace()
            goto L13
        L19:
            r0 = move-exception
            r1 = r2
        L1b:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L37
            r0 = 0
            if (r1 == 0) goto L13
            r1.close()     // Catch: java.io.IOException -> L25
            goto L13
        L25:
            r1 = move-exception
            r1.printStackTrace()
            goto L13
        L2a:
            r0 = move-exception
            r1 = r2
        L2c:
            if (r1 == 0) goto L31
            r1.close()     // Catch: java.io.IOException -> L32
        L31:
            throw r0
        L32:
            r1 = move-exception
            r1.printStackTrace()
            goto L31
        L37:
            r0 = move-exception
            goto L2c
        L39:
            r0 = move-exception
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.m7338a(java.lang.String, android.graphics.Bitmap):boolean");
    }

    /* renamed from: al */
    protected void m7365al() {
        this.f8159e.f7521V = this.f8090bU.getCurrentPosition();
        m7221a("GallerySingle_saveVideoCurrentPosition: " + this.f8159e.f7521V, 3);
    }

    /* renamed from: am */
    protected void m7366am() {
        this.f8159e.f7522W = true;
        if (this.f8090bU.getCurrentPosition() >= 0) {
            this.f8159e.f7521V = this.f8090bU.getCurrentPosition();
        }
    }

    /* renamed from: an */
    protected void m7367an() {
        if (this.f8158d.f7478b.f7540b.m504a(this.f8159e.f7557s) == 1) {
            int i = 0;
            if (this.f8090bU.getCurrentPosition() >= 0) {
                i = this.f8090bU.getCurrentPosition();
            }
            m7403g(i);
        }
    }

    /* renamed from: ao */
    protected boolean m7368ao() {
        return this.f8090bU.isPlaying();
    }

    /* renamed from: c */
    protected void m7388c(String str) {
        m7369ap();
        this.f8159e.f7555q = new C0043a(this.f8122c, str, 2000);
    }

    /* renamed from: d */
    protected void m7393d(String str) {
        m7369ap();
        this.f8159e.f7555q = new C0043a((Context) this.f8122c, true, str, 2000);
    }

    /* renamed from: ap */
    protected void m7369ap() {
        if (this.f8159e.f7555q != null) {
            this.f8159e.f7555q.m404a();
        }
    }

    /* renamed from: aq */
    protected int m7370aq() {
        return this.f8159e.f7555q.m405b();
    }

    /* renamed from: H */
    protected void m7305H(boolean z) {
        int i = this.f8159e.f7516Q;
        switch (i) {
            case 2:
                if (z) {
                    i = 3;
                    break;
                }
                break;
            case 3:
                if (z) {
                    i = 6;
                    break;
                }
                break;
            case 4:
            default:
                i = 0;
                break;
            case 5:
                if (z) {
                    i = 2;
                    break;
                }
                break;
            case 6:
                if (z) {
                    i = 5;
                    break;
                }
                break;
        }
        m7263d(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public void m7289x(int i) {
        m7263d(i, true);
    }

    /* renamed from: d */
    private void m7263d(int i, boolean z) {
        new C0047c(C0079k.m784a(this, this.f8001K / 30));
        switch (i) {
            case 2:
                this.f8141cj.setImageResource(R.drawable.gallery_bottom_perspective_white);
                this.f8145cn.setText(R.string.perspective);
                this.f8159e.f7516Q = 2;
                if (z) {
                    this.f8141cj.setImageResource(R.drawable.gallery_bottom_perspective_green);
                    this.f8090bU.setViewType(2);
                }
                this.f8090bU.m205b(2, z);
                break;
            case 3:
                this.f8141cj.setImageResource(R.drawable.gallery_bottom_fisheye_white);
                this.f8145cn.setText(R.string.fisheye);
                this.f8159e.f7516Q = 3;
                if (z) {
                    this.f8141cj.setImageResource(R.drawable.gallery_bottom_fisheye_green);
                    this.f8090bU.setViewType(3);
                }
                this.f8090bU.m205b(3, z);
                break;
            case 5:
                this.f8141cj.setImageResource(R.drawable.gallery_bottom_littleplanet_white);
                this.f8145cn.setText(R.string.little_planet);
                this.f8159e.f7516Q = 5;
                if (z) {
                    this.f8141cj.setImageResource(R.drawable.gallery_bottom_littleplanet_green);
                    this.f8090bU.setViewType(5);
                }
                this.f8090bU.m205b(5, z);
                break;
            case 6:
                this.f8141cj.setImageResource(R.drawable.gallery_bottom_crystalball_white);
                this.f8145cn.setText(R.string.crystal_ball);
                this.f8159e.f7516Q = 6;
                if (z) {
                    this.f8141cj.setImageResource(R.drawable.gallery_bottom_crystalball_green);
                    this.f8090bU.setViewType(6);
                }
                this.f8090bU.m205b(6, z);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K */
    public void m7218K(boolean z) {
        switch (this.f8159e.f7516Q) {
            case 2:
                if (z) {
                    this.f8141cj.setImageResource(R.drawable.gallery_bottom_perspective_green);
                    this.f8145cn.setTextColor(getResources().getColor(R.color.iconcolor));
                    break;
                } else {
                    this.f8141cj.setImageResource(R.drawable.gallery_bottom_perspective_white);
                    this.f8145cn.setTextColor(getResources().getColor(R.color.white));
                    break;
                }
            case 3:
                if (z) {
                    this.f8141cj.setImageResource(R.drawable.gallery_bottom_fisheye_green);
                    this.f8145cn.setTextColor(getResources().getColor(R.color.iconcolor));
                    break;
                } else {
                    this.f8141cj.setImageResource(R.drawable.gallery_bottom_fisheye_white);
                    this.f8145cn.setTextColor(getResources().getColor(R.color.white));
                    break;
                }
            case 5:
                if (z) {
                    this.f8141cj.setImageResource(R.drawable.gallery_bottom_littleplanet_green);
                    this.f8145cn.setTextColor(getResources().getColor(R.color.iconcolor));
                    break;
                } else {
                    this.f8141cj.setImageResource(R.drawable.gallery_bottom_littleplanet_white);
                    this.f8145cn.setTextColor(getResources().getColor(R.color.white));
                    break;
                }
            case 6:
                if (z) {
                    this.f8141cj.setImageResource(R.drawable.gallery_bottom_crystalball_green);
                    this.f8145cn.setTextColor(getResources().getColor(R.color.iconcolor));
                    break;
                } else {
                    this.f8141cj.setImageResource(R.drawable.gallery_bottom_crystalball_white);
                    this.f8145cn.setTextColor(getResources().getColor(R.color.white));
                    break;
                }
        }
    }

    /* renamed from: ar */
    protected void m7371ar() {
        m7307I(false);
    }

    /* renamed from: I */
    protected void m7307I(boolean z) {
        switch (this.f8159e.f7513N) {
            case 1:
                this.f8148cq.setText(R.string.gyro);
                if (z) {
                    this.f8144cm.setImageResource(R.drawable.gallery_bottom_gyro_green);
                } else {
                    this.f8144cm.setImageResource(R.drawable.gallery_bottom_gyro_white);
                }
                this.f8090bU.m197a(this.f8159e.f7513N, z);
                break;
            case 2:
                this.f8148cq.setText(R.string.drag);
                if (z) {
                    this.f8144cm.setImageResource(R.drawable.gallery_bottom_drag_green);
                } else {
                    this.f8144cm.setImageResource(R.drawable.gallery_bottom_drag_white);
                }
                this.f8090bU.m197a(this.f8159e.f7513N, z);
                break;
            case 3:
                this.f8148cq.setText(R.string.f7062vr);
                if (z) {
                    this.f8144cm.setImageResource(R.drawable.gallery_bottom_vr_green);
                } else {
                    this.f8144cm.setImageResource(R.drawable.gallery_bottom_vr_white);
                }
                this.f8090bU.m197a(this.f8159e.f7513N, z);
                break;
        }
        if (z) {
            this.f8148cq.setTextColor(getResources().getColor(R.color.iconcolor));
        } else {
            this.f8148cq.setTextColor(getResources().getColor(R.color.white));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public void m7219L(boolean z) {
        switch (this.f8159e.f7513N) {
            case 1:
                if (z) {
                    this.f8144cm.setImageResource(R.drawable.gallery_bottom_gyro_green);
                    this.f8148cq.setTextColor(getResources().getColor(R.color.iconcolor));
                    break;
                } else {
                    this.f8144cm.setImageResource(R.drawable.gallery_bottom_gyro_white);
                    this.f8148cq.setTextColor(getResources().getColor(R.color.white));
                    break;
                }
            case 2:
                if (z) {
                    this.f8144cm.setImageResource(R.drawable.gallery_bottom_drag_green);
                    this.f8148cq.setTextColor(getResources().getColor(R.color.iconcolor));
                    break;
                } else {
                    this.f8144cm.setImageResource(R.drawable.gallery_bottom_drag_white);
                    this.f8148cq.setTextColor(getResources().getColor(R.color.white));
                    break;
                }
            case 3:
                if (z) {
                    this.f8144cm.setImageResource(R.drawable.gallery_bottom_vr_green);
                    this.f8148cq.setTextColor(getResources().getColor(R.color.iconcolor));
                    break;
                } else {
                    this.f8144cm.setImageResource(R.drawable.gallery_bottom_vr_white);
                    this.f8148cq.setTextColor(getResources().getColor(R.color.white));
                    break;
                }
        }
    }

    /* renamed from: as */
    protected void m7372as() {
        this.f8159e.f7513N = 2;
        this.f8159e.f7515P = 1;
        this.f8159e.f7517R = 0;
        this.f8159e.f7516Q = 3;
        this.f8090bU.m194a();
        this.f8090bU.m196a(this.f8001K, this.f8002L);
        this.f8159e.f7523X = null;
    }

    /* renamed from: at */
    protected void m7373at() {
        this.f8141cj.setImageResource(R.drawable.gallery_bottom_fisheye_white);
        this.f8145cn.setText(R.string.fisheye);
        this.f8144cm.setImageResource(R.drawable.gallery_bottom_drag_white);
        this.f8148cq.setText(R.string.drag);
        m7217J(false);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f8122c.m8016v();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        if (!this.f8158d.f7478b.f7538al && this.f8037aU != null && this.f8041aY != null) {
            if (configuration.orientation == 2) {
                this.f8037aU.setVisibility(4);
                this.f8041aY.setVisibility(0);
            } else if (configuration.orientation == 1) {
                this.f8037aU.setVisibility(0);
                this.f8041aY.setVisibility(4);
            }
        }
        if (this.f8090bU != null && this.f8159e.f7513N != 3) {
            this.f8090bU.m196a(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        if (this.f8085bP != null && C1657b.m7077b(this.f8122c.m7974a())) {
            if (configuration.orientation == 2) {
                this.f8085bP.m7122a(displayMetrics.widthPixels, displayMetrics.heightPixels);
                this.f8085bP.m7121a(2);
            } else if (configuration.orientation == 1) {
                this.f8085bP.m7121a(1);
            }
            if (C0091o.m898b() == 3) {
                if (C0091o.m897a(this.f7998H)) {
                    m407a(9145);
                }
            } else {
                C0091o.m888a();
            }
            if (m7430p()) {
                if (this.f8159e.f7500A) {
                    this.f8114bs.m7001a();
                } else {
                    m7248bj();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bk */
    public void m7249bk() {
        switch (this.f8004N) {
            case 0:
                m7418l(0);
                this.f8004N = 0;
                this.f8158d.f7487k = 0;
                break;
            case 1:
                if (this.f8159e.f7513N != 3) {
                    m7418l(1);
                    this.f8004N = 1;
                    this.f8158d.f7487k = 1;
                    break;
                }
                break;
            case 8:
                m7418l(8);
                this.f8004N = 8;
                this.f8158d.f7487k = 8;
                break;
            case 9:
                if (this.f8159e.f7513N != 3) {
                    m7418l(9);
                    this.f8004N = 9;
                    this.f8158d.f7487k = 9;
                    break;
                }
                break;
        }
    }

    /* renamed from: bl */
    private void m7250bl() {
        this.f8111bp = new OrientationEventListener(this.f7998H) { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.36
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                if (i == -1) {
                    if (C1657b.m7077b(UI_PhoneGalleryController.this.f8122c.m7974a())) {
                        UI_PhoneGalleryController.this.m7249bk();
                        return;
                    }
                    return;
                }
                if (i > 350 || i < 10) {
                    if (UI_PhoneGalleryController.this.f8004N != 1) {
                        if (UI_PhoneGalleryController.this.f8123cA == null || UI_PhoneGalleryController.this.f8159e.f7513N != 3) {
                            UI_PhoneGalleryController.this.m7418l(1);
                            UI_PhoneGalleryController.this.f8004N = 1;
                            UI_PhoneGalleryController.this.f8158d.f7487k = 1;
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i > 80 && i < 100) {
                    if (UI_PhoneGalleryController.this.f8004N != 8 && C1657b.m7077b(UI_PhoneGalleryController.this.f8122c.m7974a())) {
                        UI_PhoneGalleryController.this.m7418l(8);
                        UI_PhoneGalleryController.this.f8004N = 8;
                        UI_PhoneGalleryController.this.f8158d.f7487k = 8;
                        return;
                    }
                    return;
                }
                if (i > 170 && i < 190) {
                    if (UI_PhoneGalleryController.this.f8004N != 9) {
                        if (UI_PhoneGalleryController.this.f8123cA == null || UI_PhoneGalleryController.this.f8159e.f7513N != 3) {
                            UI_PhoneGalleryController.this.m7418l(9);
                            UI_PhoneGalleryController.this.f8004N = 9;
                            UI_PhoneGalleryController.this.f8158d.f7487k = 9;
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i > 260 && i < 280 && UI_PhoneGalleryController.this.f8004N != 0 && C1657b.m7077b(UI_PhoneGalleryController.this.f8122c.m7974a())) {
                    UI_PhoneGalleryController.this.m7418l(0);
                    UI_PhoneGalleryController.this.f8004N = 0;
                    UI_PhoneGalleryController.this.f8158d.f7487k = 0;
                }
            }
        };
    }

    /* renamed from: l */
    public void m7418l(int i) {
        C0052d.m464a(this, i);
    }

    /* renamed from: au */
    protected void m7374au() {
        if (this.f7996E != null) {
            this.f7996E.release();
            this.f7996E = null;
        }
    }

    /* renamed from: av */
    protected void m7375av() {
        PowerManager powerManager = (PowerManager) getSystemService("power");
        if (this.f7996E != null) {
            m7374au();
        }
        this.f7996E = powerManager.newWakeLock(536870922, "Lexiconda");
        this.f7996E.acquire();
    }

    /* renamed from: aw */
    protected boolean m7376aw() {
        int m7102a = C1674a.m7102a(this.f8159e.f7540b, this.f8159e.f7557s);
        if (m7102a == -1 || this.f8159e.f7514O == 3) {
            return false;
        }
        return this.f8159e.f7540b.m530i(m7102a) && this.f8159e.f7540b.m531j(m7102a);
    }

    /* renamed from: ax */
    protected boolean m7377ax() {
        int m7103b = C1674a.m7103b(this.f8159e.f7540b, this.f8159e.f7557s);
        if (m7103b == -1 || this.f8159e.f7514O == 3) {
            return false;
        }
        return this.f8159e.f7540b.m530i(m7103b) && this.f8159e.f7540b.m531j(m7103b);
    }

    /* renamed from: ay */
    protected void m7378ay() {
        m7221a("deleteErrorFile", 3);
        m7410i(true);
        m7388c(getResources().getString(R.string.file_not_exist));
        this.f8158d.f7481e.m556a(this.f8159e.f7540b.m535n(this.f8159e.f7557s), String.valueOf(this.f8159e.f7540b.m519e(this.f8159e.f7557s)));
        m7339aA();
        m7408i();
    }

    /* renamed from: az */
    protected void m7379az() {
        C0088a.m821a(C0090a.m886a(this.f8122c).getInt("storeLocation", 0));
        switch (C0088a.m820a()) {
            case 0:
                this.f8159e.f7542d = 1;
                break;
            case 1:
                this.f8159e.f7542d = 2;
                break;
        }
        m7339aA();
    }

    /* renamed from: aA */
    protected void m7339aA() {
        this.f8158d.f7481e.m549a(this.f8158d.f7479c, this.f8158d.f7482f, this.f8158d.f7483g, this.f8158d.f7484h);
        switch (this.f8158d.f7478b.f7542d) {
            case 1:
                this.f8159e.f7526a.m507a(this.f8158d.f7481e.m550a(), this.f8158d.f7482f);
                this.f8159e.f7540b.m507a(this.f8158d.f7481e.m550a(), this.f8158d.f7482f);
                break;
            case 2:
                this.f8159e.f7526a.m507a(this.f8158d.f7481e.m550a(), this.f8158d.f7483g);
                this.f8159e.f7540b.m507a(this.f8158d.f7481e.m550a(), this.f8158d.f7483g);
                break;
            case 3:
                this.f8159e.f7526a.m507a(this.f8158d.f7481e.m550a(), this.f8158d.f7484h);
                this.f8159e.f7540b.m507a(this.f8158d.f7481e.m550a(), this.f8158d.f7484h);
                break;
        }
    }

    /* renamed from: aB */
    protected void m7340aB() {
        if (C1657b.m7077b(this.f8122c.m7974a())) {
            this.f8177w = true;
        }
        if (m7344aF() != null) {
            this.f8159e.f7528ab = m7344aF();
            if (m7257bs()) {
                if (!m7256br()) {
                    m7259bu();
                }
            } else {
                m7258bt();
                m7259bu();
            }
            m407a(9239);
        }
    }

    /* renamed from: aC */
    protected void m7341aC() {
        if (C0088a.m867t() && C0088a.m869u()) {
            m7342aD();
        }
        C0088a.m870v();
    }

    /* renamed from: aD */
    protected void m7342aD() {
        if (this.f8159e.f7544f == 6) {
            this.f8159e.f7563y = true;
            this.f8169o = false;
            return;
        }
        if (this.f8159e.f7544f == 1) {
            this.f8122c.m7997d();
        }
        C0088a.m821a(0);
        C0090a.m887b(this.f8122c).putInt("storeLocation", C0088a.m820a()).apply();
        if (m406a() == 0) {
            m7393d(getResources().getString(R.string.sdcard_removed));
        }
        C0091o.m899b(this);
        m7389c(false);
        m7382b(false);
        if (this.f8159e.f7542d == 2) {
            m7398e(false);
            if (C1657b.m7077b(this.f8122c.m7974a())) {
                m7410i(true);
                mo408a(8966, 0L);
                this.f8178x = true;
            }
        }
        this.f8159e.f7562x = true;
    }

    /* renamed from: a */
    protected void m7332a(String str, boolean z) {
        int m561c = this.f8158d.f7481e.m561c();
        this.f8013W = new ArrayList<>();
        this.f8014X = new ArrayList<>();
        for (int i = 0; i <= m561c / f7991G; i++) {
            this.f8013W.addAll(this.f8158d.f7481e.m551a("FileName", f7991G * i, ((i + 1) * f7991G) - 1));
            this.f8014X.addAll(this.f8158d.f7481e.m551a("FileSize", f7991G * i, ((i + 1) * f7991G) - 1));
        }
        if (!m7252bn()) {
            m7221a("no Phone Dcim Folder", 3);
            return;
        }
        if (!m7254bp()) {
            m7221a("no Phone Edit Folder", 3);
            return;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd_HHmmss");
        File[] listFiles = new File(str).listFiles();
        if (listFiles != null) {
            m7221a("scan scanForEditFiles:" + str + ", " + listFiles.length, 3);
            int length = listFiles.length;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < length) {
                    File file = listFiles[i3];
                    if (this.f8000J) {
                        m7221a("scan File:" + file.getAbsolutePath(), 3);
                    }
                    if (!m7337a(file) && z) {
                        if (this.f8000J) {
                            m7221a("scan File not added:" + file.getAbsolutePath(), 3);
                        }
                        if (m7268f(file.getName()) && file.getName().toLowerCase().endsWith("tmp")) {
                            file.delete();
                        } else if (m7272h(file.getName()) && file.length() > 0) {
                            if (file.getName().toLowerCase().endsWith("jpg")) {
                                int i4 = 0;
                                int i5 = 1;
                                try {
                                    ExifInterface exifInterface = new ExifInterface(file.getAbsolutePath());
                                    i4 = exifInterface.getAttributeInt("ImageWidth", 0);
                                    i5 = exifInterface.getAttributeInt("ImageLength", 0);
                                } catch (IOException e) {
                                    m7221a("scanForEditFiles Exception:" + e, 3);
                                }
                                m561c++;
                                if (this.f8000J) {
                                    m7221a("scan My Album Sample File add:" + file.getAbsolutePath(), 3);
                                }
                                this.f8158d.f7481e.m558a(file.getName(), file.getParent() + "/", file.length(), 0, 1, i4, i5, 0L, 0L, 0L, m561c, 0, true, true, true, true, false, false, false, false, true);
                            }
                        } else if (m7268f(file.getName()) && file.length() > 0) {
                            if (file.getName().toLowerCase().endsWith("jpg")) {
                                int i6 = 0;
                                int i7 = 1;
                                try {
                                    ExifInterface exifInterface2 = new ExifInterface(file.getAbsolutePath());
                                    i6 = exifInterface2.getAttributeInt("ImageWidth", 0);
                                    i7 = exifInterface2.getAttributeInt("ImageLength", 0);
                                } catch (IOException e2) {
                                    m7221a("scanForEditFiles Exception:" + e2, 3);
                                }
                                long lastModified = file.lastModified();
                                long currentTimeMillis = System.currentTimeMillis();
                                m561c++;
                                try {
                                    Date parse = simpleDateFormat.parse(file.getName().substring(4));
                                    lastModified = parse.getTime();
                                    currentTimeMillis = parse.getTime();
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                }
                                if (this.f8000J) {
                                    m7221a("scan File add:" + file.getAbsolutePath(), 3);
                                }
                                this.f8158d.f7481e.m558a(file.getName(), file.getParent() + "/", file.length(), 0, 1, i6, i7, 0L, lastModified, currentTimeMillis, m561c, 0, true, true, true, true, false, false, false, false, true);
                            } else if (file.getName().toLowerCase().endsWith("gif")) {
                                int i8 = -1;
                                int i9 = -1;
                                long lastModified2 = file.lastModified();
                                long currentTimeMillis2 = System.currentTimeMillis();
                                m561c++;
                                try {
                                    BitmapFactory.Options options = new BitmapFactory.Options();
                                    options.inJustDecodeBounds = true;
                                    BitmapFactory.decodeFile(file.getAbsolutePath(), options);
                                    i8 = options.outWidth;
                                    i9 = options.outHeight;
                                    Date parse2 = simpleDateFormat.parse(file.getName().substring(4));
                                    lastModified2 = parse2.getTime();
                                    currentTimeMillis2 = parse2.getTime();
                                } catch (ParseException e4) {
                                    e4.printStackTrace();
                                }
                                if (this.f8000J) {
                                    m7221a("scan File add:" + file.getAbsolutePath(), 3);
                                }
                                this.f8158d.f7481e.m558a(file.getName(), file.getParent() + "/", file.length(), 6, 1, i8, i9, 0L, lastModified2, currentTimeMillis2, m561c, 0, true, true, true, true, false, false, false, false, true);
                            }
                        }
                    }
                    i2 = i3 + 1;
                } else {
                    m7221a("scan scanForEditFiles Done", 3);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x01d2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01a0 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected int m7325a(java.lang.String r38, boolean r39, boolean r40) {
        /*
            Method dump skipped, instructions count: 1523
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController.m7325a(java.lang.String, boolean, boolean):int");
    }

    /* renamed from: f */
    private boolean m7268f(String str) {
        return str.matches("PIC_[0-9]{8}_[0-9]{6}.[a-zA-z0-9]{3}");
    }

    /* renamed from: g */
    private boolean m7270g(String str) {
        return str.equals("CV60_Photo_1.jpg") || str.equals("CV60_Photo_2.jpg") || str.equals("CV60_Photo_3.jpg") || str.equals("CV60_Video.mp4");
    }

    /* renamed from: h */
    private boolean m7272h(String str) {
        return str.equals("CV60_Edit_1.jpg") || str.equals("CV60_Edit_2.jpg") || str.equals("CV60_Edit_3.jpg");
    }

    /* renamed from: i */
    private boolean m7274i(String str) {
        String str2;
        int i;
        try {
            str2 = new ExifInterface(str).getAttribute("Model");
        } catch (IOException e) {
            e.printStackTrace();
            str2 = null;
        }
        if (str2 != null) {
            i = str2.toLowerCase().equals("cv60") ? 0 : -2;
        } else {
            i = -3;
        }
        if (i == 0) {
            return true;
        }
        m7221a("checkIfOur360Photo :" + str + ", " + i, 2);
        return false;
    }

    /* renamed from: j */
    private boolean m7276j(String str) {
        C0103c m955a = new C0101a().m955a(str);
        if (m955a.f765a == 0) {
            return m955a.f766b.matches("[0-9].[0-9]{2}.[0-9]{2}");
        }
        m7221a("sVersionData.lResult :" + str + ", " + m955a.f765a, 0);
        return false;
    }

    /* renamed from: a */
    protected boolean m7337a(File file) {
        for (int i = 0; i < this.f8013W.size(); i++) {
            if (this.f8000J) {
                m7221a("dbNameList:" + this.f8013W.get(i), 3);
                m7221a("file:" + file.getName(), 3);
            }
            if (file.getName().equals(this.f8013W.get(i))) {
                String valueOf = String.valueOf(file.length());
                if (this.f8000J) {
                    m7221a("dbSizeList:" + this.f8014X.get(i), 3);
                    m7221a("file size:" + file.length(), 3);
                }
                if (valueOf.equals(this.f8014X.get(i))) {
                    this.f8013W.remove(i);
                    this.f8014X.remove(i);
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: aE */
    protected void m7343aE() {
        m7221a("deleteNotExistFile:" + this.f8013W.size(), 3);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f8013W.size()) {
                m7221a("delete:" + this.f8013W.get(i2) + " " + i2, 3);
                this.f8158d.f7481e.m556a(this.f8013W.get(i2), this.f8014X.get(i2));
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: aF */
    protected String m7344aF() {
        return C0052d.m462a(this.f7998H);
    }

    /* renamed from: aG */
    protected void m7345aG() {
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
        intent.addFlags(2);
        startActivityForResult(intent, 42);
    }

    /* renamed from: bm */
    private boolean m7251bm() {
        return new File(new StringBuilder().append(C1658c.f7453a).append("/Android/data/com.huawei.cvIntl60/VideoThumbnail/").toString()).exists();
    }

    /* renamed from: bn */
    private boolean m7252bn() {
        return new File(new StringBuilder().append(C1658c.f7453a).append("/").toString(), "DCIM").exists();
    }

    /* renamed from: bo */
    private boolean m7253bo() {
        return new File(C1658c.f7455c).exists();
    }

    /* renamed from: bp */
    private boolean m7254bp() {
        return new File(C1658c.f7456d).exists();
    }

    /* renamed from: aH */
    protected void m7346aH() {
        if (this.f8159e.f7529ac == null) {
            if (m7344aF() != null) {
                this.f8159e.f7528ab = m7344aF();
                m7258bt();
                m7259bu();
                m407a(9239);
                return;
            }
            m7389c(false);
            m7382b(false);
            return;
        }
        if (m7344aF() != null) {
            this.f8159e.f7528ab = m7344aF();
            this.f8159e.f7529ac = this.f8159e.f7528ab.substring(this.f8159e.f7528ab.lastIndexOf("/") + 1, this.f8159e.f7528ab.lastIndexOf("/") + 10);
            if (m7257bs()) {
                if (!m7256br()) {
                    m7259bu();
                }
            } else {
                m7258bt();
                m7259bu();
            }
            m407a(9239);
        }
    }

    /* renamed from: aI */
    protected void m7347aI() {
        if (m7257bs()) {
            if (!m7256br()) {
                m7259bu();
            }
        } else {
            m7258bt();
            m7259bu();
        }
    }

    /* renamed from: bq */
    private boolean m7255bq() {
        return new File(new StringBuilder().append(this.f8159e.f7528ab).append("/Android/data/com.huawei.cvIntl60/VideoThumbnail/").toString()).exists();
    }

    /* renamed from: br */
    private boolean m7256br() {
        m7221a("sLocalGallery.szSdCardPath" + this.f8159e.f7528ab, 3);
        if (new File(this.f8159e.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM/CV60/").exists()) {
            return true;
        }
        m7221a("SD CV60 not exists", 3);
        return false;
    }

    /* renamed from: bs */
    private boolean m7257bs() {
        m7221a("sLocalGallery.szSdCardPath" + this.f8159e.f7528ab, 3);
        if (new File(this.f8159e.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM").exists()) {
            return true;
        }
        m7221a("SD DCIM not exists", 3);
        return false;
    }

    /* renamed from: k */
    private void m7278k(String str) {
        m7221a("CreateSDcardFolder" + str + ",Status:" + new File(str).mkdirs(), 2);
    }

    /* renamed from: bt */
    private void m7258bt() {
        m7278k(this.f8159e.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM");
    }

    /* renamed from: bu */
    private void m7259bu() {
        m7278k(this.f8159e.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM/CV60/");
    }

    /* renamed from: aJ */
    protected void m7348aJ() {
        this.f8159e.f7548j.clear();
        for (int i = 0; i < this.f8159e.f7551m.getCount(); i++) {
            if (this.f8159e.f7551m.m7063f(i)) {
                this.f8159e.f7548j.add(Integer.valueOf(i));
            }
        }
    }

    /* renamed from: aK */
    protected void m7349aK() {
        this.f8159e.f7550l.clear();
        for (int i = 0; i < this.f8159e.f7551m.getCount(); i++) {
            if (this.f8159e.f7551m.m7063f(i)) {
                this.f8159e.f7550l.add(Integer.valueOf(i));
            }
        }
    }

    /* renamed from: m */
    protected void m7420m(int i) {
        this.f8159e.f7550l.clear();
        this.f8159e.f7550l.add(Integer.valueOf(i));
    }

    /* renamed from: n */
    protected void m7423n(int i) {
        String str = this.f8159e.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM/CV60/" + this.f8158d.f7478b.f7540b.m535n(i);
        m7221a("deleteFile:" + str, 2);
        File file = new File(str);
        file.delete();
        C0069a.m641a(this.f7998H, file.getAbsolutePath());
    }

    /* renamed from: o */
    protected boolean m7428o(int i) {
        String m536o = this.f8159e.f7540b.m536o(i);
        String str = this.f8159e.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM/CV60/" + this.f8159e.f7540b.m535n(i);
        try {
            C0069a.m647c(m536o, str);
            C0069a.m641a(this.f7999I, str);
            return this.f8158d.f7478b.f7540b.m504a(i) != 1 || m7431p(i);
        } catch (Exception e) {
            m7221a("moveFileToSD fail!", 3);
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: p */
    protected boolean m7431p(int i) {
        String m534m = this.f8159e.f7540b.m534m(i);
        String str = this.f8159e.f7528ab + "/Android/data/com.huawei.cvIntl60/VideoThumbnail/" + C0069a.m649d(this.f8159e.f7540b.m535n(i));
        if (!m7255bq()) {
            new File(this.f8159e.f7528ab + "/Android/data/com.huawei.cvIntl60/VideoThumbnail/").mkdir();
        }
        try {
            C0069a.m647c(m534m, str);
            C0069a.m642a(m534m, this.f7998H);
            return true;
        } catch (Exception e) {
            m7221a("moveThumbnailToSD fail!", 3);
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: q */
    protected boolean m7434q(int i) {
        String m536o = this.f8159e.f7540b.m536o(i);
        String str = C1658c.f7455c + this.f8159e.f7540b.m535n(i);
        try {
            C0069a.m647c(m536o, str);
            C0069a.m641a(this.f7999I, str);
            return this.f8158d.f7478b.f7540b.m504a(i) != 1 || m7437r(i);
        } catch (Exception e) {
            m7221a("moveSDFileToPhone fail!", 3);
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: r */
    protected boolean m7437r(int i) {
        String m534m = this.f8159e.f7540b.m534m(i);
        String str = C1658c.f7453a + "/Android/data/com.huawei.cvIntl60/VideoThumbnail/" + C0069a.m649d(this.f8159e.f7540b.m535n(i));
        if (!m7251bm()) {
            new File(C1658c.f7453a + "/Android/data/com.huawei.cvIntl60/VideoThumbnail/").mkdir();
        }
        try {
            C0069a.m647c(m534m, str);
            C0069a.m642a(m534m, this.f7998H);
            return true;
        } catch (Exception e) {
            m7221a("moveSDThumbnailToPhone fail!", 3);
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: aL */
    protected void m7350aL() {
        boolean z;
        boolean z2;
        boolean z3;
        m7221a("Move SDCard File To Phone", 4);
        this.f8159e.f7563y = false;
        if (m7252bn()) {
            if (!m7253bo()) {
                new File(C1658c.f7455c).mkdir();
            }
            if (this.f8159e.f7550l.size() != 0) {
                z = false;
                z2 = true;
                for (int i = 0; i < this.f8159e.f7550l.size(); i++) {
                    m7221a("Move:" + this.f8159e.f7540b.m535n(this.f8159e.f7550l.get(i).intValue()), 3);
                    if (this.f8159e.f7563y) {
                        m7221a("Move canceled", 3);
                        if (z) {
                            this.f8158d.f7481e.m549a(this.f8158d.f7479c, this.f8158d.f7482f, this.f8158d.f7483g, this.f8158d.f7484h);
                        }
                        if (this.f8122c.m7974a() == 1040) {
                            m412b(20490);
                            return;
                        } else {
                            m412b(20496);
                            return;
                        }
                    }
                    long m519e = this.f8159e.f7540b.m519e(this.f8159e.f7550l.get(i).intValue());
                    m7221a("FileSize: " + m519e, 4);
                    if (this.f8158d.f7478b.f7540b.m504a(this.f8159e.f7550l.get(i).intValue()) == 1) {
                        m519e += new File(this.f8159e.f7540b.m534m(this.f8159e.f7550l.get(i).intValue())).length();
                        m7221a("FileSize + thm: " + m519e, 4);
                    }
                    long m461a = C0052d.m461a(C1658c.f7453a, -1);
                    if (m461a == -1) {
                        m7221a("dlAvailableSize error", 3);
                        this.f8159e.f7563y = true;
                    } else if (m461a < m519e || m461a < 52428800) {
                        m7221a("Not enough storage space on phone memory: " + m461a, 3);
                        z2 = false;
                    } else {
                        m7221a("Moving file", 4);
                        if (this.f8159e.f7557s >= this.f8159e.f7540b.m518e() - 1) {
                            C1663e c1663e = this.f8159e;
                            c1663e.f7557s--;
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (m7434q(this.f8159e.f7550l.get(i).intValue())) {
                            m7221a("Move file success:" + this.f8159e.f7540b.m535n(this.f8159e.f7550l.get(i).intValue()), 3);
                            m7423n(this.f8159e.f7550l.get(i).intValue());
                            m7221a("Delete file", 4);
                            this.f8158d.f7481e.m555a(this.f8159e.f7540b.m540s(this.f8159e.f7550l.get(i).intValue()), this.f8159e.f7540b.m541t(this.f8159e.f7550l.get(i).intValue()), false, C1658c.f7455c);
                            m7221a("DB added", 4);
                            z = true;
                        } else {
                            m7221a("Move file fail:" + this.f8159e.f7540b.m535n(this.f8159e.f7550l.get(i).intValue()), 3);
                            if (z3) {
                                this.f8159e.f7557s++;
                            }
                        }
                    }
                }
            } else {
                z = false;
                z2 = true;
            }
            if (z) {
                this.f8158d.f7481e.m549a(this.f8158d.f7479c, this.f8158d.f7482f, this.f8158d.f7483g, this.f8158d.f7484h);
            }
            if (z2) {
                m7221a("All move done, success:" + z2, 4);
                if (this.f8122c.m7974a() == 1040) {
                    m412b(20490);
                    return;
                } else {
                    m412b(20496);
                    return;
                }
            }
            m7221a("All move done, success:" + z2, 4);
            if (this.f8122c.m7974a() == 1040) {
                m412b(20491);
                return;
            } else {
                m412b(20497);
                return;
            }
        }
        new File(C1658c.f7453a + "/DCIM/").mkdir();
    }

    /* renamed from: aM */
    protected void m7351aM() {
        m7221a("checkPermissionAndFolders", 3);
        if (this.f8159e.f7528ab == null) {
            this.f8159e.f7528ab = m7344aF();
        }
        if (this.f8159e.f7528ab != null) {
            if (!m7257bs()) {
                if (!m7256br()) {
                    m7259bu();
                }
            } else {
                m7258bt();
                m7259bu();
            }
            SharedPreferences.Editor m887b = C0090a.m887b(this.f8122c);
            m887b.putString("objTreeUri", this.f8159e.f7528ab).apply();
            String str = this.f8159e.f7528ab;
            this.f8159e.f7529ac = str.substring(str.lastIndexOf("/") + 1, str.lastIndexOf("/") + 10);
            m887b.putString("szSDCardId", this.f8159e.f7529ac).apply();
        }
        m407a(9239);
    }

    /* renamed from: aN */
    protected void m7352aN() {
        boolean z;
        boolean z2;
        boolean z3;
        m7221a("Move Phone File To SDCard", 4);
        this.f8159e.f7563y = false;
        if (m7257bs()) {
            if (!m7256br()) {
                m7259bu();
            }
        } else {
            m7258bt();
            m7259bu();
        }
        if (this.f8159e.f7550l.size() != 0) {
            z = false;
            z2 = true;
            for (int i = 0; i < this.f8159e.f7550l.size(); i++) {
                m7221a("Move:" + this.f8159e.f7540b.m535n(this.f8159e.f7550l.get(i).intValue()), 3);
                if (this.f8159e.f7563y) {
                    m7221a("Move canceled.", 3);
                    if (z) {
                        this.f8158d.f7481e.m549a(this.f8158d.f7479c, this.f8158d.f7482f, this.f8158d.f7483g, this.f8158d.f7484h);
                    }
                    if (this.f8122c.m7974a() == 1040) {
                        m412b(20487);
                        return;
                    } else {
                        m412b(20493);
                        return;
                    }
                }
                long m519e = this.f8159e.f7540b.m519e(this.f8159e.f7550l.get(i).intValue());
                m7221a("FileSize: " + m519e, 4);
                if (this.f8158d.f7478b.f7540b.m504a(this.f8159e.f7550l.get(i).intValue()) == 1) {
                    m519e += new File(this.f8159e.f7540b.m534m(this.f8159e.f7550l.get(i).intValue())).length();
                    m7221a("FileSize + thm: " + m519e, 4);
                }
                long m461a = C0052d.m461a(this.f8159e.f7528ab, -1);
                if (m461a == -1) {
                    m7221a("dlAvailableSize error", 3);
                    this.f8159e.f7563y = true;
                } else if (m461a < m519e || m461a < 52428800) {
                    m7221a("Not enough storage space on SDCard memory: " + m461a, 3);
                    z2 = false;
                } else {
                    m7221a("Moving file", 4);
                    if (this.f8159e.f7557s >= this.f8159e.f7540b.m518e() - 1) {
                        C1663e c1663e = this.f8159e;
                        c1663e.f7557s--;
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (m7428o(this.f8159e.f7550l.get(i).intValue())) {
                        m7221a("Move file success:" + this.f8159e.f7540b.m535n(this.f8159e.f7550l.get(i).intValue()), 3);
                        C0069a.m642a(this.f8159e.f7540b.m536o(this.f8159e.f7550l.get(i).intValue()), this.f7998H);
                        m7221a("Delete file", 4);
                        this.f8158d.f7481e.m555a(this.f8159e.f7540b.m540s(this.f8159e.f7550l.get(i).intValue()), this.f8159e.f7540b.m541t(this.f8159e.f7550l.get(i).intValue()), true, this.f8158d.f7478b.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM/CV60/");
                        m7221a("DB added", 4);
                        z = true;
                    } else {
                        m7221a("Move file fail:" + this.f8159e.f7540b.m535n(this.f8159e.f7550l.get(i).intValue()), 3);
                        if (z3) {
                            this.f8159e.f7557s++;
                        }
                    }
                }
            }
        } else {
            z = false;
            z2 = true;
        }
        if (z) {
            this.f8158d.f7481e.m549a(this.f8158d.f7479c, this.f8158d.f7482f, this.f8158d.f7483g, this.f8158d.f7484h);
        }
        if (z2) {
            m7221a("All move done, success:" + z2, 4);
            if (this.f8122c.m7974a() == 1040) {
                m412b(20487);
                return;
            } else {
                m412b(20493);
                return;
            }
        }
        m7221a("All move done, success:" + z2, 4);
        if (this.f8122c.m7974a() == 1040) {
            m412b(20488);
        } else {
            m412b(20494);
        }
    }

    /* renamed from: aO */
    protected List<Integer> m7353aO() {
        ArrayList arrayList = new ArrayList();
        for (ApplicationInfo applicationInfo : getPackageManager().getInstalledApplications(0)) {
            if (applicationInfo.packageName.equals("com.google.android.youtube")) {
                arrayList.add(0);
            } else if (applicationInfo.packageName.equals("com.facebook.katana")) {
                arrayList.add(1);
            } else if (!applicationInfo.packageName.equals("com.sina.weibo") && !applicationInfo.packageName.equals("com.tencent.mm") && !applicationInfo.packageName.equals("com.tencent.mobileqq")) {
                if (applicationInfo.packageName.equals("com.twitter.android")) {
                    arrayList.add(9);
                } else if (!applicationInfo.packageName.equals("com.qzone")) {
                    if (applicationInfo.packageName.equals("jp.naver.line.android")) {
                        arrayList.add(7);
                    } else if (applicationInfo.packageName.equals("com.whatsapp")) {
                        arrayList.add(8);
                    } else if (applicationInfo.packageName.equals("com.google.android.apps.photos")) {
                        arrayList.add(10);
                    } else if (!applicationInfo.packageName.equals("com.youku.phone")) {
                        if (applicationInfo.packageName.equals("com.vkontakte.android")) {
                            arrayList.add(12);
                        } else if (applicationInfo.packageName.equals("com.snapchat.android")) {
                            arrayList.add(13);
                        } else if (applicationInfo.packageName.equals("com.instagram.android")) {
                            arrayList.add(14);
                        }
                    }
                }
            }
        }
        if (this.f8159e.f7542d != 3 && arrayList.contains(5) && !arrayList.contains(4)) {
            arrayList.remove((Object) 5);
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: l */
    private Cursor m7279l(String str) {
        String[] strArr = {"_id"};
        Uri contentUri = MediaStore.Files.getContentUri("external");
        m7221a("CURSOR TEST changeCursor: " + contentUri.toString(), 3);
        return getContentResolver().query(contentUri, strArr, "_data LIKE ?", new String[]{str}, null);
    }

    /* renamed from: m */
    private Uri m7281m(String str) {
        Uri contentUri;
        Cursor query;
        long j;
        m7221a("CURSOR TEST getUriFromPath: " + str, 3);
        String[] strArr = {"_id"};
        String m646c = C0069a.m646c(str);
        if (m646c != null) {
            if (m646c.equals("jpg") || m646c.equals("gif")) {
                contentUri = MediaStore.Images.Media.getContentUri("external");
                query = getContentResolver().query(contentUri, strArr, "_data LIKE ?", new String[]{str}, null);
            } else {
                contentUri = MediaStore.Video.Media.getContentUri("external");
                query = getContentResolver().query(contentUri, strArr, "_data LIKE ?", new String[]{str}, null);
            }
        } else {
            contentUri = MediaStore.Video.Media.getContentUri("external");
            query = getContentResolver().query(contentUri, strArr, "_data LIKE ?", new String[]{str}, null);
        }
        if (query.getCount() == 0) {
            contentUri = MediaStore.Files.getContentUri("external");
            query.close();
            query = m7279l(str);
        }
        query.moveToFirst();
        try {
            j = query.getLong(query.getColumnIndex(strArr[0]));
        } catch (CursorIndexOutOfBoundsException e) {
            e.printStackTrace();
            j = -1;
        }
        query.close();
        m7221a("CURSOR TEST getUriFromPath: " + contentUri.toString() + "/" + j, 3);
        return Uri.parse(contentUri.toString() + "/" + j);
    }

    /* renamed from: c */
    protected void m7386c(int i, ArrayList<File> arrayList) {
        int i2 = Build.VERSION.SDK_INT;
        C0084b c0084b = new C0084b();
        c0084b.f673m = new ArrayList<>();
        c0084b.f674n = new ArrayList<>();
        c0084b.f673m.clear();
        c0084b.f674n.clear();
        c0084b.f671k = new ArrayList<>();
        c0084b.f672l = new ArrayList<>();
        c0084b.f671k.clear();
        c0084b.f672l.clear();
        if (m7285t(i)) {
        }
        c0084b.f663c = 12288;
        if (i == 0) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                if (this.f8159e.f7540b.m532k(this.f8159e.f7548j.get(i3).intValue())) {
                    Toast.makeText(this, getResources().getString(R.string.youtube_does_not_support_photo), 0).show();
                    this.f8159e.f7548j.clear();
                    return;
                }
            }
        }
        if (arrayList.size() > 1) {
            c0084b.f662b = 4101;
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                c0084b.f673m.add(arrayList.get(i4).getPath());
                c0084b.f674n.add(m7281m(arrayList.get(i4).getPath()));
            }
        } else if (this.f8159e.f7540b.m533l(this.f8159e.f7548j.get(0).intValue())) {
            c0084b.f662b = InputDeviceCompat.SOURCE_TOUCHSCREEN;
            c0084b.f669i = arrayList.get(0).getPath();
            c0084b.f672l.add(m7281m(arrayList.get(0).getPath()));
        } else {
            c0084b.f662b = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
            c0084b.f668h = arrayList.get(0).getPath();
            if (i2 >= 24) {
                c0084b.f674n.add(m7281m(arrayList.get(0).getPath()));
            } else {
                c0084b.f674n.add(Uri.fromFile(arrayList.get(0)));
            }
        }
        switch (i) {
            case 0:
                c0084b.f661a = 8193;
                break;
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
            case 6:
                c0084b.f661a = 8198;
                break;
            case 7:
                m407a(8969);
                return;
            case 8:
                c0084b.f661a = 8202;
                break;
            case 9:
                c0084b.f661a = 8195;
                break;
            case 10:
                c0084b.f661a = 8206;
                break;
            case 12:
                c0084b.f661a = 8204;
                break;
            case 13:
                c0084b.f661a = 8205;
                break;
            case 14:
                c0084b.f661a = 8196;
                break;
        }
        this.f8075bF.m803a(c0084b, this.f7999I);
    }

    /* renamed from: d */
    protected void m7392d(int i, ArrayList<File> arrayList) {
        int i2 = Build.VERSION.SDK_INT;
        C0084b c0084b = new C0084b();
        c0084b.f673m = new ArrayList<>();
        c0084b.f674n = new ArrayList<>();
        c0084b.f673m.clear();
        c0084b.f674n.clear();
        c0084b.f663c = 12288;
        if (arrayList.size() > 1) {
            c0084b.f662b = 4101;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                c0084b.f673m.add(arrayList.get(i3).getPath());
                c0084b.f674n.add(m7281m(arrayList.get(i3).getPath()));
            }
        } else {
            c0084b.f662b = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
            c0084b.f668h = arrayList.get(0).getPath();
            if (i2 >= 24) {
                c0084b.f674n.add(m7281m(arrayList.get(0).getPath()));
            } else {
                c0084b.f674n.add(Uri.fromFile(arrayList.get(0)));
            }
        }
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
            case 6:
                c0084b.f661a = 8198;
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
            case 10:
                c0084b.f661a = 8206;
                break;
            case 11:
                c0084b.f661a = 8203;
                break;
            case 12:
                c0084b.f661a = 8204;
                break;
            case 13:
                c0084b.f661a = 8205;
                break;
            case 14:
                c0084b.f661a = 8196;
                break;
        }
        this.f8075bF.m803a(c0084b, this.f7999I);
    }

    /* renamed from: e */
    protected void m7397e(String str) {
        ArrayList arrayList = new ArrayList();
        File file = new File(str);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String format = new DecimalFormat("#.##").format((file.length() / 1024.0d) / 1024.0d);
        String name = file.getName();
        long lastModified = file.lastModified();
        arrayList.add(getResources().getString(R.string.name) + name.substring(0, name.lastIndexOf(".")));
        arrayList.add(getResources().getString(R.string.time) + simpleDateFormat.format(Long.valueOf(lastModified)));
        arrayList.add(getResources().getString(R.string.wide) + options.outWidth);
        arrayList.add(getResources().getString(R.string.height) + options.outHeight);
        arrayList.add(getResources().getString(R.string.size) + format + "MB");
        arrayList.add(getResources().getString(R.string.path) + file.getAbsolutePath());
        C0091o.m895a(this.f7998H, true, true, getResources().getString(R.string.file_information), (ArrayList<String>) arrayList, getResources().getString(R.string.dialog_option_ok), 0);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0168. Please report as an issue. */
    /* renamed from: c */
    protected void m7387c(int i, boolean z) {
        String str;
        String str2;
        String str3 = null;
        ArrayList arrayList = new ArrayList();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String format = new DecimalFormat("#.##").format((this.f8159e.f7540b.m519e(i) / 1024.0d) / 1024.0d);
        String m535n = this.f8159e.f7540b.m535n(i);
        long m525g = this.f8159e.f7540b.m525g(i);
        arrayList.add(getResources().getString(R.string.name) + " " + m535n.substring(0, m535n.lastIndexOf(".")));
        arrayList.add(getResources().getString(R.string.time) + " " + simpleDateFormat.format(Long.valueOf(m525g)));
        arrayList.add(getResources().getString(R.string.wide) + " " + this.f8159e.f7540b.m509b(i));
        arrayList.add(getResources().getString(R.string.height) + " " + this.f8159e.f7540b.m512c(i));
        arrayList.add(getResources().getString(R.string.size) + " " + format + "MB");
        arrayList.add(getResources().getString(R.string.path) + " " + this.f8159e.f7540b.m536o(i));
        if (z) {
            try {
                ExifInterface exifInterface = new ExifInterface(this.f8159e.f7540b.m536o(i));
                str2 = exifInterface.getAttribute("ExposureBiasValue");
                try {
                    int parseInt = Integer.parseInt(exifInterface.getAttribute("LightSource"));
                    if (str2 == null) {
                        str2 = "0";
                    } else if (str2.contains("/")) {
                        String[] split = str2.split("/");
                        str2 = "" + (Double.parseDouble(split[0]) / Double.parseDouble(split[1]));
                    }
                    switch (parseInt) {
                        case 0:
                            str = getResources().getString(R.string.white_balance_auto);
                            str3 = exifInterface.getAttribute("ISOSpeedRatings");
                            break;
                        case 1:
                            str = getResources().getString(R.string.white_balance_sunny);
                            str3 = exifInterface.getAttribute("ISOSpeedRatings");
                            break;
                        case 3:
                            str = getResources().getString(R.string.white_balance_tungsten);
                            str3 = exifInterface.getAttribute("ISOSpeedRatings");
                            break;
                        case 10:
                            str = getResources().getString(R.string.white_balance_cloudy);
                            str3 = exifInterface.getAttribute("ISOSpeedRatings");
                            break;
                        case 14:
                            str = getResources().getString(R.string.white_balance_fluorescent);
                            str3 = exifInterface.getAttribute("ISOSpeedRatings");
                            break;
                        default:
                            str = getResources().getString(R.string.white_balance_auto);
                            try {
                                m7221a("TAG_LIGHT_SOURCE get:" + parseInt, 2);
                                str3 = exifInterface.getAttribute("ISOSpeedRatings");
                            } catch (IOException e) {
                                e = e;
                                e.printStackTrace();
                                arrayList.add(getResources().getString(R.string.f7060ev) + " " + str2);
                                arrayList.add(getResources().getString(R.string.f7063wb) + " " + str);
                                arrayList.add(getResources().getString(R.string.iso) + " " + str3);
                                C0091o.m895a(this.f7998H, true, true, getResources().getString(R.string.file_information), (ArrayList<String>) arrayList, getResources().getString(R.string.dialog_option_ok), 0);
                            }
                    }
                } catch (IOException e2) {
                    e = e2;
                    str = null;
                }
            } catch (IOException e3) {
                e = e3;
                str = null;
                str2 = null;
            }
            arrayList.add(getResources().getString(R.string.f7060ev) + " " + str2);
            arrayList.add(getResources().getString(R.string.f7063wb) + " " + str);
            arrayList.add(getResources().getString(R.string.iso) + " " + str3);
        }
        C0091o.m895a(this.f7998H, true, true, getResources().getString(R.string.file_information), (ArrayList<String>) arrayList, getResources().getString(R.string.dialog_option_ok), 0);
    }

    /* renamed from: s */
    protected void m7439s(int i) {
        ArrayList arrayList = new ArrayList();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        long m519e = this.f8159e.f7540b.m519e(i);
        String format = decimalFormat.format((m519e / 1024.0d) / 1024.0d);
        String m535n = this.f8159e.f7540b.m535n(i);
        int m515d = this.f8159e.f7540b.m515d(i);
        String format2 = String.format("%02d:%02d", Integer.valueOf(m515d / 60), Integer.valueOf(m515d % 60));
        long m525g = this.f8159e.f7540b.m525g(i);
        arrayList.add(getResources().getString(R.string.name) + " " + m535n.substring(0, m535n.lastIndexOf(".")));
        arrayList.add(getResources().getString(R.string.time) + " " + simpleDateFormat.format(Long.valueOf(m525g)));
        arrayList.add(getResources().getString(R.string.wide) + " " + this.f8159e.f7540b.m509b(i));
        arrayList.add(getResources().getString(R.string.height) + " " + this.f8159e.f7540b.m512c(i));
        if ((m519e / 1024) / 1024 < 1) {
            arrayList.add(getResources().getString(R.string.size) + " " + decimalFormat.format(m519e / 1024.0d) + "KB");
        } else {
            arrayList.add(getResources().getString(R.string.size) + " " + format + "MB");
        }
        arrayList.add(getResources().getString(R.string.path) + " " + this.f8159e.f7540b.m536o(i));
        arrayList.add(getResources().getString(R.string.file_type) + " " + m535n.substring(m535n.lastIndexOf(".") + 1, m535n.length()));
        arrayList.add(getResources().getString(R.string.duration) + " " + format2);
        C0091o.m895a(this.f7998H, true, true, getResources().getString(R.string.file_information), (ArrayList<String>) arrayList, getResources().getString(R.string.dialog_option_ok), 0);
    }
}
