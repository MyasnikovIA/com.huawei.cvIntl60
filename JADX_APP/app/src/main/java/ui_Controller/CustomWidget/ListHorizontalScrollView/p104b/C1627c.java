package ui_Controller.CustomWidget.ListHorizontalScrollView.p104b;

import GeneralFunction.p005e.C0060d;
import GeneralFunction.p008g.C0069a;
import android.graphics.Bitmap;
import ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1624c;

/* renamed from: ui_Controller.CustomWidget.ListHorizontalScrollView.b.c */
/* loaded from: classes.dex */
public class C1627c extends C1624c {

    /* renamed from: a */
    private Bitmap f7240a = null;

    /* renamed from: b */
    private boolean f7241b = false;

    /* renamed from: c */
    private C0060d f7242c = null;

    /* renamed from: d */
    private int f7243d = -1;

    /* renamed from: e */
    private int f7244e = -1;

    @Override // ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1624c
    /* renamed from: a */
    public String mo6844a() {
        String m520e = this.f7242c.m520e(this.f7243d, this.f7244e);
        int m505a = this.f7242c.m505a(this.f7243d, this.f7244e);
        if (m520e == null) {
            return null;
        }
        if (m505a == 1) {
            return C0069a.m649d(m520e);
        }
        return m520e;
    }

    @Override // ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1624c
    /* renamed from: b */
    public int mo6847b() {
        return this.f7242c.m510b(this.f7243d, this.f7244e);
    }

    @Override // ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1624c
    /* renamed from: c */
    public int mo6848c() {
        return this.f7242c.m513c(this.f7243d, this.f7244e);
    }

    @Override // ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1624c
    /* renamed from: a */
    public void mo6845a(Bitmap bitmap) {
        this.f7240a = bitmap;
    }

    @Override // ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1624c
    /* renamed from: d */
    public Bitmap mo6849d() {
        return this.f7240a;
    }

    @Override // ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1624c
    /* renamed from: a */
    public void mo6846a(boolean z) {
        this.f7241b = z;
    }

    @Override // ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1624c
    /* renamed from: e */
    public boolean mo6850e() {
        return this.f7241b;
    }
}
