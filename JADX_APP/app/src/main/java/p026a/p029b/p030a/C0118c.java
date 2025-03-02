package p026a.p029b.p030a;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import java.util.Timer;
import java.util.TimerTask;

/* renamed from: a.b.a.c */
/* loaded from: classes.dex */
public class C0118c {

    /* renamed from: a */
    private static final byte[] f909a = {122, 3, -1};

    /* renamed from: b */
    private C0117b f910b;

    /* renamed from: c */
    private Timer f911c = null;

    /* renamed from: d */
    private Handler f912d = null;

    /* renamed from: e */
    private HandlerThread f913e = null;

    /* renamed from: f */
    private boolean f914f = false;

    /* renamed from: g */
    private int f915g = 0;

    /* renamed from: h */
    private int f916h = 0;

    /* renamed from: i */
    private int f917i = 0;

    /* renamed from: j */
    private Timer f918j = null;

    /* renamed from: k */
    private Handler f919k = null;

    /* renamed from: l */
    private HandlerThread f920l = null;

    /* renamed from: m */
    private boolean f921m = false;

    /* renamed from: h */
    static /* synthetic */ int m1182h(C0118c c0118c) {
        int i = c0118c.f916h;
        c0118c.f916h = i + 1;
        return i;
    }

    public C0118c(C0117b c0117b) {
        this.f910b = null;
        this.f910b = c0117b;
    }

