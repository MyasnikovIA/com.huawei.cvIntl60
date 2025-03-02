package GeneralFunction.p016m;

import GeneralFunction.C0052d;
import android.os.Message;
import com.huawei.cvIntl60.R;
import p026a.p032c.C0121a;
import p026a.p032c.C0122b;
import ui_Controller.p110b.C1664f;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* renamed from: GeneralFunction.m.a */
/* loaded from: classes.dex */
public class C0088a {

    /* renamed from: a */
    public static C1664f f681a = null;

    /* renamed from: b */
    public static UI_ModeMain f682b = null;

    public C0088a(UI_ModeMain uI_ModeMain) {
        f682b = uI_ModeMain;
        f681a = uI_ModeMain.f8782c.f7654l;
    }

    /* renamed from: a */
    private void m823a(String str, int i) {
        C0052d.m465a("UI_SettingControl", str, i);
    }

    /* renamed from: a */
    public void m880a(Message message) {
        C0121a c0121a = new C0121a(message);
        if (c0121a.m1207b("result") == -1) {
            m823a("CONNECTION ERROR!", 0);
        }
        switch (message.what) {
            case 16898:
            case 17410:
                f681a.f7601b = c0121a.m1211d("DscName");
                f681a.f7593a = c0121a.m1211d("DscVersion");
                f681a.f7602c = c0121a.m1211d("DscGuid");
                f681a.f7592Z = Integer.parseInt(f681a.f7593a.split("\\.")[1], 16);
                f681a.f7594aa = Integer.parseInt(f682b.getResources().getResourceEntryName(R.raw.fw13b00).substring("fw".length()), 16);
                m823a("DscVersion:" + f681a.f7592Z + "UpgradeVersion:" + f681a.f7594aa, 4);
                break;
            case 16992:
            case 17504:
                m814C(C0122b.m1242q(c0121a.m1211d("value")));
                break;
            case 17153:
                m815D(c0121a.m1207b("value"));
                break;
            case 17154:
                m816E(c0121a.m1207b("value"));
                break;
            case 17157:
                m853m(C0122b.m1221c(c0121a.m1211d("value")));
                break;
            case 17159:
            case 17678:
                m849k(C0122b.m1215a(c0121a.m1211d("value")));
                break;
            case 17162:
            case 17681:
                m861q(C0122b.m1225e(c0121a.m1211d("value")));
                break;
            case 17165:
            case 17674:
                m851l(C0122b.m1219b(c0121a.m1211d("value")));
                break;
            case 17167:
            case 17676:
                m859p(C0122b.m1223d(c0121a.m1211d("value")));
                break;
            case 17169:
                m862r(C0122b.m1227f(c0121a.m1211d("value")));
                break;
            case 17171:
            case 17702:
                m864s(C0122b.m1229g(c0121a.m1211d("value")));
                break;
            case 17173:
            case 17696:
                m866t(C0122b.m1231h(c0121a.m1211d("value")));
                break;
            case 17175:
            case 17686:
                m871v(C0122b.m1235j(c0121a.m1211d("value")));
                break;
            case 17177:
                m873w(C0122b.m1236k(c0121a.m1211d("value")));
                break;
            case 17179:
                m875x(C0122b.m1237l(c0121a.m1211d("value")));
                break;
            case 17181:
            case 17692:
                m877y(C0122b.m1238m(c0121a.m1211d("value")));
                break;
            case 17183:
            case 17694:
                m879z(C0122b.m1239n(c0121a.m1211d("value")));
                break;
            case 17185:
                m812A(C0122b.m1240o(c0121a.m1211d("value")));
                break;
            case 17187:
            case 17688:
                m868u(C0122b.m1233i(c0121a.m1211d("value")));
                break;
            case 17189:
            case 17690:
                m813B(C0122b.m1241p(c0121a.m1211d("value")));
                break;
            case 17191:
            case 17669:
                m822a(c0121a.m1211d("value"));
                break;
            case 17193:
            case 17671:
                m827b(c0121a.m1211d("value"));
                break;
            case 18435:
                m872w();
                break;
        }
    }

    /* renamed from: a */
    public static int m820a() {
        return f681a.f7603d;
    }

    /* renamed from: b */
    public static int m825b() {
        return f681a.f7604e;
    }

    /* renamed from: c */
    public static int m829c() {
        return f681a.f7605f;
    }

    /* renamed from: d */
    public static int m833d() {
        return f681a.f7606g;
    }

    /* renamed from: e */
    public static int m836e() {
        return f681a.f7607h;
    }

    /* renamed from: f */
    public static int m838f() {
        return f681a.f7608i;
    }

    /* renamed from: g */
    public static int m840g() {
        return f681a.f7609j;
    }

    /* renamed from: h */
    public static int m842h() {
        return f681a.f7611l;
    }

    /* renamed from: i */
    public static int m844i() {
        return f681a.f7610k;
    }

    /* renamed from: j */
    public static int m846j() {
        return f681a.f7575I;
    }

    /* renamed from: k */
    public static int m848k() {
        return f681a.f7576J;
    }

    /* renamed from: l */
    public static int m850l() {
        return f681a.f7577K;
    }

    /* renamed from: m */
    public static int m852m() {
        return f681a.f7612m;
    }

    /* renamed from: n */
    public static int m854n() {
        return f681a.f7575I;
    }

    /* renamed from: o */
    public static int m856o() {
        return f681a.f7576J;
    }

    /* renamed from: p */
    public static int m858p() {
        return f681a.f7577K;
    }

    /* renamed from: q */
    public static int m860q() {
        return f681a.f7579M;
    }

    /* renamed from: r */
    public static boolean m863r() {
        return f681a.f7584R;
    }

    /* renamed from: s */
    public static boolean m865s() {
        return f681a.f7585S;
    }

