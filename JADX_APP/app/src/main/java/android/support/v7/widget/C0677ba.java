package android.support.v7.widget;

/* renamed from: android.support.v7.widget.ba */
/* loaded from: classes.dex */
class C0677ba {

    /* renamed from: a */
    private int f3685a = 0;

    /* renamed from: b */
    private int f3686b = 0;

    /* renamed from: c */
    private int f3687c = Integer.MIN_VALUE;

    /* renamed from: d */
    private int f3688d = Integer.MIN_VALUE;

    /* renamed from: e */
    private int f3689e = 0;

    /* renamed from: f */
    private int f3690f = 0;

    /* renamed from: g */
    private boolean f3691g = false;

    /* renamed from: h */
    private boolean f3692h = false;

    C0677ba() {
    }

    /* renamed from: a */
    public int m4102a() {
        return this.f3685a;
    }

    /* renamed from: b */
    public int m4105b() {
        return this.f3686b;
    }

    /* renamed from: c */
    public int m4107c() {
        return this.f3691g ? this.f3686b : this.f3685a;
    }

    /* renamed from: d */
    public int m4108d() {
        return this.f3691g ? this.f3685a : this.f3686b;
    }

    /* renamed from: a */
    public void m4103a(int i, int i2) {
        this.f3687c = i;
        this.f3688d = i2;
        this.f3692h = true;
        if (this.f3691g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f3685a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f3686b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f3685a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f3686b = i2;
        }
    }

    /* renamed from: b */
    public void m4106b(int i, int i2) {
        this.f3692h = false;
        if (i != Integer.MIN_VALUE) {
            this.f3689e = i;
            this.f3685a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f3690f = i2;
            this.f3686b = i2;
        }
    }

    /* renamed from: a */
    public void m4104a(boolean z) {
        if (z != this.f3691g) {
            this.f3691g = z;
            if (this.f3692h) {
                if (z) {
                    this.f3685a = this.f3688d != Integer.MIN_VALUE ? this.f3688d : this.f3689e;
                    this.f3686b = this.f3687c != Integer.MIN_VALUE ? this.f3687c : this.f3690f;
                    return;
                } else {
                    this.f3685a = this.f3687c != Integer.MIN_VALUE ? this.f3687c : this.f3689e;
                    this.f3686b = this.f3688d != Integer.MIN_VALUE ? this.f3688d : this.f3690f;
                    return;
                }
            }
            this.f3685a = this.f3689e;
            this.f3686b = this.f3690f;
        }
    }
}
