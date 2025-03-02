package ui_Controller.ui_StartMode;

import GeneralFunction.C0052d;
import GeneralFunction.C0068g;
import GeneralFunction.C0079k;
import GeneralFunction.p001a.ActivityC0044a;
import GeneralFunction.p002b.C0046a;
import GeneralFunction.p004d.C0055c;
import GeneralFunction.p005e.C0058b;
import GeneralFunction.p005e.C0061e;
import GeneralFunction.p008g.C0069a;
import GeneralFunction.p008g.C0070b;
import GeneralFunction.p009h.C0073b;
import GeneralFunction.p012j.C0078b;
import GeneralFunction.p016m.C0088a;
import GeneralFunction.p017n.C0090a;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.support.v4.app.ActivityCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.PointerIconCompat;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.huawei.cvIntl60.R;
import java.io.File;
import java.util.ArrayList;
import p026a.p032c.C0121a;
import p026a.p032c.C0124d;
import ui_Controller.p109a.C1658c;
import ui_Controller.p110b.C1659a;
import ui_Controller.p110b.C1660b;
import ui_Controller.p110b.C1668j;
import ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController;

/* loaded from: classes.dex */
public class UI_ModeMain extends Application {

    /* renamed from: w */
    private static Context f8776w;

    /* renamed from: a */
    public SharedPreferences f8780a;

    /* renamed from: b */
    public SharedPreferences.Editor f8781b;

    /* renamed from: c */
    public C1668j f8782c;

    /* renamed from: j */
    private boolean f8789j = false;

    /* renamed from: k */
    private boolean f8790k = false;

    /* renamed from: l */
    private boolean f8791l = false;

    /* renamed from: m */
    private HandlerThread f8792m = null;

    /* renamed from: n */
    private Handler f8793n = null;

    /* renamed from: d */
    public C0124d f8783d = null;

    /* renamed from: o */
    private C0073b f8794o = null;

    /* renamed from: p */
    private C0088a f8795p = null;

    /* renamed from: e */
    public C0055c f8784e = null;

    /* renamed from: q */
    private C1864c f8796q = null;

    /* renamed from: r */
    private C1863b f8797r = null;

    /* renamed from: s */
    private C0078b f8798s = null;

    /* renamed from: t */
    private final String f8799t = C0069a.m638a() + "/AutoDump/cv60config.txt";

    /* renamed from: u */
    private final String f8800u = C0069a.m638a() + "/AutoDump/config.txt";

    /* renamed from: v */
    private C0046a f8801v = null;

    /* renamed from: x */
    private ArrayList<Message> f8802x = new ArrayList<>();

