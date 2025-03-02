// com.huawei.cvIntl60/smali/ui_Controller/ui_LaunchScreen/UI_LaunchScreenController.smali
package ui_Controller.ui_LaunchScreen;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.OrientationEventListener;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import GeneralFunction.Player.player.SphericalVideoPlayer;
import GeneralFunction.a.a;
import GeneralFunction.d;
import GeneralFunction.k;
import GeneralFunction.l;
import GeneralFunction.m.a;
import GeneralFunction.n.a;
import GeneralFunction.o;
import ui_Controller.b.d;
import ui_Controller.ui_StartMode.UI_ModeMain;
import ui_Controller.a.c;
import java.util.ArrayList;
import java.util.Calendar;

public class UI_LaunchScreenController extends a {
    protected UI_ModeMain b;
    protected ImageView c;
    protected LinearLayout d;
    protected SphericalVideoPlayer e;
    protected Bitmap f;
    protected ImageView g;
    private int h;
    private int i;
    private int j;
    private a k;
    private OrientationEventListener l;
    private Context m;
    private LinearLayout n;
    private WebView o;
    private Button p;
    private Button q;
    private ArrayList<String> r;
    private int s;
    private LinearLayout t;
    private TextView u;
    private TextView v;
    private Button w;
    private d x;

    public UI_LaunchScreenController() {
        this.b = null;
        this.h = 0;
        this.i = 0;
        this.j = -1;
        this.c = null;
        this.k = null;
        this.l = null;
        this.m = this;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.d = null;
        this.e = null;
        this.r = null;
        this.s = 0;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.f = null;
    }

    static int a(UI_LaunchScreenController uI_LaunchScreenController, int i) {
        uI_LaunchScreenController.j = i;
        return i;
    }

    static LinearLayout a(UI_LaunchScreenController uI_LaunchScreenController) {
        return uI_LaunchScreenController.n;
    }

    private void a(String str, int i) {
        d.a("UI_LaunchScreenController", str, i);
    }

    static void a(UI_LaunchScreenController uI_LaunchScreenController, String str, int i) {
        uI_LaunchScreenController.a(str, i);
    }

    static int b(UI_LaunchScreenController uI_LaunchScreenController) {
        return uI_LaunchScreenController.j;
    }

    private void r() {
        String a = l.a("ro.config.hw_notch_size", "");
        if (a.isEmpty()) {
            this.x.a(false);
        } else {
            a("checkNeedGap:" + a, 1);
            this.x.a(true);
        }
    }

    private void s() {
        switch (this.s) {
            case 0:
                this.v.setText(getResources().getString(2131751187));
                return;
            case 1:
                this.v.setText(getResources().getString(2131751188));
                return;
            case 2:
                this.v.setText(getResources().getString(2131751189));
                return;
            default:
                return;
        }
    }

    private void t() {
        SharedPreferences a = a.a(this.b);
        if (!a.getBoolean("haveUnzipSample", false)) {
            b(20482);
        }
        a("Send MSG_AID_SPLASH_USB_INIT", 1);
        b(20498);
    }

    private void u() {
        this.l = new OrientationEventListener(this, this.m) {
            public void onOrientationChanged(int i) {
            }
        };
    }

    public void a(int i, long j) {
        if (this.b != null) {
            this.b.a(new a(i), j);
        } else {
            a("SendUiMsg error!! Msg=" + i, 0);
        }
    }

    public void a(a aVar, long j) {
        if (this.b != null) {
            this.b.a(aVar, j);
        } else {
            a("SendUiMsg error!! MsgEx=" + aVar.b().what, 0);
        }
    }

    public void a(Message message) {
        this.k.a(message);
    }

    protected void a(boolean z) {
        if (z) {
            this.t.setVisibility(0);
        } else {
            this.t.setVisibility(4);
        }
    }

    public void b(int i, long j) {
        if (this.b != null) {
            this.b.b(i, j);
        } else {
            a("UI_SendAidMsg error!!", 0);
        }
    }

    public void b(Message message) {
        a("AidServer_Handler:0x" + Integer.toHexString(message.what), 3);
        this.k.d(message);
    }

