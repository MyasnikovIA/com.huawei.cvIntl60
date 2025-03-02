package p026a.p029b.p030a;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import com.google.android.exoplayer.ExoPlayer;
import java.util.Iterator;
import java.util.Random;
import java.util.concurrent.Semaphore;

/* renamed from: a.b.a.b */
/* loaded from: classes.dex */
public class C0117b {

    /* renamed from: t */
    private static Context f885t;

    /* renamed from: u */
    private static C0118c f886u = null;

    /* renamed from: a */
    private int f887a = 0;

    /* renamed from: b */
    private int f888b = 4251;

    /* renamed from: c */
    private int f889c = 4817;

    /* renamed from: d */
    private int f890d = 65536;

    /* renamed from: e */
    private int f891e = 500;

    /* renamed from: f */
    private int f892f = ExoPlayer.Factory.DEFAULT_MIN_REBUFFER_MS;

    /* renamed from: g */
    private UsbManager f893g = null;

    /* renamed from: h */
    private UsbDevice f894h = null;

    /* renamed from: i */
    private UsbInterface f895i = null;

    /* renamed from: j */
    private UsbEndpoint f896j = null;

    /* renamed from: k */
    private int f897k = 0;

    /* renamed from: l */
    private UsbEndpoint f898l = null;

    /* renamed from: m */
    private int f899m = 0;

    /* renamed from: n */
    private UsbDeviceConnection f900n = null;

    /* renamed from: o */
    private byte[] f901o = null;

    /* renamed from: p */
    private byte[] f902p = null;

    /* renamed from: q */
    private PendingIntent f903q = null;

    /* renamed from: r */
    private a f904r = null;

    /* renamed from: s */
    private int f905s = -1;

    /* renamed from: v */
    private Semaphore f906v = new Semaphore(1, true);

