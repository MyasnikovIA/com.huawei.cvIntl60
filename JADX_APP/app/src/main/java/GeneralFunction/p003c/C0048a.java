package GeneralFunction.p003c;

import GeneralFunction.C0076j;
import java.util.ArrayList;

/* renamed from: GeneralFunction.c.a */
/* loaded from: classes.dex */
public class C0048a {

    /* renamed from: b */
    private int f458b;

    /* renamed from: c */
    private ArrayList<C0051d> f459c;

    /* renamed from: a */
    final C0076j f457a = new C0076j();

    /* renamed from: d */
    private int f460d = 0;

    public C0048a(int i, int i2) {
        this.f458b = 0;
        this.f459c = null;
        this.f458b = i;
        this.f459c = new ArrayList<>();
        for (int i3 = 0; i3 < i; i3++) {
            this.f459c.add(new C0051d(new byte[i2]));
        }
    }

    /* renamed from: a */
    public C0051d m448a() {
        int i;
        C0051d c0051d;
        this.f457a.m739a();
        int i2 = 0;
        while (true) {
            i = i2;
            if (i >= this.f458b) {
                c0051d = null;
                break;
            }
            int i3 = ((this.f460d + i) + 1) % this.f458b;
            if (this.f459c.get(i3).m455b()) {
                i2 = i + 1;
            } else {
                c0051d = this.f459c.get(i3);
                c0051d.m456c();
                this.f460d = i3;
                break;
            }
        }
        this.f457a.m740b();
        if (i == this.f458b) {
            return null;
        }
        return c0051d;
    }

    /* renamed from: b */
    public void m449b() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f459c.size()) {
                this.f459c.get(i2).m458e();
                i = i2 + 1;
            } else {
                this.f459c.clear();
                this.f459c = null;
                return;
            }
        }
    }
}
