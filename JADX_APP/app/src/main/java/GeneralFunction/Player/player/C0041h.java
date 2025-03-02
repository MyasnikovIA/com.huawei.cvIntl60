package GeneralFunction.Player.player;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;

/* renamed from: GeneralFunction.Player.player.h */
/* loaded from: classes.dex */
public class C0041h {

    /* renamed from: C */
    private static final String f305C = C0041h.class.getSimpleName();

    /* renamed from: aG */
    private ValueAnimator f338aG;

    /* renamed from: y */
    public boolean f388y;

    /* renamed from: D */
    private float f308D = 715.0f;

    /* renamed from: E */
    private float f309E = 200.0f;

    /* renamed from: F */
    private float f310F = 920.0f;

    /* renamed from: G */
    private float f311G = 920.0f;

    /* renamed from: H */
    private float f312H = 650.0f;

    /* renamed from: I */
    private float f313I = 1040.0f;

    /* renamed from: J */
    private float f314J = 1040.0f;

    /* renamed from: K */
    private float f315K = 1025.0f;

    /* renamed from: L */
    private float f316L = 250.0f;

    /* renamed from: M */
    private float f317M = 505.0f;

    /* renamed from: N */
    private float f318N = 690.0f;

    /* renamed from: O */
    private float f319O = 870.0f;

    /* renamed from: P */
    private float f320P = 870.0f;

    /* renamed from: Q */
    private float f321Q = 600.0f;

    /* renamed from: R */
    private float f322R = 950.0f;

    /* renamed from: S */
    private float f323S = 950.0f;

    /* renamed from: T */
    private float f324T = 950.0f;

    /* renamed from: U */
    private float f325U = 310.0f;

    /* renamed from: V */
    private float f326V = 480.0f;

    /* renamed from: W */
    private float f327W = -188.0f;

    /* renamed from: X */
    private float f328X = 10.0f;

    /* renamed from: Y */
    private float f329Y = 10.0f;

    /* renamed from: Z */
    private float f330Z = 10.0f;

    /* renamed from: aa */
    private float f339aa = 10.0f;

    /* renamed from: ab */
    private float f340ab = -50.0f;

    /* renamed from: ac */
    private float f341ac = 1400.0f;

    /* renamed from: ad */
    private float f342ad = 300.0f;

    /* renamed from: ae */
    private float f343ae = 450.0f;

    /* renamed from: af */
    private float f344af = 400.0f;

    /* renamed from: ag */
    private float f345ag = 0.0f;

    /* renamed from: ah */
    private float f346ah = 200.0f;

    /* renamed from: ai */
    private float f347ai = 1400.0f;

    /* renamed from: aj */
    private float f348aj = 550.0f;

    /* renamed from: ak */
    private float f349ak = 450.0f;

    /* renamed from: al */
    private float f350al = 320.0f;

    /* renamed from: am */
    private float f351am = 400.0f;

    /* renamed from: an */
    private float f352an = 480.0f;

    /* renamed from: ao */
    private float f353ao = 950.0f;

    /* renamed from: ap */
    private float f354ap = 400.0f;

    /* renamed from: aq */
    private float f355aq = 106.0f;

    /* renamed from: ar */
    private float f356ar = 118.0f;

    /* renamed from: as */
    private float f357as = 85.0f;

    /* renamed from: at */
    private float f358at = 50.0f;

    /* renamed from: au */
    private float f359au = 100.0f;

    /* renamed from: av */
    private float f360av = 85.0f;

    /* renamed from: aw */
    private float f361aw = 145.0f;

    /* renamed from: ax */
    private float f362ax = 100.0f;

    /* renamed from: ay */
    private float f363ay = 150.0f;

    /* renamed from: az */
    private float f364az = 50.0f;

    /* renamed from: aA */
    private float f332aA = 0.1f;

    /* renamed from: aB */
    private float f333aB = 3000.0f;

    /* renamed from: aC */
    private float f334aC = 3000.0f;

    /* renamed from: aD */
    private float f335aD = 5000.0f;

    /* renamed from: aE */
    private float f336aE = 10000.0f;

    /* renamed from: a */
    public int f331a = 0;

    /* renamed from: b */
    public int f365b = 0;

    /* renamed from: c */
    public float f366c = this.f334aC;

    /* renamed from: d */
    public float f367d = this.f363ay;

    /* renamed from: e */
    public float f368e = this.f358at;

