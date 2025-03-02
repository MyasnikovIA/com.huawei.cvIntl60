package android.support.design.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.PointerIconCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.view.menu.C0546j;
import android.support.v7.view.menu.InterfaceC0552p;
import android.support.v7.widget.C0689bm;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.internal.a */
/* loaded from: classes.dex */
public class C0194a extends FrameLayout implements InterfaceC0552p.a {

    /* renamed from: a */
    private static final int[] f1222a = {R.attr.state_checked};

    /* renamed from: b */
    private final int f1223b;

    /* renamed from: c */
    private float f1224c;

    /* renamed from: d */
    private float f1225d;

    /* renamed from: e */
    private float f1226e;

    /* renamed from: f */
    private int f1227f;

    /* renamed from: g */
    private boolean f1228g;

    /* renamed from: h */
    private ImageView f1229h;

    /* renamed from: i */
    private final TextView f1230i;

    /* renamed from: j */
    private final TextView f1231j;

    /* renamed from: k */
    private int f1232k;

    /* renamed from: l */
    private C0546j f1233l;

    /* renamed from: m */
    private ColorStateList f1234m;

    public C0194a(@NonNull Context context) {
        this(context, null);
    }

    public C0194a(@NonNull Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C0194a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1232k = -1;
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(android.support.design.R.layout.design_bottom_navigation_item, (ViewGroup) this, true);
        setBackgroundResource(android.support.design.R.drawable.design_bottom_navigation_item_background);
        this.f1223b = resources.getDimensionPixelSize(android.support.design.R.dimen.design_bottom_navigation_margin);
        this.f1229h = (ImageView) findViewById(android.support.design.R.id.icon);
        this.f1230i = (TextView) findViewById(android.support.design.R.id.smallLabel);
        this.f1231j = (TextView) findViewById(android.support.design.R.id.largeLabel);
        ViewCompat.setImportantForAccessibility(this.f1230i, 2);
        ViewCompat.setImportantForAccessibility(this.f1231j, 2);
        setFocusable(true);
        m1563a(this.f1230i.getTextSize(), this.f1231j.getTextSize());
    }

    @Override // android.support.v7.view.menu.InterfaceC0552p.a
    /* renamed from: a */
    public void mo1556a(C0546j c0546j, int i) {
        this.f1233l = c0546j;
        setCheckable(c0546j.isCheckable());
        setChecked(c0546j.isChecked());
        setEnabled(c0546j.isEnabled());
        setIcon(c0546j.getIcon());
        setTitle(c0546j.getTitle());
        setId(c0546j.getItemId());
        if (!TextUtils.isEmpty(c0546j.getContentDescription())) {
            setContentDescription(c0546j.getContentDescription());
        }
        C0689bm.m4200a(this, c0546j.getTooltipText());
        setVisibility(c0546j.isVisible() ? 0 : 8);
    }

    public void setItemPosition(int i) {
        this.f1232k = i;
    }

    public int getItemPosition() {
        return this.f1232k;
    }

