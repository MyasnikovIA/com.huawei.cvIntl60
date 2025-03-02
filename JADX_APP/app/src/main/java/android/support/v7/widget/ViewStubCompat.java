package android.support.v7.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class ViewStubCompat extends View {

    /* renamed from: a */
    private int f3417a;

    /* renamed from: b */
    private int f3418b;

    /* renamed from: c */
    private WeakReference<View> f3419c;

    /* renamed from: d */
    private LayoutInflater f3420d;

    /* renamed from: e */
    private InterfaceC0648a f3421e;

    /* renamed from: android.support.v7.widget.ViewStubCompat$a */
    public interface InterfaceC0648a {
        /* renamed from: a */
        void m3830a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3417a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ViewStubCompat, i, 0);
        this.f3418b = obtainStyledAttributes.getResourceId(R.styleable.ViewStubCompat_android_inflatedId, -1);
        this.f3417a = obtainStyledAttributes.getResourceId(R.styleable.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(R.styleable.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    public int getInflatedId() {
        return this.f3418b;
    }

    public void setInflatedId(int i) {
        this.f3418b = i;
    }

    public int getLayoutResource() {
        return this.f3417a;
    }

    public void setLayoutResource(int i) {
        this.f3417a = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f3420d = layoutInflater;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f3420d;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (this.f3419c != null) {
            View view = this.f3419c.get();
            if (view != null) {
                view.setVisibility(i);
                return;
            }
            throw new IllegalStateException("setVisibility called on un-referenced view");
        }
        super.setVisibility(i);
        if (i == 0 || i == 4) {
            m3829a();
        }
    }

    /* renamed from: a */
    public View m3829a() {
        LayoutInflater from;
        ViewParent parent = getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            if (this.f3417a != 0) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if (this.f3420d != null) {
                    from = this.f3420d;
                } else {
                    from = LayoutInflater.from(getContext());
                }
                View inflate = from.inflate(this.f3417a, viewGroup, false);
                if (this.f3418b != -1) {
                    inflate.setId(this.f3418b);
                }
                int indexOfChild = viewGroup.indexOfChild(this);
                viewGroup.removeViewInLayout(this);
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                if (layoutParams != null) {
                    viewGroup.addView(inflate, indexOfChild, layoutParams);
                } else {
                    viewGroup.addView(inflate, indexOfChild);
                }
                this.f3419c = new WeakReference<>(inflate);
                if (this.f3421e != null) {
                    this.f3421e.m3830a(this, inflate);
                }
                return inflate;
            }
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
    }

    public void setOnInflateListener(InterfaceC0648a interfaceC0648a) {
        this.f3421e = interfaceC0648a;
    }
}
