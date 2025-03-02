package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.InterfaceC0552p;
import android.support.v7.widget.C0687bk;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements InterfaceC0552p.a, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: a */
    private C0546j f2606a;

    /* renamed from: b */
    private ImageView f2607b;

    /* renamed from: c */
    private RadioButton f2608c;

    /* renamed from: d */
    private TextView f2609d;

    /* renamed from: e */
    private CheckBox f2610e;

    /* renamed from: f */
    private TextView f2611f;

    /* renamed from: g */
    private ImageView f2612g;

    /* renamed from: h */
    private ImageView f2613h;

    /* renamed from: i */
    private LinearLayout f2614i;

    /* renamed from: j */
    private Drawable f2615j;

    /* renamed from: k */
    private int f2616k;

    /* renamed from: l */
    private Context f2617l;

    /* renamed from: m */
    private boolean f2618m;

    /* renamed from: n */
    private Drawable f2619n;

    /* renamed from: o */
    private boolean f2620o;

    /* renamed from: p */
    private int f2621p;

    /* renamed from: q */
    private LayoutInflater f2622q;

    /* renamed from: r */
    private boolean f2623r;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        C0687bk m4167a = C0687bk.m4167a(getContext(), attributeSet, R.styleable.MenuView, i, 0);
        this.f2615j = m4167a.m4171a(R.styleable.MenuView_android_itemBackground);
        this.f2616k = m4167a.m4185g(R.styleable.MenuView_android_itemTextAppearance, -1);
        this.f2618m = m4167a.m4173a(R.styleable.MenuView_preserveIconSpacing, false);
        this.f2617l = context;
        this.f2619n = m4167a.m4171a(R.styleable.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.f2620o = obtainStyledAttributes.hasValue(0);
        m4167a.m4172a();
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ViewCompat.setBackground(this, this.f2615j);
        this.f2609d = (TextView) findViewById(R.id.title);
        if (this.f2616k != -1) {
            this.f2609d.setTextAppearance(this.f2617l, this.f2616k);
        }
        this.f2611f = (TextView) findViewById(R.id.shortcut);
        this.f2612g = (ImageView) findViewById(R.id.submenuarrow);
        if (this.f2612g != null) {
            this.f2612g.setImageDrawable(this.f2619n);
        }
        this.f2613h = (ImageView) findViewById(R.id.group_divider);
        this.f2614i = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.support.v7.view.menu.InterfaceC0552p.a
    /* renamed from: a */
    public void mo1556a(C0546j c0546j, int i) {
        this.f2606a = c0546j;
        this.f2621p = i;
        setVisibility(c0546j.isVisible() ? 0 : 8);
        setTitle(c0546j.m2903a((InterfaceC0552p.a) this));
        setCheckable(c0546j.isCheckable());
        m2786a(c0546j.m2916e(), c0546j.m2911c());
        setIcon(c0546j.getIcon());
        setEnabled(c0546j.isEnabled());
        setSubMenuArrowVisible(c0546j.hasSubMenu());
        setContentDescription(c0546j.getContentDescription());
    }

    /* renamed from: a */
    private void m2781a(View view) {
        m2782a(view, -1);
    }

    /* renamed from: a */
    private void m2782a(View view, int i) {
        if (this.f2614i != null) {
            this.f2614i.addView(view, i);
        } else {
            addView(view, i);
        }
    }

    public void setForceShowIcon(boolean z) {
        this.f2623r = z;
        this.f2618m = z;
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.f2609d.setText(charSequence);
            if (this.f2609d.getVisibility() != 0) {
                this.f2609d.setVisibility(0);
                return;
            }
            return;
        }
        if (this.f2609d.getVisibility() != 8) {
            this.f2609d.setVisibility(8);
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0552p.a
    public C0546j getItemData() {
        return this.f2606a;
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (z || this.f2608c != null || this.f2610e != null) {
            if (this.f2606a.m2917f()) {
                if (this.f2608c == null) {
                    m2784c();
                }
                compoundButton = this.f2608c;
                compoundButton2 = this.f2610e;
            } else {
                if (this.f2610e == null) {
                    m2785d();
                }
                compoundButton = this.f2610e;
                compoundButton2 = this.f2608c;
            }
            if (z) {
                compoundButton.setChecked(this.f2606a.isChecked());
                if (compoundButton.getVisibility() != 0) {
                    compoundButton.setVisibility(0);
                }
                if (compoundButton2 != null && compoundButton2.getVisibility() != 8) {
                    compoundButton2.setVisibility(8);
                    return;
                }
                return;
            }
            if (this.f2610e != null) {
                this.f2610e.setVisibility(8);
            }
            if (this.f2608c != null) {
                this.f2608c.setVisibility(8);
            }
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f2606a.m2917f()) {
            if (this.f2608c == null) {
                m2784c();
            }
            compoundButton = this.f2608c;
        } else {
            if (this.f2610e == null) {
                m2785d();
            }
            compoundButton = this.f2610e;
        }
        compoundButton.setChecked(z);
    }

    private void setSubMenuArrowVisible(boolean z) {
        if (this.f2612g != null) {
            this.f2612g.setVisibility(z ? 0 : 8);
        }
    }

    /* renamed from: a */
    public void m2786a(boolean z, char c) {
        int i = (z && this.f2606a.m2916e()) ? 0 : 8;
        if (i == 0) {
            this.f2611f.setText(this.f2606a.m2913d());
        }
        if (this.f2611f.getVisibility() != i) {
            this.f2611f.setVisibility(i);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f2606a.m2919h() || this.f2623r;
        if (z || this.f2618m) {
            if (this.f2607b != null || drawable != null || this.f2618m) {
                if (this.f2607b == null) {
                    m2783b();
                }
                if (drawable != null || this.f2618m) {
                    ImageView imageView = this.f2607b;
                    if (!z) {
                        drawable = null;
                    }
                    imageView.setImageDrawable(drawable);
                    if (this.f2607b.getVisibility() != 0) {
                        this.f2607b.setVisibility(0);
                        return;
                    }
                    return;
                }
                this.f2607b.setVisibility(8);
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f2607b != null && this.f2618m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f2607b.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }

    /* renamed from: b */
    private void m2783b() {
        this.f2607b = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
        m2782a(this.f2607b, 0);
    }

    /* renamed from: c */
    private void m2784c() {
        this.f2608c = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
        m2781a(this.f2608c);
    }

    /* renamed from: d */
    private void m2785d() {
        this.f2610e = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        m2781a(this.f2610e);
    }

    @Override // android.support.v7.view.menu.InterfaceC0552p.a
    /* renamed from: a */
    public boolean mo1557a() {
        return false;
    }

    private LayoutInflater getInflater() {
        if (this.f2622q == null) {
            this.f2622q = LayoutInflater.from(getContext());
        }
        return this.f2622q;
    }

    public void setGroupDividerEnabled(boolean z) {
        if (this.f2613h != null) {
            this.f2613h.setVisibility((this.f2620o || !z) ? 8 : 0);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        if (this.f2613h != null && this.f2613h.getVisibility() == 0) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f2613h.getLayoutParams();
            rect.top = layoutParams.bottomMargin + this.f2613h.getHeight() + layoutParams.topMargin + rect.top;
        }
    }
}
