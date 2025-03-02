package p026a.p027a.p028a;

import GeneralFunction.p003c.C0048a;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import p026a.p029b.p030a.C0117b;
import p026a.p029b.p030a.C0119d;
import p026a.p032c.C0121a;

/* renamed from: a.a.a.a */
/* loaded from: classes.dex */
public class C0111a {

    /* renamed from: a */
    private static C0117b f841a = null;

    /* renamed from: b */
    private static Context f842b;

    /* renamed from: c */
    private int f843c = 0;

    /* renamed from: d */
    private int f844d = 0;

    /* renamed from: e */
    private int f845e = 0;

    /* renamed from: f */
    private boolean f846f = false;

    /* renamed from: g */
    private boolean f847g = false;

    /* renamed from: h */
    private int f848h = 0;

    /* renamed from: i */
    private C0048a f849i = null;

    /* renamed from: j */
    private boolean f850j = false;

    /* renamed from: k */
    private HandlerThread f851k = null;

    /* renamed from: l */
    private Handler f852l = null;

    /* renamed from: m */
    private a f853m = null;

    /* renamed from: n */
    private C0117b.a f854n = new C0117b.a() { // from class: a.a.a.a.1
        AnonymousClass1() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:3:0x0005, code lost:
        
            return 0;
         */
        @Override // p026a.p029b.p030a.C0117b.a
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int mo1120a(int r5, int r6) {
            /*
                r4 = this;
                r3 = 1
                r2 = 0
                switch(r5) {
                    case 0: goto L6;
                    case 1: goto L15;
                    case 2: goto L33;
                    default: goto L5;
                }
            L5:
                return r2
            L6:
                java.lang.String r0 = "Event: Device Attached"
                p026a.p027a.p028a.C0111a.m1085a(r0, r3)
                a.a.a.a r0 = p026a.p027a.p028a.C0111a.this
                a.a.a.a$a r0 = p026a.p027a.p028a.C0111a.m1080a(r0)
                r0.mo1121a()
                goto L5
            L15:
                java.lang.String r0 = "Event: Device Detached"
                p026a.p027a.p028a.C0111a.m1085a(r0, r3)
                a.a.a.a r0 = p026a.p027a.p028a.C0111a.this
                p026a.p027a.p028a.C0111a.m1076a(r0, r2)
                a.a.a.a r0 = p026a.p027a.p028a.C0111a.this
                p026a.p027a.p028a.C0111a.m1092b(r0, r2)
                a.a.a.a r0 = p026a.p027a.p028a.C0111a.this
                p026a.p027a.p028a.C0111a.m1091b(r0)
                a.a.a.a r0 = p026a.p027a.p028a.C0111a.this
                a.a.a.a$a r0 = p026a.p027a.p028a.C0111a.m1080a(r0)
                r0.mo1123b()
                goto L5
            L33:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "Event: Permission "
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.StringBuilder r0 = r0.append(r6)
                java.lang.String r0 = r0.toString()
                p026a.p027a.p028a.C0111a.m1085a(r0, r3)
                if (r6 != 0) goto L52
                a.a.a.a r0 = p026a.p027a.p028a.C0111a.this
                r1 = 3
                p026a.p027a.p028a.C0111a.m1096c(r0, r1)
                goto L5
            L52:
                a.a.a.a r0 = p026a.p027a.p028a.C0111a.this
                r1 = 2
                p026a.p027a.p028a.C0111a.m1096c(r0, r1)
                goto L5
            */
            throw new UnsupportedOperationException("Method not decompiled: p026a.p027a.p028a.C0111a.AnonymousClass1.mo1120a(int, int):int");
        }
    };

    /* renamed from: a.a.a.a$a */
    public interface a {
        /* renamed from: a */
        void mo1121a();

        /* renamed from: a */
        void mo1122a(C0121a c0121a);

        /* renamed from: b */
        void mo1123b();
    }

    public C0111a(Context context) {
        f842b = context;
        f841a = new C0117b(f842b);
    }

    /* renamed from: a */
    public int m1113a() {
        return this.f843c;
    }

