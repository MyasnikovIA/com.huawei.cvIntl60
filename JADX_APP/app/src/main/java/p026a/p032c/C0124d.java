package p026a.p032c;

import GeneralFunction.p003c.C0051d;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.MotionEventCompat;
import java.util.concurrent.ArrayBlockingQueue;
import p026a.C0110a;
import p026a.p027a.p028a.C0111a;
import p026a.p027a.p028a.C0114d;
import p026a.p032c.C0121a;

/* renamed from: a.c.d */
/* loaded from: classes.dex */
public class C0124d {

    /* renamed from: a */
    private Context f940a;

    /* renamed from: g */
    private a f946g;

    /* renamed from: b */
    private HandlerThread f941b = null;

    /* renamed from: c */
    private Handler f942c = null;

    /* renamed from: d */
    private HandlerThread f943d = null;

    /* renamed from: e */
    private Handler f944e = null;

    /* renamed from: f */
    private C0123c f945f = null;

    /* renamed from: h */
    private C0111a f947h = null;

    /* renamed from: i */
    private int f948i = 0;

    /* renamed from: j */
    private final int f949j = 1000;

    /* renamed from: k */
    private C0111a.a f950k = new C0111a.a() { // from class: a.c.d.3
        AnonymousClass3() {
        }

        @Override // p026a.p027a.p028a.C0111a.a
        /* renamed from: a */
        public void mo1122a(C0121a c0121a) {
            int i;
            switch (c0121a.m1198a()) {
                case 18464:
                    if (C0124d.this.f947h.m1113a() != 6 && C0124d.this.f947h.m1113a() != 8) {
                        C0124d.this.m1248a("Enable live view first", 0);
                        return;
                    }
                    if (c0121a.m1207b("result") == 0) {
                        C0121a c0121a2 = new C0121a(18176);
                        C0114d c0114d = (C0114d) c0121a.m1213f("LiveViewFrame").m1214a();
                        int i2 = c0114d.f872a.f469a;
                        byte[] bArr = new byte[i2];
                        System.arraycopy(c0114d.f872a.m454a(), 0, bArr, 0, i2);
                        c0114d.f872a.m457d();
                        C0051d c0051d = new C0051d(bArr);
                        c0051d.f470b = c0114d.f872a.f470b;
                        c0051d.f471c = c0114d.f872a.f471c;
                        c0114d.f872a = c0051d;
                        c0121a2.m1202a("LiveViewFrame", new C0121a.a(c0114d));
                        C0124d.this.m1254b(c0121a2);
                        C0124d.this.f948i = 0;
                        i = 0;
                    } else if (c0121a.m1207b("result") == 1) {
                        i = 5;
                        C0124d.m1257c(C0124d.this);
                        if (C0124d.this.f948i >= 1000) {
                            C0124d.this.m1248a("Get live view frame busy over 1000 times", 0);
                            C0124d.this.f948i = 0;
                        }
                    } else {
                        i = 0;
                    }
                    C0124d.this.m1262a(new C0121a(18464), i);
                    break;
            }
            C0124d.this.m1254b(c0121a);
        }

        @Override // p026a.p027a.p028a.C0111a.a
        /* renamed from: a */
        public void mo1121a() {
            C0124d.this.m1248a("Notify: USB device Attached", 1);
            C0124d.this.m1254b(new C0121a(18436));
        }

        @Override // p026a.p027a.p028a.C0111a.a
        /* renamed from: b */
        public void mo1123b() {
            C0124d.this.m1248a("Notify: USB device Detached", 1);
            C0124d.this.f945f.f935c = 0;
            C0124d.this.m1254b(new C0121a(18435));
        }
    };

    /* renamed from: a.c.d$a */
    public interface a {
        /* renamed from: a */
        void mo1268a(C0121a c0121a);
    }

    /* renamed from: c */
    static /* synthetic */ int m1257c(C0124d c0124d) {
        int i = c0124d.f948i;
        c0124d.f948i = i + 1;
        return i;
    }

    /* renamed from: a */
    public void m1248a(String str, int i) {
        C0110a.m1074a("UI_RemoteControl", str, i);
    }

    public C0124d(Context context, a aVar) {
        this.f940a = null;
        this.f946g = null;
        this.f940a = context;
        this.f946g = aVar;
    }

    /* renamed from: a */
    public void m1260a() {
        this.f945f = new C0123c();
        this.f945f.f936d = 0;
        this.f945f.f937e = new ArrayBlockingQueue(32);
        this.f945f.f938f = new ArrayBlockingQueue(32);
        this.f945f.f933a = 0;
        this.f945f.f934b = 0;
        this.f945f.f935c = 0;
        this.f945f.f939g = false;
        this.f941b = new HandlerThread("RemoteControlServer");
        this.f941b.start();
        this.f942c = m1253b(this.f941b);
        this.f943d = new HandlerThread("RemoteInterruptServer");
        this.f943d.start();
        this.f944e = m1245a(this.f943d);
        m1248a("Library Version : 0.0D", 2);
        m1251a("android.permission.ACCESS_COARSE_LOCATION");
        m1251a("android.permission.ACCESS_FINE_LOCATION");
        m1251a("android.permission.WRITE_EXTERNAL_STORAGE");
    }

