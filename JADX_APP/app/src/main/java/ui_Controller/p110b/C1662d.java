package ui_Controller.p110b;

/* renamed from: ui_Controller.b.d */
/* loaded from: classes.dex */
public class C1662d {

    /* renamed from: a */
    private static C1662d f7495a = null;

    /* renamed from: b */
    private a f7496b = new a();

    /* renamed from: a */
    public static C1662d m7093a() {
        if (f7495a == null) {
            synchronized (C1662d.class) {
                if (f7495a == null) {
                    f7495a = new C1662d();
                }
            }
        }
        return f7495a;
    }

    /* renamed from: a */
    public void m7095a(boolean z) {
        this.f7496b.f7497a = z;
    }

    /* renamed from: b */
    public boolean m7096b() {
        return this.f7496b.f7497a;
    }

    /* renamed from: a */
    public void m7094a(int i) {
        this.f7496b.f7498b = i;
    }

    /* renamed from: c */
    public int m7097c() {
        return this.f7496b.f7498b;
    }

    /* renamed from: ui_Controller.b.d$a */
    private class a {

        /* renamed from: a */
        boolean f7497a;

        /* renamed from: b */
        int f7498b;

        private a() {
            this.f7497a = false;
            this.f7498b = -1;
        }
    }
}