    /* renamed from: a */
    public void m1189a(int i, int i2) {
        if (i == 0) {
            m1175b("Disable keep alive mechanism", 3);
            return;
        }
        if (this.f913e != null) {
            m1175b("Warning! keep alive thread already exist. Would restart it", 0);
            m1183h();
        }
        if (this.f911c != null) {
            m1184i();
        }
        this.f913e = new HandlerThread("SCSIKeepAliveThread");
        this.f913e.start();
        this.f912d = m1170a(this.f913e);
        this.f911c = new Timer();
        AnonymousClass1 anonymousClass1 = new TimerTask() { // from class: a.b.a.c.1
            AnonymousClass1() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Message message = new Message();
                message.what = 0;
                if (C0118c.this.f916h > C0118c.this.f915g) {
                    message.what = 2;
                }
                if (C0118c.this.f914f) {
                    message.what = 1;
                    C0118c.this.f912d.sendMessage(message);
                }
                C0118c.this.f914f = true;
            }
        };
        this.f917i = i;
        this.f915g = i2 / this.f917i;
        this.f914f = true;
        this.f911c.scheduleAtFixedRate(anonymousClass1, this.f917i, this.f917i);
    }

    /* renamed from: a.b.a.c$1 */
    class AnonymousClass1 extends TimerTask {
        AnonymousClass1() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Message message = new Message();
            message.what = 0;
            if (C0118c.this.f916h > C0118c.this.f915g) {
                message.what = 2;
            }
            if (C0118c.this.f914f) {
                message.what = 1;
                C0118c.this.f912d.sendMessage(message);
            }
            C0118c.this.f914f = true;
        }
    }

    /* renamed from: a */
    public void m1188a() {
        m1184i();
        m1183h();
        this.f914f = false;
        this.f915g = 0;
        this.f916h = 0;
    }

    /* renamed from: b */
    public void m1190b() {
        this.f914f = false;
    }

    /* renamed from: c */
    public void m1191c() {
        if (this.f911c != null && this.f917i != 0) {
            m1184i();
            this.f911c = new Timer();
            this.f911c.scheduleAtFixedRate(new TimerTask() { // from class: a.b.a.c.2
                AnonymousClass2() {
                }

                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    Message message = new Message();
                    message.what = 0;
                    if (C0118c.this.f916h > C0118c.this.f915g) {
                        message.what = 2;
                    }
                    if (C0118c.this.f914f) {
                        message.what = 1;
                        C0118c.this.f912d.sendMessage(message);
                    }
                    C0118c.this.f914f = true;
                }
            }, this.f917i, this.f917i);
        }
    }

    /* renamed from: a.b.a.c$2 */
    class AnonymousClass2 extends TimerTask {
        AnonymousClass2() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Message message = new Message();
            message.what = 0;
            if (C0118c.this.f916h > C0118c.this.f915g) {
                message.what = 2;
            }
            if (C0118c.this.f914f) {
                message.what = 1;
                C0118c.this.f912d.sendMessage(message);
            }
            C0118c.this.f914f = true;
        }
    }

    /* renamed from: d */
    public void m1192d() {
        if (this.f920l != null) {
            m1175b("Warning! notify connected thread already exist. Would restart it", 0);
            m1186j();
        }
        if (this.f918j != null) {
            m1187k();
        }
        this.f921m = true;
        this.f920l = new HandlerThread("SCSINotifyAPPConnectedThread");
        this.f920l.start();
        this.f919k = m1174b(this.f920l);
        this.f918j = new Timer();
        this.f918j.scheduleAtFixedRate(new TimerTask() { // from class: a.b.a.c.3
            AnonymousClass3() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (C0118c.this.f921m) {
                    Message message = new Message();
                    message.what = 0;
                    C0118c.this.f919k.sendMessage(message);
                }
            }
        }, 150000L, 150000L);
    }

    /* renamed from: a.b.a.c$3 */
    class AnonymousClass3 extends TimerTask {
        AnonymousClass3() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (C0118c.this.f921m) {
                Message message = new Message();
                message.what = 0;
                C0118c.this.f919k.sendMessage(message);
            }
        }
    }

    /* renamed from: e */
    public void m1193e() {
        this.f921m = false;
        m1187k();
        m1186j();
    }

    /* renamed from: f */
    public void m1194f() {
        if (this.f918j != null) {
            m1187k();
            this.f918j = new Timer();
            this.f918j.scheduleAtFixedRate(new TimerTask() { // from class: a.b.a.c.4
                AnonymousClass4() {
                }

                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    Message message = new Message();
                    message.what = 0;
                    C0118c.this.f919k.sendMessage(message);
                }
            }, 150000L, 150000L);
        }
    }

    /* renamed from: a.b.a.c$4 */
    class AnonymousClass4 extends TimerTask {
        AnonymousClass4() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Message message = new Message();
            message.what = 0;
            C0118c.this.f919k.sendMessage(message);
        }
    }

    /* renamed from: b */
    public static void m1175b(String str, int i) {
        C0119d.m1195a("SCSIAlive", str, i);
    }

    /* renamed from: a.b.a.c$5 */
    class AnonymousClass5 extends Handler {
        AnonymousClass5(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 1:
                    int m1149a = C0118c.this.f910b.m1149a(C0118c.f909a, true);
                    if (m1149a != -1 && m1149a != -3) {
                        C0118c.this.f916h = 0;
                        break;
                    } else {
                        C0118c.m1182h(C0118c.this);
                        C0118c.m1175b("Send keep alive fail: " + C0118c.this.f916h, 0);
                        break;
                    }
                    break;
                case 2:
                    C0118c.m1175b("Keep alive timeout!!", 0);
                    C0118c.this.m1184i();
                    break;
                default:
                    C0118c.m1175b("Unknown keep alive status: " + message.what, 0);
                    break;
            }
        }
    }

    /* renamed from: a */
    private Handler m1170a(HandlerThread handlerThread) {
        return new Handler(handlerThread.getLooper()) { // from class: a.b.a.c.5
            AnonymousClass5(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 1:
                        int m1149a = C0118c.this.f910b.m1149a(C0118c.f909a, true);
                        if (m1149a != -1 && m1149a != -3) {
                            C0118c.this.f916h = 0;
                            break;
                        } else {
                            C0118c.m1182h(C0118c.this);
                            C0118c.m1175b("Send keep alive fail: " + C0118c.this.f916h, 0);
                            break;
                        }
                        break;
                    case 2:
                        C0118c.m1175b("Keep alive timeout!!", 0);
                        C0118c.this.m1184i();
                        break;
                    default:
                        C0118c.m1175b("Unknown keep alive status: " + message.what, 0);
                        break;
                }
            }
        };
    }

    /* renamed from: h */
    private void m1183h() {
        if (this.f913e != null) {
            this.f912d = null;
            this.f913e.quit();
            while (this.f913e.isAlive()) {
                try {
                    Thread.sleep(10L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            this.f913e = null;
        }
    }

    /* renamed from: i */
    public void m1184i() {
        if (this.f911c != null) {
            this.f911c.cancel();
            this.f911c = null;
        }
    }

    /* renamed from: b */
    private Handler m1174b(HandlerThread handlerThread) {
        if (handlerThread == null) {
            return null;
        }
        return new Handler(handlerThread.getLooper()) { // from class: a.b.a.c.6
            AnonymousClass6(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 0:
                        byte[] bArr = {122, 0, 2, 0, 0, 0, 0, 0, 1, 1, 0, 0, ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY, 1, 0, 0};
                        C0118c.m1175b("Send APP connected notify", 1);
                        int m1149a = C0118c.this.f910b.m1149a(bArr, true);
                        if (m1149a == -1 || m1149a == -3) {
                            C0118c.m1175b("Send notify APP connected fail", 0);
                            break;
                        }
                        break;
                    default:
                        C0118c.m1175b("Unknown notify status: " + message.what, 0);
                        break;
                }
            }
        };
    }

    /* renamed from: a.b.a.c$6 */
    class AnonymousClass6 extends Handler {
        AnonymousClass6(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    byte[] bArr = {122, 0, 2, 0, 0, 0, 0, 0, 1, 1, 0, 0, ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY, 1, 0, 0};
                    C0118c.m1175b("Send APP connected notify", 1);
                    int m1149a = C0118c.this.f910b.m1149a(bArr, true);
                    if (m1149a == -1 || m1149a == -3) {
                        C0118c.m1175b("Send notify APP connected fail", 0);
                        break;
                    }
                    break;
                default:
                    C0118c.m1175b("Unknown notify status: " + message.what, 0);
                    break;
            }
        }
    }

    /* renamed from: j */
    private void m1186j() {
        if (this.f920l != null) {
            this.f919k = null;
            this.f920l.quit();
            while (this.f920l.isAlive()) {
                try {
                    Thread.sleep(10L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            this.f920l = null;
        }
    }

    /* renamed from: k */
    private void m1187k() {
        if (this.f918j != null) {
            this.f918j.cancel();
            this.f918j = null;
        }
    }
}
