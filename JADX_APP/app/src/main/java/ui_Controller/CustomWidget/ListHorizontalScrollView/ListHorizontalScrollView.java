package ui_Controller.CustomWidget.ListHorizontalScrollView;

import GeneralFunction.C0052d;
import GeneralFunction.C0076j;
import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import ui_Controller.CustomWidget.C1649a;
import ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1622a;
import ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1623b;
import ui_Controller.CustomWidget.ListHorizontalScrollView.p103a.C1624c;

/* loaded from: classes.dex */
public class ListHorizontalScrollView extends HorizontalScrollView implements View.OnClickListener {

    /* renamed from: A */
    private final C0076j f7194A;

    /* renamed from: B */
    private int f7195B;

    /* renamed from: C */
    private int f7196C;

    /* renamed from: D */
    private Handler f7197D;

    /* renamed from: E */
    @SuppressLint({"ClickableViewAccessibility"})
    private View.OnTouchListener f7198E;

    /* renamed from: a */
    private int f7199a;

    /* renamed from: b */
    private Context f7200b;

    /* renamed from: c */
    private InterfaceC1617a f7201c;

    /* renamed from: d */
    private InterfaceC1619c f7202d;

    /* renamed from: e */
    private InterfaceC1620d f7203e;

    /* renamed from: f */
    private InterfaceC1618b f7204f;

    /* renamed from: g */
    private LinearLayout f7205g;

    /* renamed from: h */
    private ImageView f7206h;

    /* renamed from: i */
    private C1621e f7207i;

    /* renamed from: j */
    private boolean f7208j;

    /* renamed from: k */
    private int f7209k;

    /* renamed from: l */
    private int f7210l;

    /* renamed from: m */
    private int f7211m;

    /* renamed from: n */
    private int f7212n;

    /* renamed from: o */
    private int f7213o;

    /* renamed from: p */
    private long f7214p;

    /* renamed from: q */
    private int f7215q;

    /* renamed from: r */
    private boolean f7216r;

    /* renamed from: s */
    private boolean f7217s;

    /* renamed from: t */
    private PointF f7218t;

    /* renamed from: u */
    private PointF f7219u;

    /* renamed from: v */
    private PointF f7220v;

    /* renamed from: w */
    private int f7221w;

    /* renamed from: x */
    private int f7222x;

    /* renamed from: y */
    private Map<Integer, LinearLayout> f7223y;

    /* renamed from: z */
    private Map<Integer, View> f7224z;

    /* renamed from: ui_Controller.CustomWidget.ListHorizontalScrollView.ListHorizontalScrollView$a */
    public interface InterfaceC1617a {
        /* renamed from: a */
        void mo6836a(int i, View view);
    }

    /* renamed from: ui_Controller.CustomWidget.ListHorizontalScrollView.ListHorizontalScrollView$b */
    public interface InterfaceC1618b {
        /* renamed from: a */
        boolean m6837a();
    }

    /* renamed from: ui_Controller.CustomWidget.ListHorizontalScrollView.ListHorizontalScrollView$c */
    public interface InterfaceC1619c {
        /* renamed from: a */
        void m6838a(int i);
    }

    /* renamed from: ui_Controller.CustomWidget.ListHorizontalScrollView.ListHorizontalScrollView$d */
    public interface InterfaceC1620d {
        /* renamed from: a */
        void mo6839a(int i, MotionEvent motionEvent);
    }

    /* renamed from: ui_Controller.CustomWidget.ListHorizontalScrollView.ListHorizontalScrollView$e */
    public static class C1621e {

        /* renamed from: a */
        public C1622a f7229a;

        /* renamed from: b */
        public C1649a f7230b;

        /* renamed from: c */
        public int f7231c;

        /* renamed from: d */
        public int f7232d;

        /* renamed from: e */
        public int f7233e;
    }

    /* renamed from: a */
    private void m6794a(String str, int i) {
        if (i <= this.f7199a) {
            C0052d.m465a("ListHorizontalScroll...", str, i);
        }
    }

