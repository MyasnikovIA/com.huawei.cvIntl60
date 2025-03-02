package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.exoplayer.C1167C;

/* renamed from: android.support.v7.widget.aq */
/* loaded from: classes.dex */
public class C0666aq extends ViewGroup {

    /* renamed from: a */
    private boolean f3581a;

    /* renamed from: b */
    private int f3582b;

    /* renamed from: c */
    private int f3583c;

    /* renamed from: d */
    private int f3584d;

    /* renamed from: e */
    private int f3585e;

    /* renamed from: f */
    private int f3586f;

    /* renamed from: g */
    private float f3587g;

    /* renamed from: h */
    private boolean f3588h;

    /* renamed from: i */
    private int[] f3589i;

    /* renamed from: j */
    private int[] f3590j;

    /* renamed from: k */
    private Drawable f3591k;

    /* renamed from: l */
    private int f3592l;

    /* renamed from: m */
    private int f3593m;

    /* renamed from: n */
    private int f3594n;

    /* renamed from: o */
    private int f3595o;

    public C0666aq(Context context) {
        this(context, null);
    }

    public C0666aq(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C0666aq(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3581a = true;
        this.f3582b = -1;
        this.f3583c = 0;
        this.f3585e = 8388659;
        C0687bk m4167a = C0687bk.m4167a(context, attributeSet, R.styleable.LinearLayoutCompat, i, 0);
        int m4169a = m4167a.m4169a(R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (m4169a >= 0) {
            setOrientation(m4169a);
        }
        int m4169a2 = m4167a.m4169a(R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (m4169a2 >= 0) {
            setGravity(m4169a2);
        }
        boolean m4173a = m4167a.m4173a(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!m4173a) {
            setBaselineAligned(m4173a);
        }
        this.f3587g = m4167a.m4168a(R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f3582b = m4167a.m4169a(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f3588h = m4167a.m4173a(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(m4167a.m4171a(R.styleable.LinearLayoutCompat_divider));
        this.f3594n = m4167a.m4169a(R.styleable.LinearLayoutCompat_showDividers, 0);
        this.f3595o = m4167a.m4181e(R.styleable.LinearLayoutCompat_dividerPadding, 0);
        m4167a.m4172a();
    }

    public void setShowDividers(int i) {
        if (i != this.f3594n) {
            requestLayout();
        }
        this.f3594n = i;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public int getShowDividers() {
        return this.f3594n;
    }

    public Drawable getDividerDrawable() {
        return this.f3591k;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.f3591k) {
            this.f3591k = drawable;
            if (drawable != null) {
                this.f3592l = drawable.getIntrinsicWidth();
                this.f3593m = drawable.getIntrinsicHeight();
            } else {
                this.f3592l = 0;
                this.f3593m = 0;
            }
            setWillNotDraw(drawable == null);
            requestLayout();
        }
    }

    public void setDividerPadding(int i) {
        this.f3595o = i;
    }

    public int getDividerPadding() {
        return this.f3595o;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getDividerWidth() {
        return this.f3592l;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f3591k != null) {
            if (this.f3584d == 1) {
                m3999a(canvas);
            } else {
                m4006b(canvas);
            }
        }
    }

    /* renamed from: a */
    void m3999a(Canvas canvas) {
        int bottom;
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View m4003b = m4003b(i);
            if (m4003b != null && m4003b.getVisibility() != 8 && m4008c(i)) {
                m4000a(canvas, (m4003b.getTop() - ((a) m4003b.getLayoutParams()).topMargin) - this.f3593m);
            }
        }
        if (m4008c(virtualChildCount)) {
            View m4003b2 = m4003b(virtualChildCount - 1);
            if (m4003b2 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.f3593m;
            } else {
                bottom = ((a) m4003b2.getLayoutParams()).bottomMargin + m4003b2.getBottom();
            }
            m4000a(canvas, bottom);
        }
    }

    /* renamed from: b */
    void m4006b(Canvas canvas) {
        int right;
        int left;
        int virtualChildCount = getVirtualChildCount();
        boolean m4245a = C0695bs.m4245a(this);
        for (int i = 0; i < virtualChildCount; i++) {
            View m4003b = m4003b(i);
            if (m4003b != null && m4003b.getVisibility() != 8 && m4008c(i)) {
                a aVar = (a) m4003b.getLayoutParams();
                if (m4245a) {
                    left = aVar.rightMargin + m4003b.getRight();
                } else {
                    left = (m4003b.getLeft() - aVar.leftMargin) - this.f3592l;
                }
                m4007b(canvas, left);
            }
        }
        if (m4008c(virtualChildCount)) {
            View m4003b2 = m4003b(virtualChildCount - 1);
            if (m4003b2 == null) {
                if (m4245a) {
                    right = getPaddingLeft();
                } else {
                    right = (getWidth() - getPaddingRight()) - this.f3592l;
                }
            } else {
                a aVar2 = (a) m4003b2.getLayoutParams();
                if (m4245a) {
                    right = (m4003b2.getLeft() - aVar2.leftMargin) - this.f3592l;
                } else {
                    right = aVar2.rightMargin + m4003b2.getRight();
                }
            }
            m4007b(canvas, right);
        }
    }

    /* renamed from: a */
    void m4000a(Canvas canvas, int i) {
        this.f3591k.setBounds(getPaddingLeft() + this.f3595o, i, (getWidth() - getPaddingRight()) - this.f3595o, this.f3593m + i);
        this.f3591k.draw(canvas);
    }

    /* renamed from: b */
    void m4007b(Canvas canvas, int i) {
        this.f3591k.setBounds(i, getPaddingTop() + this.f3595o, this.f3592l + i, (getHeight() - getPaddingBottom()) - this.f3595o);
        this.f3591k.draw(canvas);
    }

    public void setBaselineAligned(boolean z) {
        this.f3581a = z;
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f3588h = z;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        int i2;
        if (this.f3582b < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= this.f3582b) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(this.f3582b);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f3582b != 0) {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            return -1;
        }
        int i3 = this.f3583c;
        if (this.f3584d == 1 && (i2 = this.f3585e & 112) != 48) {
            switch (i2) {
                case 16:
                    i = i3 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f3586f) / 2);
                    break;
                case 80:
                    i = ((getBottom() - getTop()) - getPaddingBottom()) - this.f3586f;
                    break;
            }
            return ((a) childAt.getLayoutParams()).topMargin + i + baseline;
        }
        i = i3;
        return ((a) childAt.getLayoutParams()).topMargin + i + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f3582b;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.f3582b = i;
    }

    /* renamed from: b */
    View m4003b(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f3587g;
    }

    public void setWeightSum(float f) {
        this.f3587g = Math.max(0.0f, f);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f3584d == 1) {
            m3997a(i, i2);
        } else {
            m4004b(i, i2);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: c */
    protected boolean m4008c(int i) {
        if (i == 0) {
            return (this.f3594n & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.f3594n & 4) != 0;
        }
        if ((this.f3594n & 2) == 0) {
            return false;
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    void m3997a(int i, int i2) {
        int i3;
        int i4;
        float f;
        int i5;
        boolean z;
        int i6;
        boolean z2;
        boolean z3;
        int max;
        int i7;
        int i8;
        boolean z4;
        float f2;
        this.f3586f = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        boolean z5 = true;
        float f3 = 0.0f;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        boolean z6 = false;
        boolean z7 = false;
        int i13 = this.f3582b;
        boolean z8 = this.f3588h;
        int i14 = 0;
        int i15 = 0;
        while (i15 < virtualChildCount) {
            View m4003b = m4003b(i15);
            if (m4003b == null) {
                this.f3586f += m4009d(i15);
                i8 = i14;
                z4 = z7;
                f2 = f3;
                z3 = z5;
            } else if (m4003b.getVisibility() == 8) {
                i15 += m3996a(m4003b, i15);
                i8 = i14;
                z4 = z7;
                f2 = f3;
                z3 = z5;
            } else {
                if (m4008c(i15)) {
                    this.f3586f += this.f3593m;
                }
                a aVar = (a) m4003b.getLayoutParams();
                float f4 = f3 + aVar.f3596g;
                if (mode2 == 1073741824 && aVar.height == 0 && aVar.f3596g > 0.0f) {
                    int i16 = this.f3586f;
                    this.f3586f = Math.max(i16, aVar.topMargin + i16 + aVar.bottomMargin);
                    z7 = true;
                } else {
                    int i17 = Integer.MIN_VALUE;
                    if (aVar.height == 0 && aVar.f3596g > 0.0f) {
                        i17 = 0;
                        aVar.height = -2;
                    }
                    int i18 = i17;
                    m4001a(m4003b, i15, i, 0, i2, f4 == 0.0f ? this.f3586f : 0);
                    if (i18 != Integer.MIN_VALUE) {
                        aVar.height = i18;
                    }
                    int measuredHeight = m4003b.getMeasuredHeight();
                    int i19 = this.f3586f;
                    this.f3586f = Math.max(i19, i19 + measuredHeight + aVar.topMargin + aVar.bottomMargin + m4002b(m4003b));
                    if (z8) {
                        i14 = Math.max(measuredHeight, i14);
                    }
                }
                if (i13 >= 0 && i13 == i15 + 1) {
                    this.f3583c = this.f3586f;
                }
                if (i15 < i13 && aVar.f3596g > 0.0f) {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
                boolean z9 = false;
                if (mode == 1073741824 || aVar.width != -1) {
                    z2 = z6;
                } else {
                    z2 = true;
                    z9 = true;
                }
                int i20 = aVar.rightMargin + aVar.leftMargin;
                int measuredWidth = m4003b.getMeasuredWidth() + i20;
                i9 = Math.max(i9, measuredWidth);
                i10 = View.combineMeasuredStates(i10, m4003b.getMeasuredState());
                z3 = z5 && aVar.width == -1;
                if (aVar.f3596g > 0.0f) {
                    i7 = Math.max(i12, z9 ? i20 : measuredWidth);
                    max = i11;
                } else {
                    if (!z9) {
                        i20 = measuredWidth;
                    }
                    max = Math.max(i11, i20);
                    i7 = i12;
                }
                i15 += m3996a(m4003b, i15);
                i8 = i14;
                z4 = z7;
                z6 = z2;
                f2 = f4;
                i12 = i7;
                i11 = max;
            }
            i15++;
            i14 = i8;
            z7 = z4;
            f3 = f2;
            z5 = z3;
        }
        if (this.f3586f > 0 && m4008c(virtualChildCount)) {
            this.f3586f += this.f3593m;
        }
        if (z8 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            this.f3586f = 0;
            int i21 = 0;
            while (i21 < virtualChildCount) {
                View m4003b2 = m4003b(i21);
                if (m4003b2 == null) {
                    this.f3586f += m4009d(i21);
                    i6 = i21;
                } else if (m4003b2.getVisibility() == 8) {
                    i6 = m3996a(m4003b2, i21) + i21;
                } else {
                    a aVar2 = (a) m4003b2.getLayoutParams();
                    int i22 = this.f3586f;
                    this.f3586f = Math.max(i22, aVar2.bottomMargin + i22 + i14 + aVar2.topMargin + m4002b(m4003b2));
                    i6 = i21;
                }
                i21 = i6 + 1;
            }
        }
        this.f3586f += getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(this.f3586f, getSuggestedMinimumHeight()), i2, 0);
        int i23 = (16777215 & resolveSizeAndState) - this.f3586f;
        if (z7 || (i23 != 0 && f3 > 0.0f)) {
            if (this.f3587g > 0.0f) {
                f3 = this.f3587g;
            }
            this.f3586f = 0;
            int i24 = 0;
            float f5 = f3;
            boolean z10 = z5;
            int i25 = i11;
            int i26 = i10;
            int i27 = i9;
            while (i24 < virtualChildCount) {
                View m4003b3 = m4003b(i24);
                if (m4003b3.getVisibility() == 8) {
                    f = f5;
                    z = z10;
                } else {
                    a aVar3 = (a) m4003b3.getLayoutParams();
                    float f6 = aVar3.f3596g;
                    if (f6 > 0.0f) {
                        int i28 = (int) ((i23 * f6) / f5);
                        float f7 = f5 - f6;
                        i5 = i23 - i28;
                        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + aVar3.leftMargin + aVar3.rightMargin, aVar3.width);
                        if (aVar3.height != 0 || mode2 != 1073741824) {
                            int measuredHeight2 = i28 + m4003b3.getMeasuredHeight();
                            if (measuredHeight2 < 0) {
                                measuredHeight2 = 0;
                            }
                            m4003b3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, C1167C.ENCODING_PCM_32BIT));
                        } else {
                            if (i28 <= 0) {
                                i28 = 0;
                            }
                            m4003b3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i28, C1167C.ENCODING_PCM_32BIT));
                        }
                        f = f7;
                        i26 = View.combineMeasuredStates(i26, m4003b3.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                    } else {
                        f = f5;
                        i5 = i23;
                    }
                    int i29 = aVar3.leftMargin + aVar3.rightMargin;
                    int measuredWidth2 = m4003b3.getMeasuredWidth() + i29;
                    i27 = Math.max(i27, measuredWidth2);
                    if (!(mode != 1073741824 && aVar3.width == -1)) {
                        i29 = measuredWidth2;
                    }
                    i25 = Math.max(i25, i29);
                    boolean z11 = z10 && aVar3.width == -1;
                    int i30 = this.f3586f;
                    this.f3586f = Math.max(i30, aVar3.bottomMargin + m4003b3.getMeasuredHeight() + i30 + aVar3.topMargin + m4002b(m4003b3));
                    i23 = i5;
                    z = z11;
                }
                i24++;
                f5 = f;
                z10 = z;
            }
            this.f3586f += getPaddingTop() + getPaddingBottom();
            z5 = z10;
            i3 = i25;
            i10 = i26;
            i4 = i27;
        } else {
            int max2 = Math.max(i11, i12);
            if (z8 && mode2 != 1073741824) {
                int i31 = 0;
                while (true) {
                    int i32 = i31;
                    if (i32 >= virtualChildCount) {
                        break;
                    }
                    View m4003b4 = m4003b(i32);
                    if (m4003b4 != null && m4003b4.getVisibility() != 8 && ((a) m4003b4.getLayoutParams()).f3596g > 0.0f) {
                        m4003b4.measure(View.MeasureSpec.makeMeasureSpec(m4003b4.getMeasuredWidth(), C1167C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i14, C1167C.ENCODING_PCM_32BIT));
                    }
                    i31 = i32 + 1;
                }
            }
            i3 = max2;
            i4 = i9;
        }
        if (z5 || mode == 1073741824) {
            i3 = i4;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, i10), resolveSizeAndState);
        if (z6) {
            m3993c(virtualChildCount, i2);
        }
    }

