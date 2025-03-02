package ui_Controller.ui_LaunchScreen;

import GeneralFunction.C0052d;
import GeneralFunction.C0079k;
import GeneralFunction.C0081l;
import GeneralFunction.C0091o;
import GeneralFunction.DialogFragmentC0071h;
import GeneralFunction.Player.player.SphericalVideoPlayer;
import GeneralFunction.p001a.ActivityC0044a;
import GeneralFunction.p016m.C0088a;
import GeneralFunction.p017n.C0090a;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.support.v4.app.ActivityCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.huawei.cvIntl60.R;
import java.util.ArrayList;
import java.util.Calendar;
import p026a.p032c.C0121a;
import ui_Controller.p109a.C1658c;
import ui_Controller.p110b.C1662d;
import ui_Controller.ui_Setting.UI_SettingUserInstructions;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* loaded from: classes.dex */
public class UI_LaunchScreenController extends ActivityC0044a {

    /* renamed from: g */
    protected ImageView f8296g;

    /* renamed from: x */
    private C1662d f8313x;

    /* renamed from: b */
    protected UI_ModeMain f8291b = null;

    /* renamed from: h */
    private int f8297h = 0;

    /* renamed from: i */
    private int f8298i = 0;

    /* renamed from: j */
    private int f8299j = -1;

    /* renamed from: c */
    protected ImageView f8292c = null;

    /* renamed from: k */
    private C1760a f8300k = null;

    /* renamed from: l */
    private OrientationEventListener f8301l = null;

    /* renamed from: m */
    private Context f8302m = this;

    /* renamed from: n */
    private LinearLayout f8303n = null;

    /* renamed from: o */
    private WebView f8304o = null;

    /* renamed from: p */
    private Button f8305p = null;

    /* renamed from: q */
    private Button f8306q = null;

    /* renamed from: d */
    protected LinearLayout f8293d = null;

    /* renamed from: e */
    protected SphericalVideoPlayer f8294e = null;

    /* renamed from: r */
    private ArrayList<String> f8307r = null;

    /* renamed from: s */
    private int f8308s = 0;

    /* renamed from: t */
    private LinearLayout f8309t = null;

    /* renamed from: u */
    private TextView f8310u = null;

    /* renamed from: v */
    private TextView f8311v = null;

    /* renamed from: w */
    private Button f8312w = null;

