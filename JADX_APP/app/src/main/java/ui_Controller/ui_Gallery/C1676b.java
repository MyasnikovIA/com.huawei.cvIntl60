package ui_Controller.ui_Gallery;

import GeneralFunction.C0052d;
import GeneralFunction.Player.player.SphericalVideoPlayer;
import GeneralFunction.p001a.ActivityC0044a;
import GeneralFunction.p005e.C0060d;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import ui_Controller.CustomWidget.C1649a;
import ui_Controller.CustomWidget.ListHorizontalScrollView.ListHorizontalScrollView;
import ui_Controller.CustomWidget.ListHorizontalScrollView.p104b.C1625a;
import ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView;
import ui_Controller.CustomWidget.SingleHorizontalScrollView.p106b.C1643a;
import ui_Controller.p109a.C1658c;
import ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController;

/* renamed from: ui_Controller.ui_Gallery.b */
/* loaded from: classes.dex */
public class C1676b {

    /* renamed from: f */
    private d f7817f;

    /* renamed from: g */
    private d f7818g;

    /* renamed from: j */
    private ActivityC0044a f7821j;

    /* renamed from: a */
    private c f7812a = null;

    /* renamed from: b */
    private C1649a f7813b = null;

    /* renamed from: c */
    private C1625a f7814c = null;

    /* renamed from: d */
    private C1643a f7815d = null;

    /* renamed from: e */
    private int f7816e = 0;

    /* renamed from: h */
    private boolean f7819h = false;

    /* renamed from: i */
    private int f7820i = -1;

    /* renamed from: k */
    private UI_PhoneGalleryController f7822k = null;

    /* renamed from: l */
    private ListHorizontalScrollView.InterfaceC1617a f7823l = new ListHorizontalScrollView.InterfaceC1617a() { // from class: ui_Controller.ui_Gallery.b.1
        @Override // ui_Controller.CustomWidget.ListHorizontalScrollView.ListHorizontalScrollView.InterfaceC1617a
        /* renamed from: a */
        public void mo6836a(int i, View view) {
            C1676b.this.f7816e = i;
            C1676b.this.f7812a.f7844g.mo7130a(i, C1676b.this.f7812a.f7841d.m6944e(i).mo6968f());
            C1676b.this.f7812a.f7841d.m6939b(i);
        }
    };

    /* renamed from: m */
    private ListHorizontalScrollView.InterfaceC1620d f7824m = new ListHorizontalScrollView.InterfaceC1620d() { // from class: ui_Controller.ui_Gallery.b.2
        @Override // ui_Controller.CustomWidget.ListHorizontalScrollView.ListHorizontalScrollView.InterfaceC1620d
        /* renamed from: a */
        public void mo6839a(int i, MotionEvent motionEvent) {
            C1676b.this.m7116d();
        }
    };

    /* renamed from: n */
    private SingleHorizontalScrollView.InterfaceC1633a f7825n = new SingleHorizontalScrollView.InterfaceC1633a() { // from class: ui_Controller.ui_Gallery.b.3
        @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView.InterfaceC1633a
        /* renamed from: a */
        public void mo6949a(int i, View view) {
            C1676b.this.f7816e = i;
            C1676b.this.f7812a.f7844g.mo7130a(i, C1676b.this.f7812a.f7841d.m6944e(i).mo6968f());
        }
    };

    /* renamed from: o */
    private SingleHorizontalScrollView.InterfaceC1634b f7826o = new SingleHorizontalScrollView.InterfaceC1634b() { // from class: ui_Controller.ui_Gallery.b.4
        @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView.InterfaceC1634b
        /* renamed from: a */
        public void mo6950a(int i, Bitmap bitmap) {
            C1676b.this.f7812a.f7845h.mo7131a(i, bitmap);
        }
    };

    /* renamed from: p */
    private SingleHorizontalScrollView.InterfaceC1636d f7827p = new SingleHorizontalScrollView.InterfaceC1636d() { // from class: ui_Controller.ui_Gallery.b.5
        @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView.InterfaceC1636d
        /* renamed from: a */
        public void mo6952a(int i, PointF pointF) {
            switch (i) {
                case 1:
                    switch (C1676b.this.f7812a.f7843f.m504a(C1676b.this.f7816e)) {
                        case 0:
                        case 4:
                        case 6:
                            C1676b.this.f7821j.mo408a(8962, 0L);
                            break;
                        case 1:
                        case 2:
                        case 3:
                        case 5:
                            if (C1676b.this.m7112b(pointF.x, pointF.y)) {
                                C1676b.this.f7821j.mo408a(8963, 0L);
                                break;
                            } else {
                                C1676b.this.f7821j.mo408a(8962, 0L);
                                break;
                            }
                    }
                case 2:
                    C1676b.this.f7821j.mo408a(8964, 0L);
                    break;
            }
        }
    };