    /* renamed from: c */
    private void m3993c(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), C1167C.ENCODING_PCM_32BIT);
        for (int i3 = 0; i3 < i; i3++) {
            View m4003b = m4003b(i3);
            if (m4003b.getVisibility() != 8) {
                a aVar = (a) m4003b.getLayoutParams();
                if (aVar.width == -1) {
                    int i4 = aVar.height;
                    aVar.height = m4003b.getMeasuredHeight();
                    measureChildWithMargins(m4003b, makeMeasureSpec, 0, i2, 0);
                    aVar.height = i4;
                }
            }
        }
    }

    /* renamed from: b */
    void m4004b(int i, int i2) {
        int i3;
        int i4;
        float f;
        int i5;
        boolean z;
        int i6;
        float f2;
        int baseline;
        int i7;
        boolean z2;
        boolean z3;
        int max;
        int i8;
        int i9;
        boolean z4;
        float f3;
        int baseline2;
        this.f3586f = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        boolean z5 = true;
        float f4 = 0.0f;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        boolean z6 = false;
        boolean z7 = false;
        if (this.f3589i == null || this.f3590j == null) {
            this.f3589i = new int[4];
            this.f3590j = new int[4];
        }
        int[] iArr = this.f3589i;
        int[] iArr2 = this.f3590j;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z8 = this.f3581a;
        boolean z9 = this.f3588h;
        boolean z10 = mode == 1073741824;
        int i14 = 0;
        int i15 = 0;
        while (i15 < virtualChildCount) {
            View m4003b = m4003b(i15);
            if (m4003b == null) {
                this.f3586f += m4009d(i15);
                i9 = i14;
                z4 = z7;
                f3 = f4;
                z3 = z5;
            } else if (m4003b.getVisibility() == 8) {
                i15 += m3996a(m4003b, i15);
                i9 = i14;
                z4 = z7;
                f3 = f4;
                z3 = z5;
            } else {
                if (m4008c(i15)) {
                    this.f3586f += this.f3592l;
                }
                a aVar = (a) m4003b.getLayoutParams();
                float f5 = f4 + aVar.f3596g;
                if (mode == 1073741824 && aVar.width == 0 && aVar.f3596g > 0.0f) {
                    if (z10) {
                        this.f3586f += aVar.leftMargin + aVar.rightMargin;
                    } else {
                        int i16 = this.f3586f;
                        this.f3586f = Math.max(i16, aVar.leftMargin + i16 + aVar.rightMargin);
                    }
                    if (z8) {
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        m4003b.measure(makeMeasureSpec, makeMeasureSpec);
                    } else {
                        z7 = true;
                    }
                } else {
                    int i17 = Integer.MIN_VALUE;
                    if (aVar.width == 0 && aVar.f3596g > 0.0f) {
                        i17 = 0;
                        aVar.width = -2;
                    }
                    int i18 = i17;
                    m4001a(m4003b, i15, i, f5 == 0.0f ? this.f3586f : 0, i2, 0);
                    if (i18 != Integer.MIN_VALUE) {
                        aVar.width = i18;
                    }
                    int measuredWidth = m4003b.getMeasuredWidth();
                    if (z10) {
                        this.f3586f += aVar.leftMargin + measuredWidth + aVar.rightMargin + m4002b(m4003b);
                    } else {
                        int i19 = this.f3586f;
                        this.f3586f = Math.max(i19, i19 + measuredWidth + aVar.leftMargin + aVar.rightMargin + m4002b(m4003b));
                    }
                    if (z9) {
                        i14 = Math.max(measuredWidth, i14);
                    }
                }
                boolean z11 = false;
                if (mode2 == 1073741824 || aVar.height != -1) {
                    z2 = z6;
                } else {
                    z2 = true;
                    z11 = true;
                }
                int i20 = aVar.bottomMargin + aVar.topMargin;
                int measuredHeight = m4003b.getMeasuredHeight() + i20;
                i11 = View.combineMeasuredStates(i11, m4003b.getMeasuredState());
                if (z8 && (baseline2 = m4003b.getBaseline()) != -1) {
                    int i21 = ((((aVar.f3597h < 0 ? this.f3585e : aVar.f3597h) & 112) >> 4) & (-2)) >> 1;
                    iArr[i21] = Math.max(iArr[i21], baseline2);
                    iArr2[i21] = Math.max(iArr2[i21], measuredHeight - baseline2);
                }
                i10 = Math.max(i10, measuredHeight);
                z3 = z5 && aVar.height == -1;
                if (aVar.f3596g > 0.0f) {
                    i8 = Math.max(i13, z11 ? i20 : measuredHeight);
                    max = i12;
                } else {
                    if (!z11) {
                        i20 = measuredHeight;
                    }
                    max = Math.max(i12, i20);
                    i8 = i13;
                }
                i15 += m3996a(m4003b, i15);
                i9 = i14;
                z4 = z7;
                z6 = z2;
                f3 = f5;
                i13 = i8;
                i12 = max;
            }
            i15++;
            i14 = i9;
            z7 = z4;
            f4 = f3;
            z5 = z3;
        }
        if (this.f3586f > 0 && m4008c(virtualChildCount)) {
            this.f3586f += this.f3592l;
        }
        int max2 = (iArr[1] == -1 && iArr[0] == -1 && iArr[2] == -1 && iArr[3] == -1) ? i10 : Math.max(i10, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
        if (z9 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.f3586f = 0;
            int i22 = 0;
            while (i22 < virtualChildCount) {
                View m4003b2 = m4003b(i22);
                if (m4003b2 == null) {
                    this.f3586f += m4009d(i22);
                    i7 = i22;
                } else if (m4003b2.getVisibility() == 8) {
                    i7 = m3996a(m4003b2, i22) + i22;
                } else {
                    a aVar2 = (a) m4003b2.getLayoutParams();
                    if (z10) {
                        this.f3586f = aVar2.rightMargin + aVar2.leftMargin + i14 + m4002b(m4003b2) + this.f3586f;
                        i7 = i22;
                    } else {
                        int i23 = this.f3586f;
                        this.f3586f = Math.max(i23, aVar2.rightMargin + i23 + i14 + aVar2.leftMargin + m4002b(m4003b2));
                        i7 = i22;
                    }
                }
                i22 = i7 + 1;
            }
        }
        this.f3586f += getPaddingLeft() + getPaddingRight();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(this.f3586f, getSuggestedMinimumWidth()), i, 0);
        int i24 = (16777215 & resolveSizeAndState) - this.f3586f;
        if (z7 || (i24 != 0 && f4 > 0.0f)) {
            if (this.f3587g > 0.0f) {
                f4 = this.f3587g;
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            int i25 = -1;
            this.f3586f = 0;
            int i26 = 0;
            float f6 = f4;
            boolean z12 = z5;
            int i27 = i12;
            int i28 = i11;
            while (i26 < virtualChildCount) {
                View m4003b3 = m4003b(i26);
                if (m4003b3 == null) {
                    f = f6;
                    i5 = i24;
                    z = z12;
                    i6 = i25;
                } else if (m4003b3.getVisibility() == 8) {
                    f = f6;
                    i5 = i24;
                    z = z12;
                    i6 = i25;
                } else {
                    a aVar3 = (a) m4003b3.getLayoutParams();
                    float f7 = aVar3.f3596g;
                    if (f7 > 0.0f) {
                        int i29 = (int) ((i24 * f7) / f6);
                        f2 = f6 - f7;
                        i24 -= i29;
                        int childMeasureSpec = getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom() + aVar3.topMargin + aVar3.bottomMargin, aVar3.height);
                        if (aVar3.width != 0 || mode != 1073741824) {
                            int measuredWidth2 = i29 + m4003b3.getMeasuredWidth();
                            if (measuredWidth2 < 0) {
                                measuredWidth2 = 0;
                            }
                            m4003b3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, C1167C.ENCODING_PCM_32BIT), childMeasureSpec);
                        } else {
                            if (i29 <= 0) {
                                i29 = 0;
                            }
                            m4003b3.measure(View.MeasureSpec.makeMeasureSpec(i29, C1167C.ENCODING_PCM_32BIT), childMeasureSpec);
                        }
                        i28 = View.combineMeasuredStates(i28, m4003b3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                    } else {
                        f2 = f6;
                    }
                    if (z10) {
                        this.f3586f += m4003b3.getMeasuredWidth() + aVar3.leftMargin + aVar3.rightMargin + m4002b(m4003b3);
                    } else {
                        int i30 = this.f3586f;
                        this.f3586f = Math.max(i30, m4003b3.getMeasuredWidth() + i30 + aVar3.leftMargin + aVar3.rightMargin + m4002b(m4003b3));
                    }
                    boolean z13 = mode2 != 1073741824 && aVar3.height == -1;
                    int i31 = aVar3.topMargin + aVar3.bottomMargin;
                    int measuredHeight2 = m4003b3.getMeasuredHeight() + i31;
                    i6 = Math.max(i25, measuredHeight2);
                    i27 = Math.max(i27, z13 ? i31 : measuredHeight2);
                    boolean z14 = z12 && aVar3.height == -1;
                    if (z8 && (baseline = m4003b3.getBaseline()) != -1) {
                        int i32 = ((((aVar3.f3597h < 0 ? this.f3585e : aVar3.f3597h) & 112) >> 4) & (-2)) >> 1;
                        iArr[i32] = Math.max(iArr[i32], baseline);
                        iArr2[i32] = Math.max(iArr2[i32], measuredHeight2 - baseline);
                    }
                    f = f2;
                    i5 = i24;
                    z = z14;
                }
                i26++;
                f6 = f;
                i24 = i5;
                z12 = z;
                i25 = i6;
            }
            this.f3586f += getPaddingLeft() + getPaddingRight();
            if (iArr[1] != -1 || iArr[0] != -1 || iArr[2] != -1 || iArr[3] != -1) {
                i25 = Math.max(i25, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
            }
            z5 = z12;
            i3 = i27;
            i11 = i28;
            i4 = i25;
        } else {
            int max3 = Math.max(i12, i13);
            if (z9 && mode != 1073741824) {
                int i33 = 0;
                while (true) {
                    int i34 = i33;
                    if (i34 >= virtualChildCount) {
                        break;
                    }
                    View m4003b4 = m4003b(i34);
                    if (m4003b4 != null && m4003b4.getVisibility() != 8 && ((a) m4003b4.getLayoutParams()).f3596g > 0.0f) {
                        m4003b4.measure(View.MeasureSpec.makeMeasureSpec(i14, C1167C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(m4003b4.getMeasuredHeight(), C1167C.ENCODING_PCM_32BIT));
                    }
                    i33 = i34 + 1;
                }
            }
            i3 = max3;
            i4 = max2;
        }
        if (z5 || mode2 == 1073741824) {
            i3 = i4;
        }
        setMeasuredDimension(((-16777216) & i11) | resolveSizeAndState, View.resolveSizeAndState(Math.max(i3 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, i11 << 16));
        if (z6) {
            m3994d(virtualChildCount, i);
        }
    }

    /* renamed from: d */
    private void m3994d(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), C1167C.ENCODING_PCM_32BIT);
        for (int i3 = 0; i3 < i; i3++) {
            View m4003b = m4003b(i3);
            if (m4003b.getVisibility() != 8) {
                a aVar = (a) m4003b.getLayoutParams();
                if (aVar.height == -1) {
                    int i4 = aVar.width;
                    aVar.width = m4003b.getMeasuredWidth();
                    measureChildWithMargins(m4003b, i2, 0, makeMeasureSpec, 0);
                    aVar.width = i4;
                }
            }
        }
    }

    /* renamed from: a */
    int m3996a(View view, int i) {
        return 0;
    }

    /* renamed from: d */
    int m4009d(int i) {
        return 0;
    }

    /* renamed from: a */
    void m4001a(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* renamed from: a */
    int m3995a(View view) {
        return 0;
    }

    /* renamed from: b */
    int m4002b(View view) {
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f3584d == 1) {
            m3998a(i, i2, i3, i4);
        } else {
            m4005b(i, i2, i3, i4);
        }
    }

    /* renamed from: a */
    void m3998a(int i, int i2, int i3, int i4) {
        int paddingTop;
        int i5;
        int i6;
        int paddingLeft = getPaddingLeft();
        int i7 = i3 - i;
        int paddingRight = i7 - getPaddingRight();
        int paddingRight2 = (i7 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i8 = this.f3585e & 112;
        int i9 = this.f3585e & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        switch (i8) {
            case 16:
                paddingTop = getPaddingTop() + (((i4 - i2) - this.f3586f) / 2);
                break;
            case 80:
                paddingTop = ((getPaddingTop() + i4) - i2) - this.f3586f;
                break;
            default:
                paddingTop = getPaddingTop();
                break;
        }
        int i10 = 0;
        int i11 = paddingTop;
        while (i10 < virtualChildCount) {
            View m4003b = m4003b(i10);
            if (m4003b == null) {
                i11 += m4009d(i10);
                i5 = i10;
            } else if (m4003b.getVisibility() != 8) {
                int measuredWidth = m4003b.getMeasuredWidth();
                int measuredHeight = m4003b.getMeasuredHeight();
                a aVar = (a) m4003b.getLayoutParams();
                int i12 = aVar.f3597h;
                if (i12 < 0) {
                    i12 = i9;
                }
                switch (GravityCompat.getAbsoluteGravity(i12, ViewCompat.getLayoutDirection(this)) & 7) {
                    case 1:
                        i6 = ((((paddingRight2 - measuredWidth) / 2) + paddingLeft) + aVar.leftMargin) - aVar.rightMargin;
                        break;
                    case 5:
                        i6 = (paddingRight - measuredWidth) - aVar.rightMargin;
                        break;
                    default:
                        i6 = paddingLeft + aVar.leftMargin;
                        break;
                }
                int i13 = (m4008c(i10) ? this.f3593m + i11 : i11) + aVar.topMargin;
                m3992a(m4003b, i6, i13 + m3995a(m4003b), measuredWidth, measuredHeight);
                i11 = i13 + aVar.bottomMargin + measuredHeight + m4002b(m4003b);
                i5 = m3996a(m4003b, i10) + i10;
            } else {
                i5 = i10;
            }
            i10 = i5 + 1;
        }
    }

    /* renamed from: b */
    void m4005b(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean m4245a = C0695bs.m4245a(this);
        int paddingTop = getPaddingTop();
        int i10 = i4 - i2;
        int paddingBottom = i10 - getPaddingBottom();
        int paddingBottom2 = (i10 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i11 = this.f3585e & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i12 = this.f3585e & 112;
        boolean z = this.f3581a;
        int[] iArr = this.f3589i;
        int[] iArr2 = this.f3590j;
        switch (GravityCompat.getAbsoluteGravity(i11, ViewCompat.getLayoutDirection(this))) {
            case 1:
                paddingLeft = getPaddingLeft() + (((i3 - i) - this.f3586f) / 2);
                break;
            case 5:
                paddingLeft = ((getPaddingLeft() + i3) - i) - this.f3586f;
                break;
            default:
                paddingLeft = getPaddingLeft();
                break;
        }
        if (!m4245a) {
            i5 = 1;
            i6 = 0;
        } else {
            i5 = -1;
            i6 = virtualChildCount - 1;
        }
        int i13 = 0;
        while (i13 < virtualChildCount) {
            int i14 = i6 + (i5 * i13);
            View m4003b = m4003b(i14);
            if (m4003b == null) {
                paddingLeft += m4009d(i14);
                i7 = i13;
            } else if (m4003b.getVisibility() != 8) {
                int measuredWidth = m4003b.getMeasuredWidth();
                int measuredHeight = m4003b.getMeasuredHeight();
                a aVar = (a) m4003b.getLayoutParams();
                if (!z || aVar.height == -1) {
                    i8 = -1;
                } else {
                    i8 = m4003b.getBaseline();
                }
                int i15 = aVar.f3597h;
                if (i15 < 0) {
                    i15 = i12;
                }
                switch (i15 & 112) {
                    case 16:
                        i9 = ((((paddingBottom2 - measuredHeight) / 2) + paddingTop) + aVar.topMargin) - aVar.bottomMargin;
                        break;
                    case 48:
                        i9 = paddingTop + aVar.topMargin;
                        if (i8 != -1) {
                            i9 += iArr[1] - i8;
                            break;
                        }
                        break;
                    case 80:
                        i9 = (paddingBottom - measuredHeight) - aVar.bottomMargin;
                        if (i8 != -1) {
                            i9 -= iArr2[2] - (m4003b.getMeasuredHeight() - i8);
                            break;
                        }
                        break;
                    default:
                        i9 = paddingTop;
                        break;
                }
                int i16 = (m4008c(i14) ? this.f3592l + paddingLeft : paddingLeft) + aVar.leftMargin;
                m3992a(m4003b, i16 + m3995a(m4003b), i9, measuredWidth, measuredHeight);
                paddingLeft = i16 + aVar.rightMargin + measuredWidth + m4002b(m4003b);
                i7 = m3996a(m4003b, i14) + i13;
            } else {
                i7 = i13;
            }
            i13 = i7 + 1;
        }
    }

    /* renamed from: a */
    private void m3992a(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i + i3, i2 + i4);
    }

    public void setOrientation(int i) {
        if (this.f3584d != i) {
            this.f3584d = i;
            requestLayout();
        }
    }

    public int getOrientation() {
        return this.f3584d;
    }

    public void setGravity(int i) {
        if (this.f3585e != i) {
            int i2 = (8388615 & i) == 0 ? 8388611 | i : i;
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.f3585e = i2;
            requestLayout();
        }
    }

    public int getGravity() {
        return this.f3585e;
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if ((this.f3585e & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) != i2) {
            this.f3585e = i2 | (this.f3585e & (-8388616));
            requestLayout();
        }
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        if ((this.f3585e & 112) != i2) {
            this.f3585e = i2 | (this.f3585e & (-113));
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    /* renamed from: b */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* renamed from: j */
    public a generateDefaultLayoutParams() {
        if (this.f3584d == 0) {
            return new a(-2, -2);
        }
        if (this.f3584d == 1) {
            return new a(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* renamed from: b */
    public a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(C0666aq.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(C0666aq.class.getName());
    }

    /* renamed from: android.support.v7.widget.aq$a */
    public static class a extends ViewGroup.MarginLayoutParams {

        /* renamed from: g */
        public float f3596g;

        /* renamed from: h */
        public int f3597h;

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3597h = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LinearLayoutCompat_Layout);
            this.f3596g = obtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.f3597h = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public a(int i, int i2) {
            super(i, i2);
            this.f3597h = -1;
            this.f3596g = 0.0f;
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3597h = -1;
        }
    }
}