    public ListHorizontalScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7199a = 0;
        this.f7200b = null;
        this.f7205g = null;
        this.f7206h = null;
        this.f7207i = null;
        this.f7208j = false;
        this.f7211m = 0;
        this.f7212n = 0;
        this.f7213o = 0;
        this.f7214p = -1L;
        this.f7215q = -1;
        this.f7216r = false;
        this.f7217s = false;
        this.f7218t = null;
        this.f7219u = null;
        this.f7220v = new PointF();
        this.f7221w = 0;
        this.f7222x = 0;
        this.f7223y = new HashMap();
        this.f7224z = new HashMap();
        this.f7194A = new C0076j();
        this.f7195B = 0;
        this.f7196C = 0;
        this.f7197D = new Handler(Looper.getMainLooper()) { // from class: ui_Controller.CustomWidget.ListHorizontalScrollView.ListHorizontalScrollView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 1:
                        ListHorizontalScrollView.this.scrollTo(ListHorizontalScrollView.this.f7213o, 0);
                        ListHorizontalScrollView.this.setVisibility(0);
                        ListHorizontalScrollView.this.m6801a(false);
                        ListHorizontalScrollView.this.f7208j = true;
                        break;
                    case 2:
                        if (ListHorizontalScrollView.this.f7208j && ListHorizontalScrollView.this.f7222x == 2) {
                            if (System.currentTimeMillis() - ListHorizontalScrollView.this.f7214p > 100) {
                                int m6804b = ListHorizontalScrollView.this.m6804b(ListHorizontalScrollView.this.getScrollX());
                                ListHorizontalScrollView.this.smoothScrollTo(ListHorizontalScrollView.this.m6814c(m6804b), 0);
                                ListHorizontalScrollView.this.m6791a(m6804b, true);
                                ListHorizontalScrollView.this.f7217s = false;
                                ListHorizontalScrollView.this.f7222x = 0;
                                break;
                            } else {
                                ListHorizontalScrollView.this.m6790a(2, 50);
                                break;
                            }
                        }
                        break;
                }
            }
        };
        this.f7198E = new View.OnTouchListener() { // from class: ui_Controller.CustomWidget.ListHorizontalScrollView.ListHorizontalScrollView.4
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (!ListHorizontalScrollView.this.m6817c()) {
                    if (ListHorizontalScrollView.this.m6802a()) {
                        ListHorizontalScrollView.this.f7221w = 0;
                    } else if (ListHorizontalScrollView.this.f7222x == 0) {
                        switch (motionEvent.getAction() & 255) {
                            case 0:
                                ListHorizontalScrollView.this.m6793a(motionEvent);
                                ListHorizontalScrollView.this.f7220v.set(motionEvent.getX(), motionEvent.getY());
                                ListHorizontalScrollView.this.f7221w = 1;
                                break;
                            case 1:
                            case 6:
                                ListHorizontalScrollView.this.m6793a(motionEvent);
                                if (ListHorizontalScrollView.this.f7221w != 2 && ListHorizontalScrollView.this.m6818c(motionEvent)) {
                                    ListHorizontalScrollView.this.m6809b(view);
                                }
                                ListHorizontalScrollView.this.f7221w = 0;
                                break;
                            case 2:
                                ListHorizontalScrollView.this.m6793a(motionEvent);
                                if (ListHorizontalScrollView.this.f7221w == 1 && ListHorizontalScrollView.this.m6810b(motionEvent)) {
                                    ListHorizontalScrollView.this.f7222x = 1;
                                    ListHorizontalScrollView.this.f7221w = 0;
                                    break;
                                }
                                break;
                        }
                    }
                }
                return true;
            }
        };
        this.f7200b = context;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.f7210l = displayMetrics.widthPixels;
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f7205g = (LinearLayout) getChildAt(0);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6790a(int i, int i2) {
        Message message = new Message();
        message.what = i;
        this.f7197D.sendMessageDelayed(message, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6791a(int i, boolean z) {
        m6794a("UpdateViewByIndex:" + i, 4);
        if (this.f7209k != i) {
            if (this.f7209k == -1) {
                for (int i2 = i - this.f7207i.f7231c; i2 <= this.f7207i.f7231c + i; i2++) {
                    if (m6803a(i2)) {
                        m6823d(i2);
                    }
                }
            } else {
                m6807b(this.f7209k, false);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i3 = this.f7209k - this.f7207i.f7231c; i3 <= this.f7209k + this.f7207i.f7231c; i3++) {
                    if (m6803a(i3)) {
                        arrayList.add(Integer.valueOf(i3));
                    }
                }
                for (int i4 = i - this.f7207i.f7231c; i4 <= this.f7207i.f7231c + i; i4++) {
                    if (m6803a(i4)) {
                        arrayList2.add(Integer.valueOf(i4));
                    }
                }
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    int intValue = ((Integer) arrayList.get(i5)).intValue();
                    if (!arrayList2.contains(Integer.valueOf(intValue))) {
                        m6824e(intValue);
                    }
                }
                for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                    int intValue2 = ((Integer) arrayList2.get(i6)).intValue();
                    if (!arrayList.contains(Integer.valueOf(intValue2))) {
                        m6823d(intValue2);
                    }
                }
            }
            this.f7209k = i;
            m6807b(this.f7209k, true);
            if (z) {
                m6806b();
            }
        }
    }

    /* renamed from: a */
    private boolean m6803a(int i) {
        return i >= 0 && i < this.f7207i.f7229a.getCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public int m6804b(int i) {
        return (int) ((i / this.f7207i.f7232d) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public int m6814c(int i) {
        return this.f7207i.f7232d * i;
    }

    /* renamed from: d */
    private View m6823d(int i) {
        this.f7194A.m739a();
        m6794a("AddView:" + i, 4);
        C1624c m6826f = m6826f(i);
        View view = this.f7207i.f7229a.getView(i, null, this.f7205g);
        view.setOnClickListener(this);
        view.setOnTouchListener(this.f7198E);
        this.f7223y.get(Integer.valueOf(i)).addView(view);
        this.f7224z.put(Integer.valueOf(i), view);
        if (m6826f.mo6850e()) {
            m6832i(i);
        } else if (m6826f(i).mo6844a() != null) {
            this.f7207i.f7230b.m7035b(m6826f(i).mo6844a(), i, this.f7209k, this.f7207i.f7229a.getItem(i).mo6847b(), this.f7207i.f7229a.getItem(i).mo6848c(), new C1649a.a() { // from class: ui_Controller.CustomWidget.ListHorizontalScrollView.ListHorizontalScrollView.2
                @Override // ui_Controller.CustomWidget.C1649a.a
                /* renamed from: a */
                public void mo6834a(Bitmap bitmap, int i2) {
                    ListHorizontalScrollView.this.m6792a(bitmap, i2);
                }
            });
        } else {
            m6833j(i);
        }
        this.f7194A.m740b();
        return view;
    }

    /* renamed from: e */
    private void m6824e(int i) {
        this.f7194A.m739a();
        m6794a("DeleteView:" + i, 4);
        if (m6826f(i).mo6849d() != null) {
            m6826f(i).mo6845a((Bitmap) null);
        }
        C1623b m6831h = m6831h(i);
        m6831h.mo6842a().setImageResource(R.color.transparent);
        m6831h.mo6842a().setImageBitmap(null);
        this.f7224z.remove(Integer.valueOf(i));
        this.f7223y.get(Integer.valueOf(i)).removeAllViews();
        this.f7194A.m740b();
    }

    /* renamed from: f */
    private C1624c m6826f(int i) {
        return this.f7207i.f7229a.mo6840a(i);
    }

    /* renamed from: a */
    private ArrayList<Integer> m6789a(Map map) {
        Set entrySet = map.entrySet();
        ArrayList<Integer> arrayList = new ArrayList<>();
        if (entrySet != null) {
            Iterator it = entrySet.iterator();
            while (it.hasNext()) {
                arrayList.add((Integer) ((Map.Entry) it.next()).getKey());
            }
        }
        Collections.sort(arrayList, new Comparator<Integer>() { // from class: ui_Controller.CustomWidget.ListHorizontalScrollView.ListHorizontalScrollView.3
            @Override // java.util.Comparator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Integer num, Integer num2) {
                return num.compareTo(num2);
            }
        });
        return arrayList;
    }

    /* renamed from: g */
    private View m6829g(int i) {
        View childAt = this.f7223y.get(Integer.valueOf(i)).getChildAt(0);
        if (childAt == null) {
            m6794a("GetView:" + i, 4);
        }
        return childAt;
    }

    /* renamed from: a */
    private int m6786a(View view) {
        ArrayList<Integer> m6789a = m6789a(this.f7224z);
        for (int i = 0; i < this.f7224z.size(); i++) {
            if (view.equals(this.f7224z.get(m6789a.get(i)))) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: h */
    private C1623b m6831h(int i) {
        View m6829g = m6829g(i);
        if (m6829g == null) {
            return null;
        }
        return (C1623b) m6829g.getTag();
    }

    /* renamed from: b */
    private void m6807b(int i, boolean z) {
        C1623b m6831h = m6831h(i);
        if (m6831h != null && m6831h.mo6843b() != null) {
            if (z) {
                m6831h.mo6843b().setImageResource(this.f7195B);
            } else {
                m6831h.mo6843b().setImageResource(R.color.transparent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m6802a() {
        return this.f7216r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6801a(boolean z) {
        m6794a("SetKeyBlock:" + z, 2);
        this.f7216r = z;
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 255) == 2 && this.f7222x == 0) {
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (m6817c() || m6802a()) {
            return true;
        }
        if (this.f7222x != 1 && this.f7222x != 2) {
            return true;
        }
        switch (motionEvent.getAction() & 255) {
            case 1:
                this.f7219u = null;
                this.f7218t = null;
                this.f7222x = 2;
                m6790a(2, 50);
                m6793a(motionEvent);
                break;
            case 2:
                this.f7217s = true;
                this.f7222x = 1;
                if (this.f7219u == null) {
                    this.f7219u = new PointF();
                    this.f7218t = new PointF();
                    this.f7218t.set(motionEvent.getX(), motionEvent.getY());
                }
                this.f7219u.set(motionEvent.getX(), motionEvent.getY());
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.f7214p != -1) {
            System.currentTimeMillis();
            this.f7214p = System.currentTimeMillis();
            this.f7215q = i;
        }
        this.f7214p = System.currentTimeMillis();
        this.f7215q = i;
        m6791a(m6804b(i), this.f7217s);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        m6794a("onClick", 4);
    }

    /* renamed from: b */
    private void m6806b() {
        if (this.f7201c != null) {
            this.f7201c.mo6836a(this.f7209k, this.f7205g.getChildAt(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m6809b(View view) {
        if (this.f7202d != null) {
            this.f7202d.m6838a(m6786a(view));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6793a(MotionEvent motionEvent) {
        if (this.f7203e != null) {
            this.f7203e.mo6839a(this.f7209k, motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public boolean m6817c() {
        if (this.f7204f != null) {
            return this.f7204f.m6837a();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public boolean m6810b(MotionEvent motionEvent) {
        return Math.abs(this.f7220v.x - motionEvent.getX()) > 8.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public boolean m6818c(MotionEvent motionEvent) {
        return Math.abs(motionEvent.getX() - (((float) this.f7207i.f7232d) / 2.0f)) < ((float) this.f7207i.f7232d) / 2.0f && Math.abs(motionEvent.getY() - (((float) this.f7207i.f7233e) / 2.0f)) < ((float) this.f7207i.f7232d) / 2.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6792a(Bitmap bitmap, int i) {
        this.f7194A.m739a();
        m6794a("ThumbnialLoaded:" + i + " " + bitmap, 4);
        if (bitmap == null) {
            m6794a("thumbnialLoaded no thumbnial:" + i, 4);
            if (m6826f(i) != null) {
                m6826f(i).mo6846a(true);
            }
        }
        if (this.f7224z.containsKey(Integer.valueOf(i))) {
            if (m6826f(i).mo6850e()) {
                m6832i(i);
            } else {
                m6826f(i).mo6845a(bitmap);
                m6808b(bitmap, i);
            }
        } else {
            m6794a("thumbnialLoaded view is delete , so ignore!", 4);
        }
        this.f7194A.m740b();
    }

    /* renamed from: b */
    private void m6808b(Bitmap bitmap, int i) {
        m6831h(i).mo6842a().setImageBitmap(bitmap);
        if (this.f7206h != null && i == this.f7209k) {
            this.f7206h.setImageBitmap(bitmap);
        }
    }

    /* renamed from: i */
    private void m6832i(int i) {
        m6831h(i).mo6842a().setImageResource(this.f7196C);
    }

    /* renamed from: j */
    private void m6833j(int i) {
        C1623b m6831h = m6831h(i);
        m6831h.mo6842a().setImageResource(R.color.transparent);
        m6831h.mo6842a().setImageBitmap(null);
    }
}
