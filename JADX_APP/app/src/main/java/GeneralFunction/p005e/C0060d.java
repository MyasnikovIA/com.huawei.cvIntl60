package GeneralFunction.p005e;

import GeneralFunction.C0052d;
import GeneralFunction.C0076j;
import GeneralFunction.p008g.C0069a;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.HashMap;
import ui_Controller.p109a.C1658c;

/* renamed from: GeneralFunction.e.d */
/* loaded from: classes.dex */
public class C0060d {

    /* renamed from: b */
    private ArrayList<C0057a> f496b;

    /* renamed from: d */
    private HashMap<Integer, C0059c> f498d;

    /* renamed from: a */
    private Cursor f495a = null;

    /* renamed from: c */
    private int f497c = 0;

    /* renamed from: e */
    private final C0076j f499e = new C0076j();

    /* renamed from: a */
    private void m498a(String str, int i) {
        C0052d.m465a(getClass().getSimpleName(), str, i);
    }

    /* renamed from: a */
    public void m506a() {
    }

    /* renamed from: b */
    public void m511b() {
    }

    /* renamed from: c */
    public void m514c() {
    }

    /* renamed from: a */
    public void m508a(Cursor cursor, C0058b c0058b, int i) {
        this.f499e.m739a();
        this.f495a = cursor;
        C0058b c0058b2 = (C0058b) c0058b.clone();
        this.f496b = c0058b2.f492a;
        this.f498d = c0058b2.f493b;
        this.f497c = i;
        this.f499e.m740b();
    }

    /* renamed from: a */
    public void m507a(Cursor cursor, C0058b c0058b) {
        this.f499e.m739a();
        this.f495a = cursor;
        C0058b c0058b2 = (C0058b) c0058b.clone();
        this.f496b = c0058b2.f492a;
        this.f498d = c0058b2.f493b;
        this.f499e.m740b();
    }

    /* renamed from: d */
    public C0058b m517d() {
        this.f499e.m739a();
        C0058b c0058b = new C0058b();
        c0058b.f492a = this.f496b;
        c0058b.f493b = this.f498d;
        this.f499e.m740b();
        return c0058b;
    }

    /* renamed from: w */
    private int m500w(int i) {
        if (!this.f495a.moveToPosition(i)) {
            m498a("GetFileType lPosition Error " + i, 4);
            return -1;
        }
        return Integer.parseInt(this.f495a.getString(this.f495a.getColumnIndex("FileType")));
    }

    /* renamed from: a */
    public int m505a(int i, int i2) {
        this.f499e.m739a();
        int m500w = m500w(m499j(i, i2));
        this.f499e.m740b();
        return m500w;
    }

    /* renamed from: a */
    public int m504a(int i) {
        this.f499e.m739a();
        int m500w = m500w(m496O(i));
        this.f499e.m740b();
        return m500w;
    }

    /* renamed from: x */
    private int m501x(int i) {
        if (!this.f495a.moveToPosition(i)) {
            m498a("GetWidth lPosition Error " + i, 4);
            return -1;
        }
        return Integer.parseInt(this.f495a.getString(this.f495a.getColumnIndex("Width")));
    }

    /* renamed from: b */
    public int m510b(int i, int i2) {
        this.f499e.m739a();
        int m501x = m501x(m499j(i, i2));
        this.f499e.m740b();
        return m501x;
    }

    /* renamed from: b */
    public int m509b(int i) {
        this.f499e.m739a();
        int m501x = m501x(m496O(i));
        this.f499e.m740b();
        return m501x;
    }

    /* renamed from: y */
    private int m502y(int i) {
        if (!this.f495a.moveToPosition(i)) {
            m498a("GetHeight lPosition Error " + i, 4);
            return -1;
        }
        return Integer.parseInt(this.f495a.getString(this.f495a.getColumnIndex("Height")));
    }

    /* renamed from: c */
    public int m513c(int i, int i2) {
        this.f499e.m739a();
        int m502y = m502y(m499j(i, i2));
        this.f499e.m740b();
        return m502y;
    }

    /* renamed from: c */
    public int m512c(int i) {
        this.f499e.m739a();
        int m502y = m502y(m496O(i));
        this.f499e.m740b();
        return m502y;
    }

