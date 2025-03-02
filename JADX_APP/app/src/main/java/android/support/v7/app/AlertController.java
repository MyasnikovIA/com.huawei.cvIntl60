package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.appcompat.R;
import android.support.v7.widget.C0666aq;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
class AlertController {

    /* renamed from: A */
    private int f2161A;

    /* renamed from: C */
    private CharSequence f2163C;

    /* renamed from: D */
    private Drawable f2164D;

    /* renamed from: E */
    private CharSequence f2165E;

    /* renamed from: F */
    private Drawable f2166F;

    /* renamed from: G */
    private CharSequence f2167G;

    /* renamed from: H */
    private Drawable f2168H;

    /* renamed from: J */
    private Drawable f2170J;

    /* renamed from: K */
    private ImageView f2171K;

    /* renamed from: L */
    private TextView f2172L;

    /* renamed from: M */
    private TextView f2173M;

    /* renamed from: N */
    private View f2174N;

    /* renamed from: O */
    private int f2175O;

    /* renamed from: P */
    private int f2176P;

    /* renamed from: Q */
    private boolean f2177Q;

    /* renamed from: a */
    final DialogC0516e f2180a;

    /* renamed from: b */
    ListView f2181b;

    /* renamed from: c */
    Button f2182c;

    /* renamed from: d */
    Message f2183d;

    /* renamed from: e */
    Button f2184e;

    /* renamed from: f */
    Message f2185f;

    /* renamed from: g */
    Button f2186g;

    /* renamed from: h */
    Message f2187h;

    /* renamed from: i */
    NestedScrollView f2188i;

    /* renamed from: j */
    ListAdapter f2189j;

    /* renamed from: l */
    int f2191l;

    /* renamed from: m */
    int f2192m;

    /* renamed from: n */
    int f2193n;

    /* renamed from: o */
    int f2194o;

    /* renamed from: p */
    Handler f2195p;

    /* renamed from: q */
    private final Context f2196q;

    /* renamed from: r */
    private final Window f2197r;

    /* renamed from: s */
    private final int f2198s;

    /* renamed from: t */
    private CharSequence f2199t;

    /* renamed from: u */
    private CharSequence f2200u;

    /* renamed from: v */
    private View f2201v;

    /* renamed from: w */
    private int f2202w;

    /* renamed from: x */
    private int f2203x;

    /* renamed from: y */
    private int f2204y;

    /* renamed from: z */
    private int f2205z;

    /* renamed from: B */
    private boolean f2162B = false;

    /* renamed from: I */
    private int f2169I = 0;

    /* renamed from: k */
    int f2190k = -1;

    /* renamed from: R */
    private int f2178R = 0;