    /* renamed from: f */
    public float f369f = this.f358at;

    /* renamed from: g */
    public float f370g = this.f348aj;

    /* renamed from: h */
    public float f371h = this.f310F;

    /* renamed from: i */
    public float f372i = this.f319O;

    /* renamed from: j */
    public float f373j = this.f328X;

    /* renamed from: k */
    public float f374k = this.f342ad;

    /* renamed from: l */
    public float f375l = this.f348aj;

    /* renamed from: m */
    public int f376m = 0;

    /* renamed from: n */
    public boolean f377n = false;

    /* renamed from: o */
    public int f378o = 0;

    /* renamed from: p */
    public int f379p = 0;

    /* renamed from: q */
    public float f380q = 0.0f;

    /* renamed from: r */
    public float f381r = 0.0f;

    /* renamed from: s */
    public int f382s = 0;

    /* renamed from: t */
    public float f383t = 25.0f;

    /* renamed from: u */
    public float f384u = 0.0f;

    /* renamed from: v */
    public float f385v = 0.0f;

    /* renamed from: w */
    public float f386w = 10.0f;

    /* renamed from: x */
    public float f387x = 20.0f;

    /* renamed from: z */
    public float[] f389z = new float[16];

    /* renamed from: A */
    public float[] f306A = new float[16];

    /* renamed from: B */
    public boolean f307B = false;

    /* renamed from: aF */
    private Context f337aF = null;

    /* renamed from: a */
    private static void m380a(String str, int i) {
        C0035b.m274a(f305C, str, i);
    }

    /* renamed from: a */
    public void m386a(Context context) {
        this.f337aF = context;
    }

    /* renamed from: a */
    public void m385a(int i, boolean z) {
        if (this.f331a == i) {
            m380a("already same type", 2);
            return;
        }
        if (this.f331a == 0) {
            this.f331a = i;
            m387a(false);
            m381f();
        } else {
            this.f331a = i;
            m387a(true);
            m381f();
        }
    }

    /* renamed from: a */
    public int m382a() {
        return this.f331a;
    }

    /* renamed from: b */
    public void m390b(int i, boolean z) {
        this.f365b = i;
        m387a(false);
        m381f();
        m392c();
        if (this.f375l < this.f373j) {
            this.f375l = this.f373j;
        } else if (this.f375l > this.f371h) {
            this.f375l = this.f371h;
        }
    }

    /* renamed from: b */
    public void m388b() {
        if (this.f375l != this.f372i) {
            this.f375l = this.f372i;
        } else {
            this.f375l = this.f374k;
        }
    }

    /* renamed from: a */
    public void m383a(float f) {
        this.f375l = f;
        if (this.f375l < this.f373j) {
            this.f375l = this.f373j;
        } else if (this.f375l > this.f371h) {
            this.f375l = this.f371h;
        }
    }

    /* renamed from: c */
    public void m392c() {
        switch (this.f331a) {
            case 1:
                this.f375l = this.f347ai;
                break;
            case 2:
                this.f375l = this.f348aj;
                break;
            case 3:
                if (this.f365b == 1) {
                    this.f375l = this.f351am;
                    break;
                } else if (this.f376m == 2) {
                    this.f375l = this.f350al;
                    break;
                } else {
                    this.f375l = this.f349ak;
                    break;
                }
            case 5:
                this.f375l = this.f352an;
                break;
            case 6:
                if (this.f365b == 1) {
                    this.f375l = this.f354ap;
                    break;
                } else {
                    this.f375l = this.f353ao;
                    break;
                }
        }
    }

    /* renamed from: b */
    public void m389b(float f) {
        if (f < -89.0f) {
            this.f381r = -89.0f;
        } else if (f > 89.0f) {
            this.f381r = 89.0f;
        } else {
            this.f381r = f;
        }
    }