    /* renamed from: z */
    private int m503z(int i) {
        if (!this.f495a.moveToPosition(i)) {
            m498a("GetVideoDurationTime lPosition Error " + i, 4);
            return -1;
        }
        return Integer.parseInt(this.f495a.getString(this.f495a.getColumnIndex("VideoDurationTime")));
    }

    /* renamed from: d */
    public int m516d(int i, int i2) {
        this.f499e.m739a();
        int m503z = m503z(m499j(i, i2));
        this.f499e.m740b();
        return m503z;
    }

    /* renamed from: d */
    public int m515d(int i) {
        this.f499e.m739a();
        int m503z = m503z(m496O(i));
        this.f499e.m740b();
        return m503z;
    }

    /* renamed from: A */
    private long m482A(int i) {
        if (!this.f495a.moveToPosition(i)) {
            m498a("GetFileSize lPosition Error " + i, 4);
            return -1L;
        }
        return Long.parseLong(this.f495a.getString(this.f495a.getColumnIndex("FileSize")));
    }

    /* renamed from: e */
    public long m519e(int i) {
        this.f499e.m739a();
        long m482A = m482A(m496O(i));
        this.f499e.m740b();
        return m482A;
    }

    /* renamed from: f */
    public long m521f(int i) {
        this.f499e.m739a();
        long j = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.f496b.get(i).f491c.size()) {
                break;
            }
            int i4 = this.f496b.get(i).f489a + i3;
            if (!this.f495a.moveToPosition(i4)) {
                m498a("GetGroupTotalSize lPosition Error " + i4, 4);
                j = -1;
                break;
            }
            j += Long.parseLong(this.f495a.getString(this.f495a.getColumnIndex("FileSize")));
            i2 = i3 + 1;
        }
        this.f499e.m740b();
        return j;
    }

    /* renamed from: B */
    private long m483B(int i) {
        if (!this.f495a.moveToPosition(i)) {
            m498a("GetCaptureTime lPosition Error " + i, 4);
            return -1L;
        }
        return Long.parseLong(this.f495a.getString(this.f495a.getColumnIndex("CaptureTime")));
    }

    /* renamed from: g */
    public long m525g(int i) {
        this.f499e.m739a();
        long m483B = m483B(m496O(i));
        this.f499e.m740b();
        return m483B;
    }

    /* renamed from: C */
    private long m484C(int i) {
        if (!this.f495a.moveToPosition(i)) {
            m498a("GetDownloadTime lPosition Error " + i, 4);
            return -1L;
        }
        return Long.parseLong(this.f495a.getString(this.f495a.getColumnIndex("DownloadTime")));
    }

    /* renamed from: h */
    public long m527h(int i) {
        this.f499e.m739a();
        long m484C = m484C(m496O(i));
        this.f499e.m740b();
        return m484C;
    }

    /* renamed from: D */
    private boolean m485D(int i) {
        return false;
    }

    /* renamed from: E */
    private boolean m486E(int i) {
        return false;
    }

    /* renamed from: F */
    private boolean m487F(int i) {
        if (this.f495a.moveToPosition(i)) {
            return this.f495a.getInt(this.f495a.getColumnIndex("Is360File")) != 0;
        }
        m498a("Is360File lPosition Error " + i, 4);
        return false;
    }

    /* renamed from: i */
    public boolean m530i(int i) {
        this.f499e.m739a();
        boolean m487F = m487F(m496O(i));
        this.f499e.m740b();
        return m487F;
    }

    /* renamed from: G */
    private boolean m488G(int i) {
        if (this.f495a.moveToPosition(i)) {
            return this.f495a.getInt(this.f495a.getColumnIndex("Have360Stitch")) != 0;
        }
        m498a("Have360Stitch lPosition Error " + i, 4);
        return false;
    }

    /* renamed from: j */
    public boolean m531j(int i) {
        this.f499e.m739a();
        boolean m488G = m488G(m496O(i));
        this.f499e.m740b();
        return m488G;
    }

    /* renamed from: H */
    private boolean m489H(int i) {
        switch (m500w(i)) {
            case 0:
            case 3:
            case 4:
                return true;
            case 1:
            default:
                return false;
            case 2:
                return m495N(i).toLowerCase().equals("jpg");
        }
    }

    /* renamed from: k */
    public boolean m532k(int i) {
        this.f499e.m739a();
        boolean m489H = m489H(m496O(i));
        this.f499e.m740b();
        return m489H;
    }

    /* renamed from: I */
    private boolean m490I(int i) {
        switch (m500w(i)) {
            case 1:
            case 5:
                return true;
            case 2:
                return !m495N(i).toLowerCase().equals("jpg");
            case 3:
            case 4:
            default:
                return false;
        }
    }

    /* renamed from: l */
    public boolean m533l(int i) {
        this.f499e.m739a();
        boolean m490I = m490I(m496O(i));
        this.f499e.m740b();
        return m490I;
    }

    /* renamed from: J */
    private String m491J(int i) {
        if (this.f497c == 1) {
            return m492K(i);
        }
        if (!m485D(i)) {
            return null;
        }
        String m494M = m494M(i);
        String m493L = m493L(i);
        if (m494M == null || m493L == null) {
            return null;
        }
        String str = C1658c.f7459g + m494M.substring(m494M.lastIndexOf("DCIM/") + 5, m494M.lastIndexOf("/")) + "/";
        if (m490I(i)) {
            return str + C0069a.m645b(m493L, "thm");
        }
        return str + m493L;
    }

    /* renamed from: e */
    public String m520e(int i, int i2) {
        this.f499e.m739a();
        String m491J = m491J(m499j(i, i2));
        this.f499e.m740b();
        return m491J;
    }

    /* renamed from: m */
    public String m534m(int i) {
        this.f499e.m739a();
        String m491J = m491J(m496O(i));
        this.f499e.m740b();
        return m491J;
    }

    /* renamed from: K */
    private String m492K(int i) {
        if (this.f497c == 1) {
            if (m490I(i)) {
                String m494M = m494M(i);
                if (m494M == null) {
                    return null;
                }
                return C0069a.m649d(m494M);
            }
            return m494M(i);
        }
        if (m490I(i)) {
            return m491J(i);
        }
        if (!m486E(i)) {
            return null;
        }
        String m494M2 = m494M(i);
        String m493L = m493L(i);
        if (m494M2 == null || m493L == null) {
            return null;
        }
        return (C1658c.f7460h + m494M2.substring(m494M2.lastIndexOf("DCIM/") + 5, m494M2.lastIndexOf("/")) + "/") + m493L;
    }

    /* renamed from: f */
    public String m522f(int i, int i2) {
        this.f499e.m739a();
        String m492K = m492K(m499j(i, i2));
        this.f499e.m740b();
        return m492K;
    }

    /* renamed from: L */
    private String m493L(int i) {
        if (this.f495a.moveToPosition(i)) {
            return this.f495a.getString(this.f495a.getColumnIndex("FileName"));
        }
        m498a("GetFileName lPosition Error " + i, 4);
        return null;
    }

    /* renamed from: g */
    public String m526g(int i, int i2) {
        this.f499e.m739a();
        String m493L = m493L(m499j(i, i2));
        this.f499e.m740b();
        return m493L;
    }

    /* renamed from: n */
    public String m535n(int i) {
        this.f499e.m739a();
        String m493L = m493L(m496O(i));
        this.f499e.m740b();
        return m493L;
    }

    /* renamed from: M */
    private String m494M(int i) {
        if (!this.f495a.moveToPosition(i)) {
            m498a("GetFullPath lPosition Error " + i, 0);
            return null;
        }
        return this.f495a.getString(this.f495a.getColumnIndex("FilePath")) + this.f495a.getString(this.f495a.getColumnIndex("FileName"));
    }

    /* renamed from: h */
    public String m528h(int i, int i2) {
        this.f499e.m739a();
        String m494M = m494M(m499j(i, i2));
        this.f499e.m740b();
        return m494M;
    }

    /* renamed from: o */
    public String m536o(int i) {
        this.f499e.m739a();
        String m494M = m494M(m496O(i));
        this.f499e.m740b();
        return m494M;
    }

    /* renamed from: N */
    private String m495N(int i) {
        String m493L = m493L(i);
        if (m493L != null) {
            return m493L.substring(m493L.lastIndexOf(46) + 1);
        }
        return m493L;
    }

    /* renamed from: e */
    public int m518e() {
        return this.f496b.size();
    }

    /* renamed from: p */
    public boolean m537p(int i) {
        return i < this.f496b.size() && i >= 0;
    }

    /* renamed from: q */
    public int m538q(int i) {
        if (m497P(i)) {
            return -1;
        }
        return this.f496b.get(i).f491c.size();
    }

    /* renamed from: f */
    public ArrayList<C0057a> m523f() {
        return this.f496b;
    }

    /* renamed from: r */
    public C0057a m539r(int i) {
        if (m497P(i)) {
            return null;
        }
        return this.f496b.get(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
    
        continue;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int m499j(int r6, int r7) {
        /*
            r5 = this;
            r3 = -1
            int r0 = r5.m543v(r6)
            if (r0 != r3) goto L9
            r0 = r3
        L8:
            return r0
        L9:
            r1 = r0
        La:
            java.util.ArrayList<GeneralFunction.e.a> r0 = r5.f496b
            int r0 = r0.size()
            if (r1 >= r0) goto L50
            java.util.ArrayList<GeneralFunction.e.a> r0 = r5.f496b
            java.lang.Object r0 = r0.get(r1)
            GeneralFunction.e.a r0 = (GeneralFunction.p005e.C0057a) r0
            int r0 = r0.f490b
            if (r0 != r6) goto L4c
            java.util.ArrayList<GeneralFunction.e.a> r0 = r5.f496b
            java.lang.Object r0 = r0.get(r1)
            GeneralFunction.e.a r0 = (GeneralFunction.p005e.C0057a) r0
            java.util.ArrayList<java.lang.Integer> r4 = r0.f491c
            r0 = 0
            r2 = r0
        L2a:
            int r0 = r4.size()
            if (r2 >= r0) goto L4c
            java.lang.Object r0 = r4.get(r2)
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            if (r0 != r7) goto L48
            java.util.ArrayList<GeneralFunction.e.a> r0 = r5.f496b
            java.lang.Object r0 = r0.get(r1)
            GeneralFunction.e.a r0 = (GeneralFunction.p005e.C0057a) r0
            int r0 = r0.f489a
            int r0 = r0 + r2
            goto L8
        L48:
            int r0 = r2 + 1
            r2 = r0
            goto L2a
        L4c:
            int r0 = r1 + 1
            r1 = r0
            goto La
        L50:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Error: Not Found In Table "
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.StringBuilder r0 = r0.append(r6)
            java.lang.String r1 = " "
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.StringBuilder r0 = r0.append(r7)
            java.lang.String r0 = r0.toString()
            r1 = 4
            r5.m498a(r0, r1)
            r0 = r3
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.p005e.C0060d.m499j(int, int):int");
    }

    /* renamed from: O */
    private int m496O(int i) {
        if (m497P(i)) {
            return -1;
        }
        return this.f496b.get(i).f489a;
    }

    /* renamed from: s */
    public int m540s(int i) {
        if (m497P(i)) {
            return -1;
        }
        return this.f496b.get(i).f490b;
    }

    /* renamed from: g */
    public int m524g() {
        int i = -1;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.f496b.size()) {
                if (this.f496b.get(i3).f490b > i) {
                    i = this.f496b.get(i3).f490b;
                }
                i2 = i3 + 1;
            } else {
                return i;
            }
        }
    }

    /* renamed from: t */
    public int m541t(int i) {
        if (!m497P(i) && this.f496b.get(i).f491c.size() != 0) {
            return this.f496b.get(i).f491c.get(0).intValue();
        }
        return -1;
    }

    /* renamed from: i */
    public int m529i(int i, int i2) {
        if (!m497P(i) && i2 < m538q(i)) {
            return this.f496b.get(i).f491c.get(i2).intValue();
        }
        return -1;
    }

    /* renamed from: u */
    public int m542u(int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.f496b.size()) {
                if (this.f496b.get(i3).f490b != i) {
                    i2 = i3 + 1;
                } else {
                    return i3;
                }
            } else {
                m498a("LinkTable_GetLinkIndex error", 4);
                return -1;
            }
        }
    }

    /* renamed from: P */
    private boolean m497P(int i) {
        if (i < this.f496b.size() && i >= 0) {
            return false;
        }
        m498a("Error: LinkTable Over Size", 4);
        return true;
    }

    /* renamed from: v */
    public int m543v(int i) {
        C0059c c0059c = this.f498d.get(Integer.valueOf(i));
        if (c0059c != null) {
            return c0059c.f494a;
        }
        m498a("Error: GroupIndexMap_GetLinkIndex no mapping " + i, 4);
        return -1;
    }
}