    /* renamed from: f */
    protected Bitmap f8295f = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7547a(String str, int i) {
        C0052d.m465a("UI_LaunchScreenController", str, i);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo408a(int i, long j) {
        if (this.f8291b != null) {
            this.f8291b.m7981a(new C0121a(i), j);
        } else {
            m7547a("SendUiMsg error!! Msg=" + i, 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo410a(C0121a c0121a, long j) {
        if (this.f8291b != null) {
            this.f8291b.m7981a(c0121a, j);
        } else {
            m7547a("SendUiMsg error!! MsgEx=" + c0121a.m1208b().what, 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo413b(int i, long j) {
        if (this.f8291b != null) {
            this.f8291b.m7987b(i, j);
        } else {
            m7547a("UI_SendAidMsg error!!", 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public boolean mo417b() {
        return this.f8299j == 2;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f8291b.m7984a(1L)) {
            mo408a(32768, 0L);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo416b(Message message) {
        m7547a("AidServer_Handler:0x" + Integer.toHexString(message.what), 3);
        this.f8300k.m7576d(message);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f8291b = (UI_ModeMain) getApplication();
        this.f8291b.m8016v();
        this.f8313x = C1662d.m7093a();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f8297h = displayMetrics.widthPixels;
        this.f8298i = displayMetrics.heightPixels;
        if (this.f8291b.m8009n() && (this.f8291b.m8017w() || this.f8291b.m7993c() != null)) {
            m7547a("Skip launch onCreate in special case:" + this.f8291b.m7993c().m406a(), 2);
            if (this.f8291b.m7993c().m406a() != 3) {
                finish();
                return;
            }
        }
        this.f8291b.m8010o();
        this.f8299j = 2;
        setContentView(R.layout.ui_launchscreen_land);
        this.f8300k = new C1760a(this);
        this.f8291b.m7977a(3088, this);
        m7553u();
        mo408a(12033, 0L);
        String str = "";
        try {
            str = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        m7547a("APP ver. info: " + ("v" + str + " (" + getResources().getString(R.string.internal_app_version) + ")"), 3);
        m7547a("Device info: " + Build.MANUFACTURER + ", " + Build.MODEL + ", " + Build.PRODUCT + ", " + Build.VERSION.RELEASE, 3);
        m7550r();
    }

    /* renamed from: r */
    private void m7550r() {
        String m788a = C0081l.m788a("ro.config.hw_notch_size", "");
        if (m788a.isEmpty()) {
            this.f8313x.m7095a(false);
        } else {
            m7547a("checkNeedGap:" + m788a, 1);
            this.f8313x.m7095a(true);
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f8291b.m7974a() == 3104) {
            this.f8294e.start();
        }
        C0121a c0121a = new C0121a(12034);
        c0121a.m1200a("mode", 3072);
        mo410a(c0121a, 0L);
        this.f8301l.enable();
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.f8291b.m7974a() == 3104) {
            this.f8294e.pause();
        }
        C0121a c0121a = new C0121a(12035);
        c0121a.m1200a("mode", 3072);
        mo410a(c0121a, 0L);
        this.f8301l.disable();
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onStop() {
        super.onStop();
        C0121a c0121a = new C0121a(12036);
        c0121a.m1200a("mode", 3072);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        C0121a c0121a = new C0121a(12037);
        c0121a.m1200a("mode", 3072);
        mo410a(c0121a, 0L);
        if (this.f8292c != null) {
            this.f8292c.setImageResource(0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo411a(Message message) {
        this.f8300k.m7573a(message);
    }

    /* renamed from: c */
    protected void m7556c() {
        this.f8292c = (ImageView) findViewById(R.id.IV_ui_launchImage);
        this.f8292c.setImageResource(R.drawable.splash_screen_huawei);
    }

    /* renamed from: d */
    protected void m7558d() {
        this.f8296g = (ImageView) findViewById(R.id.IV_VideoTransFrame);
        this.f8296g.setImageResource(R.drawable.splash_screen_huawei);
        this.f8309t = (LinearLayout) findViewById(R.id.LL_VideoCover);
        this.f8310u = (TextView) findViewById(R.id.TV_VideoCover_Title);
        this.f8311v = (TextView) findViewById(R.id.TV_VideoCover_Dialog);
        this.f8312w = (Button) findViewById(R.id.BT_VideoCover);
        this.f8309t.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_LaunchScreen.UI_LaunchScreenController.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f8309t.setVisibility(4);
        this.f8310u.setTextSize(C0079k.m784a(this, this.f8298i / 30));
        this.f8310u.setText("");
        this.f8311v.setText(getResources().getString(R.string.videocover_dialog1));
        this.f8312w.setBackgroundResource(R.drawable.system_go);
        this.f8312w.setText(getResources().getString(R.string.lunch_video_button_go));
        this.f8312w.setTextColor(getResources().getColor(R.color.white));
        this.f8312w.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_LaunchScreen.UI_LaunchScreenController.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LaunchScreenController.this.m7554a(false);
                UI_LaunchScreenController.this.m7561g();
                UI_LaunchScreenController.this.m407a(10503);
            }
        });
    }

    /* renamed from: s */
    private void m7551s() {
        switch (this.f8308s) {
            case 0:
                this.f8311v.setText(getResources().getString(R.string.videocover_dialog1));
                break;
            case 1:
                this.f8311v.setText(getResources().getString(R.string.videocover_dialog2));
                break;
            case 2:
                this.f8311v.setText(getResources().getString(R.string.videocover_dialog3));
                break;
        }
    }

    /* renamed from: a */
    protected void m7554a(boolean z) {
        if (z) {
            this.f8309t.setVisibility(0);
        } else {
            this.f8309t.setVisibility(4);
        }
    }

    /* renamed from: e */
    protected void m7559e() {
        this.f8307r = new ArrayList<>();
        this.f8307r.add(C1658c.f7465m);
        this.f8307r.add(C1658c.f7466n);
        this.f8307r.add(C1658c.f7467o);
        this.f8293d = (LinearLayout) findViewById(R.id.LL_ui_VideoPlayer);
        this.f8294e = (SphericalVideoPlayer) findViewById(R.id.TV_ui_VideoPlayer);
        this.f8293d.setVisibility(4);
        this.f8294e.setPlayerStatusListener(new SphericalVideoPlayer.InterfaceC0032f() { // from class: ui_Controller.ui_LaunchScreen.UI_LaunchScreenController.3
            @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0032f
            /* renamed from: a */
            public void mo233a(int i) {
                UI_LaunchScreenController.this.m7547a("ReturnVideoStatus " + i, 3);
                C0121a c0121a = new C0121a(10502);
                c0121a.m1200a("360PlayerStatus", i);
                UI_LaunchScreenController.this.mo410a(c0121a, 0L);
            }
        });
    }

    /* renamed from: f */
    protected void m7560f() {
        this.f8293d.setVisibility(0);
        this.f8294e.m211f();
        this.f8294e.m201a(false);
        this.f8294e.setEnable(true);
        this.f8294e.setVideoAutoPlay(true);
        this.f8294e.m206b(false);
        this.f8294e.setPlayerMode(1);
        if (this.f8308s == 2) {
            this.f8294e.setViewType(5);
        } else {
            this.f8294e.setViewType(3);
        }
        this.f8294e.setVideoFilePath(this.f8307r.get(this.f8308s));
        this.f8294e.setInteractiveMode(2);
        this.f8294e.m212g();
    }

    /* renamed from: g */
    protected void m7561g() {
        this.f8293d.setVisibility(4);
        this.f8294e.m216k();
        this.f8294e.m214i();
    }

    /* renamed from: h */
    protected boolean m7562h() {
        return this.f8294e.m209d() == 0 || this.f8294e.m209d() == 5 || this.f8294e.m209d() == 1;
    }

    /* renamed from: i */
    protected void m7563i() {
        this.f8294e.pause();
        this.f8294e.m216k();
        this.f8294e.m214i();
        if (this.f8308s == 2) {
            this.f8308s = 0;
        } else {
            this.f8308s++;
        }
        m7551s();
    }

    /* renamed from: b */
    protected void m7555b(boolean z) {
        if (z) {
            this.f8295f = this.f8294e.getBitmap();
            this.f8296g.setImageBitmap(this.f8295f);
            this.f8296g.setBackgroundColor(getResources().getColor(R.color.black));
        } else {
            this.f8296g.setImageResource(0);
            this.f8296g.setBackgroundColor(getResources().getColor(R.color.transparent));
            if (this.f8295f != null) {
                this.f8295f.recycle();
                this.f8295f = null;
            }
        }
    }

    /* renamed from: j */
    protected boolean m7564j() {
        Calendar calendar = Calendar.getInstance();
        Long valueOf = Long.valueOf(C0090a.m886a(this.f8291b).getLong("previousTimeShowLaunchScreenVideo", -1L));
        long j = calendar.get(6);
        if (valueOf.longValue() == -1) {
        }
        if (j - valueOf.longValue() > 1) {
            return true;
        }
        return false;
    }

    /* renamed from: k */
    protected void m7565k() {
        for (String str : C1658c.f7470r) {
            if (ActivityCompat.checkSelfPermission(this, str) == -1) {
                ActivityCompat.requestPermissions(this, C1658c.f7470r, 300);
                return;
            }
        }
        m7552t();
    }

    /* renamed from: l */
    protected void m7566l() {
        if (C0090a.m886a(this.f8291b).getInt("storeLocation", 0) == 1 && C0052d.m462a(this) == null) {
            C0090a.m887b(this.f8291b).putInt("storeLocation", 0).apply();
            C0088a.m821a(0);
        }
    }

    /* renamed from: m */
    protected void m7567m() {
        this.f8291b.m8010o();
        this.f8291b.m7978a(4128, this, new Intent(this, (Class<?>) UI_SettingUserInstructions.class));
        this.f8291b.m7977a(0, (ActivityC0044a) null);
        SharedPreferences.Editor m887b = C0090a.m887b(this.f8291b);
        m887b.putBoolean("haveUserInstruction", true).apply();
        m887b.putBoolean("apkUpdateLater", false).apply();
        m887b.putString("presentVersion", getResources().getString(R.string.internal_app_version)).apply();
        finish();
    }

    /* renamed from: n */
    protected void m7568n() {
        if (!C0090a.m886a(this.f8291b).getString("presentVersion", "0").equals(getResources().getString(R.string.internal_app_version))) {
            SharedPreferences.Editor m887b = C0090a.m887b(this.f8291b);
            m887b.putString("presentVersion", getResources().getString(R.string.internal_app_version)).apply();
            m887b.putBoolean("apkUpdateLater", false).apply();
            m887b.putBoolean("haveNewApkVersion", false).apply();
        }
    }

    /* renamed from: o */
    protected void m7569o() {
        if (C0090a.m886a(this.f8291b).getBoolean("haveUserInstruction", false)) {
            if (this.f8291b.f8783d.m1264b()) {
                m407a(8448);
                return;
            } else {
                m407a(8452);
                return;
            }
        }
        C0090a.m887b(this.f8291b).putLong("apkInspectTime", 0L).apply();
        m7567m();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        m7547a("onRequestPermissionsResult() " + i, 4);
        if (strArr.length != 0) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (iArr[i2] != 0) {
                    if (ActivityCompat.shouldShowRequestPermissionRationale(this, strArr[i2])) {
                        C0091o.m892a((Context) this, true, false, getResources().getString(R.string.warning), getResources().getString(R.string.permission_deny_msg), new String[]{getResources().getString(R.string.dialog_option_cancel), getResources().getString(R.string.dialog_option_ok)}, new int[]{12032, 10496});
                        return;
                    } else {
                        C0091o.m889a((Context) this, true, false, getResources().getString(R.string.warning), getResources().getString(R.string.permission_always_deny_msg), getResources().getString(R.string.dialog_option_ok), 12032);
                        return;
                    }
                }
            }
        }
        m7552t();
    }

    /* renamed from: t */
    private void m7552t() {
        if (!C0090a.m886a(this.f8291b).getBoolean("haveUnzipSample", false)) {
            m412b(20482);
        }
        m7547a("Send MSG_AID_SPLASH_USB_INIT", 1);
        m412b(20506);
    }

    /* renamed from: p */
    protected void m7570p() {
        this.f8303n = (LinearLayout) findViewById(R.id.LL_ui_User_Agreement);
        this.f8304o = (WebView) findViewById(R.id.WV_ui_User_Agreement_Content);
        this.f8305p = (Button) findViewById(R.id.B_ui_User_Agreement_Disallow);
        this.f8305p.setBackgroundResource(R.drawable.btn_bg);
        this.f8306q = (Button) findViewById(R.id.B_ui_User_Agreement_Allow);
        this.f8306q.setBackgroundResource(R.drawable.btn_bg);
        WebSettings settings = this.f8304o.getSettings();
        settings.setAllowFileAccess(false);
        settings.setJavaScriptEnabled(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setGeolocationEnabled(false);
        settings.setAllowContentAccess(false);
        this.f8304o.loadUrl(getResources().getString(R.string.user_agreement_url));
        this.f8305p.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_LaunchScreen.UI_LaunchScreenController.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LaunchScreenController.this.m7557c(false);
                UI_LaunchScreenController.this.m407a(12032);
            }
        });
        this.f8306q.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_LaunchScreen.UI_LaunchScreenController.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_LaunchScreenController.this.m7557c(false);
                UI_LaunchScreenController.this.m407a(10501);
            }
        });
    }

    /* renamed from: c */
    protected void m7557c(boolean z) {
        if (z) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f8303n, "translationX", 1600.0f, 0.0f);
            ofFloat.setDuration(300L);
            ofFloat.start();
            this.f8303n.setVisibility(0);
            return;
        }
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f8303n, "translationX", 0.0f, 1600.0f);
        ofFloat2.setDuration(300L);
        ofFloat2.start();
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_LaunchScreen.UI_LaunchScreenController.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                UI_LaunchScreenController.this.f8303n.setVisibility(4);
            }
        });
    }

    /* renamed from: q */
    protected void m7571q() {
        new DialogFragmentC0071h.a(this).m656a(R.string.button_agree, new DialogInterface.OnClickListener() { // from class: ui_Controller.ui_LaunchScreen.UI_LaunchScreenController.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                UI_LaunchScreenController.this.m407a(10512);
            }
        }).m658b(R.string.button_disagree, new DialogInterface.OnClickListener() { // from class: ui_Controller.ui_LaunchScreen.UI_LaunchScreenController.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                UI_LaunchScreenController.this.m407a(12032);
            }
        }).m657a().show(getFragmentManager(), "dialog");
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0091o.m888a();
    }

    /* renamed from: u */
    private void m7553u() {
        this.f8301l = new OrientationEventListener(this.f8302m) { // from class: ui_Controller.ui_LaunchScreen.UI_LaunchScreenController.9
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                if (i != -1) {
                    if (i > 350 || i < 10) {
                        if (UI_LaunchScreenController.this.f8299j != 1) {
                            UI_LaunchScreenController.this.setRequestedOrientation(1);
                            UI_LaunchScreenController.this.f8299j = 1;
                            return;
                        }
                        return;
                    }
                    if (i > 170 && i < 190 && UI_LaunchScreenController.this.f8299j != 9) {
                        UI_LaunchScreenController.this.setRequestedOrientation(9);
                        UI_LaunchScreenController.this.f8299j = 9;
                    }
                }
            }
        };
    }
}
