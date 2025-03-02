package ui_Controller.CustomWidget.SingleHorizontalScrollView.p106b;

import GeneralFunction.p005e.C0057a;
import GeneralFunction.p005e.C0060d;
import GeneralFunction.p008g.C0069a;
import android.graphics.Bitmap;
import ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c;
import ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1642d;

/* renamed from: ui_Controller.CustomWidget.SingleHorizontalScrollView.b.c */
/* loaded from: classes.dex */
public class C1645c extends C1641c {

    /* renamed from: a */
    public C1642d f7310a;

    /* renamed from: b */
    private Bitmap f7311b = null;

    /* renamed from: c */
    private Bitmap f7312c = null;

    /* renamed from: d */
    private boolean f7313d = false;

    /* renamed from: e */
    private boolean f7314e = false;

    /* renamed from: f */
    private C0060d f7315f = null;

    /* renamed from: g */
    private int f7316g = -1;

    /* renamed from: h */
    private int f7317h = -1;

    /* renamed from: a */
    public void m6979a(C0060d c0060d, C0057a c0057a) {
        this.f7311b = null;
        this.f7312c = null;
        this.f7310a = new C1642d();
        this.f7313d = false;
        this.f7315f = c0060d;
        this.f7316g = c0057a.f490b;
        this.f7317h = c0057a.f491c.get(0).intValue();
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: a */
    public String mo6959a() {
        String m520e = this.f7315f.m520e(this.f7316g, this.f7317h);
        int m505a = this.f7315f.m505a(this.f7316g, this.f7317h);
        if (m520e == null) {
            return null;
        }
        if (m505a == 1) {
            return C0069a.m649d(m520e);
        }
        return m520e;
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: b */
    public String mo6962b() {
        String m522f = this.f7315f.m522f(this.f7316g, this.f7317h);
        int m505a = this.f7315f.m505a(this.f7316g, this.f7317h);
        if (m522f != null && m505a == 1) {
            return C0069a.m649d(m522f);
        }
        return m522f;
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: c */
    public int mo6965c() {
        return this.f7315f.m510b(this.f7316g, this.f7317h);
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: d */
    public int mo6966d() {
        return this.f7315f.m513c(this.f7316g, this.f7317h);
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: a */
    public void mo6960a(Bitmap bitmap) {
        this.f7311b = bitmap;
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: e */
    public Bitmap mo6967e() {
        return this.f7311b;
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: b */
    public void mo6963b(Bitmap bitmap) {
        this.f7312c = bitmap;
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: f */
    public Bitmap mo6968f() {
        return this.f7312c;
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: a */
    public void mo6961a(boolean z) {
        this.f7313d = z;
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: g */
    public boolean mo6969g() {
        return this.f7313d;
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: h */
    public boolean mo6970h() {
        return this.f7312c != null;
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: i */
    public boolean mo6971i() {
        switch (this.f7315f.m505a(this.f7316g, this.f7317h)) {
            case 0:
            case 2:
            case 3:
            case 4:
                return true;
            case 1:
            default:
                return false;
        }
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: j */
    public boolean mo6972j() {
        return this.f7315f.m505a(this.f7316g, this.f7317h) == 6;
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: k */
    public boolean mo6973k() {
        return this.f7314e;
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: b */
    public void mo6964b(boolean z) {
        this.f7314e = z;
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: l */
    public int mo6974l() {
        int m505a = this.f7315f.m505a(this.f7316g, this.f7317h);
        switch (m505a) {
            case 2:
            case 3:
                if (this.f7315f.m538q(this.f7315f.m542u(this.f7316g)) == 1) {
                }
                break;
        }
        return m505a;
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: m */
    public boolean mo6975m() {
        switch (mo6974l()) {
            case 1:
            case 2:
            case 3:
            case 5:
                return false;
            case 4:
            default:
                return true;
        }
    }

    @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c
    /* renamed from: n */
    public C1642d mo6976n() {
        return this.f7310a;
    }
}
