package android.support.design.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.view.menu.C0546j;
import android.support.v7.view.menu.InterfaceC0552p;
import android.support.v7.widget.C0666aq;
import android.support.v7.widget.C0689bm;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class NavigationMenuItemView extends C0196c implements InterfaceC0552p.a {

    /* renamed from: d */
    private static final int[] f1210d = {R.attr.state_checked};

    /* renamed from: c */
    boolean f1211c;

    /* renamed from: e */
    private final int f1212e;

    /* renamed from: f */
    private boolean f1213f;

    /* renamed from: g */
    private final CheckedTextView f1214g;

    /* renamed from: h */
    private FrameLayout f1215h;

    /* renamed from: i */
    private C0546j f1216i;

    /* renamed from: j */
    private ColorStateList f1217j;

    /* renamed from: k */
    private boolean f1218k;

    /* renamed from: l */
    private Drawable f1219l;

    /* renamed from: m */
    private final AccessibilityDelegateCompat f1220m;

    /* renamed from: android.support.design.internal.NavigationMenuItemView$1 */
    class C01921 extends AccessibilityDelegateCompat {
        C01921() {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCheckable(NavigationMenuItemView.this.f1211c);
        }
    }

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1220m = new AccessibilityDelegateCompat() { // from class: android.support.design.internal.NavigationMenuItemView.1
            C01921() {
            }

            @Override // android.support.v4.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCheckable(NavigationMenuItemView.this.f1211c);
            }
        };
        setOrientation(0);
        LayoutInflater.from(context).inflate(android.support.design.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        this.f1212e = context.getResources().getDimensionPixelSize(android.support.design.R.dimen.design_navigation_icon_size);
        this.f1214g = (CheckedTextView) findViewById(android.support.design.R.id.design_menu_item_text);
        this.f1214g.setDuplicateParentStateEnabled(true);
        ViewCompat.setAccessibilityDelegate(this.f1214g, this.f1220m);
    }

    @Override // android.support.v7.view.menu.InterfaceC0552p.a
    /* renamed from: a */
    public void mo1556a(C0546j c0546j, int i) {
        this.f1216i = c0546j;
        setVisibility(c0546j.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ViewCompat.setBackground(this, m1555e());
        }
        setCheckable(c0546j.isCheckable());
        setChecked(c0546j.isChecked());
        setEnabled(c0546j.isEnabled());
        setTitle(c0546j.getTitle());
        setIcon(c0546j.getIcon());
        setActionView(c0546j.getActionView());
        setContentDescription(c0546j.getContentDescription());
        C0689bm.m4200a(this, c0546j.getTooltipText());
        m1554d();
    }

    /* renamed from: c */
    private boolean m1553c() {
        return this.f1216i.getTitle() == null && this.f1216i.getIcon() == null && this.f1216i.getActionView() != null;
    }

    /* renamed from: d */
    private void m1554d() {
        if (m1553c()) {
            this.f1214g.setVisibility(8);
            if (this.f1215h != null) {
                C0666aq.a aVar = (C0666aq.a) this.f1215h.getLayoutParams();
                aVar.width = -1;
                this.f1215h.setLayoutParams(aVar);
                return;
            }
            return;
        }
        this.f1214g.setVisibility(0);
        if (this.f1215h != null) {
            C0666aq.a aVar2 = (C0666aq.a) this.f1215h.getLayoutParams();
            aVar2.width = -2;
            this.f1215h.setLayoutParams(aVar2);
        }
    }

    /* renamed from: b */
    public void m1558b() {
        if (this.f1215h != null) {
            this.f1215h.removeAllViews();
        }
        this.f1214g.setCompoundDrawables(null, null, null, null);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f1215h == null) {
                this.f1215h = (FrameLayout) ((ViewStub) findViewById(android.support.design.R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.f1215h.removeAllViews();
            this.f1215h.addView(view);
        }
    }

    /* renamed from: e */
    private StateListDrawable m1555e() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f1210d, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    @Override // android.support.v7.view.menu.InterfaceC0552p.a
    public C0546j getItemData() {
        return this.f1216i;
    }

    public void setTitle(CharSequence charSequence) {
        this.f1214g.setText(charSequence);
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f1211c != z) {
            this.f1211c = z;
            this.f1220m.sendAccessibilityEvent(this.f1214g, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.f1214g.setChecked(z);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.f1218k) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = DrawableCompat.wrap(drawable).mutate();
                DrawableCompat.setTintList(drawable, this.f1217j);
            }
            drawable.setBounds(0, 0, this.f1212e, this.f1212e);
        } else if (this.f1213f) {
            if (this.f1219l == null) {
                this.f1219l = ResourcesCompat.getDrawable(getResources(), android.support.design.R.drawable.navigation_empty_icon, getContext().getTheme());
                if (this.f1219l != null) {
                    this.f1219l.setBounds(0, 0, this.f1212e, this.f1212e);
                }
            }
            drawable = this.f1219l;
        }
        TextViewCompat.setCompoundDrawablesRelative(this.f1214g, drawable, null, null, null);
    }

    @Override // android.support.v7.view.menu.InterfaceC0552p.a
    /* renamed from: a */
    public boolean mo1557a() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.f1216i != null && this.f1216i.isCheckable() && this.f1216i.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f1210d);
        }
        return onCreateDrawableState;
    }

    void setIconTintList(ColorStateList colorStateList) {
        this.f1217j = colorStateList;
        this.f1218k = this.f1217j != null;
        if (this.f1216i != null) {
            setIcon(this.f1216i.getIcon());
        }
    }

    public void setTextAppearance(int i) {
        TextViewCompat.setTextAppearance(this.f1214g, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f1214g.setTextColor(colorStateList);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f1213f = z;
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIconPadding(int i) {
        this.f1214g.setCompoundDrawablePadding(i);
    }
}