    /* renamed from: a */
    public void m387a(boolean z) {
        boolean z2;
        float f;
        switch (((WindowManager) this.f337aF.getSystemService("window")).getDefaultDisplay().getRotation()) {
            case 1:
            case 3:
                z2 = true;
                break;
            case 2:
            default:
                z2 = false;
                break;
        }
        if (this.f376m == 2) {
            if (m382a() != 3) {
                m380a("FORMAT_LIVE parameter not handle view type:" + m382a(), 0);
            }
            this.f367d = this.f364az;
            this.f366c = this.f335aD;
            this.f380q = 0.0f;
            m389b(0.0f);
            this.f368e = this.f360av;
            this.f375l = this.f350al;
            this.f370g = this.f350al;
            this.f373j = this.f339aa;
            this.f374k = this.f344af;
            this.f371h = this.f315K;
            this.f372i = this.f324T;
        }
        if (this.f365b == 1) {
            switch (m382a()) {
                case 2:
                    this.f367d = this.f363ay;
                    this.f366c = this.f334aC;
                    this.f380q = 0.0f;
                    m389b(0.0f);
                    this.f368e = this.f358at;
                    this.f375l = this.f348aj;
                    this.f370g = this.f348aj;
                    this.f373j = this.f328X;
                    this.f374k = this.f342ad;
                    this.f371h = this.f312H;
                    this.f372i = this.f321Q;
                    break;
                case 3:
                    this.f367d = this.f364az;
                    this.f366c = this.f335aD;
                    this.f380q = 0.0f;
                    m389b(0.0f);
                    this.f368e = this.f355aq;
                    this.f375l = this.f351am;
                    this.f370g = this.f351am;
                    this.f373j = this.f340ab;
                    this.f374k = this.f345ag;
                    this.f371h = this.f316L;
                    this.f372i = this.f325U;
                    break;
                case 5:
                    this.f367d = this.f332aA;
                    this.f366c = this.f336aE;
                    this.f380q = 0.0f;
                    m389b(0.0f);
                    this.f368e = this.f356ar;
                    this.f375l = this.f352an;
                    this.f370g = this.f352an;
                    this.f373j = this.f330Z;
                    this.f374k = this.f346ah;
                    this.f371h = this.f317M;
                    this.f372i = this.f326V;
                    break;
                case 6:
                    this.f367d = this.f364az;
                    this.f366c = this.f335aD;
                    this.f380q = 0.0f;
                    m389b(0.0f);
                    this.f368e = this.f355aq;
                    this.f375l = this.f351am;
                    this.f370g = this.f351am;
                    this.f373j = this.f340ab;
                    this.f374k = this.f345ag;
                    this.f371h = this.f316L;
                    this.f372i = this.f325U;
                    break;
            }
        }
        switch (m382a()) {
            case 2:
                this.f367d = this.f363ay;
                this.f366c = this.f334aC;
                float f2 = this.f348aj;
                this.f370g = this.f348aj;
                this.f373j = this.f328X;
                this.f374k = this.f342ad;
                float f3 = this.f358at;
                if (z2) {
                    this.f371h = this.f310F;
                    this.f372i = this.f319O;
                } else {
                    this.f371h = this.f311G;
                    this.f372i = this.f320P;
                }
                if (z) {
                    m379a(f3, f2, 0.0f, 0.0f);
                    break;
                } else {
                    this.f380q = 0.0f;
                    m389b(0.0f);
                    this.f368e = f3;
                    this.f375l = f2;
                    break;
                }
            case 3:
                this.f367d = this.f364az;
                this.f366c = this.f335aD;
                float f4 = this.f349ak;
                this.f370g = this.f349ak;
                this.f373j = this.f329Y;
                this.f374k = this.f343ae;
                float f5 = this.f359au;
                if (z2) {
                    this.f371h = this.f313I;
                    this.f372i = this.f322R;
                } else {
                    m380a("lSurfaceHeight" + this.f379p, 0);
                    m380a("lSurfaceWidth" + this.f378o, 0);
                    if (this.f378o / 9 == this.f379p / 18.5d || this.f378o / 135 == this.f379p / 271 || this.f378o / 1 == this.f379p / 2 || this.f379p / this.f378o > 1.9d) {
                        this.f371h = this.f314J + 150.0f;
                        this.f372i = this.f323S + 150.0f;
                    } else {
                        this.f371h = this.f314J;
                        this.f372i = this.f323S;
                    }
                }
                if (z) {
                    m379a(f5, f4, 0.0f, 0.0f);
                    break;
                } else {
                    this.f380q = 0.0f;
                    m389b(0.0f);
                    this.f368e = f5;
                    this.f375l = f4;
                    break;
                }
                break;
            case 5:
                this.f367d = this.f332aA;
                this.f366c = this.f336aE;
                float f6 = this.f352an;
                this.f370g = this.f352an;
                this.f373j = this.f330Z;
                this.f374k = this.f346ah;
                this.f371h = this.f317M;
                this.f372i = this.f326V;
                float f7 = this.f361aw;
                if (z) {
                    m379a(f7, f6, 0.0f, -89.0f);
                    break;
                } else {
                    this.f380q = 0.0f;
                    m389b(-89.0f);
                    this.f368e = f7;
                    this.f375l = f6;
                    break;
                }
            case 6:
                this.f367d = this.f364az;
                this.f366c = this.f335aD;
                this.f373j = this.f329Y;
                this.f374k = this.f343ae;
                float f8 = this.f359au;
                if (z2) {
                    f = this.f353ao;
                    this.f370g = this.f353ao;
                    this.f371h = this.f313I;
                    this.f372i = this.f322R;
                } else if (this.f378o / 9 == this.f379p / 18.5d || this.f378o / 135 == this.f379p / 271 || this.f378o / 1 == this.f379p / 2 || this.f379p / this.f378o > 1.9d) {
                    f = this.f353ao + 150.0f;
                    this.f370g = this.f353ao + 150.0f;
                    this.f371h = this.f314J + 150.0f;
                    this.f372i = this.f323S + 150.0f;
                } else {
                    f = this.f353ao;
                    this.f370g = this.f353ao;
                    this.f371h = this.f314J;
                    this.f372i = this.f323S;
                }
                if (z) {
                    m379a(f8, f, 0.0f, 0.0f);
                    break;
                } else {
                    this.f380q = 0.0f;
                    m389b(0.0f);
                    this.f368e = f8;
                    this.f375l = f;
                    break;
                }
                break;
        }
    }

