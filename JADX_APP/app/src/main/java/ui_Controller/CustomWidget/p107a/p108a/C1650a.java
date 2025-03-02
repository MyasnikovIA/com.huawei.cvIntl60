package ui_Controller.CustomWidget.p107a.p108a;

import GeneralFunction.C0052d;
import GeneralFunction.C0076j;
import GeneralFunction.C0079k;
import GeneralFunction.p005e.C0057a;
import GeneralFunction.p005e.C0060d;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.format.DateFormat;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.huawei.cvIntl60.R;
import com.tonicartos.widget.stickygridheaders.InterfaceC1574d;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import ui_Controller.CustomWidget.C1649a;
import ui_Controller.p110b.C1661c;

/* renamed from: ui_Controller.CustomWidget.a.a.a */
/* loaded from: classes.dex */
public class C1650a<T> extends BaseAdapter implements InterfaceC1574d {

    /* renamed from: A */
    private int f7373A;

    /* renamed from: B */
    private int f7374B;

    /* renamed from: C */
    private int f7375C;

    /* renamed from: a */
    public C0060d f7380a;

    /* renamed from: c */
    private a f7382c;

    /* renamed from: d */
    private Context f7383d;

    /* renamed from: e */
    private LayoutInflater f7384e;

    /* renamed from: f */
    private List<C1661c> f7385f;

    /* renamed from: g */
    private ArrayList<C1654e> f7386g;

    /* renamed from: h */
    private HashMap<Integer, C1651b> f7387h;

    /* renamed from: i */
    private HashMap<C1651b, Bitmap> f7388i;

    /* renamed from: j */
    private C1649a f7389j;

    /* renamed from: k */
    private int f7390k;

    /* renamed from: l */
    private int f7391l;

    /* renamed from: m */
    private boolean f7392m;

    /* renamed from: n */
    private int f7393n;

    /* renamed from: o */
    private int f7394o;

    /* renamed from: p */
    private int f7395p;

    /* renamed from: q */
    private int f7396q;

    /* renamed from: r */
    private int f7397r;

    /* renamed from: s */
    private int f7398s;

    /* renamed from: t */
    private int f7399t;

    /* renamed from: u */
    private int f7400u;

    /* renamed from: v */
    private int f7401v;

    /* renamed from: w */
    private int f7402w;

    /* renamed from: x */
    private int f7403x;

    /* renamed from: y */
    private int f7404y = 0;

    /* renamed from: z */
    private int f7405z = -1;

    /* renamed from: D */
    private boolean f7376D = false;

    /* renamed from: E */
    private int f7377E = -1090519040;

    /* renamed from: b */
    final C0076j f7381b = new C0076j();

    /* renamed from: F */
    private int f7378F = 3;

    /* renamed from: G */
    private C1649a.d f7379G = new C1649a.d() { // from class: ui_Controller.CustomWidget.a.a.a.1
        @Override // ui_Controller.CustomWidget.C1649a.d
        /* renamed from: a */
        public void mo7070a(int i, Bitmap bitmap) {
            if (bitmap != null) {
                Set entrySet = C1650a.this.f7388i.entrySet();
                ArrayList arrayList = new ArrayList();
                if (entrySet != null) {
                    Iterator it = entrySet.iterator();
                    while (it.hasNext()) {
                        arrayList.add((C1651b) ((Map.Entry) it.next()).getKey());
                    }
                    int i2 = 0;
                    while (true) {
                        int i3 = i2;
                        if (i3 < arrayList.size()) {
                            Bitmap bitmap2 = (Bitmap) C1650a.this.f7388i.get(arrayList.get(i3));
                            if (bitmap2 != null && bitmap2 == bitmap) {
                                C1650a.this.m7041a("Release bitmap link! " + bitmap2, 3);
                                ((C1651b) arrayList.get(i3)).f7409a.setImageBitmap(null);
                            }
                            i2 = i3 + 1;
                        } else {
                            return;
                        }
                    }
                }
            }
        }
    };

    /* renamed from: ui_Controller.CustomWidget.a.a.a$a */
    public interface a {
        /* renamed from: a */
        void mo7071a();