    /* renamed from: w */
    private final BroadcastReceiver f907w = new BroadcastReceiver() { // from class: a.b.a.b.1
        AnonymousClass1() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z;
            String action = intent.getAction();
            switch (action.hashCode()) {
                case -2114103349:
                    if (action.equals("android.hardware.usb.action.USB_DEVICE_ATTACHED")) {
                        z = false;
                        break;
                    }
                    z = -1;
                    break;
                case -1608292967:
                    if (action.equals("android.hardware.usb.action.USB_DEVICE_DETACHED")) {
                        z = true;
                        break;
                    }
                    z = -1;
                    break;
                case 1609010426:
                    if (action.equals("com.android.example.USB_PERMISSION")) {
                        z = 2;
                        break;
                    }
                    z = -1;
                    break;
                default:
                    z = -1;
                    break;
            }
            switch (z) {
                case false:
                    C0117b.m1135b("Device Attached", 1);
                    C0117b.this.f904r.mo1120a(0, -2);
                    break;
                case true:
                    C0117b.m1135b("Device Detached", 1);
                    C0117b.this.f904r.mo1120a(1, -2);
                    C0117b.this.m1157d();
                    C0117b.this.m1160g();
                    C0117b.this.m1141q();
                    C0117b.this.f887a = 0;
                    break;
                case true:
                    if (intent.getBooleanExtra("permission", false)) {
                        C0117b.m1135b("Permission accept!", 3);
                        if (C0117b.this.f887a < 2) {
                            C0117b.this.f887a = 2;
                        }
                        C0117b.this.f904r.mo1120a(2, 0);
                        break;
                    } else {
                        C0117b.m1135b("Permission denied!", 0);
                        if (C0117b.this.f887a < 2) {
                            C0117b.this.f887a = 0;
                        }
                        C0117b.this.f904r.mo1120a(2, -1);
                        break;
                    }
                default:
                    C0117b.m1135b("Unknown action " + action, 1);
                    break;
            }
        }
    };

    /* renamed from: a.b.a.b$a */
    public interface a {
        /* renamed from: a */
        int mo1120a(int i, int i2);
    }

    /* renamed from: a.b.a.b$1 */
    class AnonymousClass1 extends BroadcastReceiver {
        AnonymousClass1() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z;
            String action = intent.getAction();
            switch (action.hashCode()) {
                case -2114103349:
                    if (action.equals("android.hardware.usb.action.USB_DEVICE_ATTACHED")) {
                        z = false;
                        break;
                    }
                    z = -1;
                    break;
                case -1608292967:
                    if (action.equals("android.hardware.usb.action.USB_DEVICE_DETACHED")) {
                        z = true;
                        break;
                    }
                    z = -1;
                    break;
                case 1609010426:
                    if (action.equals("com.android.example.USB_PERMISSION")) {
                        z = 2;
                        break;
                    }
                    z = -1;
                    break;
                default:
                    z = -1;
                    break;
            }
            switch (z) {
                case false:
                    C0117b.m1135b("Device Attached", 1);
                    C0117b.this.f904r.mo1120a(0, -2);
                    break;
                case true:
                    C0117b.m1135b("Device Detached", 1);
                    C0117b.this.f904r.mo1120a(1, -2);
                    C0117b.this.m1157d();
                    C0117b.this.m1160g();
                    C0117b.this.m1141q();
                    C0117b.this.f887a = 0;
                    break;
                case true:
                    if (intent.getBooleanExtra("permission", false)) {
                        C0117b.m1135b("Permission accept!", 3);
                        if (C0117b.this.f887a < 2) {
                            C0117b.this.f887a = 2;
                        }
                        C0117b.this.f904r.mo1120a(2, 0);
                        break;
                    } else {
                        C0117b.m1135b("Permission denied!", 0);
                        if (C0117b.this.f887a < 2) {
                            C0117b.this.f887a = 0;
                        }
                        C0117b.this.f904r.mo1120a(2, -1);
                        break;
                    }
                default:
                    C0117b.m1135b("Unknown action " + action, 1);
                    break;
            }
        }
    }

    public C0117b(Context context) {
        f885t = context;
    }

    /* renamed from: a */
    public int m1145a() {
        return this.f887a;
    }

    /* renamed from: b */
    public int m1154b() {
        return this.f890d;
    }

    /* renamed from: c */
    public void m1156c() {
        if (f886u != null) {
            f886u.m1189a(this.f891e, this.f892f);
        }
    }

    /* renamed from: d */
    public void m1157d() {
        if (f886u != null) {
            f886u.m1188a();
        }
    }

    /* renamed from: e */
    public void m1158e() {
        if (f886u != null) {
            f886u.m1191c();
            f886u.m1194f();
        }
    }

    /* renamed from: f */
    public void m1159f() {
        if (f886u != null) {
            f886u.m1192d();
        }
    }

    /* renamed from: g */
    public void m1160g() {
        if (f886u != null) {
            f886u.m1193e();
        }
    }

    /* renamed from: h */
    public int m1161h() {
        if (this.f894h == null) {
            m1135b("No target device", 0);
            return -1;
        }
        if (this.f895i != null) {
            m1135b("Replace original interface", 1);
        }
        for (int i = 0; i < this.f894h.getInterfaceCount(); i++) {
            int i2 = 0;
            boolean z = false;
            boolean z2 = false;
            while (true) {
                if (i2 < this.f894h.getInterface(i).getEndpointCount()) {
                    UsbEndpoint endpoint = this.f894h.getInterface(i).getEndpoint(i2);
                    if (endpoint.getType() == 2) {
                        if (endpoint.getDirection() == 128) {
                            this.f896j = endpoint;
                            this.f897k = 16384;
                            z2 = true;
                        } else if (endpoint.getDirection() == 0) {
                            this.f898l = endpoint;
                            this.f899m = 16384;
                            z = true;
                        }
                    }
                    if (!z2 || !z) {
                        i2++;
                    } else {
                        this.f895i = this.f894h.getInterface(i);
                        break;
                    }
                }
            }
        }
        if (this.f895i != null) {
            return 0;
        }
        m1135b("Could not find appropriate interface. Device: " + this.f894h.getDeviceName() + " PID: " + this.f894h.getProductId() + " VID: " + this.f894h.getVendorId(), 0);
        return -1;
    }

    /* renamed from: a */
    public void m1152a(a aVar) {
        this.f904r = aVar;
    }

    /* renamed from: i */
    public int m1162i() {
        if (this.f893g == null) {
            this.f893g = (UsbManager) f885t.getSystemService("usb");
            if (this.f893g == null) {
                m1135b("Unable to initialize USB manager", 0);
                return -1;
            }
        }
        Iterator<UsbDevice> it = this.f893g.getDeviceList().values().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            UsbDevice next = it.next();
            m1130a(next);
            if (next.getVendorId() == this.f889c && next.getProductId() == this.f888b) {
                this.f894h = next;
                break;
            }
        }
        if (this.f894h == null) {
            m1135b("No appropriate USB device", 0);
            this.f893g = null;
            return -1;
        }
        if (this.f893g.hasPermission(this.f894h)) {
            return 0;
        }
        m1135b("No permission", 1);
        return -4;
    }

    /* renamed from: j */
    public int m1163j() {
        m1139o();
        if (m1145a() != 0) {
            m1135b("Init USB fail, check status: " + m1145a(), 1);
            m1140p();
            return -1;
        }
        m1142r();
        f886u = new C0118c(this);
        int m1162i = m1162i();
        if (m1162i == -1) {
            m1140p();
            return -1;
        }
        this.f901o = new byte[this.f890d];
        this.f902p = new byte[64];
        if (m1162i == -4) {
            m1135b("Need to ask for permission", 1);
            this.f887a = 1;
            this.f893g.requestPermission(this.f894h, this.f903q);
        } else {
            m1135b("Already has permission", 1);
            this.f887a = 2;
            this.f904r.mo1120a(2, 0);
        }
        m1140p();
        return 0;
    }

    /* renamed from: k */
    public int m1164k() {
        m1139o();
        if (m1145a() >= 3) {
            if (!this.f900n.releaseInterface(this.f895i)) {
                m1135b("deinit fail: could not release interface", 0);
                m1140p();
                return -1;
            }
            this.f900n.close();
        }
        m1157d();
        m1160g();
        this.f887a = 0;
        m1140p();
        m1141q();
        return 0;
    }

    /* renamed from: l */
    public int m1165l() {
        m1139o();
        if (m1145a() < 2) {
            m1135b("Should do initialize before create connection", 0);
            m1140p();
            return -1;
        }
        if (this.f894h == null || this.f895i == null) {
            m1135b("No target device or interface", 0);
            m1140p();
            return -1;
        }
        this.f900n = this.f893g.openDevice(this.f894h);
        if (this.f900n == null) {
            m1135b("Open device fail", 0);
            m1140p();
            return -1;
        }
        if (!this.f900n.claimInterface(this.f895i, true)) {
            m1135b("Claim interface fail", 0);
            m1140p();
            return -1;
        }
        this.f887a = 3;
        m1140p();
        return 0;
    }

    /* renamed from: m */
    public int m1166m() {
        m1139o();
        m1135b("Restart USB connection!", 1);
        if (this.f900n == null || this.f894h == null || this.f895i == null) {
            m1135b("targetConnection or targetDevice or targetInterface is null, restart fail", 0);
            m1140p();
            return -1;
        }
        this.f900n.close();
        try {
            Thread.sleep(20L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        this.f900n = this.f893g.openDevice(this.f894h);
        if (this.f900n == null) {
            m1135b("Open device fail", 0);
            m1140p();
            return -1;
        }
        if (!this.f900n.claimInterface(this.f895i, true)) {
            m1135b("Claim interface fail", 0);
            m1140p();
            return -1;
        }
        m1140p();
        return 0;
    }

    /* renamed from: a */
    public int m1146a(byte[] bArr) {
        return m1150a(bArr, false, 2000);
    }

    /* renamed from: a */
    public int m1148a(byte[] bArr, int i) {
        return m1150a(bArr, false, i);
    }

    /* renamed from: a */
    public int m1149a(byte[] bArr, boolean z) {
        return m1150a(bArr, z, 2000);
    }

    /* renamed from: a */
    public int m1150a(byte[] bArr, boolean z, int i) {
        byte[] bArr2;
        int i2;
        int i3;
        byte[] bArr3 = new byte[16384];
        int i4 = 0;
        if (z) {
            bArr2 = this.f902p;
            i2 = 64;
        } else {
            bArr2 = this.f901o;
            i2 = this.f890d;
        }
        m1139o();
        if (m1145a() != 3) {
            m1135b("Connected first", 0);
            m1140p();
            return -1;
        }
        int m1143s = m1143s();
        C0116a c0116a = new C0116a(Integer.reverseBytes(i2), Byte.MIN_VALUE, m1143s);
        c0116a.m1125a(bArr);
        byte[] m1126a = c0116a.m1126a();
        if (this.f905s != -1) {
            m1135b("[DBG] Read Cmd:\n" + m1133b(m1126a, 31), this.f905s);
        }
        int m1128a = m1128a(this.f898l, m1126a, 31, i);
        if (m1128a < 0) {
            m1135b("Read cmd send Fail: " + m1128a + ". Cmd: " + m1133b(bArr, 3), 0);
            m1140p();
            return -3;
        }
        while (true) {
            int m1128a2 = m1128a(this.f896j, bArr3, 16384, i);
            if (m1128a2 < 0) {
                m1135b("Recv read data fail: " + m1128a2 + ". Cmd: " + m1133b(bArr, 3), 0);
                if (i4 >= 10) {
                    m1135b("Dump first 10 byte: " + m1133b(bArr2, 10), 1);
                }
                if (i4 >= 23) {
                    byte[] bArr4 = new byte[13];
                    System.arraycopy(bArr2, i4 - 13, bArr4, 0, 13);
                    m1135b("Dump last 13 byte:" + m1133b(bArr4, 13), 1);
                }
                m1140p();
                return -3;
            }
            if (m1128a2 == 0) {
                m1135b("Recv empty read data", 0);
                i3 = -1;
                break;
            }
            if (m1132a(bArr3, m1128a2, m1143s)) {
                if (this.f905s != -1) {
                    m1135b("[DBG] Recv read CSW:\n" + m1133b(bArr3, m1128a2), this.f905s);
                }
                if (m1128a2 > 13) {
                    System.arraycopy(bArr3, 0, bArr2, i4, m1128a2 - 13);
                    i4 += m1128a2 - 13;
                }
                i3 = i4;
            } else {
                if (this.f905s != -1) {
                    m1135b("[DBG] Recv read data (" + m1128a2 + "):\n" + m1133b(bArr3, m1128a2), this.f905s);
                }
                if (i4 + m1128a2 > i2) {
                    m1135b("Over data buffer! Already recv size: " + i4 + ", recv data size: " + m1128a2 + ", data:", 0);
                    m1135b(m1133b(bArr3, m1128a2), 3);
                    i3 = -1;
                    break;
                }
                System.arraycopy(bArr3, 0, bArr2, i4, m1128a2);
                i4 += m1128a2;
            }
        }
        if (!z) {
            f886u.m1190b();
        }
        m1140p();
        return i3;
    }

    /* renamed from: a */
    public int m1147a(byte[] bArr, byte b) {
        return m1151a(bArr, new byte[]{b}, 1);
    }

    /* renamed from: a */
    public int m1151a(byte[] bArr, byte[] bArr2, int i) {
        int i2;
        int i3;
        byte[] bArr3 = new byte[this.f897k];
        m1139o();
        if (m1145a() != 3) {
            m1135b("Connected first", 0);
            m1140p();
            return -1;
        }
        if (i > 65536) {
            m1135b("Over buffer. Size: " + i, 0);
            m1140p();
            return -1;
        }
        C0116a c0116a = new C0116a(Integer.reverseBytes(i), (byte) 0);
        c0116a.m1125a(bArr);
        byte[] m1126a = c0116a.m1126a();
        if (this.f905s != -1) {
            m1135b("[DBG] Write Cmd:\n" + m1133b(m1126a, 31), this.f905s);
        }
        int m1128a = m1128a(this.f898l, m1126a, 31, 2000);
        if (m1128a < 0) {
            m1135b("Write cmd send Fail: " + m1128a + ". Cmd: " + m1133b(bArr, 3), 0);
            m1140p();
            return -3;
        }
        int i4 = i;
        int i5 = 0;
        while (i4 > 0) {
            if (i4 > this.f899m) {
                System.arraycopy(bArr2, i5, bArr3, 0, this.f899m);
                i3 = this.f899m;
            } else {
                System.arraycopy(bArr2, i5, bArr3, 0, i4);
                i3 = i4;
            }
            int m1128a2 = m1128a(this.f898l, bArr3, i3, 2000);
            if (m1128a2 < 0) {
                m1135b("Send write data fail: " + m1128a2 + " TargetSize: " + i3 + ". Cmd: " + m1133b(bArr, 3), 0);
                m1140p();
                return -3;
            }
            if (m1128a2 != i3) {
                m1135b("Send write data fail, recvDataSize: " + m1128a2 + " TargetSize: " + i3 + ". Cmd: " + m1133b(bArr, 3), 0);
                m1140p();
                return -1;
            }
            if (this.f905s != -1) {
                m1135b("[DBG] Send write data (" + i3 + "):\n" + m1133b(bArr3, i3), this.f905s);
            }
            i5 += i3;
            i4 -= i3;
        }
        if (this.f905s != -1) {
            m1135b("[DBG] Write data done\n", this.f905s);
        }
        int m1128a3 = m1128a(this.f896j, bArr3, this.f897k, 2000);
        if (m1138d(bArr3, m1128a3)) {
            if (this.f905s != -1) {
                m1135b("[DBG] Recv write CSW:\n" + m1133b(bArr3, m1128a3), this.f905s);
            }
            i2 = 0;
        } else {
            m1135b("Unknown recv data, recvDataSize: " + m1128a3, 0);
            i2 = -1;
        }
        f886u.m1190b();
        m1140p();
        return i2;
    }

    /* renamed from: a */
    public byte[] m1153a(int i, int i2) {
        byte[] bArr = new byte[i2];
        m1139o();
        System.arraycopy(this.f901o, i, bArr, 0, i2);
        m1140p();
        return bArr;
    }

    /* renamed from: a */
    public byte m1144a(int i) {
        return this.f901o[i];
    }

    /* renamed from: b */
    public int m1155b(int i, int i2) {
        return m1137c(m1153a(i, i2), i2);
    }

    /* renamed from: n */
    public int m1167n() {
        m1139o();
        if (m1145a() != 3) {
            m1135b("Connected first. No need to reset", 0);
            m1140p();
            return 0;
        }
        if (this.f900n == null) {
            m1135b("targetConnection = null, cancel reset", 0);
            return -1;
        }
        m1135b("Send Reset", 1);
        int i = this.f900n.controlTransfer(33, 255, 0, this.f895i.getId(), null, 0, 2000) < 0 ? -1 : 0;
        m1140p();
        return i;
    }

    /* renamed from: b */
    public static void m1135b(String str, int i) {
        C0119d.m1195a("SCSIHost", str, i);
    }

    /* renamed from: o */
    private void m1139o() {
        try {
            this.f906v.acquire();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: p */
    private void m1140p() {
        this.f906v.release();
    }

    /* renamed from: q */
    public void m1141q() {
        m1139o();
        this.f894h = null;
        this.f893g = null;
        this.f894h = null;
        this.f895i = null;
        this.f896j = null;
        this.f900n = null;
        m1140p();
    }

    /* renamed from: r */
    private void m1142r() {
        this.f903q = PendingIntent.getBroadcast(f885t, 0, new Intent("com.android.example.USB_PERMISSION"), 0);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.android.example.USB_PERMISSION");
        intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
        intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
        f885t.registerReceiver(this.f907w, intentFilter);
    }

    /* renamed from: a */
    private void m1130a(UsbDevice usbDevice) {
        m1135b(((((((("DeviceID: " + usbDevice.getDeviceId()) + "\n  DeviceName: " + usbDevice.getDeviceName()) + "\n  ProductID: " + usbDevice.getProductId()) + "\n  VendorID: " + usbDevice.getVendorId()) + "\n  DeviceClass: " + usbDevice.getDeviceClass()) + "\n  DeviceSubClass: " + usbDevice.getDeviceSubclass()) + "\n  DeviceProtocol: " + usbDevice.getDeviceProtocol()) + "\n  Interface Count: " + usbDevice.getInterfaceCount(), 3);
    }

    /* renamed from: b */
    private String m1133b(byte[] bArr, int i) {
        String str = "";
        int i2 = 0;
        while (i2 < i) {
            String str2 = (str + Integer.toString((bArr[i2] & 255) + 256, 16).substring(1)) + " ";
            if (i2 % 16 == 15) {
                str2 = str2 + "\r\n";
            }
            i2++;
            str = str2;
        }
        return str;
    }

    /* renamed from: c */
    private int m1137c(byte[] bArr, int i) {
        switch (i) {
            case 2:
                return (bArr[0] & 255) | ((bArr[1] & 255) << 8);
            case 3:
            default:
                m1135b("Invalid byecount " + i, 0);
                return 0;
            case 4:
                return (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 24);
        }
    }

    /* renamed from: s */
    private int m1143s() {
        return new Random().nextInt();
    }

    /* renamed from: a */
    private boolean m1132a(byte[] bArr, int i, int i2) {
        if (i >= 13) {
            return i2 == 0 ? bArr[i + (-13)] == 85 && bArr[i + (-12)] == 83 && bArr[i + (-11)] == 66 && bArr[i + (-10)] == 83 : bArr[i + (-13)] == 85 && bArr[i + (-12)] == 83 && bArr[i + (-11)] == 66 && bArr[i + (-10)] == 83 && bArr[i + (-9)] == ((byte) (i2 >> 24)) && bArr[i + (-8)] == ((byte) (i2 >> 16)) && bArr[i + (-7)] == ((byte) (i2 >> 8)) && bArr[i + (-6)] == ((byte) i2);
        }
        return false;
    }

    /* renamed from: d */
    private boolean m1138d(byte[] bArr, int i) {
        return m1132a(bArr, i, 0);
    }

    /* renamed from: a */
    private int m1128a(UsbEndpoint usbEndpoint, byte[] bArr, int i, int i2) {
        if (m1145a() == 0) {
            m1135b("SCSI_HOST_STATUS_NOT_INITIALIZED, cancel send bulk data", 1);
            return -3;
        }
        if (this.f900n == null) {
            m1135b("targetConnection = null, cancel send bulk data", 0);
            return -3;
        }
        return this.f900n.bulkTransfer(usbEndpoint, bArr, i, i2);
    }
}