    /* renamed from: y */
    private Handler f8803y = new Handler(Looper.getMainLooper()) { // from class: ui_Controller.ui_StartMode.UI_ModeMain.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (!UI_ModeMain.this.m7985a(message)) {
                if (message.what != 1 && message.what != 18176 && message.what != 18464) {
                    UI_ModeMain.this.m7958a("handleMessage: 0x" + Integer.toHexString(message.what) + " mode:0x" + Integer.toHexString(UI_ModeMain.this.f8782c.f7645c), 3);
                }
                if (message.what == 12032) {
                    UI_ModeMain.this.m7958a("MSG_UI_SYSTEM_CLOSE_APP: force close APP", 1);
                    Process.killProcess(Process.myPid());
                    return;
                }
                if (message.what == 18432) {
                    UI_ModeMain.this.m7958a("MSG_REMOTE_USB_CORE_INITIAL done", 1);
                    UI_ModeMain.this.f8790k = true;
                }
                if (!UI_ModeMain.this.f8784e.m475a(message)) {
                    UI_ModeMain.this.f8795p.m880a(message);
                    UI_ModeMain.this.f8794o.m679a(message);
                    if (!UI_ModeMain.this.f8796q.m8024a(message) && !UI_ModeMain.this.f8797r.m8020a(message)) {
                        if (UI_ModeMain.this.f8798s == null || !UI_ModeMain.this.f8798s.m761a(message)) {
                            if (UI_ModeMain.this.f8782c.f7645c == 0) {
                                if (UI_ModeMain.this.f8802x.size() == 0) {
                                    UI_ModeMain.this.m7980a(new C0121a(1));
                                }
                                if (message.what != 1) {
                                    UI_ModeMain.this.f8802x.add(message);
                                    return;
                                } else {
                                    UI_ModeMain.this.m7980a(new C0121a(1));
                                    return;
                                }
                            }
                            while (UI_ModeMain.this.f8802x.size() > 0) {
                                UI_ModeMain.this.f8782c.f7644b.mo411a((Message) UI_ModeMain.this.f8802x.get(0));
                                UI_ModeMain.this.f8802x.remove(0);
                            }
                            UI_ModeMain.this.f8782c.f7644b.mo411a(message);
                        }
                    }
                }
            }
        }
    };

    /* renamed from: z */
    private C0124d.a f8804z = new C0124d.a() { // from class: ui_Controller.ui_StartMode.UI_ModeMain.3
        @Override // p026a.p032c.C0124d.a
        /* renamed from: a */
        public void mo1268a(C0121a c0121a) {
            if (c0121a.m1208b().what == 18435) {
                UI_ModeMain.this.f8782c.f7650h.f7724av = null;
            }
            UI_ModeMain.this.m7980a(c0121a);
        }
    };

    /* renamed from: f */
    public boolean f8785f = true;

    /* renamed from: g */
    public boolean f8786g = true;

    /* renamed from: h */
    public boolean f8787h = false;

    /* renamed from: A */
    private boolean f8777A = false;

    /* renamed from: i */
    public Runnable f8788i = new Runnable() { // from class: ui_Controller.ui_StartMode.UI_ModeMain.4
        @Override // java.lang.Runnable
        public void run() {
            UI_ModeMain.this.f8782c.f7653k.f7481e = new C0061e(UI_ModeMain.f8776w);
            UI_ModeMain.this.f8782c.f7653k.f7481e.m559b();
            if (!UI_ModeMain.this.m7950H()) {
                UI_ModeMain.this.m7951I();
            }
            UI_ModeMain.this.f8782c.f7653k.f7481e.m549a(UI_ModeMain.this.f8782c.f7653k.f7479c, UI_ModeMain.this.f8782c.f7653k.f7482f, UI_ModeMain.this.f8782c.f7653k.f7483g, UI_ModeMain.this.f8782c.f7653k.f7484h);
            UI_ModeMain.this.f8782c.f7653k.f7478b.f7526a.m508a(UI_ModeMain.this.f8782c.f7653k.f7481e.m550a(), UI_ModeMain.this.f8782c.f7653k.f7482f, 1);
            UI_ModeMain.this.f8782c.f7653k.f7478b.f7540b.m508a(UI_ModeMain.this.f8782c.f7653k.f7481e.m550a(), UI_ModeMain.this.f8782c.f7653k.f7482f, 1);
            UI_ModeMain.this.f8782c.f7653k.f7478b.f7526a.m506a();
            UI_ModeMain.this.f8782c.f7653k.f7478b.f7526a.m511b();
            UI_ModeMain.this.f8782c.f7653k.f7478b.f7526a.m514c();
            UI_ModeMain.this.m7958a("CreateLocalDatabaseProcess done", 2);
            UI_ModeMain.this.f8782c.f7653k.f7478b.f7540b.m506a();
            UI_ModeMain.this.f8782c.f7653k.f7478b.f7540b.m511b();
            UI_ModeMain.this.f8782c.f7653k.f7478b.f7541c = true;
        }
    };

    /* renamed from: B */
    private BroadcastReceiver f8778B = new BroadcastReceiver() { // from class: ui_Controller.ui_StartMode.UI_ModeMain.5
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            char c;
            String action = intent.getAction();
            switch (action.hashCode()) {
                case -1676458352:
                    if (action.equals("android.intent.action.HEADSET_PLUG")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -19011148:
                    if (action.equals("android.intent.action.LOCALE_CHANGED")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 505380757:
                    if (action.equals("android.intent.action.TIME_SET")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    UI_ModeMain.this.f8782c.f7649g.f7633e = true;
                    ActivityC0044a.f421a = null;
                    break;
                case 1:
                    UI_ModeMain.this.m7958a("ACTION_TIME_CHANGED", 0);
                    C0068g.m631a();
                    UI_ModeMain.this.f8783d.m1267e();
                    break;
                case 2:
                    int intExtra = intent.getIntExtra("state", -1);
                    C0121a c0121a = new C0121a(12051);
                    c0121a.m1200a("state", intExtra);
                    UI_ModeMain.this.m7980a(c0121a);
                    break;
            }
        }
    };

    /* renamed from: C */
    private BroadcastReceiver f8779C = new BroadcastReceiver() { // from class: ui_Controller.ui_StartMode.UI_ModeMain.6
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            switch (intent.getAction()) {
                case "android.intent.action.MEDIA_MOUNTED":
                    UI_ModeMain.this.m7958a("ACTION_MEDIA_MOUNTED", 2);
                    UI_ModeMain.this.m7976a(12046, 0L);
                    break;
                case "android.intent.action.MEDIA_REMOVED":
                    UI_ModeMain.this.m7958a("ACTION_MEDIA_REMOVED", 2);
                    UI_ModeMain.this.m7976a(12047, 0L);
                    break;
                case "android.intent.action.MEDIA_BAD_REMOVAL":
                    UI_ModeMain.this.m7958a("ACTION_MEDIA_BAD_REMOVAL", 2);
                    UI_ModeMain.this.m7976a(12048, 0L);
                    break;
                case "android.intent.action.MEDIA_EJECT":
                    UI_ModeMain.this.m7958a("ACTION_MEDIA_EJECT", 2);
                    UI_ModeMain.this.m7976a(12049, 0L);
                    break;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7958a(String str, int i) {
        C0052d.m465a("UI_ModeMain", str, i);
    }

    /* renamed from: a */
    public int m7974a() {
        return this.f8782c.f7645c;
    }

    /* renamed from: a */
    public void m7975a(int i) {
        this.f8782c.f7645c = i;
    }

    /* renamed from: a */
    public void m7977a(int i, ActivityC0044a activityC0044a) {
        this.f8782c.f7644b = activityC0044a;
        this.f8782c.f7645c = i;
    }

    /* renamed from: a */
    public boolean m7984a(long j) {
        return (this.f8782c.f7643a & j) > 0;
    }

    /* renamed from: b */
    public void m7988b(long j) {
        long j2 = 268435455 ^ j;
        this.f8782c.f7643a &= j2;
        m7958a("UI_DisableKey:" + Long.toHexString(j2), 4);
    }

    /* renamed from: c */
    public void m7994c(long j) {
        this.f8782c.f7643a |= j;
        m7958a("UI_EnableKey:" + Long.toHexString(j), 4);
    }

    /* renamed from: a */
    public boolean m7985a(Message message) {
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 12034:
                if (!m8002g()) {
                    m7976a(12042, 0L);
                }
                return (this.f8782c.f7645c & MotionEventCompat.ACTION_POINTER_INDEX_MASK) != (c0121a.m1207b("mode") & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
            case 12035:
            case 12036:
            case 12037:
            case 12038:
                return (this.f8782c.f7645c & MotionEventCompat.ACTION_POINTER_INDEX_MASK) != (c0121a.m1207b("mode") & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
            default:
                return false;
        }
    }

    /* renamed from: a */
    public void m7976a(int i, long j) {
        m7981a(new C0121a(i), j);
    }

    /* renamed from: a */
    public void m7980a(C0121a c0121a) {
        m7981a(c0121a, 0L);
    }

    /* renamed from: a */
    public void m7981a(C0121a c0121a, long j) {
        m7982a(c0121a.m1208b(), j);
    }

    /* renamed from: a */
    public void m7982a(Message message, long j) {
        this.f8803y.sendMessageDelayed(message, j);
    }

    /* renamed from: b */
    public boolean m7992b(int i) {
        return this.f8803y.hasMessages(i);
    }

    /* renamed from: z */
    private void m7973z() {
        this.f8797r = new C1863b(this);
    }

    /* renamed from: A */
    private void m7943A() {
        this.f8784e = new C0055c(this);
    }

    /* renamed from: b */
    public int m7986b() {
        return 0;
    }

    /* renamed from: B */
    private void m7944B() {
        this.f8796q = new C1864c(this);
    }

    /* renamed from: a */
    public void m7978a(int i, ActivityC0044a activityC0044a, Intent intent) {
        this.f8796q.m8023a(i, activityC0044a, intent);
    }

    /* renamed from: c */
    public ActivityC0044a m7993c() {
        return this.f8782c.f7644b;
    }

    /* renamed from: a */
    public void m7979a(ActivityC0044a activityC0044a) {
        this.f8796q.m8023a(1024, activityC0044a, new Intent(activityC0044a, (Class<?>) UI_PhoneGalleryController.class));
    }

    /* renamed from: C */
    private void m7945C() {
        this.f8792m = new HandlerThread("AidServer");
        this.f8792m.start();
        this.f8793n = new Handler(this.f8792m.getLooper()) { // from class: ui_Controller.ui_StartMode.UI_ModeMain.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                while (UI_ModeMain.this.f8782c.f7645c == 0) {
                    try {
                        Thread.sleep(50L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                UI_ModeMain.this.f8782c.f7644b.mo416b(message);
            }
        };
    }

    /* renamed from: b */
    public void m7987b(int i, long j) {
        m7990b(new C0121a(i), j);
    }

    /* renamed from: b */
    public void m7989b(C0121a c0121a) {
        m7990b(c0121a, 0L);
    }

    /* renamed from: b */
    public void m7990b(C0121a c0121a, long j) {
        m7991b(c0121a.m1208b(), j);
    }

    /* renamed from: b */
    public void m7991b(Message message, long j) {
        this.f8793n.sendMessageDelayed(message, j);
    }

    /* renamed from: D */
    private void m7946D() {
        this.f8783d = new C0124d(this, this.f8804z);
        this.f8783d.m1260a();
    }

    /* renamed from: c */
    public void m7995c(C0121a c0121a) {
        m7996c(c0121a, 0L);
    }

    /* renamed from: c */
    public void m7996c(C0121a c0121a, long j) {
        this.f8783d.m1262a(c0121a, j);
    }

    /* renamed from: a */
    private void m7959a(C1660b c1660b) {
        this.f8794o = new C0073b(this);
        this.f8794o.m682a(c1660b);
    }

    /* renamed from: d */
    public void m7998d(C0121a c0121a) {
        m7999d(c0121a, 0L);
    }

    /* renamed from: d */
    public void m7999d(C0121a c0121a, long j) {
        this.f8794o.m678a(c0121a, j);
    }

    /* renamed from: a */
    public void m7983a(ArrayList<C1659a> arrayList) {
        this.f8794o.m681a(arrayList);
    }

    /* renamed from: d */
    public void m7997d() {
        this.f8794o.m685b();
    }

    /* renamed from: e */
    public void m8000e() {
        this.f8794o.m686c();
    }

    /* renamed from: f */
    public int m8001f() {
        return this.f8794o.m687d();
    }

    /* renamed from: E */
    private void m7947E() {
        this.f8795p = new C0088a(this);
    }

    /* renamed from: g */
    public boolean m8002g() {
        for (String str : C1658c.f7470r) {
            if (ActivityCompat.checkSelfPermission(this, str) == -1) {
                m7958a("checkHasAllPermissioins false: " + str, 0);
                return false;
            }
        }
        return true;
    }

    /* renamed from: F */
    private void m7948F() {
        this.f8798s = new C0078b(this);
    }

    /* renamed from: h */
    public C0078b m8003h() {
        return this.f8798s;
    }

    /* renamed from: i */
    public void m8004i() {
        m7958a("CheckUSBDeviceHasPermission", 1);
        this.f8783d.m1261a(new C0121a(18437));
    }

    /* renamed from: j */
    public void m8005j() {
        this.f8790k = false;
        this.f8783d.m1261a(new C0121a(18432));
    }

    /* renamed from: k */
    public boolean m8006k() {
        return this.f8790k;
    }

    /* renamed from: l */
    public void m8007l() {
        if (!this.f8783d.m1264b()) {
            m8005j();
            return;
        }
        if (!this.f8783d.m1266d()) {
            C0121a c0121a = new C0121a(18480);
            c0121a.m1203a("app_version", getResources().getString(R.string.internal_app_version));
            m7995c(c0121a);
        } else {
            m7958a("Live view already start, get frame directly", 1);
            m7996c(new C0121a(18464), 0L);
        }
    }

    /* renamed from: m */
    public boolean m8008m() {
        return this.f8783d.m1265c();
    }

    /* renamed from: n */
    public boolean m8009n() {
        return this.f8789j;
    }

    /* renamed from: o */
    public void m8010o() {
        this.f8789j = true;
    }

    /* renamed from: p */
    public boolean m8011p() {
        return this.f8791l;
    }

    /* renamed from: q */
    public void m8012q() {
        m7958a("APP auto launch by USB attach", 2);
        this.f8791l = true;
    }

    /* renamed from: r */
    public boolean m8013r() {
        new C0070b().m651a(getResources().openRawResource(R.raw.fw13b00), C1658c.f7468p);
        if (!this.f8794o.m684a(C1658c.f7468p + "FPUPDATE.DAT")) {
            m7958a("Unzip Fail! retry again", 0);
            new C0070b().m651a(getResources().openRawResource(R.raw.fw13b00), C1658c.f7468p);
        }
        return this.f8794o.m684a(new StringBuilder().append(C1658c.f7468p).append("FPUPDATE.DAT").toString());
    }

    /* renamed from: s */
    public static Context m7971s() {
        return f8776w;
    }

    /* renamed from: ui_Controller.ui_StartMode.UI_ModeMain$a */
    private class C1861a extends Thread {

        /* renamed from: b */
        private int f8812b;

        C1861a(int i) {
            this.f8812b = 1000;
            this.f8812b = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x011b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x003b A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v2 */
        /* JADX WARN: Type inference failed for: r10v3, types: [java.io.BufferedReader] */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [java.io.FileReader, java.io.Reader] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 291
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: ui_Controller.ui_StartMode.UI_ModeMain.C1861a.run():void");
        }
    }

    /* renamed from: t */
    public void m8014t() {
        m7958a("CreateAutoDumpInstance", 3);
        if (!this.f8777A) {
            this.f8777A = true;
            new C1861a(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS).start();
        }
    }

    /* renamed from: G */
    private void m7949G() {
        m7957a(C1658c.f7459g);
        m7957a(C1658c.f7460h);
        m7958a("Start Create Database Process", 3);
        new Thread(this.f8788i).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H */
    public boolean m7950H() {
        return C0090a.m886a(this).getBoolean("haveUserInstruction", false);
    }

    /* renamed from: u */
    public boolean m8015u() {
        return this.f8782c.f7653k.f7478b.f7541c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public void m7951I() {
        String str = C1658c.f7455c + "CV60_Photo_1.jpg";
        String substring = str.substring(0, str.lastIndexOf("/") + 1);
        String substring2 = str.substring(str.lastIndexOf("/") + 1, str.length());
        if (!this.f8782c.f7653k.f7481e.m560b(substring, substring2)) {
            this.f8782c.f7653k.f7481e.m558a(substring2, substring, 7411340L, 0, 1, 5376, 2688, 0L, 0L, 0L, 1000, 0, true, true, true, false, false, true, true, false, false);
        }
        String str2 = C1658c.f7455c + "CV60_Photo_2.jpg";
        String substring3 = str2.substring(0, str2.lastIndexOf("/") + 1);
        String substring4 = str2.substring(str2.lastIndexOf("/") + 1, str2.length());
        if (!this.f8782c.f7653k.f7481e.m560b(substring3, substring4)) {
            this.f8782c.f7653k.f7481e.m558a(substring4, substring3, 7073281L, 0, 1, 5376, 2688, 0L, 0L, 0L, 1001, 0, true, true, true, false, false, true, true, false, false);
        }
        String str3 = C1658c.f7455c + "CV60_Photo_3.jpg";
        String substring5 = str3.substring(0, str3.lastIndexOf("/") + 1);
        String substring6 = str3.substring(str3.lastIndexOf("/") + 1, str3.length());
        if (!this.f8782c.f7653k.f7481e.m560b(substring5, substring6)) {
            this.f8782c.f7653k.f7481e.m558a(substring6, substring5, 8288090L, 0, 1, 5376, 2688, 0L, 0L, 0L, PointerIconCompat.TYPE_HAND, 0, true, true, true, false, false, true, true, false, false);
        }
        String str4 = C1658c.f7455c + "CV60_Video.mp4";
        String substring7 = str4.substring(0, str4.lastIndexOf("/") + 1);
        String substring8 = str4.substring(str4.lastIndexOf("/") + 1, str4.length());
        if (!this.f8782c.f7653k.f7481e.m560b(substring7, substring8)) {
            this.f8782c.f7653k.f7481e.m558a(substring8, substring7, 6389029L, 1, 1, 5376, 2688, 4L, 0L, 0L, PointerIconCompat.TYPE_HELP, 0, true, true, true, false, false, true, true, false, false);
        }
    }

    /* renamed from: a */
    private void m7957a(String str) {
        File file = new File(str);
        if (file.exists()) {
            m7956a(file);
        }
    }

    /* renamed from: a */
    private void m7956a(File file) {
        if (file == null) {
            m7958a("Input file is null", 0);
            return;
        }
        String[] list = file.list();
        if (list != null) {
            for (String str : list) {
                File file2 = new File(file, str);
                if (file2.isDirectory()) {
                    m7956a(file2);
                }
                m7958a("File : " + file2.getName() + " delete...", 3);
                file2.delete();
            }
        }
        m7958a("Directory : " + file.getName() + " delete...", 3);
        file.delete();
    }

    /* renamed from: J */
    private void m7952J() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.HEADSET_PLUG");
        registerReceiver(this.f8778B, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter2.addAction("android.intent.action.MEDIA_REMOVED");
        intentFilter2.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
        intentFilter2.addAction("android.intent.action.MEDIA_EJECT");
        intentFilter2.addDataScheme("file");
        registerReceiver(this.f8779C, intentFilter2);
    }

    /* renamed from: v */
    public void m8016v() {
    }

    /* renamed from: w */
    public boolean m8017w() {
        return C0090a.m886a(this).getInt("launchAppTime", 0) == 1;
    }

    /* renamed from: K */
    private void m7953K() {
        SharedPreferences m886a = C0090a.m886a(this);
        SharedPreferences.Editor m887b = C0090a.m887b(this);
        if (!m886a.getString("appVersionForCheckFisrtTimeAppLaunch", "").equals(getResources().getString(R.string.internal_app_version))) {
            m887b.putString("appVersionForCheckFisrtTimeAppLaunch", getResources().getString(R.string.internal_app_version)).apply();
            m887b.putInt("launchAppTime", 0).apply();
        }
        int i = m886a.getInt("launchAppTime", 0);
        if (i < 10000) {
            i++;
        }
        m887b.putInt("launchAppTime", i).apply();
    }

    /* renamed from: x */
    public int m8018x() {
        C0058b c0058b = new C0058b();
        C0058b c0058b2 = new C0058b();
        C0058b c0058b3 = new C0058b();
        int m549a = this.f8782c.f7653k.f7481e.m549a(this.f8782c.f7653k.f7479c, c0058b, c0058b2, c0058b3);
        this.f8782c.f7653k.f7482f = c0058b;
        this.f8782c.f7653k.f7483g = c0058b2;
        this.f8782c.f7653k.f7484h = c0058b3;
        return m549a;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        m7958a("Application create", 3);
        f8776w = this;
        this.f8782c = new C1668j();
        this.f8782c.f7649g.f7634f = Process.myPid();
        m7952J();
        m8016v();
        m7953K();
        C0068g.m634a(this);
        C0079k.m785a();
        if (ActivityCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            m8014t();
        }
        m7973z();
        m7944B();
        m7947E();
        m7959a(this.f8782c.f7653k);
        m7945C();
        m7946D();
        m7943A();
        m7948F();
        m7949G();
    }
}