        /* renamed from: a */
        void mo7072a(int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7041a(String str, int i) {
        if (i <= this.f7378F) {
            Log.e(getClass().getSimpleName(), str);
        }
    }

    @SuppressLint({"UseSparseArrays"})
    public C1650a(Context context, C0060d c0060d, int i, int i2, boolean z, C1649a c1649a) {
        C1661c c1661c;
        this.f7383d = null;
        this.f7391l = 0;
        this.f7392m = false;
        this.f7393n = 0;
        this.f7394o = 0;
        this.f7395p = 0;
        this.f7396q = 0;
        this.f7397r = 0;
        this.f7398s = 0;
        this.f7399t = 0;
        this.f7400u = 0;
        this.f7401v = 0;
        this.f7402w = 0;
        this.f7403x = 0;
        this.f7373A = 0;
        this.f7374B = 0;
        this.f7375C = 0;
        this.f7384e = LayoutInflater.from(context);
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < c0060d.m518e(); i3++) {
            if (z) {
                c1661c = new C1661c(c0060d.m540s(i3), c0060d.m541t(i3), c0060d.m527h(i3));
            } else {
                c1661c = new C1661c(c0060d.m540s(i3), c0060d.m541t(i3), c0060d.m525g(i3));
            }
            arrayList.add(c1661c);
        }
        m7042a((List<C1661c>) arrayList);
        this.f7383d = context;
        this.f7380a = c0060d;
        this.f7385f = arrayList;
        this.f7391l = i;
        this.f7392m = z;
        this.f7387h = new HashMap<>();
        this.f7388i = new HashMap<>();
        this.f7389j = c1649a;
        this.f7389j.m7034a(this.f7379G);
        this.f7390k = i2;
        this.f7393n = R.drawable.gallery_nxn_select_yes;
        this.f7394o = R.drawable.gallery_nxn_select_no;
        this.f7395p = R.drawable.gallery_nxn_select_yes_large;
        this.f7396q = R.drawable.gallery_nxn_select_no_large;
        this.f7397r = R.drawable.gallery_nxn_imageloading;
        this.f7398s = R.drawable.gallery_nxn_imageloading_large;
        this.f7399t = R.drawable.gallery_nxn_videoplay;
        this.f7400u = R.drawable.gallery_nxn_filetype_burst;
        this.f7401v = R.drawable.gallery_nxn_filetype_timelapse;
        this.f7402w = R.drawable.gallery_icon_video;
        this.f7403x = R.drawable.gallery_nxn_gif;
        this.f7373A = R.drawable.gallery_nxn_videoplay;
        this.f7374B = R.drawable.gallery_nxn_imageloading;
        this.f7375C = R.drawable.gallery_nxn_imageloading_large;
        m7066h();
    }

    /* renamed from: b */
    public void m7055b(int i) {
        m7041a("setMode:" + i, 2);
        this.f7405z = -1;
        this.f7404y = i;
    }

