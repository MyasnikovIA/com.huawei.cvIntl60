package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v4.view.PointerIconCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.InterfaceC0555s;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import com.google.android.exoplayer.C1167C;
import java.lang.reflect.Method;

/* renamed from: android.support.v7.widget.ar */
/* loaded from: classes.dex */
public class C0667ar implements InterfaceC0555s {

    /* renamed from: a */
    private static Method f3598a;

    /* renamed from: b */
    private static Method f3599b;

    /* renamed from: h */
    private static Method f3600h;

    /* renamed from: A */
    private Drawable f3601A;

    /* renamed from: B */
    private AdapterView.OnItemClickListener f3602B;

    /* renamed from: C */
    private AdapterView.OnItemSelectedListener f3603C;

    /* renamed from: D */
    private final d f3604D;

    /* renamed from: E */
    private final c f3605E;

    /* renamed from: F */
    private final a f3606F;

    /* renamed from: G */
    private Runnable f3607G;

    /* renamed from: H */
    private final Rect f3608H;

    /* renamed from: I */
    private Rect f3609I;

    /* renamed from: J */
    private boolean f3610J;

    /* renamed from: c */
    C0660ak f3611c;

    /* renamed from: d */
    int f3612d;

    /* renamed from: e */
    final e f3613e;

    /* renamed from: f */
    final Handler f3614f;

    /* renamed from: g */
    PopupWindow f3615g;

    /* renamed from: i */
    private Context f3616i;

    /* renamed from: j */
    private ListAdapter f3617j;

    /* renamed from: k */
    private int f3618k;

    /* renamed from: l */
    private int f3619l;

    /* renamed from: m */
    private int f3620m;

    /* renamed from: n */
    private int f3621n;

    /* renamed from: o */
    private int f3622o;

    /* renamed from: p */
    private boolean f3623p;

    /* renamed from: q */
    private boolean f3624q;

    /* renamed from: r */
    private boolean f3625r;

    /* renamed from: s */
    private boolean f3626s;

    /* renamed from: t */
    private int f3627t;

    /* renamed from: u */
    private boolean f3628u;

    /* renamed from: v */
    private boolean f3629v;

    /* renamed from: w */
    private View f3630w;

    /* renamed from: x */
    private int f3631x;

    /* renamed from: y */
    private DataSetObserver f3632y;

    /* renamed from: z */
    private View f3633z;

    static {
        try {
            f3598a = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
        } catch (NoSuchMethodException e2) {
            Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
        try {
            f3599b = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
        } catch (NoSuchMethodException e3) {
            Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
        }
        try {
            f3600h = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
        } catch (NoSuchMethodException e4) {
            Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
        }
    }

    public C0667ar(@NonNull Context context) {
        this(context, null, R.attr.listPopupWindowStyle);
    }

    public C0667ar(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        this(context, attributeSet, i, 0);
    }

    public C0667ar(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        this.f3618k = -2;
        this.f3619l = -2;
        this.f3622o = PointerIconCompat.TYPE_HAND;
        this.f3624q = true;
        this.f3627t = 0;
        this.f3628u = false;
        this.f3629v = false;
        this.f3612d = Integer.MAX_VALUE;
        this.f3631x = 0;
        this.f3613e = new e();
        this.f3604D = new d();
        this.f3605E = new c();
        this.f3606F = new a();
        this.f3608H = new Rect();
        this.f3616i = context;
        this.f3614f = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPopupWindow, i, i2);
        this.f3620m = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        this.f3621n = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (this.f3621n != 0) {
            this.f3623p = true;
        }
        obtainStyledAttributes.recycle();
        this.f3615g = new C0711q(context, attributeSet, i, i2);
        this.f3615g.setInputMethodMode(1);
    }