    /* renamed from: a */
    public void m1082a(int i) {
        this.f843c = i;
        m1093b("USBCoreStatus change to " + this.f843c, 1);
    }

    /* renamed from: g */
    public void m1108g() {
        this.f844d = 0;
        this.f848h = 0;
        this.f846f = false;
        this.f847g = false;
    }

    /* renamed from: b */
    public boolean m1116b() {
        int m1162i = f841a.m1162i();
        m1093b("CheckUSBPermission: " + m1162i, 1);
        return m1162i == 0;
    }

    /* renamed from: c */
    public void m1117c() {
        if (f841a != null) {
            f841a.m1158e();
        }
    }

    /* renamed from: a */
    public int m1115a(a aVar) {
        if (m1113a() >= 3) {
            m1093b("already init: " + m1113a(), 1);
            return 0;
        }
        if (m1113a() != 0) {
            m1093b("init fail, check status: " + m1113a(), 1);
            return -1;
        }
        m1082a(1);
        if (aVar == null) {
            m1093b("Initialize with null callbacks", 0);
            m1082a(0);
            return -1;
        }
        f841a.m1152a(this.f854n);
        this.f853m = aVar;
        this.f844d = 1;
        if (f841a.m1163j() != 0) {
            m1093b("Init USB fail!", 0);
            m1082a(0);
            return -1;
        }
        while (this.f844d == 1) {
            m1090b(200);
        }
        m1093b("Get Permission: " + this.f844d, 3);
        if (this.f844d != 3) {
            m1082a(0);
            return -1;
        }
        m1082a(2);
        if (f841a.m1161h() != 0) {
            m1093b("Find target if&eps fail!", 0);
            return -1;
        }
        if (f841a.m1165l() != 0) {
            m1093b("Create connection fail!", 0);
            return -1;
        }
        if (this.f849i != null) {
            this.f849i.m449b();
            this.f849i = null;
        }
        if (this.f851k != null) {
            m1110h();
        }
        this.f851k = new HandlerThread("UsbCoreMainThread");
        this.f851k.start();
        this.f852l = m1081a(this.f851k);
        m1082a(3);
        m1093b("init done " + System.currentTimeMillis(), 3);
        return 0;
    }

    /* renamed from: d */
    public void m1118d() {
        if (m1113a() != 0) {
            f841a.m1164k();
            m1110h();
            m1108g();
            m1082a(0);
        }
    }

    /* renamed from: e */
    public int m1119e() {
        return f841a.m1167n();
    }

    /* renamed from: a */
    public int m1114a(int i, Bundle bundle) {
        if (m1113a() < 3) {
            m1093b("Connect before send command", 0);
            return -1;
        }
        if (this.f852l == null) {
            m1093b("UsbCoreMainHandler is null", 0);
            return -1;
        }
        Message message = new Message();
        message.what = i;
        message.setData(bundle);
        if (this.f845e != 0) {
            if (this.f845e == 18443 && message.what != 18480) {
                m1093b("Send USB cmd failed because the communication is closing: " + message.what, 1);
                return -1;
            }
            if (this.f845e == i && i == 18464) {
                m1093b("Warning: skip duplicated get frame", 1);
                return 5;
            }
        }
        this.f845e = i;
        this.f852l.sendMessage(message);
        return 0;
    }

    /* renamed from: b */
    public static void m1093b(String str, int i) {
        C0119d.m1195a("USBCore", str, i);
    }

