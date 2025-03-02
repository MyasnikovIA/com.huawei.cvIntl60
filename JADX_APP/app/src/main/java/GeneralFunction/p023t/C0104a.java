package GeneralFunction.p023t;

import java.util.ArrayList;

/* renamed from: GeneralFunction.t.a */
/* loaded from: classes.dex */
public class C0104a {

    /* renamed from: a */
    public long f768a = 0;

    /* renamed from: b */
    public long f769b = 0;

    /* renamed from: c */
    public String f770c = "";

    /* renamed from: d */
    public boolean f771d = false;

    /* renamed from: e */
    public ArrayList<C0104a> f772e = new ArrayList<>();

    /* renamed from: a */
    public C0104a m956a(String str) {
        ArrayList<C0104a> m957b = m957b(str);
        if (m957b.isEmpty()) {
            return null;
        }
        return m957b.get(0);
    }

    /* renamed from: b */
    public ArrayList<C0104a> m957b(String str) {
        ArrayList<C0104a> arrayList = new ArrayList<>();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f772e.size()) {
                if (this.f772e.get(i2).f770c.equals(str)) {
                    arrayList.add(this.f772e.get(i2));
                }
                i = i2 + 1;
            } else {
                return arrayList;
            }
        }
    }

    public String toString() {
        String str = "" + this.f770c + " " + this.f768a + " " + this.f769b + "\r\n";
        for (int i = 0; i < this.f772e.size(); i++) {
            str = str + this.f772e.get(i);
        }
        return str;
    }
}