    /* renamed from: q */
    private boolean f7828q = false;

    /* renamed from: r */
    private long f7829r = 0;

    /* renamed from: s */
    private PointF f7830s = new PointF();

    /* renamed from: t */
    private SingleHorizontalScrollView.InterfaceC1637e f7831t = new SingleHorizontalScrollView.InterfaceC1637e() { // from class: ui_Controller.ui_Gallery.b.6
        @Override // ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView.InterfaceC1637e
        /* renamed from: a */
        public void mo6953a(int i, MotionEvent motionEvent) {
            switch (motionEvent.getAction() & 255) {
                case 0:
                    C1676b.this.f7828q = false;
                    C1676b.this.f7830s.set(motionEvent.getX(), motionEvent.getY());
                    C1676b.this.m7116d();
                    break;
                case 2:
                    if (C1676b.this.m7108a(motionEvent.getX(), motionEvent.getY())) {
                        C1676b.this.f7828q = true;
                        C1676b.this.m7116d();
                        break;
                    }
                    break;
                case 5:
                    C1676b.this.m7118e();
                    break;
            }
        }
    };

    /* renamed from: ui_Controller.ui_Gallery.b$a */
    public interface a {
        /* renamed from: a */
        void mo7130a(int i, Bitmap bitmap);
    }

    /* renamed from: ui_Controller.ui_Gallery.b$b */
    public interface b {
        /* renamed from: a */
        void mo7131a(int i, Bitmap bitmap);
    }

    /* renamed from: ui_Controller.ui_Gallery.b$c */
    public static class c {

        /* renamed from: f */
        public C0060d f7843f;

        /* renamed from: a */
        public int f7838a = 0;

        /* renamed from: b */
        public int f7839b = 0;

        /* renamed from: c */
        public ListHorizontalScrollView f7840c = null;

        /* renamed from: d */
        public SingleHorizontalScrollView f7841d = null;

        /* renamed from: e */
        public SphericalVideoPlayer f7842e = null;

        /* renamed from: g */
        public a f7844g = null;

        /* renamed from: h */
        public b f7845h = null;

        /* renamed from: i */
        public Boolean f7846i = false;
    }

    /* renamed from: ui_Controller.ui_Gallery.b$d */
    private class d {

        /* renamed from: b */
        private int f7848b;

        /* renamed from: c */
        private int f7849c;

        private d() {
            this.f7848b = 0;
            this.f7849c = 0;
        }
    }

    /* renamed from: a */
    private void m7106a(String str, int i) {
        C0052d.m465a("UI_GalleryViewWidgetHandler", str, i);
    }

    public C1676b(ActivityC0044a activityC0044a) {
        this.f7817f = new d();
        this.f7818g = new d();
        this.f7821j = null;
        this.f7821j = activityC0044a;
    }

    /* renamed from: a */
    public void m7124a(UI_PhoneGalleryController uI_PhoneGalleryController) {
        this.f7822k = uI_PhoneGalleryController;
    }

    /* renamed from: a */
    public void m7123a(c cVar, int i, int i2) {
        this.f7812a = cVar;
        this.f7816e = i;
        C1649a.b bVar = new C1649a.b();
        bVar.f7434a = C1658c.f7457e + "/TempThumbnail";
        bVar.f7435b = 18096128;
        bVar.f7436c = 810000;
        bVar.f7437d = 3;
        bVar.f7438e = i2;
        bVar.f7439f = false;
        bVar.f7440g = true;
        bVar.f7441h = true;
        this.f7813b = new C1649a(bVar);
        this.f7817f.f7848b = cVar.f7841d.getWidth();
        this.f7817f.f7849c = cVar.f7841d.getHeight();
        this.f7815d = new C1643a(this.f7821j, cVar.f7843f, this.f7817f.f7848b, this.f7817f.f7849c, cVar.f7846i.booleanValue());
        cVar.f7841d.m6933a(this.f7825n);
        cVar.f7841d.m6934a(this.f7826o);
        cVar.f7841d.m6935a(this.f7827p);
        cVar.f7841d.m6936a(this.f7831t);
        SingleHorizontalScrollView.C1638f c1638f = new SingleHorizontalScrollView.C1638f();
        c1638f.f7292a = this.f7815d;
        c1638f.f7293b = this.f7813b;
        c1638f.f7294c = 1;
        c1638f.f7295d = this.f7817f.f7848b;
        c1638f.f7296e = this.f7817f.f7849c;
        cVar.f7841d.setSingleHorizontalScrollViewCallback(this.f7822k);
        cVar.f7841d.m6937a(c1638f, i);
        this.f7820i = 0;
    }