    /* renamed from: a */
    public void m1261a(C0121a c0121a) {
        m1262a(c0121a, 0L);
    }

    /* renamed from: a */
    public void m1262a(C0121a c0121a, long j) {
        m1263a(c0121a.m1208b(), j);
    }

    /* renamed from: a */
    public void m1263a(Message message, long j) {
        if (m1256b(message)) {
            this.f944e.sendMessageDelayed(message, j);
            return;
        }
        this.f945f.f936d++;
        this.f942c.sendMessageDelayed(message, j);
    }

    /* renamed from: a.c.d$1 */
    class AnonymousClass1 extends Handler {
        AnonymousClass1(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            C0124d.this.m1248a("Remote Interrupt handleMessage: 0x" + Integer.toHexString(message.what), 3);
            C0124d.this.m1250a(message);
        }
    }

    /* renamed from: a */
    private Handler m1245a(HandlerThread handlerThread) {
        return new Handler(handlerThread.getLooper()) { // from class: a.c.d.1
            AnonymousClass1(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                C0124d.this.m1248a("Remote Interrupt handleMessage: 0x" + Integer.toHexString(message.what), 3);
                C0124d.this.m1250a(message);
            }
        };
    }

    /* renamed from: a */
    public boolean m1250a(Message message) {
        return true;
    }

