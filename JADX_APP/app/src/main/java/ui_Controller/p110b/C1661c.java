package ui_Controller.p110b;

/* renamed from: ui_Controller.b.c */
/* loaded from: classes.dex */
public class C1661c {

    /* renamed from: b */
    private int f7490b;

    /* renamed from: c */
    private int f7491c;

    /* renamed from: f */
    private long f7494f;

    /* renamed from: d */
    private int f7492d = 0;

    /* renamed from: e */
    private boolean f7493e = false;

    /* renamed from: a */
    int f7489a = 0;

    public C1661c(int i, int i2, long j) {
        this.f7490b = i;
        this.f7491c = i2;
        this.f7494f = j;
    }

    /* renamed from: a */
    public int m7081a() {
        return this.f7490b;
    }

    /* renamed from: b */
    public int m7085b() {
        return this.f7491c;
    }

    /* renamed from: c */
    public int m7087c() {
        return this.f7492d;
    }

    /* renamed from: d */
    public long m7088d() {
        return this.f7494f;
    }

    /* renamed from: a */
    public void m7083a(int i, int i2) {
        this.f7490b = i;
        this.f7491c = i2;
    }

    /* renamed from: a */
    public void m7082a(int i) {
        this.f7492d = i;
    }

    /* renamed from: a */
    public void m7084a(boolean z) {
        this.f7493e = z;
    }

    /* renamed from: b */
    public void m7086b(int i) {
        this.f7489a = i;
    }

    /* renamed from: e */
    public boolean m7089e() {
        return this.f7493e;
    }

    /* renamed from: f */
    public boolean m7090f() {
        return this.f7489a == 1;
    }

    /* renamed from: g */
    public boolean m7091g() {
        return this.f7489a == 2;
    }

    /* renamed from: h */
    public String m7092h() {
        return "lHeaderId:" + this.f7492d + "\r\nbIsSelected:" + this.f7493e + "\r\nlStatus:" + this.f7489a + "\r\nlGroupIndex:" + this.f7490b + "\r\nlFileIndex:" + this.f7491c + "\r\nlSortTime:" + this.f7494f + "\r\n";
    }
}