    /* renamed from: a */
    public void m7120a() {
        if (this.f7812a != null && this.f7812a.f7841d != null) {
            this.f7812a.f7841d.m6938b();
        }
    }

    /* renamed from: b */
    public void m7125b() {
        if (this.f7812a != null && this.f7812a.f7841d != null) {
            this.f7812a.f7841d.m6940c();
        }
    }

    /* renamed from: a */
    public void m7122a(int i, int i2) {
        if (!this.f7819h) {
            this.f7818g.f7848b = i;
            this.f7818g.f7849c = i2;
            this.f7819h = true;
        }
    }

    /* renamed from: a */
    public void m7121a(int i) {
        if (i == 2) {
            m7107a(this.f7818g);
        } else if (i == 1) {
            m7107a(this.f7817f);
        }
    }

    /* renamed from: a */
    private void m7107a(d dVar) {
        m7106a("objSize.lWidth: " + dVar.f7848b + " ,objSize.lHeight: " + dVar.f7849c, 3);
        if (this.f7812a != null && this.f7820i != -1) {
            this.f7815d = new C1643a(this.f7821j, this.f7812a.f7843f, dVar.f7848b, dVar.f7849c, this.f7812a.f7846i.booleanValue());
            this.f7812a.f7841d.m6933a(this.f7825n);
            this.f7812a.f7841d.m6934a(this.f7826o);
            this.f7812a.f7841d.m6935a(this.f7827p);
            this.f7812a.f7841d.m6936a(this.f7831t);
            SingleHorizontalScrollView.C1638f c1638f = new SingleHorizontalScrollView.C1638f();
            c1638f.f7292a = this.f7815d;
            c1638f.f7293b = this.f7813b;
            c1638f.f7294c = 1;
            c1638f.f7295d = dVar.f7848b;
            c1638f.f7296e = dVar.f7849c;
            this.f7812a.f7841d.m6937a(c1638f, this.f7816e);
        }
    }

    /* renamed from: c */
    public void m7127c() {
        this.f7820i = -1;
        if (this.f7812a.f7841d != null) {
            this.f7812a.f7841d.setVisibility(4);
            this.f7812a.f7841d.m6931a();
            this.f7812a.f7841d = null;
        }
        if (this.f7812a.f7842e != null) {
            this.f7812a.f7842e.setVisibility(4);
            this.f7812a.f7842e = null;
        }
        if (this.f7813b != null) {
            this.f7813b.m7031a();
            this.f7813b = null;
        }
    }

    /* renamed from: b */
    public void m7126b(int i) {
        this.f7812a.f7841d.m6932a(i);
    }

    /* renamed from: c */
    public void m7128c(int i) {
        this.f7812a.f7841d.m6941c(i);
        this.f7813b.m7032a(i);
        this.f7812a.f7841d.m6943d();
        m7106a("DeleteImageViewItem:" + i + " " + this.f7816e + " " + this.f7812a.f7843f.m518e(), 4);
        if (this.f7816e >= this.f7812a.f7843f.m518e() - 1) {
            this.f7816e--;
        }
    }

    /* renamed from: d */
    public boolean m7129d(int i) {
        return this.f7815d.f7300a.get(i).mo6969g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m7116d() {
        if (System.currentTimeMillis() - this.f7829r > 100) {
            this.f7821j.mo408a(8960, 0L);
            this.f7829r = System.currentTimeMillis();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m7118e() {
        this.f7821j.mo408a(8961, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m7108a(float f, float f2) {
        return Math.abs(f - this.f7830s.x) >= ((float) this.f7812a.f7838a) / 160.0f || Math.abs(f2 - this.f7830s.y) >= ((float) this.f7812a.f7838a) / 90.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public boolean m7112b(float f, float f2) {
        return Math.abs(f - (((float) this.f7812a.f7838a) / 2.0f)) < ((float) this.f7812a.f7838a) / 18.0f && Math.abs(f2 - (((float) this.f7812a.f7839b) / 2.0f)) < ((float) this.f7812a.f7838a) / 18.0f;
    }
}
