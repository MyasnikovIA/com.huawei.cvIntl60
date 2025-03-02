package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.InterfaceC0551o;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.n */
/* loaded from: classes.dex */
public class C0550n {

    /* renamed from: a */
    private final Context f2787a;

    /* renamed from: b */
    private final C0544h f2788b;

    /* renamed from: c */
    private final boolean f2789c;

    /* renamed from: d */
    private final int f2790d;

    /* renamed from: e */
    private final int f2791e;

    /* renamed from: f */
    private View f2792f;

    /* renamed from: g */
    private int f2793g;

    /* renamed from: h */
    private boolean f2794h;

    /* renamed from: i */
    private InterfaceC0551o.a f2795i;

    /* renamed from: j */
    private AbstractC0549m f2796j;

    /* renamed from: k */
    private PopupWindow.OnDismissListener f2797k;

    /* renamed from: l */
    private final PopupWindow.OnDismissListener f2798l;

    public C0550n(@NonNull Context context, @NonNull C0544h c0544h, @NonNull View view, boolean z, @AttrRes int i) {
        this(context, c0544h, view, z, i, 0);
    }

    public C0550n(@NonNull Context context, @NonNull C0544h c0544h, @NonNull View view, boolean z, @AttrRes int i, @StyleRes int i2) {
        this.f2793g = GravityCompat.START;
        this.f2798l = new PopupWindow.OnDismissListener() { // from class: android.support.v7.view.menu.n.1
            AnonymousClass1() {
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                C0550n.this.mo2945e();
            }
        };
        this.f2787a = context;
        this.f2788b = c0544h;
        this.f2792f = view;
        this.f2789c = z;
        this.f2790d = i;
        this.f2791e = i2;
    }

    /* renamed from: a */
    public void m2939a(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.f2797k = onDismissListener;
    }

    /* renamed from: a */
    public void m2938a(@NonNull View view) {
        this.f2792f = view;
    }

    /* renamed from: a */
    public void m2940a(boolean z) {
        this.f2794h = z;
        if (this.f2796j != null) {
            this.f2796j.mo2817b(z);
        }
    }

    /* renamed from: a */
    public void m2936a(int i) {
        this.f2793g = i;
    }

    /* renamed from: a */
    public void m2935a() {
        if (!m2943c()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    @NonNull
    /* renamed from: b */
    public AbstractC0549m m2942b() {
        if (this.f2796j == null) {
            this.f2796j = m2934g();
        }
        return this.f2796j;
    }

    /* renamed from: c */
    public boolean m2943c() {
        if (m2946f()) {
            return true;
        }
        if (this.f2792f == null) {
            return false;
        }
        m2933a(0, 0, false, false);
        return true;
    }

    /* renamed from: a */
    public boolean m2941a(int i, int i2) {
        if (m2946f()) {
            return true;
        }
        if (this.f2792f == null) {
            return false;
        }
        m2933a(i, i2, true, true);
        return true;
    }

    @NonNull
    /* renamed from: g */
    private AbstractC0549m m2934g() {
        AbstractC0549m viewOnKeyListenerC0556t;
        Display defaultDisplay = ((WindowManager) this.f2787a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        if (Math.min(point.x, point.y) >= this.f2787a.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
            viewOnKeyListenerC0556t = new ViewOnKeyListenerC0541e(this.f2787a, this.f2792f, this.f2790d, this.f2791e, this.f2789c);
        } else {
            viewOnKeyListenerC0556t = new ViewOnKeyListenerC0556t(this.f2787a, this.f2788b, this.f2792f, this.f2790d, this.f2791e, this.f2789c);
        }
        viewOnKeyListenerC0556t.mo2813a(this.f2788b);
        viewOnKeyListenerC0556t.mo2815a(this.f2798l);
        viewOnKeyListenerC0556t.mo2814a(this.f2792f);
        viewOnKeyListenerC0556t.mo1542a(this.f2795i);
        viewOnKeyListenerC0556t.mo2817b(this.f2794h);
        viewOnKeyListenerC0556t.mo2812a(this.f2793g);
        return viewOnKeyListenerC0556t;
    }

    /* renamed from: a */
    private void m2933a(int i, int i2, boolean z, boolean z2) {
        AbstractC0549m m2942b = m2942b();
        m2942b.mo2819c(z2);
        if (z) {
            if ((GravityCompat.getAbsoluteGravity(this.f2793g, ViewCompat.getLayoutDirection(this.f2792f)) & 7) == 5) {
                i -= this.f2792f.getWidth();
            }
            m2942b.mo2816b(i);
            m2942b.mo2818c(i2);
            int i3 = (int) ((this.f2787a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            m2942b.m2931a(new Rect(i - i3, i2 - i3, i + i3, i3 + i2));
        }
        m2942b.mo2820d();
    }

    /* renamed from: d */
    public void m2944d() {
        if (m2946f()) {
            this.f2796j.mo2821e();
        }
    }

    /* renamed from: e */
    protected void mo2945e() {
        this.f2796j = null;
        if (this.f2797k != null) {
            this.f2797k.onDismiss();
        }
    }

    /* renamed from: f */
    public boolean m2946f() {
        return this.f2796j != null && this.f2796j.mo2822f();
    }

    /* renamed from: a */
    public void m2937a(@Nullable InterfaceC0551o.a aVar) {
        this.f2795i = aVar;
        if (this.f2796j != null) {
            this.f2796j.mo1542a(aVar);
        }
    }

    /* renamed from: android.support.v7.view.menu.n$1 */
    class AnonymousClass1 implements PopupWindow.OnDismissListener {
        AnonymousClass1() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            C0550n.this.mo2945e();
        }
    }
}
