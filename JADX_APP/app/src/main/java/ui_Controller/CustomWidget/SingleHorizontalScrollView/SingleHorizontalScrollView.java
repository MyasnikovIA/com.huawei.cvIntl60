package ui_Controller.CustomWidget.SingleHorizontalScrollView;

import GeneralFunction.C0052d;
import GeneralFunction.C0076j;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.huawei.cvIntl60.R;
import com.p052a.p053a.ComponentCallbacks2C0735c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import ui_Controller.CustomWidget.C1649a;
import ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1639a;
import ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1640b;
import ui_Controller.CustomWidget.SingleHorizontalScrollView.p105a.C1641c;
import ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController;

/* loaded from: classes.dex */
public class SingleHorizontalScrollView extends HorizontalScrollView implements View.OnClickListener {

    /* renamed from: A */
    private PointF f7245A;

    /* renamed from: B */
    private PointF f7246B;

    /* renamed from: C */
    private int f7247C;

    /* renamed from: D */
    private int f7248D;

    /* renamed from: E */
    private int f7249E;

    /* renamed from: F */
    private Map<Integer, LinearLayout> f7250F;

    /* renamed from: G */
    private Map<Integer, View> f7251G;

    /* renamed from: H */
    private final C0076j f7252H;

    /* renamed from: I */
    private int f7253I;

    /* renamed from: J */
    private boolean f7254J;

    /* renamed from: K */
    private int f7255K;

    /* renamed from: L */
    private boolean f7256L;

    /* renamed from: M */
    private boolean f7257M;

    /* renamed from: N */
    private UI_PhoneGalleryController f7258N;

    /* renamed from: O */
    private Handler f7259O;

    /* renamed from: P */
    private View.OnTouchListener f7260P;

    /* renamed from: a */
    public float f7261a;

    /* renamed from: b */
    private Context f7262b;

    /* renamed from: c */
    private InterfaceC1633a f7263c;

    /* renamed from: d */
    private InterfaceC1634b f7264d;

    /* renamed from: e */
    private InterfaceC1636d f7265e;

    /* renamed from: f */
    private InterfaceC1637e f7266f;

    /* renamed from: g */
    private InterfaceC1635c f7267g;

    /* renamed from: h */
    private LinearLayout f7268h;

    /* renamed from: i */
    private C1638f f7269i;

    /* renamed from: j */
    private boolean f7270j;

    /* renamed from: k */
    private int f7271k;

    /* renamed from: l */
    private int f7272l;

    /* renamed from: m */
    private int f7273m;

    /* renamed from: n */
    private int f7274n;

    /* renamed from: o */
    private int f7275o;

    /* renamed from: p */
    private long f7276p;

    /* renamed from: q */
    private int f7277q;

    /* renamed from: r */
    private int f7278r;

    /* renamed from: s */
    private int f7279s;

    /* renamed from: t */
    private boolean f7280t;

    /* renamed from: u */
    private float f7281u;

    /* renamed from: v */
    private Matrix f7282v;

    /* renamed from: w */
    private Matrix f7283w;

    /* renamed from: x */
    private PointF f7284x;

    /* renamed from: y */
    private PointF f7285y;

    /* renamed from: z */
    private float f7286z;

    /* renamed from: ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView$a */
    public interface InterfaceC1633a {
        /* renamed from: a */
        void mo6949a(int i, View view);
    }

    /* renamed from: ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView$b */
    public interface InterfaceC1634b {
        /* renamed from: a */
        void mo6950a(int i, Bitmap bitmap);
    }

    /* renamed from: ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView$c */
    public interface InterfaceC1635c {
        /* renamed from: a */
        boolean m6951a();
    }

    /* renamed from: ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView$d */
    public interface InterfaceC1636d {
        /* renamed from: a */
        void mo6952a(int i, PointF pointF);
    }

    /* renamed from: ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView$e */
    public interface InterfaceC1637e {
        /* renamed from: a */
        void mo6953a(int i, MotionEvent motionEvent);
    }

    /* renamed from: ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView$f */
    public static class C1638f {

        /* renamed from: a */
        public C1639a f7292a = null;

        /* renamed from: b */
        public C1649a f7293b = null;

        /* renamed from: c */
        public int f7294c = 0;

        /* renamed from: d */
        public int f7295d = 0;

        /* renamed from: e */
        public int f7296e = 0;
    }

    /* renamed from: a */
    private void m6865a(String str, int i) {
        C0052d.m465a("SingleHorizontalScrollView", str, i);
    }