    /* renamed from: f */
    private void m381f() {
        switch (this.f331a) {
            case 1:
                this.f383t = 25.0f;
                break;
            case 2:
                this.f383t = 15.0f;
                break;
            case 3:
                this.f383t = 25.0f;
                break;
            case 5:
                this.f383t = 25.0f;
                break;
            case 6:
                this.f383t = 25.0f;
                break;
        }
    }

    /* renamed from: b */
    public void m391b(boolean z) {
        m380a("setRotationFefault", 2);
        switch (this.f331a) {
            case 1:
                this.f368e = this.f357as;
                break;
            case 2:
                this.f368e = this.f358at;
                if (z) {
                    this.f371h = this.f310F;
                    if (this.f365b == 1) {
                        this.f371h = this.f312H;
                        this.f372i = this.f321Q;
                    } else {
                        this.f372i = this.f319O;
                    }
                } else {
                    this.f371h = this.f311G;
                    this.f372i = this.f320P;
                }
                if (this.f375l > this.f372i) {
                    this.f375l = this.f372i;
                    break;
                }
                break;
            case 3:
                if (this.f365b == 1) {
                    this.f371h = this.f316L;
                    this.f370g = this.f351am;
                    this.f374k = this.f345ag;
                    this.f372i = this.f325U;
                    this.f370g = this.f351am;
                    this.f368e = this.f355aq;
                } else if (this.f376m != 2) {
                    if (z) {
                        this.f371h = this.f313I;
                        this.f372i = this.f322R;
                    } else {
                        if (this.f378o / 9 == this.f379p / 18.5d || this.f378o / 135 == this.f379p / 271 || this.f378o / 1 == this.f379p / 2 || this.f379p / this.f378o > 1.9d) {
                            this.f371h = this.f314J + 150.0f;
                            this.f372i = this.f323S + 150.0f;
                        } else {
                            this.f371h = this.f314J;
                            this.f372i = this.f323S;
                        }
                        if (this.f376m == 2) {
                            this.f368e = this.f360av;
                        } else {
                            this.f368e = this.f359au;
                        }
                        this.f373j = this.f329Y;
                        this.f374k = this.f343ae;
                    }
                }
                if (this.f375l > this.f372i) {
                    this.f375l = this.f372i;
                }
                if (this.f375l < this.f374k) {
                    this.f375l = this.f374k;
                    break;
                }
                break;
            case 5:
                this.f367d = this.f332aA;
                this.f366c = this.f336aE;
                this.f373j = this.f330Z;
                if (this.f365b == 1) {
                    this.f371h = this.f316L;
                    this.f370g = this.f351am;
                    this.f380q = 0.0f;
                    m389b(0.0f);
                    this.f368e = this.f356ar;
                } else {
                    this.f368e = this.f361aw;
                    this.f371h = this.f317M;
                    this.f372i = this.f326V;
                    this.f370g = this.f352an;
                    this.f374k = this.f346ah;
                    this.f375l = this.f352an;
                    this.f380q = 0.0f;
                    m389b(-89.0f);
                }
                if (this.f375l > this.f372i) {
                    this.f375l = this.f372i;
                }
                if (this.f375l < this.f374k) {
                    this.f375l = this.f374k;
                    break;
                }
                break;
            case 6:
                if (this.f365b == 1) {
                    this.f371h = this.f316L;
                    this.f370g = this.f351am;
                    this.f374k = this.f345ag;
                    this.f372i = this.f325U;
                    this.f370g = this.f351am;
                    this.f368e = this.f355aq;
                } else if (z) {
                    this.f371h = this.f313I;
                    this.f372i = this.f322R;
                } else {
                    if (this.f378o / 9 == this.f379p / 18.5d || this.f378o / 135 == this.f379p / 271 || this.f378o / 1 == this.f379p / 2 || this.f379p / this.f378o > 1.9d) {
                        this.f371h = this.f314J + 150.0f;
                        this.f372i = this.f323S + 150.0f;
                    } else {
                        this.f371h = this.f314J;
                        this.f372i = this.f323S;
                    }
                    if (this.f376m == 2) {
                        this.f368e = this.f360av;
                    } else {
                        this.f368e = this.f359au;
                    }
                }
                if (this.f375l > this.f372i) {
                    this.f375l = this.f372i;
                }
                if (this.f375l < this.f374k) {
                    this.f375l = this.f374k;
                    break;
                }
                break;
        }
    }