    public void setShifting(boolean z) {
        if (this.f1228g != z) {
            this.f1228g = z;
            if (this.f1233l != null) {
                setChecked(this.f1233l.isChecked());
            }
        }
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f1227f != i) {
            this.f1227f = i;
            if (this.f1233l != null) {
                setChecked(this.f1233l.isChecked());
            }
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0552p.a
    public C0546j getItemData() {
        return this.f1233l;
    }

    public void setTitle(CharSequence charSequence) {
        this.f1230i.setText(charSequence);
        this.f1231j.setText(charSequence);
        if (this.f1233l == null || TextUtils.isEmpty(this.f1233l.getContentDescription())) {
            setContentDescription(charSequence);
        }
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        this.f1231j.setPivotX(this.f1231j.getWidth() / 2);
        this.f1231j.setPivotY(this.f1231j.getBaseline());
        this.f1230i.setPivotX(this.f1230i.getWidth() / 2);
        this.f1230i.setPivotY(this.f1230i.getBaseline());
        switch (this.f1227f) {
            case -1:
                if (this.f1228g) {
                    if (z) {
                        m1565a(this.f1229h, this.f1223b, 49);
                        m1564a(this.f1231j, 1.0f, 1.0f, 0);
                    } else {
                        m1565a(this.f1229h, this.f1223b, 17);
                        m1564a(this.f1231j, 0.5f, 0.5f, 4);
                    }
                    this.f1230i.setVisibility(4);
                    break;
                } else if (z) {
                    m1565a(this.f1229h, (int) (this.f1223b + this.f1224c), 49);
                    m1564a(this.f1231j, 1.0f, 1.0f, 0);
                    m1564a(this.f1230i, this.f1225d, this.f1225d, 4);
                    break;
                } else {
                    m1565a(this.f1229h, this.f1223b, 49);
                    m1564a(this.f1231j, this.f1226e, this.f1226e, 4);
                    m1564a(this.f1230i, 1.0f, 1.0f, 0);
                    break;
                }
            case 0:
                if (z) {
                    m1565a(this.f1229h, this.f1223b, 49);
                    m1564a(this.f1231j, 1.0f, 1.0f, 0);
                } else {
                    m1565a(this.f1229h, this.f1223b, 17);
                    m1564a(this.f1231j, 0.5f, 0.5f, 4);
                }
                this.f1230i.setVisibility(4);
                break;
            case 1:
                if (z) {
                    m1565a(this.f1229h, (int) (this.f1223b + this.f1224c), 49);
                    m1564a(this.f1231j, 1.0f, 1.0f, 0);
                    m1564a(this.f1230i, this.f1225d, this.f1225d, 4);
                    break;
                } else {
                    m1565a(this.f1229h, this.f1223b, 49);
                    m1564a(this.f1231j, this.f1226e, this.f1226e, 4);
                    m1564a(this.f1230i, 1.0f, 1.0f, 0);
                    break;
                }
            case 2:
                m1565a(this.f1229h, this.f1223b, 17);
                this.f1231j.setVisibility(8);
                this.f1230i.setVisibility(8);
                break;
        }
        refreshDrawableState();
        setSelected(z);
    }

    /* renamed from: a */
    private void m1565a(@NonNull View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    private void m1564a(@NonNull View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f1230i.setEnabled(z);
        this.f1231j.setEnabled(z);
        this.f1229h.setEnabled(z);
        if (z) {
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), PointerIconCompat.TYPE_HAND));
        } else {
            ViewCompat.setPointerIcon(this, null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.f1233l != null && this.f1233l.isCheckable() && this.f1233l.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f1222a);
        }
        return onCreateDrawableState;
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = DrawableCompat.wrap(drawable).mutate();
            DrawableCompat.setTintList(drawable, this.f1234m);
        }
        this.f1229h.setImageDrawable(drawable);
    }

    @Override // android.support.v7.view.menu.InterfaceC0552p.a
    /* renamed from: a */
    public boolean mo1557a() {
        return false;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f1234m = colorStateList;
        if (this.f1233l != null) {
            setIcon(this.f1233l.getIcon());
        }
    }

    public void setIconSize(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f1229h.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.f1229h.setLayoutParams(layoutParams);
    }

    public void setTextAppearanceInactive(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.f1230i, i);
        m1563a(this.f1230i.getTextSize(), this.f1231j.getTextSize());
    }

    public void setTextAppearanceActive(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.f1231j, i);
        m1563a(this.f1230i.getTextSize(), this.f1231j.getTextSize());
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f1230i.setTextColor(colorStateList);
            this.f1231j.setTextColor(colorStateList);
        }
    }

    /* renamed from: a */
    private void m1563a(float f, float f2) {
        this.f1224c = f - f2;
        this.f1225d = (1.0f * f2) / f;
        this.f1226e = (1.0f * f) / f2;
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : ContextCompat.getDrawable(getContext(), i));
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        ViewCompat.setBackground(this, drawable);
    }
}
