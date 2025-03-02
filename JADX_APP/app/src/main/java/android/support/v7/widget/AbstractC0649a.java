package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: android.support.v7.widget.a */
/* loaded from: classes.dex */
abstract class AbstractC0649a extends ViewGroup {

    /* renamed from: a */
    protected final a f3422a;

    /* renamed from: b */
    protected final Context f3423b;

    /* renamed from: c */
    protected ActionMenuView f3424c;

    /* renamed from: d */
    protected ActionMenuPresenter f3425d;

    /* renamed from: e */
    protected int f3426e;

    /* renamed from: f */
    protected ViewPropertyAnimatorCompat f3427f;

    /* renamed from: g */
    private boolean f3428g;

    /* renamed from: h */
    private boolean f3429h;

    AbstractC0649a(Context context) {
        this(context, null);
    }

    AbstractC0649a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    AbstractC0649a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3422a = new a();
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) && typedValue.resourceId != 0) {
            this.f3423b = new ContextThemeWrapper(context, typedValue.resourceId);
        } else {
            this.f3423b = context;
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        if (this.f3425d != null) {
            this.f3425d.m2991a(configuration);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f3428g = false;
        }
        if (!this.f3428g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f3428g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f3428g = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f3429h = false;
        }
        if (!this.f3429h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f3429h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f3429h = false;
        }
        return true;
    }

    public void setContentHeight(int i) {
        this.f3426e = i;
        requestLayout();
    }

    public int getContentHeight() {
        return this.f3426e;
    }

    public int getAnimatedVisibility() {
        return this.f3427f != null ? this.f3422a.f3430a : getVisibility();
    }

    /* renamed from: a */
    public ViewPropertyAnimatorCompat mo2956a(int i, long j) {
        if (this.f3427f != null) {
            this.f3427f.cancel();
        }
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            ViewPropertyAnimatorCompat alpha = ViewCompat.animate(this).alpha(1.0f);
            alpha.setDuration(j);
            alpha.setListener(this.f3422a.m3836a(alpha, i));
            return alpha;
        }
        ViewPropertyAnimatorCompat alpha2 = ViewCompat.animate(this).alpha(0.0f);
        alpha2.setDuration(j);
        alpha2.setListener(this.f3422a.m3836a(alpha2, i));
        return alpha2;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            if (this.f3427f != null) {
                this.f3427f.cancel();
            }
            super.setVisibility(i);
        }
    }

    /* renamed from: a */
    public boolean mo2958a() {
        if (this.f3425d != null) {
            return this.f3425d.m2997f();
        }
        return false;
    }

    /* renamed from: a */
    protected int m3834a(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    /* renamed from: a */
    protected static int m3831a(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    /* renamed from: a */
    protected int m3835a(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = ((i3 - measuredHeight) / 2) + i2;
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    /* renamed from: android.support.v7.widget.a$a */
    protected class a implements ViewPropertyAnimatorListener {

        /* renamed from: a */
        int f3430a;

        /* renamed from: c */
        private boolean f3432c = false;

        protected a() {
        }

        /* renamed from: a */
        public a m3836a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, int i) {
            AbstractC0649a.this.f3427f = viewPropertyAnimatorCompat;
            this.f3430a = i;
            return this;
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            AbstractC0649a.super.setVisibility(0);
            this.f3432c = false;
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            if (!this.f3432c) {
                AbstractC0649a.this.f3427f = null;
                AbstractC0649a.super.setVisibility(this.f3430a);
            }
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
            this.f3432c = true;
        }
    }
}
