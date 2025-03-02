package android.support.v7.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.exoplayer.C1167C;

/* loaded from: classes.dex */
public class CardView extends FrameLayout {

    /* renamed from: e */
    private static final int[] f2959e = {R.attr.colorBackground};

    /* renamed from: f */
    private static final InterfaceC0654ae f2960f;

    /* renamed from: a */
    int f2961a;

    /* renamed from: b */
    int f2962b;

    /* renamed from: c */
    final Rect f2963c;

    /* renamed from: d */
    final Rect f2964d;

    /* renamed from: g */
    private boolean f2965g;

    /* renamed from: h */
    private boolean f2966h;

    /* renamed from: i */
    private final InterfaceC0653ad f2967i;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f2960f = new C0651ab();
        } else if (Build.VERSION.SDK_INT >= 17) {
            f2960f = new C0650aa();
        } else {
            f2960f = new C0652ac();
        }
        f2960f.mo3837a();
    }

    public CardView(@NonNull Context context) {
        this(context, null);
    }

    public CardView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, android.support.v7.cardview.R.attr.cardViewStyle);
    }

    public CardView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int color;
        ColorStateList valueOf;
        this.f2963c = new Rect();
        this.f2964d = new Rect();
        this.f2967i = new InterfaceC0653ad() { // from class: android.support.v7.widget.CardView.1

            /* renamed from: b */
            private Drawable f2969b;

            C05791() {
            }

            @Override // android.support.v7.widget.InterfaceC0653ad
            /* renamed from: a */
            public void mo3050a(Drawable drawable) {
                this.f2969b = drawable;
                CardView.this.setBackgroundDrawable(drawable);
            }

            @Override // android.support.v7.widget.InterfaceC0653ad
            /* renamed from: a */
            public boolean mo3051a() {
                return CardView.this.getUseCompatPadding();
            }

            @Override // android.support.v7.widget.InterfaceC0653ad
            /* renamed from: b */
            public boolean mo3052b() {
                return CardView.this.getPreventCornerOverlap();
            }

            @Override // android.support.v7.widget.InterfaceC0653ad
            /* renamed from: a */
            public void mo3049a(int i2, int i3, int i4, int i5) {
                CardView.this.f2964d.set(i2, i3, i4, i5);
                CardView.super.setPadding(CardView.this.f2963c.left + i2, CardView.this.f2963c.top + i3, CardView.this.f2963c.right + i4, CardView.this.f2963c.bottom + i5);
            }

            @Override // android.support.v7.widget.InterfaceC0653ad
            /* renamed from: a */
            public void mo3048a(int i2, int i3) {
                if (i2 > CardView.this.f2961a) {
                    CardView.super.setMinimumWidth(i2);
                }
                if (i3 > CardView.this.f2962b) {
                    CardView.super.setMinimumHeight(i3);
                }
            }

            @Override // android.support.v7.widget.InterfaceC0653ad
            /* renamed from: c */
            public Drawable mo3053c() {
                return this.f2969b;
            }

            @Override // android.support.v7.widget.InterfaceC0653ad
            /* renamed from: d */
            public View mo3054d() {
                return CardView.this;
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, android.support.v7.cardview.R.styleable.CardView, i, android.support.v7.cardview.R.style.CardView);
        if (obtainStyledAttributes.hasValue(android.support.v7.cardview.R.styleable.CardView_cardBackgroundColor)) {
            valueOf = obtainStyledAttributes.getColorStateList(android.support.v7.cardview.R.styleable.CardView_cardBackgroundColor);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f2959e);
            int color2 = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color2, fArr);
            if (fArr[2] > 0.5f) {
                color = getResources().getColor(android.support.v7.cardview.R.color.cardview_light_background);
            } else {
                color = getResources().getColor(android.support.v7.cardview.R.color.cardview_dark_background);
            }
            valueOf = ColorStateList.valueOf(color);
        }
        float dimension = obtainStyledAttributes.getDimension(android.support.v7.cardview.R.styleable.CardView_cardCornerRadius, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(android.support.v7.cardview.R.styleable.CardView_cardElevation, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(android.support.v7.cardview.R.styleable.CardView_cardMaxElevation, 0.0f);
        this.f2965g = obtainStyledAttributes.getBoolean(android.support.v7.cardview.R.styleable.CardView_cardUseCompatPadding, false);
        this.f2966h = obtainStyledAttributes.getBoolean(android.support.v7.cardview.R.styleable.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(android.support.v7.cardview.R.styleable.CardView_contentPadding, 0);
        this.f2963c.left = obtainStyledAttributes.getDimensionPixelSize(android.support.v7.cardview.R.styleable.CardView_contentPaddingLeft, dimensionPixelSize);
        this.f2963c.top = obtainStyledAttributes.getDimensionPixelSize(android.support.v7.cardview.R.styleable.CardView_contentPaddingTop, dimensionPixelSize);
        this.f2963c.right = obtainStyledAttributes.getDimensionPixelSize(android.support.v7.cardview.R.styleable.CardView_contentPaddingRight, dimensionPixelSize);
        this.f2963c.bottom = obtainStyledAttributes.getDimensionPixelSize(android.support.v7.cardview.R.styleable.CardView_contentPaddingBottom, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f2961a = obtainStyledAttributes.getDimensionPixelSize(android.support.v7.cardview.R.styleable.CardView_android_minWidth, 0);
        this.f2962b = obtainStyledAttributes.getDimensionPixelSize(android.support.v7.cardview.R.styleable.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        f2960f.mo3842a(this.f2967i, context, valueOf, dimension, dimension2, dimension3);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public boolean getUseCompatPadding() {
        return this.f2965g;
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f2965g != z) {
            this.f2965g = z;
            f2960f.mo3851g(this.f2967i);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (!(f2960f instanceof C0651ab)) {
            int mode = View.MeasureSpec.getMode(i);
            switch (mode) {
                case Integer.MIN_VALUE:
                case C1167C.ENCODING_PCM_32BIT /* 1073741824 */:
                    i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f2960f.mo3844b(this.f2967i)), View.MeasureSpec.getSize(i)), mode);
                    break;
            }
            int mode2 = View.MeasureSpec.getMode(i2);
            switch (mode2) {
                case Integer.MIN_VALUE:
                case C1167C.ENCODING_PCM_32BIT /* 1073741824 */:
                    i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f2960f.mo3846c(this.f2967i)), View.MeasureSpec.getSize(i2)), mode2);
                    break;
            }
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.f2961a = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.f2962b = i;
        super.setMinimumHeight(i);
    }

    public void setCardBackgroundColor(@ColorInt int i) {
        f2960f.mo3843a(this.f2967i, ColorStateList.valueOf(i));
    }

    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        f2960f.mo3843a(this.f2967i, colorStateList);
    }

    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return f2960f.mo3853i(this.f2967i);
    }

    @Px
    public int getContentPaddingLeft() {
        return this.f2963c.left;
    }

    @Px
    public int getContentPaddingRight() {
        return this.f2963c.right;
    }

    @Px
    public int getContentPaddingTop() {
        return this.f2963c.top;
    }

    @Px
    public int getContentPaddingBottom() {
        return this.f2963c.bottom;
    }

    public void setRadius(float f) {
        f2960f.mo3841a(this.f2967i, f);
    }

    public float getRadius() {
        return f2960f.mo3848d(this.f2967i);
    }

    public void setCardElevation(float f) {
        f2960f.mo3847c(this.f2967i, f);
    }

    public float getCardElevation() {
        return f2960f.mo3849e(this.f2967i);
    }

    public void setMaxCardElevation(float f) {
        f2960f.mo3845b(this.f2967i, f);
    }

    public float getMaxCardElevation() {
        return f2960f.mo3840a(this.f2967i);
    }

    public boolean getPreventCornerOverlap() {
        return this.f2966h;
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f2966h) {
            this.f2966h = z;
            f2960f.mo3852h(this.f2967i);
        }
    }

    /* renamed from: android.support.v7.widget.CardView$1 */
    class C05791 implements InterfaceC0653ad {

        /* renamed from: b */
        private Drawable f2969b;

        C05791() {
        }

        @Override // android.support.v7.widget.InterfaceC0653ad
        /* renamed from: a */
        public void mo3050a(Drawable drawable) {
            this.f2969b = drawable;
            CardView.this.setBackgroundDrawable(drawable);
        }

        @Override // android.support.v7.widget.InterfaceC0653ad
        /* renamed from: a */
        public boolean mo3051a() {
            return CardView.this.getUseCompatPadding();
        }

        @Override // android.support.v7.widget.InterfaceC0653ad
        /* renamed from: b */
        public boolean mo3052b() {
            return CardView.this.getPreventCornerOverlap();
        }

        @Override // android.support.v7.widget.InterfaceC0653ad
        /* renamed from: a */
        public void mo3049a(int i2, int i3, int i4, int i5) {
            CardView.this.f2964d.set(i2, i3, i4, i5);
            CardView.super.setPadding(CardView.this.f2963c.left + i2, CardView.this.f2963c.top + i3, CardView.this.f2963c.right + i4, CardView.this.f2963c.bottom + i5);
        }

        @Override // android.support.v7.widget.InterfaceC0653ad
        /* renamed from: a */
        public void mo3048a(int i2, int i3) {
            if (i2 > CardView.this.f2961a) {
                CardView.super.setMinimumWidth(i2);
            }
            if (i3 > CardView.this.f2962b) {
                CardView.super.setMinimumHeight(i3);
            }
        }

        @Override // android.support.v7.widget.InterfaceC0653ad
        /* renamed from: c */
        public Drawable mo3053c() {
            return this.f2969b;
        }

        @Override // android.support.v7.widget.InterfaceC0653ad
        /* renamed from: d */
        public View mo3054d() {
            return CardView.this;
        }
    }
}