    protected void b(boolean z) {
        if (z) {
            this.f = this.e.getBitmap();
            this.g.setImageBitmap(this.f);
            this.g.setBackgroundColor(getResources().getColor(2131558419));
            return;
        }
        this.g.setImageResource(0);
        this.g.setBackgroundColor(getResources().getColor(2131558692));
        if (this.f != null) {
            this.f.recycle();
            this.f = null;
        }
    }

    public boolean b() {
        return this.j == 2;
    }

    protected void c() {
        this.c = (ImageView) findViewById(2131628641);
        this.c.setImageResource(2130838577);
    }

    protected void c(boolean z) {
        if (z) {
            this.n.animate().translationX(1600.0f).setDuration(300).start();
            this.n.setVisibility(0);
            return;
        }
        this.n.animate().translationX(1600.0f).setDuration(300).start();
    }

    protected void d() {
        this.g = (ImageView) findViewById(2131628644);
        this.g.setImageResource(2130838577);
        this.t = (LinearLayout) findViewById(2131628645);
        this.u = (TextView) findViewById(2131628646);
        this.v = (TextView) findViewById(2131628647);
        this.w = (Button) findViewById(2131628648);
        this.t.setOnTouchListener(new View.OnTouchListener() {
            public boolean onTouch(View view, android.view.MotionEvent motionEvent) {
                return true;
            }
        });
        this.t.setVisibility(4);
        this.u.setTextSize((float) k.a((Context) this, ((float) (this.i / 30))));
        this.u.setText("");
        this.v.setText(getResources().getString(2131751187));
        this.w.setBackgroundResource(2130838621);
        this.w.setText(getResources().getString(2131751123));
        this.w.setTextColor(getResources().getColor(2131558696));
        this.w.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
            }
        });
    }

    protected void e() {
        this.r = new ArrayList();
        this.r.add(c.m);
        this.r.add(c.n);
        this.r.add(c.o);
        this.d = (LinearLayout) findViewById(2131628642);
        this.e = (SphericalVideoPlayer) findViewById(2131628643);
        this.d.setVisibility(4);
        this.e.setPlayerStatusListener(new SphericalVideoPlayer.f() {
            public void a(int i) {
            }
        });
    }

    protected void f() {
        this.d.setVisibility(0);
        this.e.f();
        this.e.a(false);
        this.e.setEnable(true);
        this.e.setVideoAutoPlay(true);
        this.e.b(false);
        this.e.setPlayerMode(1);
        if (this.s == 2) {
            this.e.setViewType(5);
        } else {
            this.e.setViewType(3);
        }
        this.e.setVideoFilePath((String) this.r.get(this.s));
        this.e.setInteractiveMode(2);
        this.e.g();
    }

    protected void g() {
        this.d.setVisibility(4);
        this.e.k();
        this.e.i();
    }

    protected boolean h() {
        return this.e.d() == 0 || this.e.d() == 5 || this.e.d() == 1;
    }

    protected void i() {
        this.e.pause();
        this.e.k();
        this.e.i();
        if (this.s == 2) {
            this.s = 0;
        } else {
            this.s++;
        }
        s();
    }

    protected boolean j() {
        Calendar instance = Calendar.getInstance();
        SharedPreferences a = a.a(this.b);
        long j = a.getLong("previousTimeShowLaunchScreenVideo", -1);
        if (j == -1) {
            return true;
        }
        return ((long) instance.get(6)) - j > 1;
    }

    protected void k() {
        for (String checkSelfPermission : c.r) {
            if (checkSelfPermission(checkSelfPermission) == -1) {
                requestPermissions(c.r, 300);
                return;
            }
        }
        t();
    }

    protected void l() {
        int i = a.a(this.b).getInt("storeLocation", 0);
        if (i == 1 && d.a((Context) this) == null) {
            SharedPreferences.Editor b = a.b(this.b);
            b.putInt("storeLocation", 0);
            b.apply();
            a.a(0);
        }
    }

    protected void m() {
        this.b.o();
        Intent intent = new Intent(this, ui_Controller.ui_Setting.UI_SettingUserInstructions.class);
        this.b.a(4128, this, intent);
        this.b.a(0, null);
        SharedPreferences.Editor b = a.b(this.b);
        b.putBoolean("haveUserInstruction", true);
        b.putBoolean("apkUpdateLater", false);
        b.putString("presentVersion", getResources().getString(2131751305));
        b.apply();
        finish();
    }

    protected void n() {
        String string = a.a(this.b).getString("presentVersion", "0");
        if (!string.equals(getResources().getString(2131751305))) {
            SharedPreferences.Editor b = a.b(this.b);
            b.putString("presentVersion", getResources().getString(2131751305));
            b.putBoolean("apkUpdateLater", false);
            b.putBoolean("haveNewApkVersion", false);
            b.apply();
        }
    }

    protected void o() {
        if (a.a(this.b).getBoolean("haveUserInstruction", false)) {
            if (this.b.d().b()) {
                a(8448);
            } else {
                a(8452);
            }
        } else {
            SharedPreferences.Editor b = a.b(this.b);
            b.putLong("apkInspectTime", 0);
            b.apply();
            m(); //
        }
    }

    public void onBackPressed() {
        if (this.b.a(1)) {
            a(32768, 0);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        o.a();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b = (UI_ModeMain) getApplication();
        this.b.v();
        this.x = d.a();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.h = displayMetrics.widthPixels;
        this.i = displayMetrics.heightPixels;
        if (this.b.n() && (!this.b.w() || this.b.c() != null)) {
            a("Skip launch onCreate in special case:" + this.b.c().a(), 2);
            if (this.b.c().a() != 3) {
                finish();
                return;
            }
        }
        this.b.o();
        this.j = 2;
        setContentView(2130968699);
        this.k = new a(this);
        this.b.a(3088, this);
        u();
        a(12033, 0);
        String str = "";
        try {
            str = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        a("APP ver. info: v" + str + " (" + getResources().getString(2131751305) + ")", 3);
        str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        String str3 = Build.PRODUCT;
        a("Device info: " + str + ", " + str2 + ", " + str3 + ", " + Build.VERSION.RELEASE, 3);
        r();
    }

    protected void onDestroy() {
        super.onDestroy();
        a aVar = new a(12037);
        aVar.a("mode", 3072);
        a(aVar, 0);
        if (this.c != null) {
            this.c.setImageResource(0);
        }
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    public void onPause() {
        super.onPause();
        if (this.b.a() == 3104) {
            this.e.pause();
        }
        a aVar = new a(12035);
        aVar.a("mode", 3072);
        a(aVar, 0);
        this.l.disable();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        a("onRequestPermissionsResult() " + i, 4);
        if (strArr.length != 0) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (iArr[i2] != 0) {
                    if (shouldShowRequestPermissionRationale(strArr[i2])) {
                        o.a(this, true, false, getResources().getString(2131751255), getResources().getString(2131751158), new String[]{getResources().getString(2131751051), getResources().getString(2131751057)}, new int[]{12032, 10496});
                        return;
                    }
                    o.a(this, true, false, getResources().getString(2131751255), getResources().getString(2131751157), getResources().getString(2131751057), 12032);
                    return;
                }
            }
        }
        t();
    }

    protected void onResume() {
        super.onResume();
        if (this.b.a() == 3104) {
            this.e.start();
        }
        a aVar = new a(12034);
        aVar.a("mode", 3072);
        a(aVar, 0);
        this.l.enable();
    }

    public void onStop() {
        super.onStop();
        a aVar = new a(12036);
        aVar.a("mode", 3072);
        a(aVar, 0);
    }

    protected void p() {
        this.n = (LinearLayout) findViewById(2131628649);
        this.o = (WebView) findViewById(2131628650);
        this.p = (Button) findViewById(2131628651);
        this.p.setBackgroundResource(2130838633);
        this.q = (Button) findViewById(2131628652);
        this.q.setBackgroundResource(2130838633);
        WebSettings settings = this.o.getSettings();
        settings.setAllowFileAccess(false);
        settings.setJavaScriptEnabled(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setGeolocationEnabled(false);
        settings.setAllowContentAccess(false);
        this.o.loadUrl(getResources().getString(2131751230));
        this.p.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
            }
        });
        this.q.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
            }
        });
    }

    protected void q() {
        h.a aVar = new h.a(this);
        aVar.a(2131751017, new android.content.DialogInterface.OnClickListener() {
            public void onClick(android.content.DialogInterface dialogInterface, int i) {
            }
        });
        aVar.b(2131751018, new android.content.DialogInterface.OnClickListener() {
            public void onClick(android.content.DialogInterface dialogInterface, int i) {
            }
        });
        aVar.a().show(getFragmentManager(), "dialog");
    }
}