    public SingleHorizontalScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7261a = 4.0f;
        this.f7262b = null;
        this.f7268h = null;
        this.f7269i = null;
        this.f7270j = false;
        this.f7273m = 0;
        this.f7274n = 0;
        this.f7275o = 0;
        this.f7276p = -1L;
        this.f7277q = -1;
        this.f7278r = -1;
        this.f7279s = -1;
        this.f7280t = false;
        this.f7281u = 0.02f;
        this.f7282v = new Matrix();
        this.f7283w = new Matrix();
        this.f7284x = new PointF();
        this.f7285y = new PointF();
        this.f7245A = null;
        this.f7246B = null;
        this.f7247C = 0;
        this.f7248D = 0;
        this.f7249E = 0;
        this.f7250F = new HashMap();
        this.f7251G = new HashMap();
        this.f7252H = new C0076j();
        this.f7253I = 0;
        this.f7254J = false;
        this.f7255K = 0;
        this.f7256L = false;
        this.f7257M = false;
        this.f7258N = null;
        this.f7259O = new Handler(Looper.getMainLooper()) { // from class: ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 1:
                        SingleHorizontalScrollView.this.scrollTo(SingleHorizontalScrollView.this.f7275o, 0);
                        SingleHorizontalScrollView.this.setVisibility(0);
                        SingleHorizontalScrollView.this.m6857a(2, 0);
                        SingleHorizontalScrollView.this.m6878a(false);
                        SingleHorizontalScrollView.this.f7270j = true;
                        break;
                    case 2:
                        SingleHorizontalScrollView.this.f7259O.removeMessages(2);
                        if (SingleHorizontalScrollView.this.f7270j) {
                            if (System.currentTimeMillis() - SingleHorizontalScrollView.this.f7276p > 50) {
                                SingleHorizontalScrollView.this.m6907h(SingleHorizontalScrollView.this.f7271k);
                            }
                            SingleHorizontalScrollView.this.m6857a(2, 50);
                            break;
                        }
                        break;
                    case 3:
                        if (SingleHorizontalScrollView.this.f7248D == 1) {
                            SingleHorizontalScrollView.this.f7248D = 0;
                            SingleHorizontalScrollView.this.m6859a(1, (PointF) message.obj);
                            break;
                        }
                        break;
                }
            }
        };
        this.f7260P = new View.OnTouchListener() { // from class: ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView.5
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code restructure failed: missing block: B:67:0x024a, code lost:
            
                if ((r10.f7291a.f7271k - 1) >= 0) goto L68;
             */
            /* JADX WARN: Code restructure failed: missing block: B:69:0x0252, code lost:
            
                if (r10.f7291a.m6886b(r12) == false) goto L11;
             */
            /* JADX WARN: Code restructure failed: missing block: B:71:0x025a, code lost:
            
                if (r10.f7291a.f7254J == false) goto L11;
             */
            /* JADX WARN: Code restructure failed: missing block: B:72:0x025c, code lost:
            
                r10.f7291a.f7249E = 1;
                r10.f7291a.f7247C = 0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:74:0x0276, code lost:
            
                if (r10.f7291a.m6912i(r10.f7291a.f7271k + 1) == false) goto L4;
             */
            @Override // android.view.View.OnTouchListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public boolean onTouch(android.view.View r11, android.view.MotionEvent r12) {
                /*
                    Method dump skipped, instructions count: 732
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView.ViewOnTouchListenerC16325.onTouch(android.view.View, android.view.MotionEvent):boolean");
            }
        };
        this.f7262b = context;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.f7272l = displayMetrics.widthPixels;
    }

    /* renamed from: a */
    public void m6937a(C1638f c1638f, int i) {
        this.f7269i = c1638f;
        this.f7271k = -1;
        this.f7273m = 0;
        this.f7274n = m6913j(this.f7269i.f7292a.getCount() - 1);
        this.f7253I = R.drawable.file_error_640_480;
        m6878a(true);
        setVisibility(4);
        m6905g(i);
    }

    /* renamed from: a */
    public void m6931a() {
        this.f7270j = false;
        this.f7276p = -1L;
        this.f7277q = -1;
        this.f7279s = -1;
        this.f7280t = false;
        this.f7247C = 0;
        this.f7249E = 0;
        m6904g();
    }

    /* renamed from: b */
    public void m6938b() {
        this.f7255K = 1;
        this.f7256L = true;
    }

    /* renamed from: c */
    public void m6940c() {
        this.f7255K = 0;
        this.f7257M = true;
    }

    public void setSingleHorizontalScrollViewCallback(UI_PhoneGalleryController uI_PhoneGalleryController) {
        this.f7258N = uI_PhoneGalleryController;
    }

    /* renamed from: a */
    public void m6932a(int i) {
        m6865a("TouchScrollTo " + i + " " + this.f7271k, 4);
        if (i != this.f7271k) {
            m6861a(i, true);
            smoothScrollTo(m6913j(i), 0);
        }
    }

    /* renamed from: b */
    public void m6939b(int i) {
        this.f7276p = System.currentTimeMillis();
        if (i != this.f7271k) {
            m6865a("Update 0", 1);
            m6861a(i, false);
        }
        scrollTo(m6913j(i), 0);
    }

    /* renamed from: a */
    public void m6935a(InterfaceC1636d interfaceC1636d) {
        this.f7265e = interfaceC1636d;
    }

    /* renamed from: a */
    public void m6933a(InterfaceC1633a interfaceC1633a) {
        this.f7263c = interfaceC1633a;
    }

    /* renamed from: a */
    public void m6934a(InterfaceC1634b interfaceC1634b) {
        this.f7264d = interfaceC1634b;
    }

    /* renamed from: a */
    public void m6936a(InterfaceC1637e interfaceC1637e) {
        this.f7266f = interfaceC1637e;
    }

    /* renamed from: c */
    public void m6941c(int i) {
        if (m6912i(i)) {
            this.f7252H.m739a();
            this.f7269i.f7292a.mo6954a(i);
            C1640b m6923n = m6923n(i);
            m6923n.mo6957a().setImageResource(android.R.color.transparent);
            m6923n.mo6957a().setImageBitmap(null);
            this.f7251G.remove(Integer.valueOf(i));
            this.f7250F.get(Integer.valueOf(i)).removeAllViews();
            this.f7268h.removeView(this.f7250F.get(Integer.valueOf(i)));
            this.f7250F.remove(Integer.valueOf(i));
            ArrayList<Integer> m6856a = m6856a(this.f7251G);
            HashMap hashMap = new HashMap();
            for (int i2 = 0; i2 < m6856a.size(); i2++) {
                if (m6856a.get(i2).intValue() > i) {
                    hashMap.put(Integer.valueOf(m6856a.get(i2).intValue() - 1), this.f7251G.get(m6856a.get(i2)));
                } else {
                    hashMap.put(m6856a.get(i2), this.f7251G.get(m6856a.get(i2)));
                }
            }
            this.f7251G = hashMap;
            ArrayList<Integer> m6856a2 = m6856a(this.f7250F);
            HashMap hashMap2 = new HashMap();
            for (int i3 = 0; i3 < m6856a2.size(); i3++) {
                if (m6856a2.get(i3).intValue() > i) {
                    hashMap2.put(Integer.valueOf(m6856a2.get(i3).intValue() - 1), this.f7250F.get(m6856a2.get(i3)));
                } else {
                    hashMap2.put(m6856a2.get(i3), this.f7250F.get(m6856a2.get(i3)));
                }
            }
            this.f7250F = hashMap2;
            if (!m6912i(i)) {
                this.f7271k--;
            }
            this.f7252H.m740b();
        }
    }

    /* renamed from: d */
    public void m6943d() {
        for (int i = this.f7271k - this.f7269i.f7294c; i <= this.f7271k + this.f7269i.f7294c; i++) {
            if (m6912i(i) && m6921m(i) == null) {
                m6917k(i);
            }
        }
        this.f7279s = -1;
    }

    /* renamed from: g */
    private void m6904g() {
        if (this.f7268h != null) {
            m6878a(true);
            this.f7252H.m739a();
            ArrayList<Integer> m6856a = m6856a(this.f7251G);
            this.f7252H.m740b();
            m6865a("ReleaseViews S:" + m6856a.size(), 2);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < m6856a.size()) {
                    m6919l(m6856a.get(i2).intValue());
                    i = i2 + 1;
                } else {
                    m6865a("ReleaseViews E", 2);
                    return;
                }
            }
        }
    }

    public void setEnableScrolling(boolean z) {
        this.f7254J = z;
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f7268h = (LinearLayout) getChildAt(0);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6857a(int i, int i2) {
        m6860a(i, (Object) null, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6860a(int i, Object obj, int i2) {
        Message message = new Message();
        message.what = i;
        message.obj = obj;
        this.f7259O.sendMessageDelayed(message, i2);
    }

    /* renamed from: g */
    private void m6905g(int i) {
        this.f7268h = (LinearLayout) getChildAt(0);
        this.f7268h.removeAllViews();
        this.f7251G.clear();
        this.f7250F.clear();
        for (int i2 = 0; i2 < this.f7269i.f7292a.getCount(); i2++) {
            m6882b(i2, false);
        }
        m6861a(i, false);
        this.f7275o = m6913j(i);
        m6857a(1, 100);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m6907h(int i) {
        int i2;
        if (this.f7279s != i) {
            m6865a("UpdateMainImageByIndex:" + i, 4);
            this.f7279s = i;
            int i3 = 0;
            while (i3 < (this.f7269i.f7294c * 2) + 1) {
                m6865a("UpdateMainImageByIndex " + i3 + " " + m6912i(i) + " " + this.f7251G.containsKey(Integer.valueOf(i)), 4);
                if (i3 % 2 == 0) {
                    i2 = i - i3;
                } else {
                    i2 = i + i3;
                }
                if (m6912i(i2) && this.f7251G.containsKey(Integer.valueOf(i2))) {
                    if (m6944e(i2).mo6968f() == null && !m6944e(i2).mo6969g()) {
                        m6865a("UpdateMainImageByIndex: " + m6944e(i2).mo6962b(), 4);
                        if (m6944e(i2).mo6962b() != null) {
                            int mo6965c = m6944e(i2).mo6965c();
                            int mo6966d = m6944e(i2).mo6966d();
                            m6865a("UpdateMainImageByIndex: " + i2 + " lImageWidth " + mo6965c + " lImageHeight " + mo6966d, 4);
                            this.f7269i.f7293b.m7033a(m6944e(i2).mo6962b(), i2, this.f7271k, mo6965c, mo6966d, new C1649a.a() { // from class: ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView.2
                                @Override // ui_Controller.CustomWidget.C1649a.a
                                /* renamed from: a */
                                public void mo6834a(Bitmap bitmap, int i4) {
                                    SingleHorizontalScrollView.this.m6862a(bitmap, i4);
                                }
                            });
                        }
                    } else {
                        if (m6947f(i2)) {
                            if (i2 == this.f7271k) {
                                m6926p(i2);
                            } else {
                                m6924o(i2);
                            }
                        }
                        m6858a(i2, m6944e(i2).mo6968f());
                    }
                    if (this.f7256L || this.f7257M) {
                        if (m6947f(i2) && m6944e(i2).mo6968f() != null) {
                            if (this.f7256L) {
                                m6924o(i2);
                            }
                            if (this.f7257M) {
                                m6926p(i2);
                            }
                        }
                        this.f7256L = false;
                        this.f7257M = false;
                    }
                }
                i3++;
                i = i2;
            }
        }
    }

    /* renamed from: a */
    private void m6861a(int i, boolean z) {
        m6865a("UpdateViewByIndex:" + i, 4);
        if (this.f7271k != i) {
            if (this.f7271k == -1) {
                for (int i2 = i - this.f7269i.f7294c; i2 <= this.f7269i.f7294c + i; i2++) {
                    if (m6912i(i2)) {
                        m6917k(i2);
                    }
                }
            } else {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i3 = this.f7271k - this.f7269i.f7294c; i3 <= this.f7271k + this.f7269i.f7294c; i3++) {
                    if (m6912i(i3)) {
                        arrayList.add(Integer.valueOf(i3));
                    }
                }
                for (int i4 = i - this.f7269i.f7294c; i4 <= this.f7269i.f7294c + i; i4++) {
                    if (m6912i(i4)) {
                        arrayList2.add(Integer.valueOf(i4));
                    }
                }
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    int intValue = ((Integer) arrayList.get(i5)).intValue();
                    if (!arrayList2.contains(Integer.valueOf(intValue))) {
                        m6919l(intValue);
                    }
                }
                for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                    int intValue2 = ((Integer) arrayList2.get(i6)).intValue();
                    if (!arrayList.contains(Integer.valueOf(intValue2))) {
                        m6917k(intValue2);
                    }
                }
            }
            this.f7271k = i;
            this.f7279s = -1;
            if (z) {
                m6911i();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public boolean m6912i(int i) {
        return i >= 0 && i < this.f7269i.f7292a.getCount();
    }

    /* renamed from: j */
    private int m6913j(int i) {
        return this.f7269i.f7295d * i;
    }

    /* renamed from: d */
    public ImageView m6942d(int i) {
        return m6923n(i).mo6958b();
    }

    /* renamed from: k */
    private View m6917k(int i) {
        this.f7252H.m739a();
        m6865a("AddView:" + i, 4);
        C1641c m6944e = m6944e(i);
        View view = this.f7269i.f7292a.getView(i, null, this.f7268h);
        view.setOnClickListener(this);
        view.setOnTouchListener(this.f7260P);
        this.f7250F.get(Integer.valueOf(i)).addView(view);
        this.f7251G.put(Integer.valueOf(i), view);
        if (m6944e.mo6969g()) {
            m6927q(i);
        } else if (m6944e(i).mo6959a() != null) {
            this.f7269i.f7293b.m7035b(m6944e(i).mo6959a(), i, this.f7271k, this.f7269i.f7292a.getItem(i).mo6965c(), this.f7269i.f7292a.getItem(i).mo6966d(), new C1649a.a() { // from class: ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView.3
                @Override // ui_Controller.CustomWidget.C1649a.a
                /* renamed from: a */
                public void mo6834a(Bitmap bitmap, int i2) {
                    SingleHorizontalScrollView.this.m6884b(bitmap, i2);
                }
            });
        } else {
            m6928r(i);
        }
        this.f7252H.m740b();
        return view;
    }

    /* renamed from: l */
    private void m6919l(int i) {
        this.f7252H.m739a();
        m6865a("DeleteView:" + i, 4);
        C1640b m6923n = m6923n(i);
        m6923n.mo6957a().setImageResource(android.R.color.transparent);
        m6923n.mo6957a().setImageBitmap(null);
        if (m6944e(i).mo6968f() != null) {
            if (!m6944e(i).mo6968f().isRecycled()) {
                m6865a("recycle bitmap by DeleteView:" + m6944e(i).mo6968f(), 4);
                m6944e(i).mo6968f().recycle();
            }
            m6944e(i).mo6963b((Bitmap) null);
        }
        if (m6944e(i).mo6967e() != null) {
            m6944e(i).mo6960a((Bitmap) null);
        }
        this.f7251G.remove(Integer.valueOf(i));
        this.f7250F.get(Integer.valueOf(i)).removeAllViews();
        this.f7252H.m740b();
    }

    /* renamed from: e */
    public C1641c m6944e(int i) {
        return this.f7269i.f7292a.mo6955b(i);
    }

    /* renamed from: a */
    private ArrayList<Integer> m6856a(Map map) {
        Set entrySet = map.entrySet();
        ArrayList<Integer> arrayList = new ArrayList<>();
        if (entrySet != null) {
            Iterator it = entrySet.iterator();
            while (it.hasNext()) {
                arrayList.add((Integer) ((Map.Entry) it.next()).getKey());
            }
        }
        Collections.sort(arrayList, new Comparator<Integer>() { // from class: ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView.4
            @Override // java.util.Comparator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Integer num, Integer num2) {
                return num.compareTo(num2);
            }
        });
        return arrayList;
    }

    /* renamed from: m */
    private View m6921m(int i) {
        View childAt = this.f7250F.get(Integer.valueOf(i)).getChildAt(0);
        if (childAt == null) {
            m6865a("GetView:" + i, 4);
        }
        return childAt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public C1640b m6923n(int i) {
        View m6921m = m6921m(i);
        if (m6921m == null) {
            return null;
        }
        return (C1640b) m6921m.getTag();
    }

    /* renamed from: b */
    private LinearLayout m6882b(int i, boolean z) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((ViewGroup.MarginLayoutParams) new FrameLayout.LayoutParams(this.f7269i.f7295d, this.f7269i.f7296e));
        LinearLayout linearLayout = new LinearLayout(this.f7262b);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOnClickListener(this);
        linearLayout.setOnTouchListener(this.f7260P);
        if (z) {
            this.f7268h.addView(linearLayout, 0);
        } else {
            this.f7268h.addView(linearLayout);
        }
        this.f7250F.put(Integer.valueOf(i), linearLayout);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public boolean m6908h() {
        return this.f7280t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6878a(boolean z) {
        m6865a("SetKeyBlock:" + z, 2);
        this.f7280t = z;
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!((motionEvent.getAction() & 255) == 2 && this.f7249E == 0) && this.f7254J) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    /* renamed from: e */
    public void m6945e() {
        if (m6912i(this.f7271k - 1)) {
            m6861a(this.f7271k - 1, true);
            smoothScrollTo(m6913j(this.f7271k), 0);
        }
    }

    /* renamed from: f */
    public void m6946f() {
        if (m6912i(this.f7271k + 1)) {
            m6861a(this.f7271k + 1, true);
            smoothScrollTo(m6913j(this.f7271k), 0);
        }
    }

    public int getCurrentIndex() {
        return this.f7271k;
    }

    /* renamed from: f */
    public boolean m6947f(int i) {
        return m6944e(i).mo6974l() == 6;
    }

    public String getImagePath() {
        return m6944e(this.f7271k).mo6962b();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (m6915j() || m6908h()) {
            return true;
        }
        if (this.f7249E != 1 && this.f7249E != 2) {
            return true;
        }
        int i = (int) (this.f7269i.f7295d * this.f7281u);
        int action = motionEvent.getAction() & 255;
        switch (action) {
            case 1:
            case 5:
                if (this.f7249E == 2) {
                    return true;
                }
                if (action == 5) {
                    this.f7249E = 2;
                }
                if (this.f7245A == null) {
                    this.f7246B = new PointF();
                    this.f7245A = new PointF();
                    this.f7245A.set(motionEvent.getX(), motionEvent.getY());
                }
                if (motionEvent.getX() - this.f7245A.x > i) {
                    if (m6912i(this.f7271k - 1)) {
                        m6929s(this.f7271k);
                        m6861a(this.f7271k - 1, true);
                        m6883b(m6913j(this.f7271k), 0);
                    }
                } else if (this.f7245A.x - motionEvent.getX() > i) {
                    if (m6912i(this.f7271k + 1)) {
                        m6929s(this.f7271k);
                        m6861a(this.f7271k + 1, true);
                        m6883b(m6913j(this.f7271k), 0);
                    }
                } else {
                    m6883b(m6913j(this.f7271k), 0);
                }
                this.f7246B = null;
                this.f7245A = null;
                m6864a(motionEvent);
                this.f7249E = 0;
                return true;
            case 2:
                m6864a(motionEvent);
                if (this.f7246B == null) {
                    this.f7246B = new PointF();
                    this.f7245A = new PointF();
                    this.f7245A.set(motionEvent.getX(), motionEvent.getY());
                }
                this.f7246B.set(motionEvent.getX(), motionEvent.getY());
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    /* renamed from: b */
    private void m6883b(int i, int i2) {
        if (Math.abs(this.f7277q - i) > 1 && this.f7277q != -1) {
            m6865a("blockKeyAndSmoothScroll" + i, 2);
            this.f7278r = i;
            m6878a(true);
        }
        smoothScrollTo(i, i2);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.f7276p != -1) {
            System.currentTimeMillis();
            this.f7276p = System.currentTimeMillis();
            this.f7277q = i;
        }
        this.f7276p = System.currentTimeMillis();
        this.f7277q = i;
        if (this.f7278r != -1 && Math.abs(this.f7277q - this.f7278r) <= 1) {
            m6865a("scroll done:" + this.f7278r, 2);
            m6878a(false);
            this.f7278r = -1;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        m6865a("onClick", 4);
    }

    /* renamed from: i */
    private void m6911i() {
        if (this.f7263c != null) {
            this.f7263c.mo6949a(this.f7271k, this.f7268h.getChildAt(0));
        }
    }

    /* renamed from: a */
    private void m6858a(int i, Bitmap bitmap) {
        if (this.f7264d != null) {
            this.f7264d.mo6950a(i, bitmap);
        }
    }

    /* renamed from: o */
    private void m6924o(int i) {
        C1641c m6944e = m6944e(i);
        if (m6944e.mo6973k()) {
            m6944e.mo6964b(false);
            ComponentCallbacks2C0735c.m4551b(this.f7258N.getApplication()).m5362a((View) m6942d(i));
        }
    }

    /* renamed from: p */
    private void m6926p(int i) {
        C1641c m6944e = m6944e(i);
        if (!m6944e.mo6973k()) {
            m6944e.mo6964b(true);
            ComponentCallbacks2C0735c.m4551b(this.f7258N.getApplication()).m5360a(getImagePath()).m5351a(m6942d(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6859a(int i, PointF pointF) {
        if (this.f7265e != null) {
            this.f7265e.mo6952a(i, pointF);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6864a(MotionEvent motionEvent) {
        if (this.f7266f != null) {
            this.f7266f.mo6953a(this.f7271k, motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public boolean m6915j() {
        if (this.f7267g != null) {
            return this.f7267g.m6951a();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public boolean m6886b(MotionEvent motionEvent) {
        return Math.abs(this.f7284x.x - motionEvent.getX()) > ((float) this.f7269i.f7295d) / 16.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public boolean m6894c(MotionEvent motionEvent) {
        return Math.abs(motionEvent.getX() - this.f7284x.x) < ((float) this.f7269i.f7295d) / 16.0f && Math.abs(motionEvent.getY() - this.f7284x.y) < ((float) this.f7269i.f7295d) / 16.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6862a(Bitmap bitmap, int i) {
        this.f7252H.m739a();
        m6865a("MainImageLoaded:" + i + " " + bitmap, 4);
        if (bitmap != null) {
            m6865a("isRecycle:" + bitmap.isRecycled(), 4);
        }
        if (bitmap == null) {
            m6865a("MainImageLoaded no image:" + i, 4);
            if (m6944e(i) != null) {
                m6944e(i).mo6961a(true);
            }
        }
        if (this.f7251G.containsKey(Integer.valueOf(i))) {
            m6944e(i).mo6963b(bitmap);
            m6892c(bitmap, i);
            if (m6947f(i) && i == this.f7271k && this.f7255K == 0) {
                m6926p(i);
            }
        } else {
            m6865a("MainImageLoaded view is delete , recycle bitmap!" + bitmap, 4);
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmap.recycle();
            }
        }
        m6858a(i, bitmap);
        this.f7252H.m740b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m6884b(Bitmap bitmap, int i) {
        this.f7252H.m739a();
        m6865a("ThumbnialLoaded:" + i + " " + bitmap, 4);
        if (bitmap == null) {
            m6865a("thumbnialLoaded no thumbnial:" + i, 4);
            if (m6944e(i) != null) {
                m6944e(i).mo6961a(true);
            }
        }
        if (this.f7251G.containsKey(Integer.valueOf(i))) {
            if (m6944e(i).mo6969g()) {
                m6927q(i);
            } else {
                m6944e(i).mo6960a(bitmap);
                if (m6944e(i).mo6968f() == null) {
                    m6892c(bitmap, i);
                }
            }
        } else {
            m6865a("thumbnialLoaded view is delete , so ignore!", 4);
        }
        this.f7252H.m740b();
    }

    /* renamed from: c */
    private void m6892c(Bitmap bitmap, int i) {
        C1640b m6923n = m6923n(i);
        C1641c m6944e = m6944e(i);
        m6944e.mo6976n().f7297a.reset();
        m6944e.mo6976n().f7298b = m6852a(bitmap, m6944e.mo6976n().f7297a);
        m6944e.mo6976n().f7299c = m6879b(bitmap, m6944e.mo6976n().f7297a);
        m6923n.mo6958b().setScaleType(ImageView.ScaleType.MATRIX);
        m6923n.mo6958b().setImageMatrix(m6944e.mo6976n().f7297a);
        m6923n.mo6957a().setScaleType(ImageView.ScaleType.MATRIX);
        m6923n.mo6957a().setImageMatrix(m6944e.mo6976n().f7297a);
        m6923n.mo6957a().setImageBitmap(bitmap);
    }

    /* renamed from: q */
    private void m6927q(int i) {
        m6923n(i).mo6957a().setScaleType(ImageView.ScaleType.FIT_CENTER);
    }

    /* renamed from: r */
    private void m6928r(int i) {
        C1640b m6923n = m6923n(i);
        m6923n.mo6957a().setScaleType(ImageView.ScaleType.FIT_CENTER);
        m6923n.mo6957a().setImageResource(android.R.color.transparent);
        m6923n.mo6957a().setImageBitmap(null);
    }

    /* renamed from: a */
    private float m6852a(Bitmap bitmap, Matrix matrix) {
        if (bitmap == null) {
            return 1.0f;
        }
        float min = Math.min(this.f7269i.f7295d / bitmap.getWidth(), this.f7269i.f7296e / bitmap.getHeight());
        matrix.postScale(min, min);
        return min;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public float m6879b(Bitmap bitmap, Matrix matrix) {
        return m6930a(true, true, bitmap, matrix);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected float m6930a(boolean r9, boolean r10, android.graphics.Bitmap r11, android.graphics.Matrix r12) {
        /*
            r8 = this;
            r7 = 1073741824(0x40000000, float:2.0)
            r0 = 0
            if (r11 != 0) goto L6
        L5:
            return r0
        L6:
            android.graphics.Matrix r2 = new android.graphics.Matrix
            r2.<init>()
            r2.set(r12)
            android.graphics.RectF r3 = new android.graphics.RectF
            int r1 = r11.getWidth()
            float r1 = (float) r1
            int r4 = r11.getHeight()
            float r4 = (float) r4
            r3.<init>(r0, r0, r1, r4)
            r2.mapRect(r3)
            float r1 = r3.height()
            float r4 = r3.width()
            if (r10 == 0) goto L7e
            ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView$f r5 = r8.f7269i
            int r5 = r5.f7296e
            float r6 = (float) r5
            int r6 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r6 >= 0) goto L52
            float r5 = (float) r5
            float r1 = r5 - r1
            float r1 = r1 / r7
            float r5 = r3.top
            float r1 = r1 - r5
        L3a:
            if (r9 == 0) goto L4b
            ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView$f r5 = r8.f7269i
            int r5 = r5.f7295d
            float r6 = (float) r5
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 >= 0) goto L68
            float r0 = (float) r5
            float r0 = r0 - r4
            float r0 = r0 / r7
            float r3 = r3.left
            float r0 = r0 - r3
        L4b:
            r2.postTranslate(r0, r1)
            r12.set(r2)
            goto L5
        L52:
            float r1 = r3.top
            int r1 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r1 <= 0) goto L5c
            float r1 = r3.top
            float r1 = -r1
            goto L3a
        L5c:
            float r1 = r3.bottom
            float r6 = (float) r5
            int r1 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r1 >= 0) goto L7e
            float r1 = (float) r5
            float r5 = r3.bottom
            float r1 = r1 - r5
            goto L3a
        L68:
            float r4 = r3.left
            int r4 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r4 <= 0) goto L72
            float r0 = r3.left
            float r0 = -r0
            goto L4b
        L72:
            float r4 = r3.right
            float r6 = (float) r5
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 >= 0) goto L4b
            float r0 = (float) r5
            float r3 = r3.right
            float r0 = r0 - r3
            goto L4b
        L7e:
            r1 = r0
            goto L3a
        */
        throw new UnsupportedOperationException("Method not decompiled: ui_Controller.CustomWidget.SingleHorizontalScrollView.SingleHorizontalScrollView.m6930a(boolean, boolean, android.graphics.Bitmap, android.graphics.Matrix):float");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6877a(C1641c c1641c, PointF pointF) {
        float f;
        if (c1641c.mo6976n().m6977a() > c1641c.mo6976n().f7298b) {
            f = 1.0f;
        } else {
            f = 2.0f;
        }
        Bitmap mo6968f = c1641c.mo6968f();
        if (mo6968f == null) {
            mo6968f = c1641c.mo6967e();
        }
        c1641c.mo6976n().f7297a.reset();
        c1641c.mo6976n().f7298b = m6852a(mo6968f, c1641c.mo6976n().f7297a);
        c1641c.mo6976n().f7299c = m6879b(mo6968f, c1641c.mo6976n().f7297a);
        if (f != 1.0d) {
            c1641c.mo6976n().f7297a.postScale(f, f, pointF.x, pointF.y);
            c1641c.mo6976n().f7299c = m6879b(mo6968f, c1641c.mo6976n().f7297a);
        }
    }

    /* renamed from: s */
    private void m6929s(int i) {
        C1641c m6944e = m6944e(i);
        C1640b m6923n = m6923n(i);
        Matrix matrix = new Matrix();
        float f = m6944e.mo6976n().f7298b;
        Bitmap mo6968f = m6944e.mo6968f();
        if (mo6968f == null) {
            mo6968f = m6944e.mo6967e();
        }
        matrix.reset();
        matrix.postScale(f * 1.0f, 1.0f * f, 0.0f, 0.0f);
        m6944e.mo6976n().f7297a.set(matrix);
        m6944e.mo6976n().f7299c = m6879b(mo6968f, m6944e.mo6976n().f7297a);
        m6923n.mo6958b().setImageMatrix(m6944e.mo6976n().f7297a);
        m6923n.mo6957a().setImageMatrix(m6944e.mo6976n().f7297a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6876a(C1641c c1641c) {
        Matrix matrix = new Matrix();
        float m6977a = c1641c.mo6976n().m6977a();
        float f = c1641c.mo6976n().f7298b;
        matrix.set(c1641c.mo6976n().f7297a);
        if (m6977a < f) {
            matrix.reset();
            matrix.postScale(f, f);
        } else if (m6977a > f * this.f7261a) {
            matrix.set(this.f7282v);
        } else {
            this.f7282v.set(c1641c.mo6976n().f7297a);
        }
        c1641c.mo6976n().f7297a.set(matrix);
        Bitmap mo6968f = c1641c.mo6968f();
        if (mo6968f == null) {
            mo6968f = c1641c.mo6967e();
        }
        c1641c.mo6976n().f7299c = m6879b(mo6968f, c1641c.mo6976n().f7297a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public boolean m6893c(Bitmap bitmap, Matrix matrix) {
        Matrix matrix2 = new Matrix();
        matrix2.set(matrix);
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        matrix2.mapRect(rectF);
        float width = rectF.width();
        int i = this.f7269i.f7295d;
        return width < ((float) i) || rectF.left == 0.0f || rectF.right == ((float) i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public float m6896d(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((x * x) + (y * y));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6863a(PointF pointF, MotionEvent motionEvent) {
        pointF.set((motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f, (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f);
    }
}
