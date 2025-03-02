package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.GravityCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.C0526a;
import android.support.v7.view.menu.AbstractC0538b;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.C0544h;
import android.support.v7.view.menu.C0546j;
import android.support.v7.view.menu.C0550n;
import android.support.v7.view.menu.InterfaceC0551o;
import android.support.v7.view.menu.InterfaceC0552p;
import android.support.v7.view.menu.InterfaceC0555s;
import android.support.v7.view.menu.SubMenuC0557u;
import android.support.v7.widget.ActionMenuView;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* loaded from: classes.dex */
class ActionMenuPresenter extends AbstractC0538b implements ActionProvider.SubUiVisibilityListener {

    /* renamed from: A */
    private C0567b f2879A;

    /* renamed from: g */
    C0569d f2880g;

    /* renamed from: h */
    C0570e f2881h;

    /* renamed from: i */
    C0566a f2882i;

    /* renamed from: j */
    RunnableC0568c f2883j;

    /* renamed from: k */
    final C0571f f2884k;

    /* renamed from: l */
    int f2885l;

    /* renamed from: m */
    private Drawable f2886m;

    /* renamed from: n */
    private boolean f2887n;

    /* renamed from: o */
    private boolean f2888o;

    /* renamed from: p */
    private boolean f2889p;

    /* renamed from: q */
    private int f2890q;

    /* renamed from: r */
    private int f2891r;

    /* renamed from: s */
    private int f2892s;

    /* renamed from: t */
    private boolean f2893t;

    /* renamed from: u */
    private boolean f2894u;

    /* renamed from: v */
    private boolean f2895v;

    /* renamed from: w */
    private boolean f2896w;

    /* renamed from: x */
    private int f2897x;

    /* renamed from: y */
    private final SparseBooleanArray f2898y;

    /* renamed from: z */
    private View f2899z;