    /* renamed from: a.c.d$2 */
    class AnonymousClass2 extends Handler {
        AnonymousClass2(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 18464) {
                C0124d.this.m1248a("Remote handleMessage: 0x" + Integer.toHexString(message.what), 3);
            }
            switch (message.what & MotionEventCompat.ACTION_POINTER_INDEX_MASK) {
                case 18432:
                    C0124d.this.m1258c(message);
                    break;
                default:
                    C0124d.this.m1248a("Remote not handle message!! ID:" + message.what, 0);
                    break;
            }
            C0123c c0123c = C0124d.this.f945f;
            c0123c.f936d--;
        }
    }

    /* renamed from: b */
    private Handler m1253b(HandlerThread handlerThread) {
        return new Handler(handlerThread.getLooper()) { // from class: a.c.d.2
            AnonymousClass2(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                if (message.what != 18464) {
                    C0124d.this.m1248a("Remote handleMessage: 0x" + Integer.toHexString(message.what), 3);
                }
                switch (message.what & MotionEventCompat.ACTION_POINTER_INDEX_MASK) {
                    case 18432:
                        C0124d.this.m1258c(message);
                        break;
                    default:
                        C0124d.this.m1248a("Remote not handle message!! ID:" + message.what, 0);
                        break;
                }
                C0123c c0123c = C0124d.this.f945f;
                c0123c.f936d--;
            }
        };
    }

    /* renamed from: b */
    private boolean m1256b(Message message) {
        switch (message.what) {
            case 16644:
            case 17414:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: b */
    public void m1254b(C0121a c0121a) {
        this.f946g.mo1268a(c0121a);
    }

    /* renamed from: a */
    private boolean m1251a(String str) {
        if (ContextCompat.checkSelfPermission(this.f940a, str) != 0) {
            m1248a("Permission Not Granted : " + str, 2);
            return false;
        }
        m1248a("Permission Granted : " + str, 4);
        return true;
    }

    /* renamed from: b */
    public boolean m1264b() {
        return this.f945f.f935c >= 1;
    }

    /* renamed from: c */
    public boolean m1265c() {
        return this.f947h.m1113a() >= 4;
    }

    /* renamed from: d */
    public boolean m1266d() {
        return this.f947h != null && this.f947h.m1113a() >= 6;
    }

    /* renamed from: e */
    public void m1267e() {
        if (this.f947h != null) {
            this.f947h.m1117c();
        }
    }

    /* renamed from: c */
    public boolean m1258c(Message message) {
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 18432:
                if (this.f947h == null) {
                    this.f947h = new C0111a(this.f940a);
                }
                int m1115a = this.f947h.m1115a(this.f950k);
                if (m1115a == 0) {
                    this.f945f.f935c = 1;
                    m1261a(new C0121a(18442));
                }
                c0121a.m1200a("result", m1115a);
                m1254b(c0121a);
                break;
            case 18433:
                this.f945f.f935c = 0;
                this.f947h.m1118d();
                c0121a.m1200a("result", 0);
                m1254b(c0121a);
                break;
            case 18434:
                c0121a.m1200a("result", this.f947h.m1119e());
                m1254b(c0121a);
                break;
            case 18437:
                if (this.f947h == null) {
                    this.f947h = new C0111a(this.f940a);
                }
                c0121a.m1204a("usb_permission", this.f947h.m1116b());
                m1254b(c0121a);
                break;
            case 18442:
            case 18443:
            case 18444:
            case 18445:
            case 18448:
            case 18449:
            case 18450:
            case 18451:
            case 18452:
            case 18453:
            case 18455:
            case 18456:
            case 18457:
            case 18458:
            case 18459:
            case 18464:
            case 18465:
            case 18466:
            case 18480:
            case 18481:
            case 18482:
            case 18483:
            case 18484:
            case 18496:
            case 18497:
            case 18498:
            case 18499:
            case 18500:
            case 18501:
            case 18503:
            case 18504:
            case 18505:
            case 18506:
            case 18512:
            case 18513:
            case 18514:
            case 18515:
            case 18516:
            case 18517:
            case 18518:
            case 18519:
            case 18520:
            case 18521:
            case 18522:
            case 18523:
            case 18528:
            case 18544:
            case 18545:
            case 18546:
            case 18547:
            case 18548:
            case 18549:
            case 18551:
            case 18552:
            case 18553:
            case 18672:
            case 18673:
            case 18674:
            case 18675:
                if (this.f947h == null) {
                    m1248a("Receive msg but objUsbCore is null!!" + message.what, 0);
                    break;
                } else if (this.f947h.m1113a() < 3) {
                    m1248a("USB core status is not connected. send cmd fail", 0);
                    break;
                } else if (message.what == 18449 && this.f947h.m1113a() >= 5) {
                    m1248a("Live view already start, send get frame. CoreStatus: " + this.f947h.m1113a(), 0);
                    m1261a(new C0121a(18464));
                    break;
                } else if (message.what == 18464 && this.f947h.m1113a() != 6 && this.f947h.m1113a() != 8) {
                    m1248a("Enable live view first. CoreStatus: " + this.f947h.m1113a(), 0);
                    break;
                } else if (message.what == 18453 && this.f947h.m1113a() >= 7) {
                    m1248a("Ignore this capture cmd. CoreStatus: " + this.f947h.m1113a(), 0);
                    break;
                } else if (message.what == 18451 && this.f947h.m1113a() >= 7) {
                    m1248a("Ignore this record cmd. Status: " + this.f947h.m1113a(), 0);
                    break;
                } else {
                    int m1114a = this.f947h.m1114a(message.what, message.getData());
                    if (m1114a == 1) {
                        if (message.what != 18444) {
                            Message message2 = new Message();
                            message2.what = message.what;
                            message2.setData(message.getData());
                            m1263a(message2, 5L);
                            break;
                        }
                    } else if (m1114a == 5) {
                        m1248a("Skip USB Msg: " + message.what, 0);
                        break;
                    }
                }
                break;
            default:
                m1248a("Unknown Remote USB Msg: " + message.what, 0);
                return false;
        }
        return true;
    }

    /* renamed from: a.c.d$3 */
    class AnonymousClass3 implements C0111a.a {
        AnonymousClass3() {
        }

        @Override // p026a.p027a.p028a.C0111a.a
        /* renamed from: a */
        public void mo1122a(C0121a c0121a) {
            int i;
            switch (c0121a.m1198a()) {
                case 18464:
                    if (C0124d.this.f947h.m1113a() != 6 && C0124d.this.f947h.m1113a() != 8) {
                        C0124d.this.m1248a("Enable live view first", 0);
                        return;
                    }
                    if (c0121a.m1207b("result") == 0) {
                        C0121a c0121a2 = new C0121a(18176);
                        C0114d c0114d = (C0114d) c0121a.m1213f("LiveViewFrame").m1214a();
                        int i2 = c0114d.f872a.f469a;
                        byte[] bArr = new byte[i2];
                        System.arraycopy(c0114d.f872a.m454a(), 0, bArr, 0, i2);
                        c0114d.f872a.m457d();
                        C0051d c0051d = new C0051d(bArr);
                        c0051d.f470b = c0114d.f872a.f470b;
                        c0051d.f471c = c0114d.f872a.f471c;
                        c0114d.f872a = c0051d;
                        c0121a2.m1202a("LiveViewFrame", new C0121a.a(c0114d));
                        C0124d.this.m1254b(c0121a2);
                        C0124d.this.f948i = 0;
                        i = 0;
                    } else if (c0121a.m1207b("result") == 1) {
                        i = 5;
                        C0124d.m1257c(C0124d.this);
                        if (C0124d.this.f948i >= 1000) {
                            C0124d.this.m1248a("Get live view frame busy over 1000 times", 0);
                            C0124d.this.f948i = 0;
                        }
                    } else {
                        i = 0;
                    }
                    C0124d.this.m1262a(new C0121a(18464), i);
                    break;
            }
            C0124d.this.m1254b(c0121a);
        }

        @Override // p026a.p027a.p028a.C0111a.a
        /* renamed from: a */
        public void mo1121a() {
            C0124d.this.m1248a("Notify: USB device Attached", 1);
            C0124d.this.m1254b(new C0121a(18436));
        }

        @Override // p026a.p027a.p028a.C0111a.a
        /* renamed from: b */
        public void mo1123b() {
            C0124d.this.m1248a("Notify: USB device Detached", 1);
            C0124d.this.f945f.f935c = 0;
            C0124d.this.m1254b(new C0121a(18435));
        }
    }
}
