package ui_Controller.p110b;

import GeneralFunction.C0076j;
import GeneralFunction.C0089n;
import GeneralFunction.Player.player.C0041h;
import GeneralFunction.p003c.C0050c;
import GeneralFunction.p003c.C0051d;
import GeneralFunction.p005e.C0057a;
import GeneralFunction.p014l.C0082a;
import GeneralFunction.p021r.C0097a;
import GeneralFunction.p021r.C0098b;
import android.animation.ObjectAnimator;
import android.content.BroadcastReceiver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.OrientationEventListener;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Timer;
import ui_Controller.p109a.C1658c;

/* renamed from: ui_Controller.b.k */
/* loaded from: classes.dex */
public class C1669k {

    /* renamed from: I */
    public C1670l f7664I;

    /* renamed from: J */
    public C1671m f7665J;

    /* renamed from: aB */
    public int f7684aB;

    /* renamed from: u */
    public int f7748u;

    /* renamed from: v */
    public int f7749v = 0;

    /* renamed from: w */
    public boolean f7750w = false;

    /* renamed from: x */
    public boolean f7751x = false;

    /* renamed from: y */
    public boolean f7752y = false;

    /* renamed from: z */
    public long f7753z = 0;

    /* renamed from: A */
    public Timer f7656A = null;

    /* renamed from: B */
    public Bitmap f7657B = null;

    /* renamed from: C */
    public BitmapFactory.Options f7658C = new BitmapFactory.Options();

    /* renamed from: D */
    public ArrayList<C0050c> f7659D = new ArrayList<>();

    /* renamed from: E */
    public final C0076j f7660E = new C0076j();

    /* renamed from: F */
    public ArrayList<Integer> f7661F = new ArrayList<>();

    /* renamed from: G */
    public final C0076j f7662G = new C0076j();

    /* renamed from: H */
    public C0057a f7663H = null;

    /* renamed from: K */
    public boolean f7666K = false;

    /* renamed from: L */
    public boolean f7667L = false;

    /* renamed from: M */
    public ArrayList<C0051d> f7668M = new ArrayList<>();

    /* renamed from: N */
    public long f7669N = 0;

    /* renamed from: O */
    public long f7670O = 0;

    /* renamed from: P */
    public long f7671P = 0;

    /* renamed from: Q */
    public long f7672Q = 0;

    /* renamed from: R */
    public int f7673R = 0;

    /* renamed from: S */
    public int f7674S = 0;

    /* renamed from: T */
    public int f7675T = 0;

    /* renamed from: U */
    public int f7676U = 0;

    /* renamed from: V */
    public int f7677V = 0;

    /* renamed from: W */
    public ArrayList<String> f7678W = null;

    /* renamed from: X */
    public long f7679X = 0;

    /* renamed from: Y */
    public int f7680Y = 10;

    /* renamed from: Z */
    public boolean f7681Z = false;

    /* renamed from: aa */
    public boolean f7703aa = false;

    /* renamed from: ab */
    public ObjectAnimator f7704ab = null;

    /* renamed from: ac */
    public int f7705ac = 0;

    /* renamed from: ad */
    public boolean f7706ad = false;

    /* renamed from: ae */
    public int f7707ae = 0;

    /* renamed from: af */
    public FileInputStream f7708af = null;

    /* renamed from: ag */
    public int f7709ag = 0;

    /* renamed from: ah */
    public int f7710ah = 64512;

    /* renamed from: ai */
    public int f7711ai = 0;

    /* renamed from: aj */
    public int f7712aj = 0;

    /* renamed from: ak */
    public int f7713ak = 0;

    /* renamed from: al */
    public byte[] f7714al = {70, 80, 85, 80, 68, 65, 84, 69, ClosedCaptionCtrl.ERASE_NON_DISPLAYED_MEMORY, 68, 65, 84};

    /* renamed from: am */
    public C0098b f7715am = null;

    /* renamed from: an */
    public C0097a f7716an = null;

    /* renamed from: ao */
    public C0089n f7717ao = null;

    /* renamed from: ap */
    public OrientationEventListener f7718ap = null;

    /* renamed from: aq */
    public BroadcastReceiver f7719aq = null;

    /* renamed from: ar */
    public int f7720ar = 100;

    /* renamed from: as */
    public boolean f7721as = false;

    /* renamed from: at */
    public boolean f7722at = false;

    /* renamed from: au */
    public boolean f7723au = false;

    /* renamed from: av */
    public C0041h f7724av = null;

    /* renamed from: aw */
    public long f7725aw = 0;

    /* renamed from: ax */
    public String f7726ax = null;

    /* renamed from: ay */
    public long f7727ay = 0;

    /* renamed from: az */
    public long f7728az = 0;

    /* renamed from: aA */
    public long f7683aA = 30;

    /* renamed from: aC */
    public long f7685aC = 0;

    /* renamed from: aD */
    public long f7686aD = 0;

    /* renamed from: aE */
    public double f7687aE = 0.0d;

    /* renamed from: aF */
    public boolean f7688aF = false;

    /* renamed from: aG */
    public long f7689aG = 0;

    /* renamed from: aH */
    public String f7690aH = null;

    /* renamed from: aI */
    public Bitmap f7691aI = null;

    /* renamed from: aJ */
    public boolean f7692aJ = true;

    /* renamed from: aK */
    public boolean f7693aK = false;

    /* renamed from: aL */
    public C0082a f7694aL = null;

    /* renamed from: aM */
    public boolean f7695aM = false;

    /* renamed from: aN */
    public int f7696aN = 0;

    /* renamed from: aO */
    public int f7697aO = 0;

    /* renamed from: aP */
    public int f7698aP = 0;

    /* renamed from: aQ */
    public String f7699aQ = "";

    /* renamed from: aR */
    public String f7700aR = "";

    /* renamed from: aS */
    public String f7701aS = "";

    /* renamed from: aT */
    public int f7702aT = 0;

    /* renamed from: a */
    public int f7682a = 0;

    /* renamed from: b */
    public int f7729b = 256;

    /* renamed from: c */
    public int f7730c = 288;

    /* renamed from: d */
    public int f7731d = 288;

    /* renamed from: e */
    public int f7732e = 0;

    /* renamed from: f */
    public int f7733f = 0;

    /* renamed from: g */
    public int f7734g = 0;

    /* renamed from: h */
    public int f7735h = 0;

    /* renamed from: i */
    public int f7736i = 0;

    /* renamed from: j */
    public String f7737j = C1658c.f7458f;

    /* renamed from: k */
    public boolean f7738k = false;

    /* renamed from: l */
    public boolean f7739l = false;

    /* renamed from: m */
    public boolean f7740m = false;

    /* renamed from: n */
    public boolean f7741n = false;

    /* renamed from: o */
    public boolean f7742o = false;

    /* renamed from: p */
    public int[] f7743p = new int[14];

    /* renamed from: q */
    public int f7744q = 0;

    /* renamed from: r */
    public boolean f7745r = false;

    /* renamed from: s */
    public int f7746s = 4;

    /* renamed from: t */
    public int f7747t = 0;

    public C1669k() {
        this.f7664I = null;
        this.f7665J = null;
        this.f7664I = new C1670l();
        this.f7665J = new C1671m();
        m7100a();
    }

    /* renamed from: a */
    public void m7100a() {
        for (int i = 0; i < this.f7743p.length; i++) {
            this.f7743p[i] = 0;
        }
    }
}