    /* renamed from: S */
    private final View.OnClickListener f2179S = new View.OnClickListener() { // from class: android.support.v7.app.AlertController.1
        ViewOnClickListenerC04891() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message;
            if (view == AlertController.this.f2182c && AlertController.this.f2183d != null) {
                message = Message.obtain(AlertController.this.f2183d);
            } else if (view == AlertController.this.f2184e && AlertController.this.f2185f != null) {
                message = Message.obtain(AlertController.this.f2185f);
            } else if (view == AlertController.this.f2186g && AlertController.this.f2187h != null) {
                message = Message.obtain(AlertController.this.f2187h);
            } else {
                message = null;
            }
            if (message != null) {
                message.sendToTarget();
            }
            AlertController.this.f2195p.obtainMessage(1, AlertController.this.f2180a).sendToTarget();
        }
    };

    /* renamed from: android.support.v7.app.AlertController$1 */
    class ViewOnClickListenerC04891 implements View.OnClickListener {
        ViewOnClickListenerC04891() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message;
            if (view == AlertController.this.f2182c && AlertController.this.f2183d != null) {
                message = Message.obtain(AlertController.this.f2183d);
            } else if (view == AlertController.this.f2184e && AlertController.this.f2185f != null) {
                message = Message.obtain(AlertController.this.f2185f);
            } else if (view == AlertController.this.f2186g && AlertController.this.f2187h != null) {
                message = Message.obtain(AlertController.this.f2187h);
            } else {
                message = null;
            }
            if (message != null) {
                message.sendToTarget();
            }
            AlertController.this.f2195p.obtainMessage(1, AlertController.this.f2180a).sendToTarget();
        }
    }

    /* renamed from: android.support.v7.app.AlertController$b */
    private static final class HandlerC0495b extends Handler {

        /* renamed from: a */
        private WeakReference<DialogInterface> f2275a;

        public HandlerC0495b(DialogInterface dialogInterface) {
            this.f2275a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case -3:
                case -2:
                case -1:
                    ((DialogInterface.OnClickListener) message.obj).onClick(this.f2275a.get(), message.what);
                    break;
                case 1:
                    ((DialogInterface) message.obj).dismiss();
                    break;
            }
        }
    }

    /* renamed from: a */
    private static boolean m2466a(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    public AlertController(Context context, DialogC0516e dialogC0516e, Window window) {
        this.f2196q = context;
        this.f2180a = dialogC0516e;
        this.f2197r = window;
        this.f2195p = new HandlerC0495b(dialogC0516e);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.AlertDialog, R.attr.alertDialogStyle, 0);
        this.f2175O = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_android_layout, 0);
        this.f2176P = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.f2191l = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listLayout, 0);
        this.f2192m = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.f2193n = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.f2194o = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listItemLayout, 0);
        this.f2177Q = obtainStyledAttributes.getBoolean(R.styleable.AlertDialog_showTitle, true);
        this.f2198s = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        dialogC0516e.m2612a(1);
    }

    /* renamed from: a */
    static boolean m2467a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (m2467a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public void m2473a() {
        this.f2180a.setContentView(m2468b());
        m2470c();
    }

    /* renamed from: b */
    private int m2468b() {
        if (this.f2176P == 0) {
            return this.f2175O;
        }
        if (this.f2178R == 1) {
            return this.f2176P;
        }
        return this.f2175O;
    }

    /* renamed from: a */
    public void m2478a(CharSequence charSequence) {
        this.f2199t = charSequence;
        if (this.f2172L != null) {
            this.f2172L.setText(charSequence);
        }
    }

    /* renamed from: b */
    public void m2481b(View view) {
        this.f2174N = view;
    }

    /* renamed from: b */
    public void m2482b(CharSequence charSequence) {
        this.f2200u = charSequence;
        if (this.f2173M != null) {
            this.f2173M.setText(charSequence);
        }
    }

    /* renamed from: a */
    public void m2474a(int i) {
        this.f2201v = null;
        this.f2202w = i;
        this.f2162B = false;
    }

    /* renamed from: c */
    public void m2485c(View view) {
        this.f2201v = view;
        this.f2202w = 0;
        this.f2162B = false;
    }

    /* renamed from: a */
    public void m2477a(View view, int i, int i2, int i3, int i4) {
        this.f2201v = view;
        this.f2202w = 0;
        this.f2162B = true;
        this.f2203x = i;
        this.f2204y = i2;
        this.f2205z = i3;
        this.f2161A = i4;
    }

    /* renamed from: a */
    public void m2475a(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.f2195p.obtainMessage(i, onClickListener);
        }
        switch (i) {
            case -3:
                this.f2167G = charSequence;
                this.f2187h = message;
                this.f2168H = drawable;
                return;
            case -2:
                this.f2165E = charSequence;
                this.f2185f = message;
                this.f2166F = drawable;
                return;
            case -1:
                this.f2163C = charSequence;
                this.f2183d = message;
                this.f2164D = drawable;
                return;
            default:
                throw new IllegalArgumentException("Button does not exist");
        }
    }

    /* renamed from: b */
    public void m2480b(int i) {
        this.f2170J = null;
        this.f2169I = i;
        if (this.f2171K != null) {
            if (i != 0) {
                this.f2171K.setVisibility(0);
                this.f2171K.setImageResource(this.f2169I);
            } else {
                this.f2171K.setVisibility(8);
            }
        }
    }

    /* renamed from: a */
    public void m2476a(Drawable drawable) {
        this.f2170J = drawable;
        this.f2169I = 0;
        if (this.f2171K != null) {
            if (drawable != null) {
                this.f2171K.setVisibility(0);
                this.f2171K.setImageDrawable(drawable);
            } else {
                this.f2171K.setVisibility(8);
            }
        }
    }

    /* renamed from: c */
    public int m2484c(int i) {
        TypedValue typedValue = new TypedValue();
        this.f2196q.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: a */
    public boolean m2479a(int i, KeyEvent keyEvent) {
        return this.f2188i != null && this.f2188i.executeKeyEvent(keyEvent);
    }

    /* renamed from: b */
    public boolean m2483b(int i, KeyEvent keyEvent) {
        return this.f2188i != null && this.f2188i.executeKeyEvent(keyEvent);
    }

    @Nullable
    /* renamed from: a */
    private ViewGroup m2461a(@Nullable View view, @Nullable View view2) {
        if (view == null) {
            return (ViewGroup) (view2 instanceof ViewStub ? ((ViewStub) view2).inflate() : view2);
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        return (ViewGroup) (view instanceof ViewStub ? ((ViewStub) view).inflate() : view);
    }

    /* renamed from: c */
    private void m2470c() {
        View findViewById;
        View findViewById2;
        View findViewById3 = this.f2197r.findViewById(R.id.parentPanel);
        View findViewById4 = findViewById3.findViewById(R.id.topPanel);
        View findViewById5 = findViewById3.findViewById(R.id.contentPanel);
        View findViewById6 = findViewById3.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(R.id.customPanel);
        m2463a(viewGroup);
        View findViewById7 = viewGroup.findViewById(R.id.topPanel);
        View findViewById8 = viewGroup.findViewById(R.id.contentPanel);
        View findViewById9 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup m2461a = m2461a(findViewById7, findViewById4);
        ViewGroup m2461a2 = m2461a(findViewById8, findViewById5);
        ViewGroup m2461a3 = m2461a(findViewById9, findViewById6);
        m2471c(m2461a2);
        m2472d(m2461a3);
        m2469b(m2461a);
        boolean z = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z2 = (m2461a == null || m2461a.getVisibility() == 8) ? false : true;
        boolean z3 = (m2461a3 == null || m2461a3.getVisibility() == 8) ? false : true;
        if (!z3 && m2461a2 != null && (findViewById2 = m2461a2.findViewById(R.id.textSpacerNoButtons)) != null) {
            findViewById2.setVisibility(0);
        }
        if (z2) {
            if (this.f2188i != null) {
                this.f2188i.setClipToPadding(true);
            }
            View view = null;
            if (this.f2200u != null || this.f2181b != null) {
                view = m2461a.findViewById(R.id.titleDividerNoCustom);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (m2461a2 != null && (findViewById = m2461a2.findViewById(R.id.textSpacerNoTitle)) != null) {
            findViewById.setVisibility(0);
        }
        if (this.f2181b instanceof RecycleListView) {
            ((RecycleListView) this.f2181b).m2486a(z2, z3);
        }
        if (!z) {
            View view2 = this.f2181b != null ? this.f2181b : this.f2188i;
            if (view2 != null) {
                m2464a(m2461a2, view2, (z3 ? 2 : 0) | (z2 ? 1 : 0), 3);
            }
        }
        ListView listView = this.f2181b;
        if (listView != null && this.f2189j != null) {
            listView.setAdapter(this.f2189j);
            int i = this.f2190k;
            if (i > -1) {
                listView.setItemChecked(i, true);
                listView.setSelection(i);
            }
        }
    }

    /* renamed from: a */
    private void m2464a(ViewGroup viewGroup, View view, int i, int i2) {
        View view2 = null;
        View findViewById = this.f2197r.findViewById(R.id.scrollIndicatorUp);
        View findViewById2 = this.f2197r.findViewById(R.id.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            ViewCompat.setScrollIndicators(view, i, i2);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 != null) {
                viewGroup.removeView(findViewById2);
                return;
            }
            return;
        }
        if (findViewById != null && (i & 1) == 0) {
            viewGroup.removeView(findViewById);
            findViewById = null;
        }
        if (findViewById2 == null || (i & 2) != 0) {
            view2 = findViewById2;
        } else {
            viewGroup.removeView(findViewById2);
        }
        if (findViewById != null || view2 != null) {
            if (this.f2200u != null) {
                this.f2188i.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() { // from class: android.support.v7.app.AlertController.2

                    /* renamed from: a */
                    final /* synthetic */ View f2207a;

                    /* renamed from: b */
                    final /* synthetic */ View f2208b;

                    C04902(View findViewById3, View view22) {
                        findViewById = findViewById3;
                        view2 = view22;
                    }

                    @Override // android.support.v4.widget.NestedScrollView.OnScrollChangeListener
                    public void onScrollChange(NestedScrollView nestedScrollView, int i3, int i4, int i5, int i6) {
                        AlertController.m2462a(nestedScrollView, findViewById, view2);
                    }
                });
                this.f2188i.post(new Runnable() { // from class: android.support.v7.app.AlertController.3

                    /* renamed from: a */
                    final /* synthetic */ View f2210a;

                    /* renamed from: b */
                    final /* synthetic */ View f2211b;

                    RunnableC04913(View findViewById3, View view22) {
                        findViewById = findViewById3;
                        view2 = view22;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        AlertController.m2462a(AlertController.this.f2188i, findViewById, view2);
                    }
                });
            } else {
                if (this.f2181b != null) {
                    this.f2181b.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: android.support.v7.app.AlertController.4

                        /* renamed from: a */
                        final /* synthetic */ View f2213a;

                        /* renamed from: b */
                        final /* synthetic */ View f2214b;

                        C04924(View findViewById3, View view22) {
                            findViewById = findViewById3;
                            view2 = view22;
                        }

                        @Override // android.widget.AbsListView.OnScrollListener
                        public void onScrollStateChanged(AbsListView absListView, int i3) {
                        }

                        @Override // android.widget.AbsListView.OnScrollListener
                        public void onScroll(AbsListView absListView, int i3, int i4, int i5) {
                            AlertController.m2462a(absListView, findViewById, view2);
                        }
                    });
                    this.f2181b.post(new Runnable() { // from class: android.support.v7.app.AlertController.5

                        /* renamed from: a */
                        final /* synthetic */ View f2216a;

                        /* renamed from: b */
                        final /* synthetic */ View f2217b;

                        RunnableC04935(View findViewById3, View view22) {
                            findViewById = findViewById3;
                            view2 = view22;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            AlertController.m2462a(AlertController.this.f2181b, findViewById, view2);
                        }
                    });
                    return;
                }
                if (findViewById3 != null) {
                    viewGroup.removeView(findViewById3);
                }
                if (view22 != null) {
                    viewGroup.removeView(view22);
                }
            }
        }
    }

    /* renamed from: android.support.v7.app.AlertController$2 */
    class C04902 implements NestedScrollView.OnScrollChangeListener {

        /* renamed from: a */
        final /* synthetic */ View f2207a;

        /* renamed from: b */
        final /* synthetic */ View f2208b;

        C04902(View findViewById3, View view22) {
            findViewById = findViewById3;
            view2 = view22;
        }

        @Override // android.support.v4.widget.NestedScrollView.OnScrollChangeListener
        public void onScrollChange(NestedScrollView nestedScrollView, int i3, int i4, int i5, int i6) {
            AlertController.m2462a(nestedScrollView, findViewById, view2);
        }
    }

    /* renamed from: android.support.v7.app.AlertController$3 */
    class RunnableC04913 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ View f2210a;

        /* renamed from: b */
        final /* synthetic */ View f2211b;

        RunnableC04913(View findViewById3, View view22) {
            findViewById = findViewById3;
            view2 = view22;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m2462a(AlertController.this.f2188i, findViewById, view2);
        }
    }

    /* renamed from: android.support.v7.app.AlertController$4 */
    class C04924 implements AbsListView.OnScrollListener {

        /* renamed from: a */
        final /* synthetic */ View f2213a;

        /* renamed from: b */
        final /* synthetic */ View f2214b;

        C04924(View findViewById3, View view22) {
            findViewById = findViewById3;
            view2 = view22;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i3, int i4, int i5) {
            AlertController.m2462a(absListView, findViewById, view2);
        }
    }

    /* renamed from: android.support.v7.app.AlertController$5 */
    class RunnableC04935 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ View f2216a;

        /* renamed from: b */
        final /* synthetic */ View f2217b;

        RunnableC04935(View findViewById3, View view22) {
            findViewById = findViewById3;
            view2 = view22;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m2462a(AlertController.this.f2181b, findViewById, view2);
        }
    }

    /* renamed from: a */
    private void m2463a(ViewGroup viewGroup) {
        View view;
        if (this.f2201v != null) {
            view = this.f2201v;
        } else if (this.f2202w != 0) {
            view = LayoutInflater.from(this.f2196q).inflate(this.f2202w, viewGroup, false);
        } else {
            view = null;
        }
        boolean z = view != null;
        if (!z || !m2467a(view)) {
            this.f2197r.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) this.f2197r.findViewById(R.id.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (this.f2162B) {
                frameLayout.setPadding(this.f2203x, this.f2204y, this.f2205z, this.f2161A);
            }
            if (this.f2181b != null) {
                ((C0666aq.a) viewGroup.getLayoutParams()).f3596g = 0.0f;
                return;
            }
            return;
        }
        viewGroup.setVisibility(8);
    }

    /* renamed from: b */
    private void m2469b(ViewGroup viewGroup) {
        if (this.f2174N != null) {
            viewGroup.addView(this.f2174N, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f2197r.findViewById(R.id.title_template).setVisibility(8);
            return;
        }
        this.f2171K = (ImageView) this.f2197r.findViewById(android.R.id.icon);
        if ((!TextUtils.isEmpty(this.f2199t)) && this.f2177Q) {
            this.f2172L = (TextView) this.f2197r.findViewById(R.id.alertTitle);
            this.f2172L.setText(this.f2199t);
            if (this.f2169I != 0) {
                this.f2171K.setImageResource(this.f2169I);
                return;
            } else if (this.f2170J != null) {
                this.f2171K.setImageDrawable(this.f2170J);
                return;
            } else {
                this.f2172L.setPadding(this.f2171K.getPaddingLeft(), this.f2171K.getPaddingTop(), this.f2171K.getPaddingRight(), this.f2171K.getPaddingBottom());
                this.f2171K.setVisibility(8);
                return;
            }
        }
        this.f2197r.findViewById(R.id.title_template).setVisibility(8);
        this.f2171K.setVisibility(8);
        viewGroup.setVisibility(8);
    }

    /* renamed from: c */
    private void m2471c(ViewGroup viewGroup) {
        this.f2188i = (NestedScrollView) this.f2197r.findViewById(R.id.scrollView);
        this.f2188i.setFocusable(false);
        this.f2188i.setNestedScrollingEnabled(false);
        this.f2173M = (TextView) viewGroup.findViewById(android.R.id.message);
        if (this.f2173M != null) {
            if (this.f2200u != null) {
                this.f2173M.setText(this.f2200u);
                return;
            }
            this.f2173M.setVisibility(8);
            this.f2188i.removeView(this.f2173M);
            if (this.f2181b != null) {
                ViewGroup viewGroup2 = (ViewGroup) this.f2188i.getParent();
                int indexOfChild = viewGroup2.indexOfChild(this.f2188i);
                viewGroup2.removeViewAt(indexOfChild);
                viewGroup2.addView(this.f2181b, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                return;
            }
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: a */
    static void m2462a(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    /* renamed from: d */
    private void m2472d(ViewGroup viewGroup) {
        int i;
        this.f2182c = (Button) viewGroup.findViewById(android.R.id.button1);
        this.f2182c.setOnClickListener(this.f2179S);
        if (TextUtils.isEmpty(this.f2163C) && this.f2164D == null) {
            this.f2182c.setVisibility(8);
            i = 0;
        } else {
            this.f2182c.setText(this.f2163C);
            if (this.f2164D != null) {
                this.f2164D.setBounds(0, 0, this.f2198s, this.f2198s);
                this.f2182c.setCompoundDrawables(this.f2164D, null, null, null);
            }
            this.f2182c.setVisibility(0);
            i = 1;
        }
        this.f2184e = (Button) viewGroup.findViewById(android.R.id.button2);
        this.f2184e.setOnClickListener(this.f2179S);
        if (TextUtils.isEmpty(this.f2165E) && this.f2166F == null) {
            this.f2184e.setVisibility(8);
        } else {
            this.f2184e.setText(this.f2165E);
            if (this.f2166F != null) {
                this.f2166F.setBounds(0, 0, this.f2198s, this.f2198s);
                this.f2184e.setCompoundDrawables(this.f2166F, null, null, null);
            }
            this.f2184e.setVisibility(0);
            i |= 2;
        }
        this.f2186g = (Button) viewGroup.findViewById(android.R.id.button3);
        this.f2186g.setOnClickListener(this.f2179S);
        if (TextUtils.isEmpty(this.f2167G) && this.f2168H == null) {
            this.f2186g.setVisibility(8);
        } else {
            this.f2186g.setText(this.f2167G);
            if (this.f2164D != null) {
                this.f2164D.setBounds(0, 0, this.f2198s, this.f2198s);
                this.f2182c.setCompoundDrawables(this.f2164D, null, null, null);
            }
            this.f2186g.setVisibility(0);
            i |= 4;
        }
        if (m2466a(this.f2196q)) {
            if (i == 1) {
                m2465a(this.f2182c);
            } else if (i == 2) {
                m2465a(this.f2184e);
            } else if (i == 4) {
                m2465a(this.f2186g);
            }
        }
        if (!(i != 0)) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: a */
    private void m2465a(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    public static class RecycleListView extends ListView {

        /* renamed from: a */
        private final int f2219a;

        /* renamed from: b */
        private final int f2220b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecycleListView);
            this.f2220b = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.f2219a = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.RecycleListView_paddingTopNoTitle, -1);
        }

        /* renamed from: a */
        public void m2486a(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f2219a, getPaddingRight(), z2 ? getPaddingBottom() : this.f2220b);
            }
        }
    }

    /* renamed from: android.support.v7.app.AlertController$a */
    public static class C0494a {

        /* renamed from: A */
        public int f2221A;

        /* renamed from: B */
        public int f2222B;

        /* renamed from: C */
        public int f2223C;

        /* renamed from: D */
        public int f2224D;

        /* renamed from: F */
        public boolean[] f2226F;

        /* renamed from: G */
        public boolean f2227G;

        /* renamed from: H */
        public boolean f2228H;

        /* renamed from: J */
        public DialogInterface.OnMultiChoiceClickListener f2230J;

        /* renamed from: K */
        public Cursor f2231K;

        /* renamed from: L */
        public String f2232L;

        /* renamed from: M */
        public String f2233M;

        /* renamed from: N */
        public AdapterView.OnItemSelectedListener f2234N;

        /* renamed from: O */
        public a f2235O;

        /* renamed from: a */
        public final Context f2237a;

        /* renamed from: b */
        public final LayoutInflater f2238b;

        /* renamed from: d */
        public Drawable f2240d;

        /* renamed from: f */
        public CharSequence f2242f;

        /* renamed from: g */
        public View f2243g;

        /* renamed from: h */
        public CharSequence f2244h;

        /* renamed from: i */
        public CharSequence f2245i;

        /* renamed from: j */
        public Drawable f2246j;

        /* renamed from: k */
        public DialogInterface.OnClickListener f2247k;

        /* renamed from: l */
        public CharSequence f2248l;

        /* renamed from: m */
        public Drawable f2249m;

        /* renamed from: n */
        public DialogInterface.OnClickListener f2250n;

        /* renamed from: o */
        public CharSequence f2251o;

        /* renamed from: p */
        public Drawable f2252p;

        /* renamed from: q */
        public DialogInterface.OnClickListener f2253q;

        /* renamed from: s */
        public DialogInterface.OnCancelListener f2255s;

        /* renamed from: t */
        public DialogInterface.OnDismissListener f2256t;

        /* renamed from: u */
        public DialogInterface.OnKeyListener f2257u;

        /* renamed from: v */
        public CharSequence[] f2258v;

        /* renamed from: w */
        public ListAdapter f2259w;

        /* renamed from: x */
        public DialogInterface.OnClickListener f2260x;

        /* renamed from: y */
        public int f2261y;

        /* renamed from: z */
        public View f2262z;

        /* renamed from: c */
        public int f2239c = 0;

        /* renamed from: e */
        public int f2241e = 0;

        /* renamed from: E */
        public boolean f2225E = false;

        /* renamed from: I */
        public int f2229I = -1;

        /* renamed from: P */
        public boolean f2236P = true;

        /* renamed from: r */
        public boolean f2254r = true;

        /* renamed from: android.support.v7.app.AlertController$a$a */
        public interface a {
            /* renamed from: a */
            void m2489a(ListView listView);
        }

        public C0494a(Context context) {
            this.f2237a = context;
            this.f2238b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* renamed from: a */
        public void m2488a(AlertController alertController) {
            if (this.f2243g != null) {
                alertController.m2481b(this.f2243g);
            } else {
                if (this.f2242f != null) {
                    alertController.m2478a(this.f2242f);
                }
                if (this.f2240d != null) {
                    alertController.m2476a(this.f2240d);
                }
                if (this.f2239c != 0) {
                    alertController.m2480b(this.f2239c);
                }
                if (this.f2241e != 0) {
                    alertController.m2480b(alertController.m2484c(this.f2241e));
                }
            }
            if (this.f2244h != null) {
                alertController.m2482b(this.f2244h);
            }
            if (this.f2245i != null || this.f2246j != null) {
                alertController.m2475a(-1, this.f2245i, this.f2247k, (Message) null, this.f2246j);
            }
            if (this.f2248l != null || this.f2249m != null) {
                alertController.m2475a(-2, this.f2248l, this.f2250n, (Message) null, this.f2249m);
            }
            if (this.f2251o != null || this.f2252p != null) {
                alertController.m2475a(-3, this.f2251o, this.f2253q, (Message) null, this.f2252p);
            }
            if (this.f2258v != null || this.f2231K != null || this.f2259w != null) {
                m2487b(alertController);
            }
            if (this.f2262z != null) {
                if (this.f2225E) {
                    alertController.m2477a(this.f2262z, this.f2221A, this.f2222B, this.f2223C, this.f2224D);
                    return;
                } else {
                    alertController.m2485c(this.f2262z);
                    return;
                }
            }
            if (this.f2261y != 0) {
                alertController.m2474a(this.f2261y);
            }
        }

        /* renamed from: b */
        private void m2487b(AlertController alertController) {
            int i;
            ListAdapter c0496c;
            RecycleListView recycleListView = (RecycleListView) this.f2238b.inflate(alertController.f2191l, (ViewGroup) null);
            if (this.f2227G) {
                if (this.f2231K == null) {
                    c0496c = new ArrayAdapter<CharSequence>(this.f2237a, alertController.f2192m, android.R.id.text1, this.f2258v) { // from class: android.support.v7.app.AlertController.a.1

                        /* renamed from: a */
                        final /* synthetic */ RecycleListView f2263a;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(Context context, int i2, int i3, CharSequence[] charSequenceArr, RecycleListView recycleListView2) {
                            super(context, i2, i3, charSequenceArr);
                            recycleListView = recycleListView2;
                        }

                        @Override // android.widget.ArrayAdapter, android.widget.Adapter
                        public View getView(int i2, View view, ViewGroup viewGroup) {
                            View view2 = super.getView(i2, view, viewGroup);
                            if (C0494a.this.f2226F != null && C0494a.this.f2226F[i2]) {
                                recycleListView.setItemChecked(i2, true);
                            }
                            return view2;
                        }
                    };
                } else {
                    c0496c = new CursorAdapter(this.f2237a, this.f2231K, false) { // from class: android.support.v7.app.AlertController.a.2

                        /* renamed from: a */
                        final /* synthetic */ RecycleListView f2265a;

                        /* renamed from: b */
                        final /* synthetic */ AlertController f2266b;

                        /* renamed from: d */
                        private final int f2268d;

                        /* renamed from: e */
                        private final int f2269e;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass2(Context context, Cursor cursor, boolean z, RecycleListView recycleListView2, AlertController alertController2) {
                            super(context, cursor, z);
                            recycleListView = recycleListView2;
                            alertController = alertController2;
                            Cursor cursor2 = getCursor();
                            this.f2268d = cursor2.getColumnIndexOrThrow(C0494a.this.f2232L);
                            this.f2269e = cursor2.getColumnIndexOrThrow(C0494a.this.f2233M);
                        }

                        @Override // android.widget.CursorAdapter
                        public void bindView(View view, Context context, Cursor cursor) {
                            ((CheckedTextView) view.findViewById(android.R.id.text1)).setText(cursor.getString(this.f2268d));
                            recycleListView.setItemChecked(cursor.getPosition(), cursor.getInt(this.f2269e) == 1);
                        }

                        @Override // android.widget.CursorAdapter
                        public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                            return C0494a.this.f2238b.inflate(alertController.f2192m, viewGroup, false);
                        }
                    };
                }
            } else {
                if (this.f2228H) {
                    i = alertController2.f2193n;
                } else {
                    i = alertController2.f2194o;
                }
                if (this.f2231K != null) {
                    c0496c = new SimpleCursorAdapter(this.f2237a, i, this.f2231K, new String[]{this.f2232L}, new int[]{android.R.id.text1});
                } else if (this.f2259w != null) {
                    c0496c = this.f2259w;
                } else {
                    c0496c = new C0496c(this.f2237a, i, android.R.id.text1, this.f2258v);
                }
            }
            if (this.f2235O != null) {
                this.f2235O.m2489a(recycleListView2);
            }
            alertController2.f2189j = c0496c;
            alertController2.f2190k = this.f2229I;
            if (this.f2260x != null) {
                recycleListView2.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: android.support.v7.app.AlertController.a.3

                    /* renamed from: a */
                    final /* synthetic */ AlertController f2270a;

                    AnonymousClass3(AlertController alertController2) {
                        alertController = alertController2;
                    }

                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                        C0494a.this.f2260x.onClick(alertController.f2180a, i2);
                        if (!C0494a.this.f2228H) {
                            alertController.f2180a.dismiss();
                        }
                    }
                });
            } else if (this.f2230J != null) {
                recycleListView2.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: android.support.v7.app.AlertController.a.4

                    /* renamed from: a */
                    final /* synthetic */ RecycleListView f2272a;

                    /* renamed from: b */
                    final /* synthetic */ AlertController f2273b;

                    AnonymousClass4(RecycleListView recycleListView2, AlertController alertController2) {
                        recycleListView = recycleListView2;
                        alertController = alertController2;
                    }

                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                        if (C0494a.this.f2226F != null) {
                            C0494a.this.f2226F[i2] = recycleListView.isItemChecked(i2);
                        }
                        C0494a.this.f2230J.onClick(alertController.f2180a, i2, recycleListView.isItemChecked(i2));
                    }
                });
            }
            if (this.f2234N != null) {
                recycleListView2.setOnItemSelectedListener(this.f2234N);
            }
            if (this.f2228H) {
                recycleListView2.setChoiceMode(1);
            } else if (this.f2227G) {
                recycleListView2.setChoiceMode(2);
            }
            alertController2.f2181b = recycleListView2;
        }

        /* renamed from: android.support.v7.app.AlertController$a$1 */
        class AnonymousClass1 extends ArrayAdapter<CharSequence> {

            /* renamed from: a */
            final /* synthetic */ RecycleListView f2263a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Context context, int i2, int i3, CharSequence[] charSequenceArr, RecycleListView recycleListView2) {
                super(context, i2, i3, charSequenceArr);
                recycleListView = recycleListView2;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i2, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i2, view, viewGroup);
                if (C0494a.this.f2226F != null && C0494a.this.f2226F[i2]) {
                    recycleListView.setItemChecked(i2, true);
                }
                return view2;
            }
        }

        /* renamed from: android.support.v7.app.AlertController$a$2 */
        class AnonymousClass2 extends CursorAdapter {

            /* renamed from: a */
            final /* synthetic */ RecycleListView f2265a;

            /* renamed from: b */
            final /* synthetic */ AlertController f2266b;

            /* renamed from: d */
            private final int f2268d;

            /* renamed from: e */
            private final int f2269e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(Context context, Cursor cursor, boolean z, RecycleListView recycleListView2, AlertController alertController2) {
                super(context, cursor, z);
                recycleListView = recycleListView2;
                alertController = alertController2;
                Cursor cursor2 = getCursor();
                this.f2268d = cursor2.getColumnIndexOrThrow(C0494a.this.f2232L);
                this.f2269e = cursor2.getColumnIndexOrThrow(C0494a.this.f2233M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(android.R.id.text1)).setText(cursor.getString(this.f2268d));
                recycleListView.setItemChecked(cursor.getPosition(), cursor.getInt(this.f2269e) == 1);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return C0494a.this.f2238b.inflate(alertController.f2192m, viewGroup, false);
            }
        }

        /* renamed from: android.support.v7.app.AlertController$a$3 */
        class AnonymousClass3 implements AdapterView.OnItemClickListener {

            /* renamed from: a */
            final /* synthetic */ AlertController f2270a;

            AnonymousClass3(AlertController alertController2) {
                alertController = alertController2;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                C0494a.this.f2260x.onClick(alertController.f2180a, i2);
                if (!C0494a.this.f2228H) {
                    alertController.f2180a.dismiss();
                }
            }
        }

        /* renamed from: android.support.v7.app.AlertController$a$4 */
        class AnonymousClass4 implements AdapterView.OnItemClickListener {

            /* renamed from: a */
            final /* synthetic */ RecycleListView f2272a;

            /* renamed from: b */
            final /* synthetic */ AlertController f2273b;

            AnonymousClass4(RecycleListView recycleListView2, AlertController alertController2) {
                recycleListView = recycleListView2;
                alertController = alertController2;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                if (C0494a.this.f2226F != null) {
                    C0494a.this.f2226F[i2] = recycleListView.isItemChecked(i2);
                }
                C0494a.this.f2230J.onClick(alertController.f2180a, i2, recycleListView.isItemChecked(i2));
            }
        }
    }

    /* renamed from: android.support.v7.app.AlertController$c */
    private static class C0496c extends ArrayAdapter<CharSequence> {
        public C0496c(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }
    }
}