    /* renamed from: d */
    public void m393d() {
        PropertyValuesHolder ofFloat;
        if (this.f375l > this.f372i) {
            ofFloat = PropertyValuesHolder.ofFloat("focalLength", this.f375l, this.f372i);
        } else if (this.f375l < this.f374k) {
            ofFloat = PropertyValuesHolder.ofFloat("focalLength", this.f375l, this.f374k);
        } else {
            this.f307B = false;
            return;
        }
        ValueAnimator duration = ValueAnimator.ofPropertyValuesHolder(ofFloat).setDuration(500L);
        duration.setInterpolator(new DecelerateInterpolator());
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: GeneralFunction.Player.player.h.1
            AnonymousClass1() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                C0041h.this.f375l = ((Float) valueAnimator.getAnimatedValue("focalLength")).floatValue();
                C0041h.this.f388y = true;
            }
        });
        duration.addListener(new AnimatorListenerAdapter() { // from class: GeneralFunction.Player.player.h.2
            AnonymousClass2() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                C0041h.this.f307B = false;
            }
        });
        duration.start();
    }

    /* renamed from: GeneralFunction.Player.player.h$1 */
    class AnonymousClass1 implements ValueAnimator.AnimatorUpdateListener {
        AnonymousClass1() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            C0041h.this.f375l = ((Float) valueAnimator.getAnimatedValue("focalLength")).floatValue();
            C0041h.this.f388y = true;
        }
    }

    /* renamed from: GeneralFunction.Player.player.h$2 */
    class AnonymousClass2 extends AnimatorListenerAdapter {
        AnonymousClass2() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C0041h.this.f307B = false;
        }
    }

    /* renamed from: a */
    private void m379a(float f, float f2, float f3, float f4) {
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("fovY", this.f368e, f);
        PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat("focalLength", this.f375l, f2);
        ValueAnimator duration = ValueAnimator.ofPropertyValuesHolder(PropertyValuesHolder.ofFloat("xAxis", this.f380q, f3), PropertyValuesHolder.ofFloat("yAxis", this.f381r, f4), ofFloat).setDuration(900L);
        ValueAnimator duration2 = ValueAnimator.ofPropertyValuesHolder(ofFloat2).setDuration(400L);
        DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
        duration.setInterpolator(decelerateInterpolator);
        duration2.setInterpolator(decelerateInterpolator);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: GeneralFunction.Player.player.h.3
            AnonymousClass3() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                C0041h.this.f380q = ((Float) valueAnimator.getAnimatedValue("xAxis")).floatValue();
                C0041h.this.m389b(((Float) valueAnimator.getAnimatedValue("yAxis")).floatValue());
                C0041h.this.f368e = ((Float) valueAnimator.getAnimatedValue("fovY")).floatValue();
                C0041h.this.f388y = true;
            }
        });
        duration.start();
        duration2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: GeneralFunction.Player.player.h.4
            AnonymousClass4() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                C0041h.this.f375l = ((Float) valueAnimator.getAnimatedValue("focalLength")).floatValue();
                C0041h.this.f388y = true;
            }
        });
        duration2.start();
    }

    /* renamed from: GeneralFunction.Player.player.h$3 */
    class AnonymousClass3 implements ValueAnimator.AnimatorUpdateListener {
        AnonymousClass3() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            C0041h.this.f380q = ((Float) valueAnimator.getAnimatedValue("xAxis")).floatValue();
            C0041h.this.m389b(((Float) valueAnimator.getAnimatedValue("yAxis")).floatValue());
            C0041h.this.f368e = ((Float) valueAnimator.getAnimatedValue("fovY")).floatValue();
            C0041h.this.f388y = true;
        }
    }

    /* renamed from: GeneralFunction.Player.player.h$4 */
    class AnonymousClass4 implements ValueAnimator.AnimatorUpdateListener {
        AnonymousClass4() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            C0041h.this.f375l = ((Float) valueAnimator.getAnimatedValue("focalLength")).floatValue();
            C0041h.this.f388y = true;
        }
    }

    /* renamed from: e */
    public void m394e() {
        if (this.f338aG != null) {
            this.f338aG.cancel();
        }
    }

    /* renamed from: a */
    public void m384a(float f, float f2) {
        m394e();
        this.f338aG = ValueAnimator.ofPropertyValuesHolder(PropertyValuesHolder.ofFloat("vx", f, 0.0f), PropertyValuesHolder.ofFloat("vy", f2, 0.0f)).setDuration(1000L);
        this.f338aG.setInterpolator(new DecelerateInterpolator());
        this.f338aG.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: GeneralFunction.Player.player.h.5

            /* renamed from: b */
            private long f395b = 0;

            AnonymousClass5() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                long currentPlayTime = valueAnimator.getCurrentPlayTime();
                long j = currentPlayTime - this.f395b;
                float floatValue = 0.9f * ((((Float) valueAnimator.getAnimatedValue("vx")).floatValue() * j) / (-1000.0f));
                float floatValue2 = ((((Float) valueAnimator.getAnimatedValue("vy")).floatValue() * j) / (-1000.0f)) * 0.5f;
                this.f395b = currentPlayTime;
                if (C0041h.this.f382s == 3) {
                    C0041h.this.f380q = (((-floatValue) * 0.1f) + C0041h.this.f380q) % 360.0f;
                    C0041h.this.m389b(((-floatValue2) * 0.1f) + C0041h.this.f381r);
                } else if (Math.abs(floatValue) > Math.abs(floatValue2)) {
                    C0041h.this.f380q = (((-floatValue) * 0.1f) + C0041h.this.f380q) % 360.0f;
                } else {
                    C0041h.this.m389b(((-floatValue2) * 0.1f) + C0041h.this.f381r);
                }
                C0041h.this.f388y = true;
                C0041h.this.f388y = true;
            }
        });
        this.f338aG.start();
    }

    /* renamed from: GeneralFunction.Player.player.h$5 */
    class AnonymousClass5 implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: b */
        private long f395b = 0;

        AnonymousClass5() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            long currentPlayTime = valueAnimator.getCurrentPlayTime();
            long j = currentPlayTime - this.f395b;
            float floatValue = 0.9f * ((((Float) valueAnimator.getAnimatedValue("vx")).floatValue() * j) / (-1000.0f));
            float floatValue2 = ((((Float) valueAnimator.getAnimatedValue("vy")).floatValue() * j) / (-1000.0f)) * 0.5f;
            this.f395b = currentPlayTime;
            if (C0041h.this.f382s == 3) {
                C0041h.this.f380q = (((-floatValue) * 0.1f) + C0041h.this.f380q) % 360.0f;
                C0041h.this.m389b(((-floatValue2) * 0.1f) + C0041h.this.f381r);
            } else if (Math.abs(floatValue) > Math.abs(floatValue2)) {
                C0041h.this.f380q = (((-floatValue) * 0.1f) + C0041h.this.f380q) % 360.0f;
            } else {
                C0041h.this.m389b(((-floatValue2) * 0.1f) + C0041h.this.f381r);
            }
            C0041h.this.f388y = true;
            C0041h.this.f388y = true;
        }
    }
}