    public ActionMenuPresenter(Context context) {
        super(context, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
        this.f2898y = new SparseBooleanArray();
        this.f2884k = new C0571f();
    }

    @Override // android.support.v7.view.menu.AbstractC0538b, android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1539a(@NonNull Context context, @Nullable C0544h c0544h) {
        super.mo1539a(context, c0544h);
        Resources resources = context.getResources();
        C0526a m2732a = C0526a.m2732a(context);
        if (!this.f2889p) {
            this.f2888o = m2732a.m2734b();
        }
        if (!this.f2895v) {
            this.f2890q = m2732a.m2735c();
        }
        if (!this.f2893t) {
            this.f2892s = m2732a.m2733a();
        }
        int i = this.f2890q;
        if (this.f2888o) {
            if (this.f2880g == null) {
                this.f2880g = new C0569d(this.f2646a);
                if (this.f2887n) {
                    this.f2880g.setImageDrawable(this.f2886m);
                    this.f2886m = null;
                    this.f2887n = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f2880g.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.f2880g.getMeasuredWidth();
        } else {
            this.f2880g = null;
        }
        this.f2891r = i;
        this.f2897x = (int) (56.0f * resources.getDisplayMetrics().density);
        this.f2899z = null;
    }

    /* renamed from: a */
    public void m2991a(Configuration configuration) {
        if (!this.f2893t) {
            this.f2892s = C0526a.m2732a(this.f2647b).m2733a();
        }
        if (this.f2648c != null) {
            this.f2648c.mo1602a(true);
        }
    }

    /* renamed from: b */
    public void m2994b(boolean z) {
        this.f2888o = z;
        this.f2889p = true;
    }

    /* renamed from: c */
    public void m2995c(boolean z) {
        this.f2896w = z;
    }

    /* renamed from: a */
    public void m2992a(Drawable drawable) {
        if (this.f2880g != null) {
            this.f2880g.setImageDrawable(drawable);
        } else {
            this.f2887n = true;
            this.f2886m = drawable;
        }
    }

    /* renamed from: e */
    public Drawable m2996e() {
        if (this.f2880g != null) {
            return this.f2880g.getDrawable();
        }
        if (this.f2887n) {
            return this.f2886m;
        }
        return null;
    }

    @Override // android.support.v7.view.menu.AbstractC0538b
    /* renamed from: a */
    public InterfaceC0552p mo2791a(ViewGroup viewGroup) {
        InterfaceC0552p interfaceC0552p = this.f2651f;
        InterfaceC0552p mo2791a = super.mo2791a(viewGroup);
        if (interfaceC0552p != mo2791a) {
            ((ActionMenuView) mo2791a).setPresenter(this);
        }
        return mo2791a;
    }

    @Override // android.support.v7.view.menu.AbstractC0538b
    /* renamed from: a */
    public View mo2792a(C0546j c0546j, View view, ViewGroup viewGroup) {
        View actionView = c0546j.getActionView();
        if (actionView == null || c0546j.m2924m()) {
            actionView = super.mo2792a(c0546j, view, viewGroup);
        }
        actionView.setVisibility(c0546j.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // android.support.v7.view.menu.AbstractC0538b
    /* renamed from: a */
    public void mo2794a(C0546j c0546j, InterfaceC0552p.a aVar) {
        aVar.mo1556a(c0546j, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f2651f);
        if (this.f2879A == null) {
            this.f2879A = new C0567b();
        }
        actionMenuItemView.setPopupCallback(this.f2879A);
    }

    @Override // android.support.v7.view.menu.AbstractC0538b
    /* renamed from: a */
    public boolean mo2796a(int i, C0546j c0546j) {
        return c0546j.m2920i();
    }

    @Override // android.support.v7.view.menu.AbstractC0538b, android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1543a(boolean z) {
        boolean z2 = false;
        super.mo1543a(z);
        ((View) this.f2651f).requestLayout();
        if (this.f2648c != null) {
            ArrayList<C0546j> m2889l = this.f2648c.m2889l();
            int size = m2889l.size();
            for (int i = 0; i < size; i++) {
                ActionProvider supportActionProvider = m2889l.get(i).getSupportActionProvider();
                if (supportActionProvider != null) {
                    supportActionProvider.setSubUiVisibilityListener(this);
                }
            }
        }
        ArrayList<C0546j> m2890m = this.f2648c != null ? this.f2648c.m2890m() : null;
        if (this.f2888o && m2890m != null) {
            int size2 = m2890m.size();
            if (size2 == 1) {
                z2 = !m2890m.get(0).isActionViewExpanded();
            } else {
                z2 = size2 > 0;
            }
        }
        if (z2) {
            if (this.f2880g == null) {
                this.f2880g = new C0569d(this.f2646a);
            }
            ViewGroup viewGroup = (ViewGroup) this.f2880g.getParent();
            if (viewGroup != this.f2651f) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f2880g);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f2651f;
                actionMenuView.addView(this.f2880g, actionMenuView.m3016c());
            }
        } else if (this.f2880g != null && this.f2880g.getParent() == this.f2651f) {
            ((ViewGroup) this.f2651f).removeView(this.f2880g);
        }
        ((ActionMenuView) this.f2651f).setOverflowReserved(this.f2888o);
    }

    @Override // android.support.v7.view.menu.AbstractC0538b
    /* renamed from: a */
    public boolean mo2797a(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.f2880g) {
            return false;
        }
        return super.mo2797a(viewGroup, i);
    }