    /* renamed from: a */
    public void m7045a() {
        m7041a("GridViewAdapter Deinit", 2);
        Set<Map.Entry<Integer, C1651b>> entrySet = this.f7387h.entrySet();
        ArrayList arrayList = new ArrayList();
        if (entrySet != null) {
            Iterator<Map.Entry<Integer, C1651b>> it = entrySet.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getKey());
            }
            int size = this.f7387h.size();
            for (int i = 0; i < size; i++) {
                Integer num = (Integer) arrayList.get(i);
                if (this.f7387h.get(num) != null) {
                    C1651b c1651b = this.f7387h.get(num);
                    if (c1651b.f7409a.getDrawable() != null) {
                        c1651b.f7409a.getDrawable().setCallback(null);
                    }
                    c1651b.f7409a.setImageBitmap(null);
                    c1651b.f7409a.setImageResource(android.R.color.transparent);
                    c1651b.f7410b.setImageResource(android.R.color.transparent);
                    c1651b.f7412d.setImageResource(android.R.color.transparent);
                    c1651b.f7413e.setImageResource(android.R.color.transparent);
                    c1651b.f7414f.setImageResource(android.R.color.transparent);
                    c1651b.f7415g.setImageResource(android.R.color.transparent);
                    c1651b.f7411c.setImageResource(android.R.color.transparent);
                    c1651b.f7417i.setImageResource(android.R.color.transparent);
                    c1651b.f7418j.setText("");
                    this.f7387h.remove(num);
                }
            }
            this.f7385f.clear();
            this.f7389j.m7031a();
            this.f7389j = null;
            this.f7388i.clear();
            m7054b();
        }
    }

    /* renamed from: c */
    public void m7057c(int i) {
        this.f7390k = i;
        m7054b();
    }

    /* renamed from: b */
    public void m7054b() {
        notifyDataSetChanged();
    }

    /* renamed from: d */
    public void m7059d(int i) {
        m7041a("DeleteGridViewItem:" + i, 3);
        C1651b c1651b = this.f7387h.get(Integer.valueOf(i));
        if (c1651b != null) {
            if (c1651b.f7409a.getDrawable() != null) {
                c1651b.f7409a.getDrawable().setCallback(null);
            }
            c1651b.f7409a.setImageBitmap(null);
            c1651b.f7409a.setImageResource(android.R.color.transparent);
            c1651b.f7410b.setImageResource(android.R.color.transparent);
            c1651b.f7412d.setImageResource(android.R.color.transparent);
            c1651b.f7413e.setImageResource(android.R.color.transparent);
            c1651b.f7414f.setImageResource(android.R.color.transparent);
            c1651b.f7415g.setImageResource(android.R.color.transparent);
            c1651b.f7411c.setImageResource(android.R.color.transparent);
            c1651b.f7417i.setImageResource(android.R.color.transparent);
            c1651b.f7418j.setText("");
            this.f7387h.remove(Integer.valueOf(i));
        }
        this.f7385f.remove(i);
        m7042a(this.f7385f);
        this.f7389j.m7032a(i);
        m7054b();
    }

    /* renamed from: a */
    public void m7049a(ArrayList<C0057a> arrayList) {
        int i = 0;
        while (i < this.f7385f.size()) {
            int m7081a = this.f7385f.get(i).m7081a();
            int m7085b = this.f7385f.get(i).m7085b();
            if (i > arrayList.size() - 1) {
                m7059d(i);
            } else if (m7081a == arrayList.get(i).f490b) {
                int i2 = arrayList.get(i).f490b;
                int intValue = arrayList.get(i).f491c.get(0).intValue();
                if (m7085b == intValue) {
                    i++;
                } else {
                    m7047a(i, i2, intValue);
                    i++;
                }
            } else {
                m7059d(i);
            }
        }
    }

    /* renamed from: a */
    public void m7047a(int i, int i2, int i3) {
        this.f7385f.get(i).m7083a(i2, i3);
        m7054b();
    }

    /* renamed from: c */
    public void m7056c() {
        for (int i = 0; i < this.f7385f.size(); i++) {
            this.f7385f.get(i).m7084a(false);
        }
        for (int i2 = 0; i2 < this.f7386g.size(); i2++) {
            this.f7386g.get(i2).f7433a = false;
        }
    }

    /* renamed from: d */
    public int m7058d() {
        return this.f7385f.size();
    }

    /* renamed from: e */
    public int m7060e() {
        int i = 0;
        for (int i2 = 0; i2 < this.f7385f.size(); i2++) {
            if (this.f7385f.get(i2).m7089e()) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: e */
    public int m7061e(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.f7385f.size(); i3++) {
            if (this.f7385f.get(i3).m7087c() == i) {
                i2++;
            }
        }
        m7041a("GetHeaderMemberNum " + i + " " + i2, 4);
        return i2;
    }

    /* renamed from: f */
    public long m7062f() {
        long j = 0;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f7385f.size()) {
                if (this.f7385f.get(i2).m7089e()) {
                    j += this.f7380a.m521f(i2);
                }
                i = i2 + 1;
            } else {
                m7041a("GetTotalSelectFileSize " + ((j / 1024) / 1024) + "MB", 4);
                return j;
            }
        }
    }

    /* renamed from: a */
    public void m7048a(int i, boolean z) {
        int m7087c = this.f7385f.get(i).m7087c();
        this.f7385f.get(i).m7084a(z);
        m7041a("SetSelectStatus " + i + " " + z, 4);
        if (m7065g(m7087c)) {
            this.f7386g.get(m7087c).f7433a = true;
        } else {
            this.f7386g.get(m7087c).f7433a = false;
        }
    }

    /* renamed from: a */
    public boolean m7053a(boolean z, boolean z2) {
        return m7052a(z, -1L, z2, true);
    }

    /* renamed from: a */
    public boolean m7052a(boolean z, long j, boolean z2, boolean z3) {
        long j2 = 0;
        if (z) {
            j2 = m7062f();
        }
        long j3 = j2;
        for (int i = 0; i < this.f7385f.size(); i++) {
            if (z) {
                if (!z2 && this.f7385f.get(i).m7091g()) {
                    m7048a(i, false);
                } else if (!z3 && !this.f7385f.get(i).m7090f()) {
                    m7048a(i, false);
                } else if (j == -1) {
                    m7048a(i, true);
                } else {
                    j3 += this.f7380a.m521f(i);
                    if (j3 > j) {
                        m7041a("Select All Over Size Limit", 4);
                        m7054b();
                        return false;
                    }
                    m7048a(i, true);
                }
            } else {
                m7048a(i, false);
            }
        }
        m7054b();
        return true;
    }

    /* renamed from: a */
    public boolean m7051a(int i, long j, boolean z, boolean z2) {
        boolean z3 = !this.f7386g.get(i).f7433a;
        long j2 = 0;
        if (z3) {
            j2 = m7062f();
        }
        long j3 = j2;
        for (int i2 = 0; i2 < this.f7385f.size(); i2++) {
            if (this.f7385f.get(i2).m7087c() == i) {
                if (z3) {
                    if (!z && this.f7385f.get(i2).m7091g()) {
                        m7048a(i2, false);
                    } else if (!z2 && !this.f7385f.get(i2).m7090f()) {
                        m7048a(i2, false);
                    } else if (j == -1) {
                        m7048a(i2, true);
                    } else {
                        j3 += this.f7380a.m521f(i2);
                        if (j3 > j) {
                            m7041a("Select All Over Size Limit", 4);
                            m7054b();
                            return false;
                        }
                        m7048a(i2, true);
                    }
                } else {
                    m7048a(i2, false);
                }
            }
        }
        this.f7386g.get(i).f7433a = z3;
        m7054b();
        return true;
    }

    /* renamed from: a */
    public void m7046a(int i, int i2) {
        this.f7385f.get(i).m7086b(i2);
    }

    /* renamed from: f */
    public boolean m7063f(int i) {
        return this.f7385f.get(i).m7089e();
    }

    /* renamed from: g */
    public boolean m7065g(int i) {
        for (int i2 = 0; i2 < this.f7385f.size(); i2++) {
            if (this.f7385f.get(i2).m7087c() == i && !this.f7385f.get(i2).m7089e()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: h */
    public boolean m7067h(int i) {
        return this.f7385f.get(i).m7091g();
    }

    /* renamed from: g */
    public int m7064g() {
        int m7060e = m7060e();
        if (m7060e == 0) {
            return 0;
        }
        if (m7060e == this.f7385f.size()) {
            return 2;
        }
        return 1;
    }

    /* renamed from: a */
    private void m7038a(int i, C1651b c1651b) {
        if (this.f7387h.containsValue(c1651b)) {
            Iterator<Map.Entry<Integer, C1651b>> it = this.f7387h.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Integer, C1651b> next = it.next();
                if (next.getValue().equals(c1651b)) {
                    m7041a("entry.getKey(): " + next.getKey(), 3);
                    this.f7387h.remove(next.getKey());
                    break;
                }
            }
        }
        if (this.f7387h.containsKey(Integer.valueOf(i))) {
            this.f7387h.remove(Integer.valueOf(i));
        }
        this.f7387h.put(Integer.valueOf(i), c1651b);
    }

    /* renamed from: a */
    private void m7040a(ImageView imageView, boolean z) {
        if (z) {
            imageView.setColorFilter(this.f7377E);
        } else {
            imageView.setColorFilter(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7039a(Bitmap bitmap, int i) {
        this.f7381b.m739a();
        m7041a("LoadThumbnail:" + bitmap + " " + i, 2);
        if (this.f7387h == null) {
            this.f7381b.m740b();
            return;
        }
        if (i > this.f7385f.size() - 1) {
            m7041a("Error position: " + this.f7385f.size() + " " + i, 3);
            this.f7381b.m740b();
            return;
        }
        C1651b c1651b = this.f7387h.get(Integer.valueOf(i));
        m7041a("loadViewHolder:" + c1651b, 3);
        if (c1651b != null) {
            if (c1651b.f7416h != null) {
                c1651b.f7416h.setVisibility(4);
            }
            this.f7388i.put(c1651b, bitmap);
            if (bitmap == null) {
                m7046a(i, 2);
                c1651b.f7409a.setScaleType(ImageView.ScaleType.CENTER_CROP);
                c1651b.f7410b.setImageResource(android.R.color.transparent);
                if (this.f7392m) {
                    if (this.f7390k == 2) {
                        m7040a(c1651b.f7409a, true);
                    } else {
                        m7040a(c1651b.f7409a, false);
                    }
                    if (this.f7390k == 5) {
                        m7040a(c1651b.f7409a, true);
                    } else {
                        m7040a(c1651b.f7409a, false);
                    }
                    if (this.f7404y == 3) {
                        c1651b.f7409a.setImageResource(this.f7397r);
                    } else {
                        c1651b.f7409a.setImageResource(this.f7398s);
                    }
                    m7041a("imageLoaded, local_loadViewHolder.ivImage:" + c1651b.f7409a.hashCode(), 5);
                } else {
                    if (this.f7390k == 3) {
                        m7040a(c1651b.f7409a, true);
                    } else {
                        m7040a(c1651b.f7409a, false);
                    }
                    if (this.f7404y == 3) {
                        c1651b.f7409a.setImageResource(this.f7397r);
                    } else {
                        c1651b.f7409a.setImageResource(this.f7398s);
                    }
                    m7041a("imageLoaded, loadViewHolder.ivImage:" + c1651b.f7409a.hashCode(), 5);
                }
            } else if (bitmap.getWidth() / bitmap.getHeight() >= 3) {
                m7046a(i, 1);
                c1651b.f7409a.setScaleType(ImageView.ScaleType.FIT_CENTER);
                c1651b.f7409a.setImageBitmap(bitmap);
            } else {
                m7046a(i, 1);
                c1651b.f7409a.setScaleType(ImageView.ScaleType.CENTER_CROP);
                c1651b.f7409a.setImageBitmap(bitmap);
            }
        }
        this.f7381b.m740b();
    }

    /* renamed from: h */
    public void m7066h() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f7385f.size()) {
                m7041a("=======[" + i2 + "]=======", 4);
                m7041a("" + this.f7385f.get(i2).m7092h(), 4);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private void m7042a(List<C1661c> list) {
        this.f7386g = new ArrayList<>();
        int i = -1;
        long j = -1;
        int offset = TimeZone.getDefault().getOffset(new Date().getTime());
        int i2 = 0;
        while (i2 < list.size()) {
            C1661c c1661c = list.get(i2);
            long m7088d = (c1661c.m7088d() + offset) / 86400000;
            if (m7088d != j) {
                this.f7386g.add(new C1654e());
                i++;
            } else {
                m7088d = j;
            }
            c1661c.m7082a(i);
            i2++;
            j = m7088d;
        }
    }

    /* renamed from: a */
    public void m7050a(a aVar) {
        this.f7382c = aVar;
    }

    /* renamed from: i */
    public void m7068i() {
        this.f7382c.mo7071a();
    }

    /* renamed from: i */
    public void m7069i(int i) {
        this.f7382c.mo7072a(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.f7385f == null) {
            return 0;
        }
        return this.f7385f.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7385f.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C1651b c1651b;
        m7041a("getView, position:" + i + " parent.getChildCount():" + viewGroup.getChildCount(), 2);
        String m534m = this.f7380a.m534m(i);
        String m536o = this.f7380a.m536o(i);
        int m509b = this.f7380a.m509b(i);
        int m512c = this.f7380a.m512c(i);
        int m504a = this.f7380a.m504a(i);
        if (m534m == null || m536o == null) {
            this.f7376D = true;
        }
        m7041a("test path " + m534m, 4);
        this.f7381b.m739a();
        if (view == null) {
            C1651b c1651b2 = new C1651b();
            view = this.f7384e.inflate(R.layout.style_grid, (ViewGroup) null);
            c1651b2.f7409a = (ImageView) view.findViewById(R.id.grid_img);
            c1651b2.f7410b = (ImageView) view.findViewById(R.id.grid_movieIcon);
            c1651b2.f7412d = (ImageView) view.findViewById(R.id.grid_BurstIcon);
            c1651b2.f7413e = (ImageView) view.findViewById(R.id.grid_TimelapseIcon);
            c1651b2.f7414f = (ImageView) view.findViewById(R.id.grid_panoramaIcon);
            c1651b2.f7415g = (ImageView) view.findViewById(R.id.grid_GifIcon);
            c1651b2.f7411c = (ImageView) view.findViewById(R.id.grid_checkbox);
            c1651b2.f7409a.setScaleType(ImageView.ScaleType.CENTER_CROP);
            c1651b2.f7409a.getLayoutParams().height = this.f7391l;
            c1651b2.f7416h = (LinearLayout) view.findViewById(R.id.grid_loadingLayout);
            c1651b2.f7417i = (ImageView) view.findViewById(R.id.grid_video360Icon);
            c1651b2.f7418j = (TextView) view.findViewById(R.id.grid_tv_videoTime);
            c1651b2.f7418j.setTextSize(C0079k.m784a(this.f7383d, this.f7391l / 10));
            if (this.f7404y == 3) {
                c1651b2.f7416h.setBackgroundResource(this.f7374B);
            } else {
                c1651b2.f7416h.setBackgroundResource(this.f7375C);
            }
            c1651b2.f7416h.getLayoutParams().height = this.f7391l;
            c1651b2.f7411c.getLayoutParams().height = this.f7391l;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(c1651b2.f7412d.getLayoutParams());
            layoutParams.gravity = 83;
            layoutParams.height = (this.f7391l * 9) / 50;
            layoutParams.width = (this.f7391l * 9) / 50;
            layoutParams.setMargins(this.f7391l / 32, 0, 0, this.f7391l / 32);
            c1651b2.f7412d.setLayoutParams(layoutParams);
            c1651b2.f7413e.setLayoutParams(layoutParams);
            c1651b2.f7414f.setLayoutParams(layoutParams);
            layoutParams.width = (this.f7391l * 9) / 25;
            c1651b2.f7418j.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(c1651b2.f7410b.getLayoutParams());
            layoutParams2.gravity = 83;
            layoutParams2.height = (this.f7391l * 10) / 50;
            layoutParams2.width = (this.f7391l * 10) / 50;
            layoutParams2.setMargins(this.f7391l / 15, 0, 0, this.f7391l / 4);
            c1651b2.f7410b.setLayoutParams(layoutParams2);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(c1651b2.f7415g.getLayoutParams());
            layoutParams3.gravity = 51;
            layoutParams3.height = (this.f7391l * 11) / 50;
            layoutParams3.width = (this.f7391l * 11) / 50;
            layoutParams3.setMargins(this.f7391l / 32, 0, 0, 0);
            c1651b2.f7415g.setLayoutParams(layoutParams3);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(c1651b2.f7412d.getLayoutParams());
            layoutParams4.gravity = 17;
            layoutParams4.height = (this.f7391l * 9) / 25;
            layoutParams4.width = (this.f7391l * 9) / 25;
            c1651b2.f7417i.setLayoutParams(layoutParams4);
            c1651b2.f7419k = -1;
            view.setTag(c1651b2);
            m7038a(i, c1651b2);
            this.f7388i.put(c1651b2, null);
            m7041a("getView, convertView is null, viewList position:" + i + ", viewList viewHolder.ivImage.hashCode():" + c1651b2.f7409a.hashCode(), 5);
            c1651b = c1651b2;
        } else {
            C1651b c1651b3 = (C1651b) view.getTag();
            m7038a(i, c1651b3);
            m7041a("getView, convertView is not null, viewList position:" + i + ", viewList viewHolder.ivImage.hashCode():" + c1651b3.f7409a.hashCode(), 5);
            c1651b = c1651b3;
        }
        this.f7381b.m740b();
        if (this.f7376D) {
            m7041a("delete position:" + i, 3);
            c1651b.f7409a.setImageResource(android.R.color.transparent);
            c1651b.f7411c.setImageResource(android.R.color.transparent);
        } else {
            String str = !new File(m536o).exists() ? null : m534m;
            if (str != null) {
                if (c1651b.f7419k == -1) {
                    c1651b.f7419k = i;
                    c1651b.f7416h.setVisibility(0);
                } else if (c1651b.f7419k != i) {
                    c1651b.f7416h.setVisibility(0);
                    c1651b.f7419k = i;
                }
                this.f7389j.m7035b(str, i, i, m509b, m512c, new C1649a.a() { // from class: ui_Controller.CustomWidget.a.a.a.2
                    @Override // ui_Controller.CustomWidget.C1649a.a
                    /* renamed from: a */
                    public void mo6834a(Bitmap bitmap, int i2) {
                        C1650a.this.m7039a(bitmap, i2);
                        C1650a.this.m7068i();
                    }
                });
            } else {
                m7069i(i);
            }
            if (m7067h(i)) {
                c1651b.f7416h.setVisibility(4);
                if (this.f7392m) {
                    if (this.f7404y == 3) {
                        c1651b.f7409a.setImageResource(this.f7397r);
                    } else {
                        c1651b.f7409a.setImageResource(this.f7398s);
                    }
                    m7041a("isFileError, local_ViewHolder.ivImage:" + c1651b.f7409a.hashCode(), 5);
                } else {
                    m7040a(c1651b.f7409a, true);
                    if (this.f7404y == 3) {
                        c1651b.f7409a.setImageResource(this.f7397r);
                    } else {
                        c1651b.f7409a.setImageResource(this.f7398s);
                    }
                    m7041a("isFileError, ViewHolder.ivImage:" + c1651b.f7409a.hashCode(), 5);
                }
            }
            if (this.f7390k == 5) {
                if (m7067h(i)) {
                    m7040a(c1651b.f7409a, true);
                } else {
                    m7040a(c1651b.f7409a, false);
                }
            } else if (this.f7390k == 2) {
                if (m7067h(i)) {
                    m7040a(c1651b.f7409a, true);
                } else {
                    m7040a(c1651b.f7409a, false);
                }
            } else if (this.f7390k == 3) {
                if (m7067h(i)) {
                    m7040a(c1651b.f7409a, true);
                } else {
                    m7040a(c1651b.f7409a, false);
                }
            } else if (this.f7390k == 4) {
                if (m7067h(i)) {
                    m7040a(c1651b.f7409a, true);
                } else {
                    switch (m504a) {
                        case 3:
                            m7040a(c1651b.f7409a, false);
                            break;
                        default:
                            m7040a(c1651b.f7409a, true);
                            break;
                    }
                }
            } else {
                m7040a(c1651b.f7409a, false);
            }
            switch (m504a) {
                case 0:
                    c1651b.f7410b.setImageResource(android.R.color.transparent);
                    c1651b.f7413e.setImageResource(android.R.color.transparent);
                    c1651b.f7412d.setImageResource(android.R.color.transparent);
                    c1651b.f7414f.setImageResource(android.R.color.transparent);
                    c1651b.f7415g.setImageResource(android.R.color.transparent);
                    c1651b.f7417i.setImageResource(android.R.color.transparent);
                    c1651b.f7418j.setText("");
                    break;
                case 1:
                case 5:
                    c1651b.f7410b.setImageResource(this.f7399t);
                    c1651b.f7413e.setImageResource(android.R.color.transparent);
                    c1651b.f7412d.setImageResource(android.R.color.transparent);
                    c1651b.f7414f.setImageResource(android.R.color.transparent);
                    c1651b.f7415g.setImageResource(android.R.color.transparent);
                    c1651b.f7417i.setImageResource(android.R.color.transparent);
                    int m516d = this.f7380a.m516d(this.f7385f.get(i).m7081a(), this.f7385f.get(i).m7085b());
                    c1651b.f7418j.setText(String.format("%02d:%02d", Integer.valueOf(m516d / 60), Integer.valueOf(m516d % 60)));
                    break;
                case 2:
                    c1651b.f7410b.setImageResource(android.R.color.transparent);
                    c1651b.f7413e.setImageResource(android.R.color.transparent);
                    c1651b.f7412d.setImageResource(android.R.color.transparent);
                    c1651b.f7414f.setImageResource(android.R.color.transparent);
                    c1651b.f7415g.setImageResource(android.R.color.transparent);
                    c1651b.f7417i.setImageResource(android.R.color.transparent);
                    c1651b.f7418j.setText("");
                    break;
                case 3:
                    c1651b.f7410b.setImageResource(android.R.color.transparent);
                    c1651b.f7413e.setImageResource(android.R.color.transparent);
                    c1651b.f7412d.setImageResource(android.R.color.transparent);
                    c1651b.f7414f.setImageResource(android.R.color.transparent);
                    c1651b.f7415g.setImageResource(android.R.color.transparent);
                    c1651b.f7417i.setImageResource(android.R.color.transparent);
                    c1651b.f7418j.setText("");
                    break;
                case 4:
                    c1651b.f7410b.setImageResource(android.R.color.transparent);
                    c1651b.f7413e.setImageResource(android.R.color.transparent);
                    c1651b.f7412d.setImageResource(android.R.color.transparent);
                    c1651b.f7414f.setImageResource(android.R.color.transparent);
                    c1651b.f7415g.setImageResource(android.R.color.transparent);
                    c1651b.f7417i.setImageResource(android.R.color.transparent);
                    c1651b.f7418j.setText("");
                    break;
                case 6:
                    c1651b.f7410b.setImageResource(android.R.color.transparent);
                    c1651b.f7413e.setImageResource(android.R.color.transparent);
                    c1651b.f7412d.setImageResource(android.R.color.transparent);
                    c1651b.f7414f.setImageResource(android.R.color.transparent);
                    c1651b.f7415g.setImageResource(this.f7403x);
                    c1651b.f7417i.setImageResource(android.R.color.transparent);
                    c1651b.f7418j.setText("");
                    break;
                default:
                    c1651b.f7410b.setImageResource(android.R.color.transparent);
                    c1651b.f7413e.setImageResource(android.R.color.transparent);
                    c1651b.f7412d.setImageResource(android.R.color.transparent);
                    c1651b.f7414f.setImageResource(android.R.color.transparent);
                    c1651b.f7415g.setImageResource(android.R.color.transparent);
                    c1651b.f7417i.setImageResource(android.R.color.transparent);
                    c1651b.f7418j.setText("");
                    break;
            }
            if (this.f7390k > 0) {
                c1651b.f7411c.setVisibility(0);
                if (this.f7385f.get(i).m7089e()) {
                    if (this.f7404y == 3) {
                        c1651b.f7411c.setImageResource(this.f7393n);
                    } else {
                        c1651b.f7411c.setImageResource(this.f7395p);
                    }
                } else if (this.f7404y == 3) {
                    c1651b.f7411c.setImageResource(this.f7394o);
                } else {
                    c1651b.f7411c.setImageResource(this.f7396q);
                }
            } else {
                c1651b.f7411c.setVisibility(4);
            }
        }
        return view;
    }

    @Override // com.tonicartos.widget.stickygridheaders.InterfaceC1574d
    /* renamed from: a */
    public View mo6725a(int i, View view, ViewGroup viewGroup) {
        C1652c c1652c;
        m7041a("getHeaderView " + i + " " + this.f7390k, 4);
        if (this.f7385f == null) {
            return null;
        }
        if (view == null) {
            DisplayMetrics displayMetrics = this.f7383d.getResources().getDisplayMetrics();
            int max = Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels) / 5;
            c1652c = new C1652c();
            view = this.f7384e.inflate(R.layout.style_grid_header, viewGroup, false);
            c1652c.f7420a = (ImageView) view.findViewById(R.id.grid_header_selectIcon);
            c1652c.f7421b = (TextView) view.findViewById(R.id.grid_header_title);
            c1652c.f7422c = (LinearLayout) view.findViewById(R.id.grid_header_restSpace);
            c1652c.f7421b.setTextSize(C0079k.m784a(this.f7383d, max / 9));
            c1652c.f7420a.getLayoutParams().width = (int) (max / 5.5d);
            c1652c.f7420a.getLayoutParams().height = (int) (max / 5.5d);
            c1652c.f7421b.getLayoutParams().height = max / 4;
            c1652c.f7422c.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.CustomWidget.a.a.a.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    return true;
                }
            });
            view.setTag(c1652c);
        } else {
            c1652c = (C1652c) view.getTag();
        }
        int m7087c = this.f7385f.get(i).m7087c();
        if (this.f7390k == 0) {
            c1652c.f7420a.setVisibility(4);
        } else {
            c1652c.f7420a.setVisibility(0);
            if (this.f7386g.get(m7087c).f7433a) {
                c1652c.f7420a.setImageResource(R.drawable.gallery_nxn_date_select_yes);
            } else {
                c1652c.f7420a.setImageResource(R.drawable.gallery_nxn_date_select_no);
            }
        }
        int m459a = C0052d.m459a();
        if (m459a == 10) {
            new SimpleDateFormat("MMM dd,yyyy", Locale.UK);
        } else {
            new SimpleDateFormat();
        }
        String valueOf = String.valueOf(Calendar.getInstance().get(1));
        long m7088d = this.f7385f.get(i).m7088d();
        if (m7088d == 0) {
            c1652c.f7421b.setText(R.string.official_sample);
            return view;
        }
        String format = DateFormat.getDateFormat(this.f7383d).format(new Date(m7088d));
        if (m459a == 0) {
            if (format.contains(valueOf + "年")) {
                format = format.replace(valueOf + "年", "");
            }
        } else if (format.contains(valueOf)) {
            format = format.replace("," + valueOf, " ");
        }
        c1652c.f7421b.setText(" " + format + " (" + m7061e(m7087c) + ")");
        return view;
    }

    @Override // com.tonicartos.widget.stickygridheaders.InterfaceC1574d
    /* renamed from: a */
    public long mo6724a(int i) {
        return this.f7385f.get(i).m7087c();
    }
}
