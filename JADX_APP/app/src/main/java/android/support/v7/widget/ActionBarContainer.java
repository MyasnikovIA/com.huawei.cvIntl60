package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a */
    Drawable f2825a;

    /* renamed from: b */
    Drawable f2826b;

    /* renamed from: c */
    Drawable f2827c;

    /* renamed from: d */
    boolean f2828d;

    /* renamed from: e */
    boolean f2829e;

    /* renamed from: f */
    private boolean f2830f;

    /* renamed from: g */
    private View f2831g;

    /* renamed from: h */
    private View f2832h;

    /* renamed from: i */
    private View f2833i;

    /* renamed from: j */
    private int f2834j;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        boolean z = true;
        ViewCompat.setBackground(this, new C0676b(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBar);
        this.f2825a = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_background);
        this.f2826b = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_backgroundStacked);
        this.f2834j = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBar_height, -1);
        if (getId() == R.id.split_action_bar) {
            this.f2828d = true;
            this.f2827c = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (this.f2828d) {
            if (this.f2827c != null) {
                z = false;
            }
        } else if (this.f2825a != null || this.f2826b != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f2832h = findViewById(R.id.action_bar);
        this.f2833i = findViewById(R.id.action_context_bar);
    }

    public void setPrimaryBackground(Drawable drawable) {
        boolean z = true;
        if (this.f2825a != null) {
            this.f2825a.setCallback(null);
            unscheduleDrawable(this.f2825a);
        }
        this.f2825a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f2832h != null) {
                this.f2825a.setBounds(this.f2832h.getLeft(), this.f2832h.getTop(), this.f2832h.getRight(), this.f2832h.getBottom());
            }
        }
        if (this.f2828d) {
            if (this.f2827c != null) {
                z = false;
            }
        } else if (this.f2825a != null || this.f2826b != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setStackedBackground(Drawable drawable) {
        boolean z = true;
        if (this.f2826b != null) {
            this.f2826b.setCallback(null);
            unscheduleDrawable(this.f2826b);
        }
        this.f2826b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f2829e && this.f2826b != null) {
                this.f2826b.setBounds(this.f2831g.getLeft(), this.f2831g.getTop(), this.f2831g.getRight(), this.f2831g.getBottom());
            }
        }
        if (this.f2828d) {
            if (this.f2827c != null) {
                z = false;
            }
        } else if (this.f2825a != null || this.f2826b != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setSplitBackground(Drawable drawable) {
        boolean z = true;
        if (this.f2827c != null) {
            this.f2827c.setCallback(null);
            unscheduleDrawable(this.f2827c);
        }
        this.f2827c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f2828d && this.f2827c != null) {
                this.f2827c.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (this.f2828d) {
            if (this.f2827c != null) {
                z = false;
            }
        } else if (this.f2825a != null || this.f2826b != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        if (this.f2825a != null) {
            this.f2825a.setVisible(z, false);
        }
        if (this.f2826b != null) {
            this.f2826b.setVisible(z, false);
        }
        if (this.f2827c != null) {
            this.f2827c.setVisible(z, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f2825a && !this.f2828d) || (drawable == this.f2826b && this.f2829e) || ((drawable == this.f2827c && this.f2828d) || super.verifyDrawable(drawable));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f2825a != null && this.f2825a.isStateful()) {
            this.f2825a.setState(getDrawableState());
        }
        if (this.f2826b != null && this.f2826b.isStateful()) {
            this.f2826b.setState(getDrawableState());
        }
        if (this.f2827c != null && this.f2827c.isStateful()) {
            this.f2827c.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.f2825a != null) {
            this.f2825a.jumpToCurrentState();
        }
        if (this.f2826b != null) {
            this.f2826b.jumpToCurrentState();
        }
        if (this.f2827c != null) {
            this.f2827c.jumpToCurrentState();
        }
    }

    public void setTransitioning(boolean z) {
        this.f2830f = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f2830f || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    public void setTabContainer(C0679bc c0679bc) {
        if (this.f2831g != null) {
            removeView(this.f2831g);
        }
        this.f2831g = c0679bc;
        if (c0679bc != null) {
            addView(c0679bc);
            ViewGroup.LayoutParams layoutParams = c0679bc.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            c0679bc.setAllowCollapse(false);
        }
    }

    public View getTabContainer() {
        return this.f2831g;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if (i != 0) {
            return super.startActionModeForChild(view, callback, i);
        }
        return null;
    }

    /* renamed from: a */
    private boolean m2953a(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    /* renamed from: b */
    private int m2954b(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return layoutParams.bottomMargin + view.getMeasuredHeight() + layoutParams.topMargin;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (this.f2832h == null && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && this.f2834j >= 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(this.f2834j, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
        if (this.f2832h != null) {
            int mode = View.MeasureSpec.getMode(i2);
            if (this.f2831g != null && this.f2831g.getVisibility() != 8 && mode != 1073741824) {
                if (!m2953a(this.f2832h)) {
                    i3 = m2954b(this.f2832h);
                } else if (!m2953a(this.f2833i)) {
                    i3 = m2954b(this.f2833i);
                } else {
                    i3 = 0;
                }
                setMeasuredDimension(getMeasuredWidth(), Math.min(i3 + m2954b(this.f2831g), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i2) : Integer.MAX_VALUE));
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        boolean z3 = true;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f2831g;
        boolean z4 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            view.layout(i, (measuredHeight - view.getMeasuredHeight()) - layoutParams.bottomMargin, i3, measuredHeight - layoutParams.bottomMargin);
        }
        if (this.f2828d) {
            if (this.f2827c != null) {
                this.f2827c.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z3 = false;
            }
        } else {
            if (this.f2825a != null) {
                if (this.f2832h.getVisibility() == 0) {
                    this.f2825a.setBounds(this.f2832h.getLeft(), this.f2832h.getTop(), this.f2832h.getRight(), this.f2832h.getBottom());
                } else if (this.f2833i != null && this.f2833i.getVisibility() == 0) {
                    this.f2825a.setBounds(this.f2833i.getLeft(), this.f2833i.getTop(), this.f2833i.getRight(), this.f2833i.getBottom());
                } else {
                    this.f2825a.setBounds(0, 0, 0, 0);
                }
                z2 = true;
            } else {
                z2 = false;
            }
            this.f2829e = z4;
            if (!z4 || this.f2826b == null) {
                z3 = z2;
            } else {
                this.f2826b.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
        }
        if (z3) {
            invalidate();
        }
    }
}