    /* renamed from: a */
    public void mo4019a(@Nullable ListAdapter listAdapter) {
        if (this.f3632y == null) {
            this.f3632y = new b();
        } else if (this.f3617j != null) {
            this.f3617j.unregisterDataSetObserver(this.f3632y);
        }
        this.f3617j = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f3632y);
        }
        if (this.f3611c != null) {
            this.f3611c.setAdapter(this.f3617j);
        }
    }

    /* renamed from: a */
    public void m4015a(int i) {
        this.f3631x = i;
    }

    /* renamed from: a */
    public void m4021a(boolean z) {
        this.f3610J = z;
        this.f3615g.setFocusable(z);
    }

    /* renamed from: c */
    public boolean m4026c() {
        return this.f3610J;
    }

    @Nullable
    /* renamed from: h */
    public Drawable m4031h() {
        return this.f3615g.getBackground();
    }

    /* renamed from: a */
    public void m4017a(@Nullable Drawable drawable) {
        this.f3615g.setBackgroundDrawable(drawable);
    }

    /* renamed from: b */
    public void m4022b(@StyleRes int i) {
        this.f3615g.setAnimationStyle(i);
    }

    @Nullable
    /* renamed from: i */
    public View m4033i() {
        return this.f3633z;
    }

    /* renamed from: b */
    public void m4023b(@Nullable View view) {
        this.f3633z = view;
    }

    /* renamed from: j */
    public int m4035j() {
        return this.f3620m;
    }

    /* renamed from: c */
    public void m4025c(int i) {
        this.f3620m = i;
    }

    /* renamed from: k */
    public int m4036k() {
        if (this.f3623p) {
            return this.f3621n;
        }
        return 0;
    }

    /* renamed from: d */
    public void m4027d(int i) {
        this.f3621n = i;
        this.f3623p = true;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public void m4016a(Rect rect) {
        this.f3609I = rect;
    }

    /* renamed from: e */
    public void m4028e(int i) {
        this.f3627t = i;
    }

    /* renamed from: l */
    public int m4037l() {
        return this.f3619l;
    }

    /* renamed from: f */
    public void m4029f(int i) {
        this.f3619l = i;
    }

    /* renamed from: g */
    public void m4030g(int i) {
        Drawable background = this.f3615g.getBackground();
        if (background != null) {
            background.getPadding(this.f3608H);
            this.f3619l = this.f3608H.left + this.f3608H.right + i;
        } else {
            m4029f(i);
        }
    }

    /* renamed from: a */
    public void m4018a(@Nullable AdapterView.OnItemClickListener onItemClickListener) {
        this.f3602B = onItemClickListener;
    }

    @Override // android.support.v7.view.menu.InterfaceC0555s
    /* renamed from: d */
    public void mo2820d() {
        int i;
        int i2;
        int i3;
        boolean z = false;
        int m4012b = m4012b();
        boolean m4039n = m4039n();
        PopupWindowCompat.setWindowLayoutType(this.f3615g, this.f3622o);
        if (this.f3615g.isShowing()) {
            if (ViewCompat.isAttachedToWindow(m4033i())) {
                if (this.f3619l == -1) {
                    i2 = -1;
                } else if (this.f3619l == -2) {
                    i2 = m4033i().getWidth();
                } else {
                    i2 = this.f3619l;
                }
                if (this.f3618k == -1) {
                    if (!m4039n) {
                        m4012b = -1;
                    }
                    if (m4039n) {
                        this.f3615g.setWidth(this.f3619l == -1 ? -1 : 0);
                        this.f3615g.setHeight(0);
                        i3 = m4012b;
                    } else {
                        this.f3615g.setWidth(this.f3619l == -1 ? -1 : 0);
                        this.f3615g.setHeight(-1);
                        i3 = m4012b;
                    }
                } else {
                    i3 = this.f3618k == -2 ? m4012b : this.f3618k;
                }
                PopupWindow popupWindow = this.f3615g;
                if (!this.f3629v && !this.f3628u) {
                    z = true;
                }
                popupWindow.setOutsideTouchable(z);
                PopupWindow popupWindow2 = this.f3615g;
                View m4033i = m4033i();
                int i4 = this.f3620m;
                int i5 = this.f3621n;
                if (i2 < 0) {
                    i2 = -1;
                }
                popupWindow2.update(m4033i, i4, i5, i2, i3 >= 0 ? i3 : -1);
                return;
            }
            return;
        }
        if (this.f3619l == -1) {
            i = -1;
        } else if (this.f3619l == -2) {
            i = m4033i().getWidth();
        } else {
            i = this.f3619l;
        }
        if (this.f3618k == -1) {
            m4012b = -1;
        } else if (this.f3618k != -2) {
            m4012b = this.f3618k;
        }
        this.f3615g.setWidth(i);
        this.f3615g.setHeight(m4012b);
        m4013c(true);
        this.f3615g.setOutsideTouchable((this.f3629v || this.f3628u) ? false : true);
        this.f3615g.setTouchInterceptor(this.f3604D);
        if (this.f3626s) {
            PopupWindowCompat.setOverlapAnchor(this.f3615g, this.f3625r);
        }
        if (f3600h != null) {
            try {
                f3600h.invoke(this.f3615g, this.f3609I);
            } catch (Exception e2) {
                Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
            }
        }
        PopupWindowCompat.showAsDropDown(this.f3615g, m4033i(), this.f3620m, this.f3621n, this.f3627t);
        this.f3611c.setSelection(-1);
        if (!this.f3610J || this.f3611c.isInTouchMode()) {
            m4038m();
        }
        if (!this.f3610J) {
            this.f3614f.post(this.f3606F);
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0555s
    /* renamed from: e */
    public void mo2821e() {
        this.f3615g.dismiss();
        m4011a();
        this.f3615g.setContentView(null);
        this.f3611c = null;
        this.f3614f.removeCallbacks(this.f3613e);
    }

    /* renamed from: a */
    public void m4020a(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.f3615g.setOnDismissListener(onDismissListener);
    }

    /* renamed from: a */
    private void m4011a() {
        if (this.f3630w != null) {
            ViewParent parent = this.f3630w.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f3630w);
            }
        }
    }

    /* renamed from: h */
    public void m4032h(int i) {
        this.f3615g.setInputMethodMode(i);
    }

    /* renamed from: i */
    public void m4034i(int i) {
        C0660ak c0660ak = this.f3611c;
        if (mo2822f() && c0660ak != null) {
            c0660ak.setListSelectionHidden(false);
            c0660ak.setSelection(i);
            if (c0660ak.getChoiceMode() != 0) {
                c0660ak.setItemChecked(i, true);
            }
        }
    }

    /* renamed from: m */
    public void m4038m() {
        C0660ak c0660ak = this.f3611c;
        if (c0660ak != null) {
            c0660ak.setListSelectionHidden(true);
            c0660ak.requestLayout();
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0555s
    /* renamed from: f */
    public boolean mo2822f() {
        return this.f3615g.isShowing();
    }

    /* renamed from: n */
    public boolean m4039n() {
        return this.f3615g.getInputMethodMode() == 2;
    }

    @Override // android.support.v7.view.menu.InterfaceC0555s
    @Nullable
    /* renamed from: g */
    public ListView mo2823g() {
        return this.f3611c;
    }

    @NonNull
    /* renamed from: a */
    C0660ak mo4014a(Context context, boolean z) {
        return new C0660ak(context, z);
    }

    /* renamed from: b */
    private int m4012b() {
        int i;
        int i2;
        int makeMeasureSpec;
        int i3;
        int i4;
        int i5;
        if (this.f3611c == null) {
            Context context = this.f3616i;
            this.f3607G = new Runnable() { // from class: android.support.v7.widget.ar.1
                AnonymousClass1() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    View m4033i = C0667ar.this.m4033i();
                    if (m4033i != null && m4033i.getWindowToken() != null) {
                        C0667ar.this.mo2820d();
                    }
                }
            };
            this.f3611c = mo4014a(context, !this.f3610J);
            if (this.f3601A != null) {
                this.f3611c.setSelector(this.f3601A);
            }
            this.f3611c.setAdapter(this.f3617j);
            this.f3611c.setOnItemClickListener(this.f3602B);
            this.f3611c.setFocusable(true);
            this.f3611c.setFocusableInTouchMode(true);
            this.f3611c.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: android.support.v7.widget.ar.2
                AnonymousClass2() {
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i6, long j) {
                    C0660ak c0660ak;
                    if (i6 != -1 && (c0660ak = C0667ar.this.f3611c) != null) {
                        c0660ak.setListSelectionHidden(false);
                    }
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.f3611c.setOnScrollListener(this.f3605E);
            if (this.f3603C != null) {
                this.f3611c.setOnItemSelectedListener(this.f3603C);
            }
            View view = this.f3611c;
            View view2 = this.f3630w;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                switch (this.f3631x) {
                    case 0:
                        linearLayout.addView(view2);
                        linearLayout.addView(view, layoutParams);
                        break;
                    case 1:
                        linearLayout.addView(view, layoutParams);
                        linearLayout.addView(view2);
                        break;
                    default:
                        Log.e("ListPopupWindow", "Invalid hint position " + this.f3631x);
                        break;
                }
                if (this.f3619l >= 0) {
                    i5 = this.f3619l;
                    i4 = Integer.MIN_VALUE;
                } else {
                    i4 = 0;
                    i5 = 0;
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(i5, i4), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                i3 = layoutParams2.bottomMargin + view2.getMeasuredHeight() + layoutParams2.topMargin;
                view = linearLayout;
            } else {
                i3 = 0;
            }
            this.f3615g.setContentView(view);
            i = i3;
        } else {
            View view3 = this.f3630w;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                i = layoutParams3.bottomMargin + view3.getMeasuredHeight() + layoutParams3.topMargin;
            } else {
                i = 0;
            }
        }
        Drawable background = this.f3615g.getBackground();
        if (background != null) {
            background.getPadding(this.f3608H);
            int i6 = this.f3608H.top + this.f3608H.bottom;
            if (this.f3623p) {
                i2 = i6;
            } else {
                this.f3621n = -this.f3608H.top;
                i2 = i6;
            }
        } else {
            this.f3608H.setEmpty();
            i2 = 0;
        }
        int m4010a = m4010a(m4033i(), this.f3621n, this.f3615g.getInputMethodMode() == 2);
        if (this.f3628u || this.f3618k == -1) {
            return m4010a + i2;
        }
        switch (this.f3619l) {
            case -2:
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f3616i.getResources().getDisplayMetrics().widthPixels - (this.f3608H.left + this.f3608H.right), Integer.MIN_VALUE);
                break;
            case -1:
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f3616i.getResources().getDisplayMetrics().widthPixels - (this.f3608H.left + this.f3608H.right), C1167C.ENCODING_PCM_32BIT);
                break;
            default:
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f3619l, C1167C.ENCODING_PCM_32BIT);
                break;
        }
        int mo3942a = this.f3611c.mo3942a(makeMeasureSpec, 0, -1, m4010a - i, -1);
        if (mo3942a > 0) {
            i += this.f3611c.getPaddingTop() + this.f3611c.getPaddingBottom() + i2;
        }
        return mo3942a + i;
    }

    /* renamed from: android.support.v7.widget.ar$1 */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View m4033i = C0667ar.this.m4033i();
            if (m4033i != null && m4033i.getWindowToken() != null) {
                C0667ar.this.mo2820d();
            }
        }
    }

    /* renamed from: android.support.v7.widget.ar$2 */
    class AnonymousClass2 implements AdapterView.OnItemSelectedListener {
        AnonymousClass2() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i6, long j) {
            C0660ak c0660ak;
            if (i6 != -1 && (c0660ak = C0667ar.this.f3611c) != null) {
                c0660ak.setListSelectionHidden(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: b */
    public void m4024b(boolean z) {
        this.f3626s = true;
        this.f3625r = z;
    }

    /* renamed from: android.support.v7.widget.ar$b */
    private class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (C0667ar.this.mo2822f()) {
                C0667ar.this.mo2820d();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            C0667ar.this.mo2821e();
        }
    }

    /* renamed from: android.support.v7.widget.ar$a */
    private class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0667ar.this.m4038m();
        }
    }

    /* renamed from: android.support.v7.widget.ar$e */
    private class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0667ar.this.f3611c != null && ViewCompat.isAttachedToWindow(C0667ar.this.f3611c) && C0667ar.this.f3611c.getCount() > C0667ar.this.f3611c.getChildCount() && C0667ar.this.f3611c.getChildCount() <= C0667ar.this.f3612d) {
                C0667ar.this.f3615g.setInputMethodMode(2);
                C0667ar.this.mo2820d();
            }
        }
    }

    /* renamed from: android.support.v7.widget.ar$d */
    private class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && C0667ar.this.f3615g != null && C0667ar.this.f3615g.isShowing() && x >= 0 && x < C0667ar.this.f3615g.getWidth() && y >= 0 && y < C0667ar.this.f3615g.getHeight()) {
                C0667ar.this.f3614f.postDelayed(C0667ar.this.f3613e, 250L);
                return false;
            }
            if (action == 1) {
                C0667ar.this.f3614f.removeCallbacks(C0667ar.this.f3613e);
                return false;
            }
            return false;
        }
    }

    /* renamed from: android.support.v7.widget.ar$c */
    private class c implements AbsListView.OnScrollListener {
        c() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1 && !C0667ar.this.m4039n() && C0667ar.this.f3615g.getContentView() != null) {
                C0667ar.this.f3614f.removeCallbacks(C0667ar.this.f3613e);
                C0667ar.this.f3613e.run();
            }
        }
    }

    /* renamed from: c */
    private void m4013c(boolean z) {
        if (f3598a != null) {
            try {
                f3598a.invoke(this.f3615g, Boolean.valueOf(z));
            } catch (Exception e2) {
                Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
        }
    }

    /* renamed from: a */
    private int m4010a(View view, int i, boolean z) {
        if (f3599b != null) {
            try {
                return ((Integer) f3599b.invoke(this.f3615g, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
            } catch (Exception e2) {
                Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
            }
        }
        return this.f3615g.getMaxAvailableHeight(view, i);
    }
}