    /* renamed from: t */
    public static boolean m867t() {
        return f681a.f7598ae;
    }

    /* renamed from: u */
    public static boolean m869u() {
        return f681a.f7599af;
    }

    /* renamed from: a */
    public static void m821a(int i) {
        f681a.f7603d = i;
    }

    /* renamed from: b */
    public static void m826b(int i) {
        f681a.f7604e = i;
    }

    /* renamed from: c */
    public static void m831c(int i) {
        f681a.f7605f = i;
    }

    /* renamed from: d */
    public static void m834d(int i) {
        f681a.f7606g = i;
    }

    /* renamed from: e */
    public static void m837e(int i) {
        f681a.f7607h = i;
    }

    /* renamed from: f */
    public static void m839f(int i) {
        f681a.f7608i = i;
    }

    /* renamed from: g */
    public static void m841g(int i) {
        f681a.f7609j = i;
    }

    /* renamed from: h */
    public static void m843h(int i) {
        f681a.f7611l = i;
    }

    /* renamed from: i */
    public static void m845i(int i) {
        f681a.f7610k = i;
    }

    /* renamed from: j */
    public static void m847j(int i) {
        f681a.f7612m = i;
    }

    /* renamed from: a */
    public static void m824a(boolean z) {
        f681a.f7598ae = z;
    }

    /* renamed from: b */
    public static void m828b(boolean z) {
        f681a.f7599af = z;
    }

    /* renamed from: v */
    public static void m870v() {
        f681a.f7598ae = false;
        f681a.f7599af = false;
    }

    /* renamed from: w */
    public static void m872w() {
        f681a.f7575I = 6;
        f681a.f7576J = 0;
        f681a.f7577K = 0;
    }

    /* renamed from: k */
    public static void m849k(int i) {
        f681a.f7605f = i;
    }

    /* renamed from: l */
    public static void m851l(int i) {
        f681a.f7621v = i;
    }

    /* renamed from: m */
    public static void m853m(int i) {
        f681a.f7575I = i;
    }

    /* renamed from: n */
    public static void m855n(int i) {
        f681a.f7576J = i;
    }

    /* renamed from: o */
    public static void m857o(int i) {
        f681a.f7577K = i;
    }

    /* renamed from: p */
    public static void m859p(int i) {
        f681a.f7622w = i;
    }

    /* renamed from: q */
    public static void m861q(int i) {
        f681a.f7604e = i;
    }

    /* renamed from: r */
    public static void m862r(int i) {
        f681a.f7578L = i;
    }

    /* renamed from: s */
    public static void m864s(int i) {
        f681a.f7571E = i;
    }

    /* renamed from: t */
    public static void m866t(int i) {
        f681a.f7570D = i;
    }

    /* renamed from: u */
    public static void m868u(int i) {
        f681a.f7623x = i;
    }

    /* renamed from: v */
    public static void m871v(int i) {
        f681a.f7624y = i;
    }

    /* renamed from: w */
    public static void m873w(int i) {
        f681a.f7572F = i;
    }

    /* renamed from: x */
    public static void m875x(int i) {
        f681a.f7573G = i;
    }

    /* renamed from: y */
    public static void m877y(int i) {
        f681a.f7567A = i;
    }

    /* renamed from: z */
    public static void m879z(int i) {
        f681a.f7568B = i;
    }

    /* renamed from: A */
    public static void m812A(int i) {
        f681a.f7574H = i;
    }

    /* renamed from: B */
    public static void m813B(int i) {
        f681a.f7625z = i;
    }

    /* renamed from: a */
    public static void m822a(String str) {
        f682b.f8782c.f7652j.f7779d = str;
    }

    /* renamed from: b */
    public static void m827b(String str) {
        f682b.f8782c.f7652j.f7780e = str;
    }

    /* renamed from: C */
    public static void m814C(int i) {
        f681a.f7580N = i;
    }

    /* renamed from: D */
    public static void m815D(int i) {
        f681a.f7581O = i;
    }

    /* renamed from: E */
    public static void m816E(int i) {
        f681a.f7582P = i;
    }

    /* renamed from: c */
    public static void m832c(boolean z) {
    }

    /* renamed from: d */
    public static void m835d(boolean z) {
        f681a.f7585S = z;
    }

    /* renamed from: F */
    public static void m817F(int i) {
        C0121a c0121a = new C0121a(18512);
        c0121a.m1200a("setting", i);
        f682b.m7995c(c0121a);
    }

    /* renamed from: G */
    public static void m818G(int i) {
        C0121a c0121a = new C0121a(18513);
        c0121a.m1200a("setting", i);
        f682b.m7995c(c0121a);
    }

    /* renamed from: H */
    public static void m819H(int i) {
    }

    /* renamed from: c */
    public static int m830c(String str) {
        if (f682b.m7986b() == 33) {
            C0121a c0121a = new C0121a(17240);
            c0121a.m1203a("value", str);
            f682b.m7995c(c0121a);
            return 0;
        }
        return -1;
    }

    /* renamed from: x */
    public static int m874x() {
        switch (C0122b.m1224e(m829c())) {
            case 3:
            default:
                return 5376;
            case 4:
                return 3840;
        }
    }

    /* renamed from: y */
    public static int m876y() {
        switch (C0122b.m1224e(m829c())) {
            case 3:
            default:
                return 2688;
            case 4:
                return 1920;
        }
    }

    /* renamed from: z */
    public static int m878z() {
        switch (C0122b.m1226f(m825b())) {
            case 10:
                return 1280;
            default:
                return 1920;
        }
    }

    /* renamed from: A */
    public static int m811A() {
        switch (C0122b.m1226f(m825b())) {
            case 10:
                return 640;
            default:
                return 960;
        }
    }
}