    @Override // android.support.v7.view.menu.AbstractC0538b, android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1546a(SubMenuC0557u subMenuC0557u) {
        boolean z;
        if (!subMenuC0557u.hasVisibleItems()) {
            return false;
        }
        SubMenuC0557u subMenuC0557u2 = subMenuC0557u;
        while (subMenuC0557u2.m2951t() != this.f2648c) {
            subMenuC0557u2 = (SubMenuC0557u) subMenuC0557u2.m2951t();
        }
        View m2985a = m2985a(subMenuC0557u2.getItem());
        if (m2985a == null) {
            return false;
        }
        this.f2885l = subMenuC0557u.getItem().getItemId();
        int size = subMenuC0557u.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            }
            MenuItem item = subMenuC0557u.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        this.f2882i = new C0566a(this.f2647b, subMenuC0557u, m2985a);
        this.f2882i.m2940a(z);
        this.f2882i.m2935a();
        super.mo1546a(subMenuC0557u);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private View m2985a(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f2651f;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof InterfaceC0552p.a) && ((InterfaceC0552p.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: f */
    public boolean m2997f() {
        if (!this.f2888o || m3001j() || this.f2648c == null || this.f2651f == null || this.f2883j != null || this.f2648c.m2890m().isEmpty()) {
            return false;
        }
        this.f2883j = new RunnableC0568c(new C0570e(this.f2647b, this.f2648c, this.f2880g, true));
        ((View) this.f2651f).post(this.f2883j);
        super.mo1546a((SubMenuC0557u) null);
        return true;
    }

    /* renamed from: g */
    public boolean m2998g() {
        if (this.f2883j != null && this.f2651f != null) {
            ((View) this.f2651f).removeCallbacks(this.f2883j);
            this.f2883j = null;
            return true;
        }
        C0570e c0570e = this.f2881h;
        if (c0570e != null) {
            c0570e.m2944d();
            return true;
        }
        return false;
    }

    /* renamed from: h */
    public boolean m2999h() {
        return m2998g() | m3000i();
    }

    /* renamed from: i */
    public boolean m3000i() {
        if (this.f2882i == null) {
            return false;
        }
        this.f2882i.m2944d();
        return true;
    }

    /* renamed from: j */
    public boolean m3001j() {
        return this.f2881h != null && this.f2881h.m2946f();
    }

    /* renamed from: k */
    public boolean m3002k() {
        return this.f2883j != null || m3001j();
    }

    @Override // android.support.v7.view.menu.AbstractC0538b, android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1544a() {
        int i;
        ArrayList<C0546j> arrayList;
        int i2;
        int i3;
        int i4;
        boolean z;
        int i5;
        int i6;
        if (this.f2648c != null) {
            ArrayList<C0546j> m2887j = this.f2648c.m2887j();
            i = m2887j.size();
            arrayList = m2887j;
        } else {
            i = 0;
            arrayList = null;
        }
        int i7 = this.f2892s;
        int i8 = this.f2891r;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.f2651f;
        int i9 = 0;
        int i10 = 0;
        boolean z2 = false;
        int i11 = 0;
        while (i11 < i) {
            C0546j c0546j = arrayList.get(i11);
            if (c0546j.m2922k()) {
                i9++;
            } else if (c0546j.m2921j()) {
                i10++;
            } else {
                z2 = true;
            }
            i11++;
            i7 = (this.f2896w && c0546j.isActionViewExpanded()) ? 0 : i7;
        }
        if (this.f2888o && (z2 || i9 + i10 > i7)) {
            i7--;
        }
        int i12 = i7 - i9;
        SparseBooleanArray sparseBooleanArray = this.f2898y;
        sparseBooleanArray.clear();
        int i13 = 0;
        if (!this.f2894u) {
            i2 = 0;
        } else {
            i13 = i8 / this.f2897x;
            i2 = ((i8 % this.f2897x) / i13) + this.f2897x;
        }
        int i14 = 0;
        int i15 = i13;
        int i16 = 0;
        while (i14 < i) {
            C0546j c0546j2 = arrayList.get(i14);
            if (c0546j2.m2922k()) {
                View mo2792a = mo2792a(c0546j2, this.f2899z, viewGroup);
                if (this.f2899z == null) {
                    this.f2899z = mo2792a;
                }
                if (this.f2894u) {
                    i15 -= ActionMenuView.m3006a(mo2792a, i2, i15, makeMeasureSpec, 0);
                } else {
                    mo2792a.measure(makeMeasureSpec, makeMeasureSpec);
                }
                i4 = mo2792a.getMeasuredWidth();
                int i17 = i8 - i4;
                if (i16 != 0) {
                    i4 = i16;
                }
                int groupId = c0546j2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                c0546j2.m2914d(true);
                i3 = i15;
                i8 = i17;
            } else if (c0546j2.m2921j()) {
                int groupId2 = c0546j2.getGroupId();
                boolean z3 = sparseBooleanArray.get(groupId2);
                boolean z4 = (i12 > 0 || z3) && i8 > 0 && (!this.f2894u || i15 > 0);
                if (z4) {
                    View mo2792a2 = mo2792a(c0546j2, this.f2899z, viewGroup);
                    if (this.f2899z == null) {
                        this.f2899z = mo2792a2;
                    }
                    if (this.f2894u) {
                        int m3006a = ActionMenuView.m3006a(mo2792a2, i2, i15, makeMeasureSpec, 0);
                        i5 = i15 - m3006a;
                        z4 = m3006a == 0 ? false : z4;
                    } else {
                        mo2792a2.measure(makeMeasureSpec, makeMeasureSpec);
                        i5 = i15;
                    }
                    int measuredWidth = mo2792a2.getMeasuredWidth();
                    i8 -= measuredWidth;
                    if (i16 == 0) {
                        i16 = measuredWidth;
                    }
                    if (this.f2894u) {
                        z = z4 & (i8 >= 0);
                    } else {
                        z = z4 & (i8 + i16 > 0);
                    }
                } else {
                    z = z4;
                    i5 = i15;
                }
                if (z && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                    i6 = i12;
                } else if (z3) {
                    sparseBooleanArray.put(groupId2, false);
                    int i18 = i12;
                    for (int i19 = 0; i19 < i14; i19++) {
                        C0546j c0546j3 = arrayList.get(i19);
                        if (c0546j3.getGroupId() == groupId2) {
                            if (c0546j3.m2920i()) {
                                i18++;
                            }
                            c0546j3.m2914d(false);
                        }
                    }
                    i6 = i18;
                } else {
                    i6 = i12;
                }
                if (z) {
                    i6--;
                }
                c0546j2.m2914d(z);
                i3 = i5;
                i4 = i16;
                i12 = i6;
            } else {
                c0546j2.m2914d(false);
                i3 = i15;
                i4 = i16;
            }
            i14++;
            i15 = i3;
            i16 = i4;
        }
        return true;
    }

    @Override // android.support.v7.view.menu.AbstractC0538b, android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1541a(C0544h c0544h, boolean z) {
        m2999h();
        super.mo1541a(c0544h, z);
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: c */
    public Parcelable mo1550c() {
        SavedState savedState = new SavedState();
        savedState.f2900a = this.f2885l;
        return savedState;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1540a(Parcelable parcelable) {
        MenuItem findItem;
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            if (savedState.f2900a > 0 && (findItem = this.f2648c.findItem(savedState.f2900a)) != null) {
                mo1546a((SubMenuC0557u) findItem.getSubMenu());
            }
        }
    }

    @Override // android.support.v4.view.ActionProvider.SubUiVisibilityListener
    public void onSubUiVisibilityChanged(boolean z) {
        if (z) {
            super.mo1546a((SubMenuC0557u) null);
        } else if (this.f2648c != null) {
            this.f2648c.m2870b(false);
        }
    }

    /* renamed from: a */
    public void m2993a(ActionMenuView actionMenuView) {
        this.f2651f = actionMenuView;
        actionMenuView.mo1559a(this.f2648c);
    }

    private static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v7.widget.ActionMenuPresenter.SavedState.1
            C05651() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        public int f2900a;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f2900a = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2900a);
        }

        /* renamed from: android.support.v7.widget.ActionMenuPresenter$SavedState$1 */
        static class C05651 implements Parcelable.Creator<SavedState> {
            C05651() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuPresenter$d */
    private class C0569d extends AppCompatImageView implements ActionMenuView.InterfaceC0572a {

        /* renamed from: b */
        private final float[] f2906b;

        public C0569d(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            this.f2906b = new float[2];
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            C0689bm.m4200a(this, getContentDescription());
            setOnTouchListener(new AbstractViewOnAttachStateChangeListenerC0663an(this) { // from class: android.support.v7.widget.ActionMenuPresenter.d.1

                /* renamed from: a */
                final /* synthetic */ ActionMenuPresenter f2907a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(View this, ActionMenuPresenter actionMenuPresenter) {
                    super(this);
                    r3 = actionMenuPresenter;
                }

                @Override // android.support.v7.widget.AbstractViewOnAttachStateChangeListenerC0663an
                /* renamed from: a */
                public InterfaceC0555s mo2777a() {
                    if (ActionMenuPresenter.this.f2881h == null) {
                        return null;
                    }
                    return ActionMenuPresenter.this.f2881h.m2942b();
                }

                @Override // android.support.v7.widget.AbstractViewOnAttachStateChangeListenerC0663an
                /* renamed from: b */
                public boolean mo2778b() {
                    ActionMenuPresenter.this.m2997f();
                    return true;
                }

                @Override // android.support.v7.widget.AbstractViewOnAttachStateChangeListenerC0663an
                /* renamed from: c */
                public boolean mo3005c() {
                    if (ActionMenuPresenter.this.f2883j != null) {
                        return false;
                    }
                    ActionMenuPresenter.this.m2998g();
                    return true;
                }
            });
        }

        /* renamed from: android.support.v7.widget.ActionMenuPresenter$d$1 */
        class AnonymousClass1 extends AbstractViewOnAttachStateChangeListenerC0663an {

            /* renamed from: a */
            final /* synthetic */ ActionMenuPresenter f2907a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(View this, ActionMenuPresenter actionMenuPresenter) {
                super(this);
                r3 = actionMenuPresenter;
            }

            @Override // android.support.v7.widget.AbstractViewOnAttachStateChangeListenerC0663an
            /* renamed from: a */
            public InterfaceC0555s mo2777a() {
                if (ActionMenuPresenter.this.f2881h == null) {
                    return null;
                }
                return ActionMenuPresenter.this.f2881h.m2942b();
            }

            @Override // android.support.v7.widget.AbstractViewOnAttachStateChangeListenerC0663an
            /* renamed from: b */
            public boolean mo2778b() {
                ActionMenuPresenter.this.m2997f();
                return true;
            }

            @Override // android.support.v7.widget.AbstractViewOnAttachStateChangeListenerC0663an
            /* renamed from: c */
            public boolean mo3005c() {
                if (ActionMenuPresenter.this.f2883j != null) {
                    return false;
                }
                ActionMenuPresenter.this.m2998g();
                return true;
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            if (!super.performClick()) {
                playSoundEffect(0);
                ActionMenuPresenter.this.m2997f();
            }
            return true;
        }

        @Override // android.support.v7.widget.ActionMenuView.InterfaceC0572a
        /* renamed from: c */
        public boolean mo2775c() {
            return false;
        }

        @Override // android.support.v7.widget.ActionMenuView.InterfaceC0572a
        /* renamed from: d */
        public boolean mo2776d() {
            return false;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                DrawableCompat.setHotspotBounds(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuPresenter$e */
    private class C0570e extends C0550n {
        public C0570e(Context context, C0544h c0544h, View view, boolean z) {
            super(context, c0544h, view, z, R.attr.actionOverflowMenuStyle);
            m2936a(GravityCompat.END);
            m2937a(ActionMenuPresenter.this.f2884k);
        }

        @Override // android.support.v7.view.menu.C0550n
        /* renamed from: e */
        protected void mo2945e() {
            if (ActionMenuPresenter.this.f2648c != null) {
                ActionMenuPresenter.this.f2648c.close();
            }
            ActionMenuPresenter.this.f2881h = null;
            super.mo2945e();
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuPresenter$a */
    private class C0566a extends C0550n {
        public C0566a(Context context, SubMenuC0557u subMenuC0557u, View view) {
            super(context, subMenuC0557u, view, false, R.attr.actionOverflowMenuStyle);
            View view2;
            if (!((C0546j) subMenuC0557u.getItem()).m2920i()) {
                if (ActionMenuPresenter.this.f2880g == null) {
                    view2 = (View) ActionMenuPresenter.this.f2651f;
                } else {
                    view2 = ActionMenuPresenter.this.f2880g;
                }
                m2938a(view2);
            }
            m2937a(ActionMenuPresenter.this.f2884k);
        }

        @Override // android.support.v7.view.menu.C0550n
        /* renamed from: e */
        protected void mo2945e() {
            ActionMenuPresenter.this.f2882i = null;
            ActionMenuPresenter.this.f2885l = 0;
            super.mo2945e();
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuPresenter$f */
    private class C0571f implements InterfaceC0551o.a {
        C0571f() {
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o.a
        /* renamed from: a */
        public boolean mo2567a(C0544h c0544h) {
            if (c0544h == null) {
                return false;
            }
            ActionMenuPresenter.this.f2885l = ((SubMenuC0557u) c0544h).getItem().getItemId();
            InterfaceC0551o.a d = ActionMenuPresenter.this.m2799d();
            return d != null ? d.mo2567a(c0544h) : false;
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o.a
        /* renamed from: a */
        public void mo2566a(C0544h c0544h, boolean z) {
            if (c0544h instanceof SubMenuC0557u) {
                c0544h.mo2894q().m2870b(false);
            }
            InterfaceC0551o.a d = ActionMenuPresenter.this.m2799d();
            if (d != null) {
                d.mo2566a(c0544h, z);
            }
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuPresenter$c */
    private class RunnableC0568c implements Runnable {

        /* renamed from: b */
        private C0570e f2904b;

        public RunnableC0568c(C0570e c0570e) {
            this.f2904b = c0570e;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ActionMenuPresenter.this.f2648c != null) {
                ActionMenuPresenter.this.f2648c.m2884g();
            }
            View view = (View) ActionMenuPresenter.this.f2651f;
            if (view != null && view.getWindowToken() != null && this.f2904b.m2943c()) {
                ActionMenuPresenter.this.f2881h = this.f2904b;
            }
            ActionMenuPresenter.this.f2883j = null;
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuPresenter$b */
    private class C0567b extends ActionMenuItemView.AbstractC0536b {
        C0567b() {
        }

        @Override // android.support.v7.view.menu.ActionMenuItemView.AbstractC0536b
        /* renamed from: a */
        public InterfaceC0555s mo2779a() {
            if (ActionMenuPresenter.this.f2882i != null) {
                return ActionMenuPresenter.this.f2882i.m2942b();
            }
            return null;
        }
    }
}
