package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.InterfaceC0551o;
import android.support.v7.widget.C0669at;
import android.support.v7.widget.InterfaceC0668as;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: android.support.v7.view.menu.e */
/* loaded from: classes.dex */
final class ViewOnKeyListenerC0541e extends AbstractC0549m implements InterfaceC0551o, View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: g */
    private static final int f2660g = R.layout.abc_cascading_menu_item_layout;

    /* renamed from: A */
    private PopupWindow.OnDismissListener f2661A;

    /* renamed from: a */
    final Handler f2662a;

    /* renamed from: d */
    View f2665d;

    /* renamed from: e */
    ViewTreeObserver f2666e;

    /* renamed from: f */
    boolean f2667f;

    /* renamed from: h */
    private final Context f2668h;

    /* renamed from: i */
    private final int f2669i;

    /* renamed from: j */
    private final int f2670j;

    /* renamed from: k */
    private final int f2671k;

    /* renamed from: l */
    private final boolean f2672l;

    /* renamed from: r */
    private View f2678r;

    /* renamed from: t */
    private boolean f2680t;

    /* renamed from: u */
    private boolean f2681u;

    /* renamed from: v */
    private int f2682v;

    /* renamed from: w */
    private int f2683w;

    /* renamed from: y */
    private boolean f2685y;

    /* renamed from: z */
    private InterfaceC0551o.a f2686z;

    /* renamed from: m */
    private final List<C0544h> f2673m = new ArrayList();

    /* renamed from: b */
    final List<a> f2663b = new ArrayList();

    /* renamed from: c */
    final ViewTreeObserver.OnGlobalLayoutListener f2664c = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.view.menu.e.1
        AnonymousClass1() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (ViewOnKeyListenerC0541e.this.mo2822f() && ViewOnKeyListenerC0541e.this.f2663b.size() > 0 && !ViewOnKeyListenerC0541e.this.f2663b.get(0).f2694a.m4026c()) {
                View view = ViewOnKeyListenerC0541e.this.f2665d;
                if (view == null || !view.isShown()) {
                    ViewOnKeyListenerC0541e.this.mo2821e();
                    return;
                }
                Iterator<a> it = ViewOnKeyListenerC0541e.this.f2663b.iterator();
                while (it.hasNext()) {
                    it.next().f2694a.mo2820d();
                }
            }
        }
    };

    /* renamed from: n */
    private final View.OnAttachStateChangeListener f2674n = new View.OnAttachStateChangeListener() { // from class: android.support.v7.view.menu.e.2
        AnonymousClass2() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (ViewOnKeyListenerC0541e.this.f2666e != null) {
                if (!ViewOnKeyListenerC0541e.this.f2666e.isAlive()) {
                    ViewOnKeyListenerC0541e.this.f2666e = view.getViewTreeObserver();
                }
                ViewOnKeyListenerC0541e.this.f2666e.removeGlobalOnLayoutListener(ViewOnKeyListenerC0541e.this.f2664c);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };

    /* renamed from: o */
    private final InterfaceC0668as f2675o = new InterfaceC0668as() { // from class: android.support.v7.view.menu.e.3
        AnonymousClass3() {
        }

        @Override // android.support.v7.widget.InterfaceC0668as
        /* renamed from: a */
        public void mo2825a(@NonNull C0544h c0544h, @NonNull MenuItem menuItem) {
            ViewOnKeyListenerC0541e.this.f2662a.removeCallbacksAndMessages(c0544h);
        }

        @Override // android.support.v7.widget.InterfaceC0668as
        /* renamed from: b */
        public void mo2826b(@NonNull C0544h c0544h, @NonNull MenuItem menuItem) {
            int i;
            ViewOnKeyListenerC0541e.this.f2662a.removeCallbacksAndMessages(null);
            int i2 = 0;
            int size = ViewOnKeyListenerC0541e.this.f2663b.size();
            while (true) {
                if (i2 >= size) {
                    i = -1;
                    break;
                } else {
                    if (c0544h == ViewOnKeyListenerC0541e.this.f2663b.get(i2).f2695b) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
            }
            if (i != -1) {
                int i3 = i + 1;
                ViewOnKeyListenerC0541e.this.f2662a.postAtTime(new Runnable() { // from class: android.support.v7.view.menu.e.3.1

                    /* renamed from: a */
                    final /* synthetic */ a f2690a;

                    /* renamed from: b */
                    final /* synthetic */ MenuItem f2691b;

                    /* renamed from: c */
                    final /* synthetic */ C0544h f2692c;

                    AnonymousClass1(a aVar, MenuItem menuItem2, C0544h c0544h2) {
                        aVar = aVar;
                        menuItem = menuItem2;
                        c0544h = c0544h2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        if (aVar != null) {
                            ViewOnKeyListenerC0541e.this.f2667f = true;
                            aVar.f2695b.m2870b(false);
                            ViewOnKeyListenerC0541e.this.f2667f = false;
                        }
                        if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                            c0544h.m2864a(menuItem, 4);
                        }
                    }
                }, c0544h2, SystemClock.uptimeMillis() + 200);
            }
        }

        /* renamed from: android.support.v7.view.menu.e$3$1 */
        class AnonymousClass1 implements Runnable {

            /* renamed from: a */
            final /* synthetic */ a f2690a;

            /* renamed from: b */
            final /* synthetic */ MenuItem f2691b;

            /* renamed from: c */
            final /* synthetic */ C0544h f2692c;

            AnonymousClass1(a aVar, MenuItem menuItem2, C0544h c0544h2) {
                aVar = aVar;
                menuItem = menuItem2;
                c0544h = c0544h2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (aVar != null) {
                    ViewOnKeyListenerC0541e.this.f2667f = true;
                    aVar.f2695b.m2870b(false);
                    ViewOnKeyListenerC0541e.this.f2667f = false;
                }
                if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                    c0544h.m2864a(menuItem, 4);
                }
            }
        }
    };

    /* renamed from: p */
    private int f2676p = 0;

    /* renamed from: q */
    private int f2677q = 0;

    /* renamed from: x */
    private boolean f2684x = false;

    /* renamed from: s */
    private int f2679s = m2811k();

    /* renamed from: android.support.v7.view.menu.e$1 */
    class AnonymousClass1 implements ViewTreeObserver.OnGlobalLayoutListener {
        AnonymousClass1() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (ViewOnKeyListenerC0541e.this.mo2822f() && ViewOnKeyListenerC0541e.this.f2663b.size() > 0 && !ViewOnKeyListenerC0541e.this.f2663b.get(0).f2694a.m4026c()) {
                View view = ViewOnKeyListenerC0541e.this.f2665d;
                if (view == null || !view.isShown()) {
                    ViewOnKeyListenerC0541e.this.mo2821e();
                    return;
                }
                Iterator<a> it = ViewOnKeyListenerC0541e.this.f2663b.iterator();
                while (it.hasNext()) {
                    it.next().f2694a.mo2820d();
                }
            }
        }
    }

    /* renamed from: android.support.v7.view.menu.e$2 */
    class AnonymousClass2 implements View.OnAttachStateChangeListener {
        AnonymousClass2() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (ViewOnKeyListenerC0541e.this.f2666e != null) {
                if (!ViewOnKeyListenerC0541e.this.f2666e.isAlive()) {
                    ViewOnKeyListenerC0541e.this.f2666e = view.getViewTreeObserver();
                }
                ViewOnKeyListenerC0541e.this.f2666e.removeGlobalOnLayoutListener(ViewOnKeyListenerC0541e.this.f2664c);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* renamed from: android.support.v7.view.menu.e$3 */
    class AnonymousClass3 implements InterfaceC0668as {
        AnonymousClass3() {
        }

        @Override // android.support.v7.widget.InterfaceC0668as
        /* renamed from: a */
        public void mo2825a(@NonNull C0544h c0544h, @NonNull MenuItem menuItem) {
            ViewOnKeyListenerC0541e.this.f2662a.removeCallbacksAndMessages(c0544h);
        }

        @Override // android.support.v7.widget.InterfaceC0668as
        /* renamed from: b */
        public void mo2826b(@NonNull C0544h c0544h2, @NonNull MenuItem menuItem2) {
            int i;
            ViewOnKeyListenerC0541e.this.f2662a.removeCallbacksAndMessages(null);
            int i2 = 0;
            int size = ViewOnKeyListenerC0541e.this.f2663b.size();
            while (true) {
                if (i2 >= size) {
                    i = -1;
                    break;
                } else {
                    if (c0544h2 == ViewOnKeyListenerC0541e.this.f2663b.get(i2).f2695b) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
            }
            if (i != -1) {
                int i3 = i + 1;
                ViewOnKeyListenerC0541e.this.f2662a.postAtTime(new Runnable() { // from class: android.support.v7.view.menu.e.3.1

                    /* renamed from: a */
                    final /* synthetic */ a f2690a;

                    /* renamed from: b */
                    final /* synthetic */ MenuItem f2691b;

                    /* renamed from: c */
                    final /* synthetic */ C0544h f2692c;

                    AnonymousClass1(a aVar, MenuItem menuItem22, C0544h c0544h22) {
                        aVar = aVar;
                        menuItem = menuItem22;
                        c0544h = c0544h22;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        if (aVar != null) {
                            ViewOnKeyListenerC0541e.this.f2667f = true;
                            aVar.f2695b.m2870b(false);
                            ViewOnKeyListenerC0541e.this.f2667f = false;
                        }
                        if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                            c0544h.m2864a(menuItem, 4);
                        }
                    }
                }, c0544h22, SystemClock.uptimeMillis() + 200);
            }
        }

        /* renamed from: android.support.v7.view.menu.e$3$1 */
        class AnonymousClass1 implements Runnable {

            /* renamed from: a */
            final /* synthetic */ a f2690a;

            /* renamed from: b */
            final /* synthetic */ MenuItem f2691b;

            /* renamed from: c */
            final /* synthetic */ C0544h f2692c;

            AnonymousClass1(a aVar, MenuItem menuItem22, C0544h c0544h22) {
                aVar = aVar;
                menuItem = menuItem22;
                c0544h = c0544h22;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (aVar != null) {
                    ViewOnKeyListenerC0541e.this.f2667f = true;
                    aVar.f2695b.m2870b(false);
                    ViewOnKeyListenerC0541e.this.f2667f = false;
                }
                if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                    c0544h.m2864a(menuItem, 4);
                }
            }
        }
    }

    public ViewOnKeyListenerC0541e(@NonNull Context context, @NonNull View view, @AttrRes int i, @StyleRes int i2, boolean z) {
        this.f2668h = context;
        this.f2678r = view;
        this.f2670j = i;
        this.f2671k = i2;
        this.f2672l = z;
        Resources resources = context.getResources();
        this.f2669i = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f2662a = new Handler();
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: b */
    public void mo2817b(boolean z) {
        this.f2684x = z;
    }

    /* renamed from: j */
    private C0669at m2810j() {
        C0669at c0669at = new C0669at(this.f2668h, null, this.f2670j, this.f2671k);
        c0669at.m4040a(this.f2675o);
        c0669at.m4018a((AdapterView.OnItemClickListener) this);
        c0669at.m4020a((PopupWindow.OnDismissListener) this);
        c0669at.m4023b(this.f2678r);
        c0669at.m4028e(this.f2677q);
        c0669at.m4021a(true);
        c0669at.m4032h(2);
        return c0669at;
    }

    @Override // android.support.v7.view.menu.InterfaceC0555s
    /* renamed from: d */
    public void mo2820d() {
        if (!mo2822f()) {
            Iterator<C0544h> it = this.f2673m.iterator();
            while (it.hasNext()) {
                m2807c(it.next());
            }
            this.f2673m.clear();
            this.f2665d = this.f2678r;
            if (this.f2665d != null) {
                boolean z = this.f2666e == null;
                this.f2666e = this.f2665d.getViewTreeObserver();
                if (z) {
                    this.f2666e.addOnGlobalLayoutListener(this.f2664c);
                }
                this.f2665d.addOnAttachStateChangeListener(this.f2674n);
            }
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0555s
    /* renamed from: e */
    public void mo2821e() {
        int size = this.f2663b.size();
        if (size > 0) {
            a[] aVarArr = (a[]) this.f2663b.toArray(new a[size]);
            for (int i = size - 1; i >= 0; i--) {
                a aVar = aVarArr[i];
                if (aVar.f2694a.mo2822f()) {
                    aVar.f2694a.mo2821e();
                }
            }
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        mo2821e();
        return true;
    }

    /* renamed from: k */
    private int m2811k() {
        return ViewCompat.getLayoutDirection(this.f2678r) == 1 ? 0 : 1;
    }

    /* renamed from: d */
    private int m2808d(int i) {
        ListView m2827a = this.f2663b.get(this.f2663b.size() - 1).m2827a();
        int[] iArr = new int[2];
        m2827a.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f2665d.getWindowVisibleDisplayFrame(rect);
        if (this.f2679s == 1) {
            return (m2827a.getWidth() + iArr[0]) + i > rect.right ? 0 : 1;
        }
        return iArr[0] - i < 0 ? 1 : 0;
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: a */
    public void mo2813a(C0544h c0544h) {
        c0544h.m2860a(this, this.f2668h);
        if (mo2822f()) {
            m2807c(c0544h);
        } else {
            this.f2673m.add(c0544h);
        }
    }

    /* renamed from: c */
    private void m2807c(@NonNull C0544h c0544h) {
        View view;
        a aVar;
        int i;
        int i2;
        int i3;
        LayoutInflater from = LayoutInflater.from(this.f2668h);
        C0543g c0543g = new C0543g(c0544h, from, this.f2672l, f2660g);
        if (!mo2822f() && this.f2684x) {
            c0543g.m2836a(true);
        } else if (mo2822f()) {
            c0543g.m2836a(AbstractC0549m.m2930b(c0544h));
        }
        int a2 = m2928a(c0543g, null, this.f2668h, this.f2669i);
        C0669at m2810j = m2810j();
        m2810j.mo4019a((ListAdapter) c0543g);
        m2810j.m4030g(a2);
        m2810j.m4028e(this.f2677q);
        if (this.f2663b.size() > 0) {
            a aVar2 = this.f2663b.get(this.f2663b.size() - 1);
            view = m2806a(aVar2, c0544h);
            aVar = aVar2;
        } else {
            view = null;
            aVar = null;
        }
        if (view != null) {
            m2810j.m4043c(false);
            m2810j.m4041a((Object) null);
            int m2808d = m2808d(a2);
            boolean z = m2808d == 1;
            this.f2679s = m2808d;
            if (Build.VERSION.SDK_INT >= 26) {
                m2810j.m4023b(view);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.f2678r.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.f2677q & 7) == 5) {
                    iArr[0] = iArr[0] + this.f2678r.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.f2677q & 5) == 5) {
                if (z) {
                    i3 = i + a2;
                } else {
                    i3 = i - view.getWidth();
                }
            } else if (z) {
                i3 = view.getWidth() + i;
            } else {
                i3 = i - a2;
            }
            m2810j.m4025c(i3);
            m2810j.m4024b(true);
            m2810j.m4027d(i2);
        } else {
            if (this.f2680t) {
                m2810j.m4025c(this.f2682v);
            }
            if (this.f2681u) {
                m2810j.m4027d(this.f2683w);
            }
            m2810j.m4016a(m2932i());
        }
        this.f2663b.add(new a(m2810j, c0544h, this.f2679s));
        m2810j.mo2820d();
        ListView g = m2810j.mo2823g();
        g.setOnKeyListener(this);
        if (aVar == null && this.f2685y && c0544h.m2891n() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) g, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(c0544h.m2891n());
            g.addHeaderView(frameLayout, null, false);
            m2810j.mo2820d();
        }
    }

    /* renamed from: a */
    private MenuItem m2805a(@NonNull C0544h c0544h, @NonNull C0544h c0544h2) {
        int size = c0544h.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = c0544h.getItem(i);
            if (item.hasSubMenu() && c0544h2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: a */
    private View m2806a(@NonNull a aVar, @NonNull C0544h c0544h) {
        C0543g c0543g;
        int i;
        int i2;
        int i3 = 0;
        MenuItem m2805a = m2805a(aVar.f2695b, c0544h);
        if (m2805a == null) {
            return null;
        }
        ListView m2827a = aVar.m2827a();
        ListAdapter adapter = m2827a.getAdapter();
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            c0543g = (C0543g) headerViewListAdapter.getWrappedAdapter();
        } else {
            c0543g = (C0543g) adapter;
            i = 0;
        }
        int count = c0543g.getCount();
        while (true) {
            if (i3 >= count) {
                i2 = -1;
                break;
            }
            if (m2805a == c0543g.getItem(i3)) {
                i2 = i3;
                break;
            }
            i3++;
        }
        if (i2 == -1) {
            return null;
        }
        int firstVisiblePosition = (i2 + i) - m2827a.getFirstVisiblePosition();
        if (firstVisiblePosition < 0 || firstVisiblePosition >= m2827a.getChildCount()) {
            return null;
        }
        return m2827a.getChildAt(firstVisiblePosition);
    }

    @Override // android.support.v7.view.menu.InterfaceC0555s
    /* renamed from: f */
    public boolean mo2822f() {
        return this.f2663b.size() > 0 && this.f2663b.get(0).f2694a.mo2822f();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        a aVar;
        int size = this.f2663b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            aVar = this.f2663b.get(i);
            if (!aVar.f2694a.mo2822f()) {
                break;
            } else {
                i++;
            }
        }
        if (aVar != null) {
            aVar.f2695b.m2870b(false);
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1543a(boolean z) {
        Iterator<a> it = this.f2663b.iterator();
        while (it.hasNext()) {
            m2929a(it.next().m2827a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1542a(InterfaceC0551o.a aVar) {
        this.f2686z = aVar;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1546a(SubMenuC0557u subMenuC0557u) {
        for (a aVar : this.f2663b) {
            if (subMenuC0557u == aVar.f2695b) {
                aVar.m2827a().requestFocus();
                return true;
            }
        }
        if (subMenuC0557u.hasVisibleItems()) {
            mo2813a((C0544h) subMenuC0557u);
            if (this.f2686z != null) {
                this.f2686z.mo2567a(subMenuC0557u);
            }
            return true;
        }
        return false;
    }

    /* renamed from: d */
    private int m2809d(@NonNull C0544h c0544h) {
        int size = this.f2663b.size();
        for (int i = 0; i < size; i++) {
            if (c0544h == this.f2663b.get(i).f2695b) {
                return i;
            }
        }
        return -1;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1541a(C0544h c0544h, boolean z) {
        int m2809d = m2809d(c0544h);
        if (m2809d >= 0) {
            int i = m2809d + 1;
            if (i < this.f2663b.size()) {
                this.f2663b.get(i).f2695b.m2870b(false);
            }
            a remove = this.f2663b.remove(m2809d);
            remove.f2695b.m2869b(this);
            if (this.f2667f) {
                remove.f2694a.m4042b((Object) null);
                remove.f2694a.m4022b(0);
            }
            remove.f2694a.mo2821e();
            int size = this.f2663b.size();
            if (size > 0) {
                this.f2679s = this.f2663b.get(size - 1).f2696c;
            } else {
                this.f2679s = m2811k();
            }
            if (size == 0) {
                mo2821e();
                if (this.f2686z != null) {
                    this.f2686z.mo2566a(c0544h, true);
                }
                if (this.f2666e != null) {
                    if (this.f2666e.isAlive()) {
                        this.f2666e.removeGlobalOnLayoutListener(this.f2664c);
                    }
                    this.f2666e = null;
                }
                this.f2665d.removeOnAttachStateChangeListener(this.f2674n);
                this.f2661A.onDismiss();
                return;
            }
            if (z) {
                this.f2663b.get(0).f2695b.m2870b(false);
            }
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1544a() {
        return false;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: c */
    public Parcelable mo1550c() {
        return null;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1540a(Parcelable parcelable) {
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: a */
    public void mo2812a(int i) {
        if (this.f2676p != i) {
            this.f2676p = i;
            this.f2677q = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this.f2678r));
        }
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: a */
    public void mo2814a(@NonNull View view) {
        if (this.f2678r != view) {
            this.f2678r = view;
            this.f2677q = GravityCompat.getAbsoluteGravity(this.f2676p, ViewCompat.getLayoutDirection(this.f2678r));
        }
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: a */
    public void mo2815a(PopupWindow.OnDismissListener onDismissListener) {
        this.f2661A = onDismissListener;
    }

    @Override // android.support.v7.view.menu.InterfaceC0555s
    /* renamed from: g */
    public ListView mo2823g() {
        if (this.f2663b.isEmpty()) {
            return null;
        }
        return this.f2663b.get(this.f2663b.size() - 1).m2827a();
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: b */
    public void mo2816b(int i) {
        this.f2680t = true;
        this.f2682v = i;
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: c */
    public void mo2818c(int i) {
        this.f2681u = true;
        this.f2683w = i;
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: c */
    public void mo2819c(boolean z) {
        this.f2685y = z;
    }

    @Override // android.support.v7.view.menu.AbstractC0549m
    /* renamed from: h */
    protected boolean mo2824h() {
        return false;
    }

    /* renamed from: android.support.v7.view.menu.e$a */
    private static class a {

        /* renamed from: a */
        public final C0669at f2694a;

        /* renamed from: b */
        public final C0544h f2695b;

        /* renamed from: c */
        public final int f2696c;

        public a(@NonNull C0669at c0669at, @NonNull C0544h c0544h, int i) {
            this.f2694a = c0669at;
            this.f2695b = c0544h;
            this.f2696c = i;
        }

        /* renamed from: a */
        public ListView m2827a() {
            return this.f2694a.mo2823g();
        }
    }
}