    /* renamed from: b */
    private void m1090b(int i) {
        try {
            Thread.sleep(i);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public byte[] m1099c(int i) {
        return new byte[]{(byte) i, (byte) (i >> 8), (byte) (i >> 16), (byte) (i >> 24)};
    }

    /* renamed from: h */
    private void m1110h() {
        if (this.f851k != null) {
            this.f850j = true;
            this.f852l = null;
            this.f851k.quit();
            while (this.f851k.isAlive()) {
                m1090b(10);
            }
            this.f851k = null;
            this.f850j = false;
        }
    }

    /* renamed from: a */
    public boolean m1088a(C0112b c0112b) {
        if (c0112b.f858b < 1 || c0112b.f858b > 12) {
            m1093b("[UsbCoreMsg] Invalid month setting: " + ((int) c0112b.f858b), 0);
            return false;
        }
        if (c0112b.f859c < 1 || c0112b.f859c > 31) {
            m1093b("[UsbCoreMsg] Invalid day setting: " + ((int) c0112b.f859c), 0);
            return false;
        }
        if (c0112b.f860d < 0 || c0112b.f860d > 23) {
            m1093b("[UsbCoreMsg] Invalid hour setting: " + ((int) c0112b.f860d), 0);
            return false;
        }
        if (c0112b.f861e < 0 || c0112b.f861e > 60) {
            m1093b("[UsbCoreMsg] Invalid minute setting: " + ((int) c0112b.f861e), 0);
            return false;
        }
        if (c0112b.f862f < 0 || c0112b.f862f > 60) {
            m1093b("[UsbCoreMsg] Invalid second setting: " + ((int) c0112b.f862f), 0);
            return false;
        }
        if (c0112b.f864h >= 0 && c0112b.f864h <= 999) {
            return true;
        }
        m1093b("[UsbCoreMsg] Invalid millisecond setting: " + c0112b.f864h, 0);
        return false;
    }

    /* renamed from: d */
    public int m1100d(int i) {
        if (i == -1) {
            return 0;
        }
        if (135 <= i && i < 225) {
            return 0;
        }
        if (225 <= i && i < 315) {
            return 1;
        }
        if (315 <= i || i < 45) {
            return 2;
        }
        if (45 <= i && i < 135) {
            return 3;
        }
        m1093b("[UsbCoreMsg] Invalid orientation: " + i, 0);
        return -1;
    }

    /* renamed from: a */
    public void m1084a(C0114d c0114d, byte b) {
        switch (b) {
            case 9:
                c0114d.f874c = 1920;
                c0114d.f875d = 960;
                break;
            case 10:
                c0114d.f874c = 1280;
                c0114d.f875d = 640;
                break;
            case 11:
                c0114d.f874c = 3840;
                c0114d.f875d = 1920;
                break;
            default:
                m1093b("[UsbCoreMsg] Unknown resolution: " + ((int) b) + ", use default setting", 0);
                c0114d.f874c = 1280;
                c0114d.f875d = 640;
                break;
        }
    }

    /* renamed from: a.a.a.a$1 */
    class AnonymousClass1 implements C0117b.a {
        AnonymousClass1() {
        }

        @Override // p026a.p029b.p030a.C0117b.a
        /* renamed from: a */
        public int mo1120a(int i, int i2) {
            /*
                this = this;
                r3 = 1
                r2 = 0
                switch(r5) {
                    case 0: goto L6;
                    case 1: goto L15;
                    case 2: goto L33;
                    default: goto L5;
                }
            L5:
                return r2
            L6:
                java.lang.String r0 = "Event: Device Attached"
                p026a.p027a.p028a.C0111a.m1085a(r0, r3)
                a.a.a.a r0 = p026a.p027a.p028a.C0111a.this
                a.a.a.a$a r0 = p026a.p027a.p028a.C0111a.m1080a(r0)
                r0.mo1121a()
                goto L5
            L15:
                java.lang.String r0 = "Event: Device Detached"
                p026a.p027a.p028a.C0111a.m1085a(r0, r3)
                a.a.a.a r0 = p026a.p027a.p028a.C0111a.this
                p026a.p027a.p028a.C0111a.m1076a(r0, r2)
                a.a.a.a r0 = p026a.p027a.p028a.C0111a.this
                p026a.p027a.p028a.C0111a.m1092b(r0, r2)
                a.a.a.a r0 = p026a.p027a.p028a.C0111a.this
                p026a.p027a.p028a.C0111a.m1091b(r0)
                a.a.a.a r0 = p026a.p027a.p028a.C0111a.this
                a.a.a.a$a r0 = p026a.p027a.p028a.C0111a.m1080a(r0)
                r0.mo1123b()
                goto L5
            L33:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "Event: Permission "
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.StringBuilder r0 = r0.append(r6)
                java.lang.String r0 = r0.toString()
                p026a.p027a.p028a.C0111a.m1085a(r0, r3)
                if (r6 != 0) goto L52
                a.a.a.a r0 = p026a.p027a.p028a.C0111a.this
                r1 = 3
                p026a.p027a.p028a.C0111a.m1096c(r0, r1)
                goto L5
            L52:
                a.a.a.a r0 = p026a.p027a.p028a.C0111a.this
                r1 = 2
                p026a.p027a.p028a.C0111a.m1096c(r0, r1)
                goto L5
            */
            throw new UnsupportedOperationException("Method not decompiled: p026a.p027a.p028a.C0111a.AnonymousClass1.mo1120a(int, int):int");
        }
    }

    /* renamed from: i */
    public int m1112i() {
        return m1078a(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return 0;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int m1078a(boolean r9) {
        /*
            r8 = this;
            r3 = 1
            r0 = -1
            r1 = 0
            r2 = 16
            byte[] r4 = new byte[r2]
            a.b.a.b r2 = p026a.p027a.p028a.C0111a.f841a
            r2.m1160g()
            r2 = 122(0x7a, float:1.71E-43)
            r4[r1] = r2
            r4[r3] = r1
            r2 = 2
            r4[r2] = r3
            if (r9 == 0) goto L31
            r2 = r3
        L18:
            if (r2 == 0) goto L5d
            a.b.a.b r5 = p026a.p027a.p028a.C0111a.f841a
            int r5 = r5.m1146a(r4)
            if (r5 < 0) goto L76
            a.b.a.b r5 = p026a.p027a.p028a.C0111a.f841a
            byte r5 = r5.m1144a(r1)
            if (r5 != r3) goto L52
            int r2 = r2 + 1
        L2c:
            r5 = 200(0xc8, float:2.8E-43)
            if (r2 < r5) goto Ld9
        L30:
            return r0
        L31:
            a.b.a.b r2 = p026a.p027a.p028a.C0111a.f841a
            int r2 = r2.m1167n()
            if (r2 == 0) goto L4c
            java.lang.String r2 = "[UsbCoreMsg] Send reset fail, try restart connection"
            m1093b(r2, r1)
            a.b.a.b r2 = p026a.p027a.p028a.C0111a.f841a
            int r2 = r2.m1166m()
            if (r2 == 0) goto L4c
            java.lang.String r2 = "[UsbCoreMsg] restart connection fail"
            m1093b(r2, r1)
            goto L30
        L4c:
            r2 = 8
            r4[r2] = r1
            r2 = r3
            goto L18
        L52:
            if (r5 != 0) goto L5f
            a.b.a.b r0 = p026a.p027a.p028a.C0111a.f841a
            r0.m1156c()
            r0 = 4
            r8.m1082a(r0)
        L5d:
            r0 = r1
            goto L30
        L5f:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "[UsbCoreMsg] open communication fail: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r5)
            java.lang.String r2 = r2.toString()
            m1093b(r2, r1)
            goto L30
        L76:
            int r6 = r8.m1113a()
            r7 = 3
            if (r6 != r7) goto Lbd
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "[UsbCoreMsg] Send open communication fail: "
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.StringBuilder r5 = r6.append(r5)
            java.lang.String r6 = " . Try no."
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r5 = r5.append(r2)
            java.lang.String r5 = r5.toString()
            m1093b(r5, r1)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "[UsbCoreMsg] Send reset: "
            java.lang.StringBuilder r5 = r5.append(r6)
            a.b.a.b r6 = p026a.p027a.p028a.C0111a.f841a
            int r6 = r6.m1167n()
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r5 = r5.toString()
            m1093b(r5, r1)
            int r2 = r2 + 1
            goto L2c
        Lbd:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "[UsbCoreMsg] usb not connected, CoreStatus: "
            java.lang.StringBuilder r2 = r2.append(r3)
            int r3 = r8.m1113a()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            m1093b(r2, r1)
            goto L30
        Ld9:
            r5 = 100
            r8.m1090b(r5)
            goto L18
        */
        throw new UnsupportedOperationException("Method not decompiled: p026a.p027a.p028a.C0111a.m1078a(boolean):int");
    }

    /* renamed from: a */
    public boolean m1086a(byte b) {
        if (b != -1) {
            return false;
        }
        m1093b("Camera go into power save mode. Send open communication first", 0);
        return m1112i() == 0;
    }

    /* renamed from: b */
    public int m1089b(byte b) {
        switch (b) {
            case -1:
                m1093b("Camera go into power save mode. Send open communication first", 0);
                return m1112i() != 0 ? -1 : 3;
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return -1;
            default:
                return -1;
        }
    }

    /* renamed from: a.a.a.a$2 */
    class AnonymousClass2 extends Handler {
        AnonymousClass2(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Code restructure failed: missing block: B:238:0x0af4, code lost:
        
            p026a.p027a.p028a.C0111a.m1093b("[UsbCoreMsg] Invalid data len: " + r8 + " result: " + r7, 0);
            r4.m457d();
         */
        /* JADX WARN: Code restructure failed: missing block: B:284:0x0c94, code lost:
        
            p026a.p027a.p028a.C0111a.m1093b("[UsbCoreMsg] Invalid data len: " + r9 + " result: " + r0, 0);
            p026a.p027a.p028a.C0111a.this.f848h = 0;
            r0 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:395:0x1164, code lost:
        
            if (p026a.p027a.p028a.C0111a.f841a.m1146a(r6) != (-1)) goto L1143;
         */
        /* JADX WARN: Code restructure failed: missing block: B:402:0x11bd, code lost:
        
            if (p026a.p027a.p028a.C0111a.f841a.m1146a(r6) != (-1)) goto L1150;
         */
        /* JADX WARN: Code restructure failed: missing block: B:409:0x1215, code lost:
        
            if (p026a.p027a.p028a.C0111a.f841a.m1146a(r6) != (-1)) goto L1157;
         */
        /* JADX WARN: Code restructure failed: missing block: B:416:0x126e, code lost:
        
            if (p026a.p027a.p028a.C0111a.f841a.m1146a(r6) != (-1)) goto L1164;
         */
        /* JADX WARN: Code restructure failed: missing block: B:423:0x12c8, code lost:
        
            if (p026a.p027a.p028a.C0111a.f841a.m1146a(r6) != (-1)) goto L1171;
         */
        /* JADX WARN: Code restructure failed: missing block: B:430:0x1322, code lost:
        
            if (p026a.p027a.p028a.C0111a.f841a.m1146a(r6) != (-1)) goto L1178;
         */
        /* JADX WARN: Code restructure failed: missing block: B:450:0x1470, code lost:
        
            if (p026a.p027a.p028a.C0111a.f841a.m1146a(r6) != (-1)) goto L1198;
         */
        /* JADX WARN: Code restructure failed: missing block: B:457:0x14ca, code lost:
        
            if (p026a.p027a.p028a.C0111a.f841a.m1146a(r6) != (-1)) goto L1205;
         */
        /* JADX WARN: Code restructure failed: missing block: B:464:0x1524, code lost:
        
            if (p026a.p027a.p028a.C0111a.f841a.m1146a(r6) != (-1)) goto L1212;
         */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void handleMessage(android.os.Message r15) {
            /*
                Method dump skipped, instructions count: 8636
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: p026a.p027a.p028a.C0111a.AnonymousClass2.handleMessage(android.os.Message):void");
        }
    }

    /* renamed from: a */
    private Handler m1081a(HandlerThread handlerThread) {
        return new Handler(handlerThread.getLooper()) { // from class: a.a.a.a.2
            AnonymousClass2(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                /*
                    Method dump skipped, instructions count: 8636
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: p026a.p027a.p028a.C0111a.AnonymousClass2.handleMessage(android.os.Message):void");
            }
        };
    }
}
