package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.AbstractC0527b;
import android.support.v7.view.menu.C0544h;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer.C1167C;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ActionBarContextView extends AbstractC0649a {

    /* renamed from: g */
    private CharSequence f2835g;

    /* renamed from: h */
    private CharSequence f2836h;

    /* renamed from: i */
    private View f2837i;

    /* renamed from: j */
    private View f2838j;

    /* renamed from: k */
    private LinearLayout f2839k;

    /* renamed from: l */
    private TextView f2840l;

    /* renamed from: m */
    private TextView f2841m;

    /* renamed from: n */
    private int f2842n;

    /* renamed from: o */
    private int f2843o;

    /* renamed from: p */
    private boolean f2844p;

    /* renamed from: q */
    private int f2845q;

    @Override // android.support.v7.widget.AbstractC0649a
    /* renamed from: a */
    public /* bridge */ /* synthetic */ ViewPropertyAnimatorCompat mo2956a(int i, long j) {
        return super.mo2956a(i, j);
    }

    @Override // android.support.v7.widget.AbstractC0649a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // android.support.v7.widget.AbstractC0649a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    @Override // android.support.v7.widget.AbstractC0649a, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.support.v7.widget.AbstractC0649a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.support.v7.widget.AbstractC0649a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0687bk m4167a = C0687bk.m4167a(context, attributeSet, R.styleable.ActionMode, i, 0);
        ViewCompat.setBackground(this, m4167a.m4171a(R.styleable.ActionMode_background));
        this.f2842n = m4167a.m4185g(R.styleable.ActionMode_titleTextStyle, 0);
        this.f2843o = m4167a.m4185g(R.styleable.ActionMode_subtitleTextStyle, 0);
        this.f3426e = m4167a.m4183f(R.styleable.ActionMode_height, 0);
        this.f2845q = m4167a.m4185g(R.styleable.ActionMode_closeItemLayout, R.layout.abc_action_mode_close_item_material);
        m4167a.m4172a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f3425d != null) {
            this.f3425d.m2998g();
            this.f3425d.m3000i();
        }
    }

    @Override // android.support.v7.widget.AbstractC0649a
    public void setContentHeight(int i) {
        this.f3426e = i;
    }

    public void setCustomView(View view) {
        if (this.f2838j != null) {
            removeView(this.f2838j);
        }
        this.f2838j = view;
        if (view != null && this.f2839k != null) {
            removeView(this.f2839k);
            this.f2839k = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setTitle(CharSequence charSequence) {
        this.f2835g = charSequence;
        m2955e();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f2836h = charSequence;
        m2955e();
    }

    public CharSequence getTitle() {
        return this.f2835g;
    }

    public CharSequence getSubtitle() {
        return this.f2836h;
    }

    /* renamed from: e */
    private void m2955e() {
        if (this.f2839k == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            this.f2839k = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f2840l = (TextView) this.f2839k.findViewById(R.id.action_bar_title);
            this.f2841m = (TextView) this.f2839k.findViewById(R.id.action_bar_subtitle);
            if (this.f2842n != 0) {
                this.f2840l.setTextAppearance(getContext(), this.f2842n);
            }
            if (this.f2843o != 0) {
                this.f2841m.setTextAppearance(getContext(), this.f2843o);
            }
        }
        this.f2840l.setText(this.f2835g);
        this.f2841m.setText(this.f2836h);
        boolean z = !TextUtils.isEmpty(this.f2835g);
        boolean z2 = TextUtils.isEmpty(this.f2836h) ? false : true;
        this.f2841m.setVisibility(z2 ? 0 : 8);
        this.f2839k.setVisibility((z || z2) ? 0 : 8);
        if (this.f2839k.getParent() == null) {
            addView(this.f2839k);
        }
    }

    /* renamed from: a */
    public void m2957a(AbstractC0527b abstractC0527b) {
        if (this.f2837i == null) {
            this.f2837i = LayoutInflater.from(getContext()).inflate(this.f2845q, (ViewGroup) this, false);
            addView(this.f2837i);
        } else if (this.f2837i.getParent() == null) {
            addView(this.f2837i);
        }
        this.f2837i.findViewById(R.id.action_mode_close_button).setOnClickListener(new View.OnClickListener() { // from class: android.support.v7.widget.ActionBarContextView.1

            /* renamed from: a */
            final /* synthetic */ AbstractC0527b f2846a;

            ViewOnClickListenerC05591(AbstractC0527b abstractC0527b2) {
                abstractC0527b = abstractC0527b2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                abstractC0527b.mo2657c();
            }
        });
        C0544h c0544h = (C0544h) abstractC0527b2.mo2654b();
        if (this.f3425d != null) {
            this.f3425d.m2999h();
        }
        this.f3425d = new ActionMenuPresenter(getContext());
        this.f3425d.m2994b(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        c0544h.m2860a(this.f3425d, this.f3423b);
        this.f3424c = (ActionMenuView) this.f3425d.mo2791a(this);
        ViewCompat.setBackground(this.f3424c, null);
        addView(this.f3424c, layoutParams);
    }

    /* renamed from: android.support.v7.widget.ActionBarContextView$1 */
    class ViewOnClickListenerC05591 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ AbstractC0527b f2846a;

        ViewOnClickListenerC05591(AbstractC0527b abstractC0527b2) {
            abstractC0527b = abstractC0527b2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            abstractC0527b.mo2657c();
        }
    }

    /* renamed from: b */
    public void m2959b() {
        if (this.f2837i == null) {
            m2960c();
        }
    }

    /* renamed from: c */
    public void m2960c() {
        removeAllViews();
        this.f2838j = null;
        this.f3424c = null;
    }

    @Override // android.support.v7.widget.AbstractC0649a
    /* renamed from: a */
    public boolean mo2958a() {
        if (this.f3425d != null) {
            return this.f3425d.m2997f();
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = C1167C.ENCODING_PCM_32BIT;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.f3426e > 0 ? this.f3426e : View.MeasureSpec.getSize(i2);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int i4 = size2 - paddingTop;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
        if (this.f2837i != null) {
            int a2 = m3834a(this.f2837i, paddingLeft, makeMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f2837i.getLayoutParams();
            paddingLeft = a2 - (marginLayoutParams.rightMargin + marginLayoutParams.leftMargin);
        }
        if (this.f3424c != null && this.f3424c.getParent() == this) {
            paddingLeft = m3834a(this.f3424c, paddingLeft, makeMeasureSpec, 0);
        }
        if (this.f2839k != null && this.f2838j == null) {
            if (this.f2844p) {
                this.f2839k.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                int measuredWidth = this.f2839k.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.f2839k.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = m3834a(this.f2839k, paddingLeft, makeMeasureSpec, 0);
            }
        }
        if (this.f2838j != null) {
            ViewGroup.LayoutParams layoutParams = this.f2838j.getLayoutParams();
            int i5 = layoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (layoutParams.width >= 0) {
                paddingLeft = Math.min(layoutParams.width, paddingLeft);
            }
            if (layoutParams.height == -2) {
                i3 = Integer.MIN_VALUE;
            }
            this.f2838j.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i5), View.MeasureSpec.makeMeasureSpec(layoutParams.height >= 0 ? Math.min(layoutParams.height, i4) : i4, i3));
        }
        if (this.f3426e <= 0) {
            int childCount = getChildCount();
            int i6 = 0;
            int i7 = 0;
            while (i6 < childCount) {
                int measuredHeight = getChildAt(i6).getMeasuredHeight() + paddingTop;
                if (measuredHeight <= i7) {
                    measuredHeight = i7;
                }
                i6++;
                i7 = measuredHeight;
            }
            setMeasuredDimension(size, i7);
            return;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        boolean m4245a = C0695bs.m4245a(this);
        int paddingRight = m4245a ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        if (this.f2837i == null || this.f2837i.getVisibility() == 8) {
            i5 = paddingRight;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f2837i.getLayoutParams();
            int i6 = m4245a ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i7 = m4245a ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int a2 = m3831a(paddingRight, i6, m4245a);
            i5 = m3831a(m3835a(this.f2837i, a2, paddingTop, paddingTop2, m4245a) + a2, i7, m4245a);
        }
        if (this.f2839k != null && this.f2838j == null && this.f2839k.getVisibility() != 8) {
            i5 += m3835a(this.f2839k, i5, paddingTop, paddingTop2, m4245a);
        }
        if (this.f2838j != null) {
            int a3 = m3835a(this.f2838j, i5, paddingTop, paddingTop2, m4245a) + i5;
        }
        int paddingLeft = m4245a ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        if (this.f3424c != null) {
            int a4 = m3835a(this.f3424c, paddingLeft, paddingTop, paddingTop2, !m4245a) + paddingLeft;
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.setSource(this);
            accessibilityEvent.setClassName(getClass().getName());
            accessibilityEvent.setPackageName(getContext().getPackageName());
            accessibilityEvent.setContentDescription(this.f2835g);
            return;
        }
        super.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f2844p) {
            requestLayout();
        }
        this.f2844p = z;
    }

    /* renamed from: d */
    public boolean m2961d() {
        return this.f2844p;
    }
}
