package android.support.design.internal;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.support.annotation.Dimension;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.transition.C0327n;
import android.support.transition.C0329p;
import android.support.v4.util.Pools;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.menu.C0544h;
import android.support.v7.view.menu.C0546j;
import android.support.v7.view.menu.InterfaceC0552p;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer.C1167C;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.design.internal.b */
/* loaded from: classes.dex */
public class C0195b extends ViewGroup implements InterfaceC0552p {

    /* renamed from: a */
    private static final int[] f1235a = {R.attr.state_checked};

    /* renamed from: b */
    private static final int[] f1236b = {-16842910};

    /* renamed from: c */
    private final C0329p f1237c;

    /* renamed from: d */
    private final int f1238d;

    /* renamed from: e */
    private final int f1239e;

    /* renamed from: f */
    private final int f1240f;

    /* renamed from: g */
    private final int f1241g;

    /* renamed from: h */
    private final int f1242h;

    /* renamed from: i */
    private final View.OnClickListener f1243i;

    /* renamed from: j */
    private final Pools.Pool<C0194a> f1244j;

    /* renamed from: k */
    private boolean f1245k;

    /* renamed from: l */
    private int f1246l;

    /* renamed from: m */
    private C0194a[] f1247m;

    /* renamed from: n */
    private int f1248n;

    /* renamed from: o */
    private int f1249o;

    /* renamed from: p */
    private ColorStateList f1250p;

    /* renamed from: q */
    @Dimension
    private int f1251q;

    /* renamed from: r */
    private ColorStateList f1252r;

    /* renamed from: s */
    private final ColorStateList f1253s;

    /* renamed from: t */
    @StyleRes
    private int f1254t;

    /* renamed from: u */
    @StyleRes
    private int f1255u;

    /* renamed from: v */
    private Drawable f1256v;

    /* renamed from: w */
    private int f1257w;

    /* renamed from: x */
    private int[] f1258x;

    /* renamed from: y */
    private BottomNavigationPresenter f1259y;

    /* renamed from: z */
    private C0544h f1260z;

    @Override // android.support.v7.view.menu.InterfaceC0552p
    /* renamed from: a */
    public void mo1559a(C0544h c0544h) {
        this.f1260z = c0544h;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.f1260z.m2887j().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1242h, C1167C.ENCODING_PCM_32BIT);
        if (m1566a(this.f1246l, size2) && this.f1245k) {
            View childAt = getChildAt(this.f1249o);
            int i4 = this.f1241g;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.f1240f, Integer.MIN_VALUE), makeMeasureSpec);
                i4 = Math.max(i4, childAt.getMeasuredWidth());
            }
            int i5 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min = Math.min(size - (this.f1239e * i5), Math.min(i4, this.f1240f));
            int min2 = Math.min((size - min) / (i5 != 0 ? i5 : 1), this.f1238d);
            int i6 = (size - min) - (i5 * min2);
            int i7 = 0;
            while (i7 < childCount) {
                if (getChildAt(i7).getVisibility() != 8) {
                    this.f1258x[i7] = i7 == this.f1249o ? min : min2;
                    if (i6 > 0) {
                        int[] iArr = this.f1258x;
                        iArr[i7] = iArr[i7] + 1;
                        i3 = i6 - 1;
                        i7++;
                        i6 = i3;
                    }
                } else {
                    this.f1258x[i7] = 0;
                }
                i3 = i6;
                i7++;
                i6 = i3;
            }
        } else {
            int min3 = Math.min(size / (size2 != 0 ? size2 : 1), this.f1240f);
            int i8 = size - (min3 * size2);
            for (int i9 = 0; i9 < childCount; i9++) {
                if (getChildAt(i9).getVisibility() != 8) {
                    this.f1258x[i9] = min3;
                    if (i8 > 0) {
                        int[] iArr2 = this.f1258x;
                        iArr2[i9] = iArr2[i9] + 1;
                        i8--;
                    }
                } else {
                    this.f1258x[i9] = 0;
                }
            }
        }
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt2 = getChildAt(i11);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.f1258x[i11], C1167C.ENCODING_PCM_32BIT), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i10 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i10, View.MeasureSpec.makeMeasureSpec(i10, C1167C.ENCODING_PCM_32BIT), 0), View.resolveSizeAndState(this.f1242h, makeMeasureSpec, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection(this) == 1) {
                    childAt.layout((i5 - i7) - childAt.getMeasuredWidth(), 0, i5 - i7, i6);
                } else {
                    childAt.layout(i7, 0, childAt.getMeasuredWidth() + i7, i6);
                }
                i7 += childAt.getMeasuredWidth();
            }
        }
    }

    public int getWindowAnimations() {
        return 0;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f1250p = colorStateList;
        if (this.f1247m != null) {
            for (C0194a c0194a : this.f1247m) {
                c0194a.setIconTintList(colorStateList);
            }
        }
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.f1250p;
    }

    public void setItemIconSize(@Dimension int i) {
        this.f1251q = i;
        if (this.f1247m != null) {
            for (C0194a c0194a : this.f1247m) {
                c0194a.setIconSize(i);
            }
        }
    }

    @Dimension
    public int getItemIconSize() {
        return this.f1251q;
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f1252r = colorStateList;
        if (this.f1247m != null) {
            for (C0194a c0194a : this.f1247m) {
                c0194a.setTextColor(colorStateList);
            }
        }
    }

    public ColorStateList getItemTextColor() {
        return this.f1252r;
    }

    public void setItemTextAppearanceInactive(@StyleRes int i) {
        this.f1254t = i;
        if (this.f1247m != null) {
            for (C0194a c0194a : this.f1247m) {
                c0194a.setTextAppearanceInactive(i);
                if (this.f1252r != null) {
                    c0194a.setTextColor(this.f1252r);
                }
            }
        }
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f1254t;
    }

    public void setItemTextAppearanceActive(@StyleRes int i) {
        this.f1255u = i;
        if (this.f1247m != null) {
            for (C0194a c0194a : this.f1247m) {
                c0194a.setTextAppearanceActive(i);
                if (this.f1252r != null) {
                    c0194a.setTextColor(this.f1252r);
                }
            }
        }
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f1255u;
    }

    public void setItemBackgroundRes(int i) {
        this.f1257w = i;
        if (this.f1247m != null) {
            for (C0194a c0194a : this.f1247m) {
                c0194a.setItemBackground(i);
            }
        }
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.f1257w;
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f1256v = drawable;
        if (this.f1247m != null) {
            for (C0194a c0194a : this.f1247m) {
                c0194a.setItemBackground(drawable);
            }
        }
    }

    @Nullable
    public Drawable getItemBackground() {
        return (this.f1247m == null || this.f1247m.length <= 0) ? this.f1256v : this.f1247m[0].getBackground();
    }

    public void setLabelVisibilityMode(int i) {
        this.f1246l = i;
    }

    public int getLabelVisibilityMode() {
        return this.f1246l;
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        this.f1245k = z;
    }

    /* renamed from: a */
    public boolean m1568a() {
        return this.f1245k;
    }

    public void setPresenter(BottomNavigationPresenter bottomNavigationPresenter) {
        this.f1259y = bottomNavigationPresenter;
    }

    /* renamed from: b */
    public void m1569b() {
        removeAllViews();
        if (this.f1247m != null) {
            for (C0194a c0194a : this.f1247m) {
                if (c0194a != null) {
                    this.f1244j.release(c0194a);
                }
            }
        }
        if (this.f1260z.size() == 0) {
            this.f1248n = 0;
            this.f1249o = 0;
            this.f1247m = null;
            return;
        }
        this.f1247m = new C0194a[this.f1260z.size()];
        boolean m1566a = m1566a(this.f1246l, this.f1260z.m2887j().size());
        for (int i = 0; i < this.f1260z.size(); i++) {
            this.f1259y.m1548b(true);
            this.f1260z.getItem(i).setCheckable(true);
            this.f1259y.m1548b(false);
            C0194a newItem = getNewItem();
            this.f1247m[i] = newItem;
            newItem.setIconTintList(this.f1250p);
            newItem.setIconSize(this.f1251q);
            newItem.setTextColor(this.f1253s);
            newItem.setTextAppearanceInactive(this.f1254t);
            newItem.setTextAppearanceActive(this.f1255u);
            newItem.setTextColor(this.f1252r);
            if (this.f1256v != null) {
                newItem.setItemBackground(this.f1256v);
            } else {
                newItem.setItemBackground(this.f1257w);
            }
            newItem.setShifting(m1566a);
            newItem.setLabelVisibilityMode(this.f1246l);
            newItem.mo1556a((C0546j) this.f1260z.getItem(i), 0);
            newItem.setItemPosition(i);
            newItem.setOnClickListener(this.f1243i);
            addView(newItem);
        }
        this.f1249o = Math.min(this.f1260z.size() - 1, this.f1249o);
        this.f1260z.getItem(this.f1249o).setChecked(true);
    }

    /* renamed from: c */
    public void m1570c() {
        if (this.f1260z != null && this.f1247m != null) {
            int size = this.f1260z.size();
            if (size != this.f1247m.length) {
                m1569b();
                return;
            }
            int i = this.f1248n;
            for (int i2 = 0; i2 < size; i2++) {
                MenuItem item = this.f1260z.getItem(i2);
                if (item.isChecked()) {
                    this.f1248n = item.getItemId();
                    this.f1249o = i2;
                }
            }
            if (i != this.f1248n) {
                C0327n.m2417a(this, this.f1237c);
            }
            boolean m1566a = m1566a(this.f1246l, this.f1260z.m2887j().size());
            for (int i3 = 0; i3 < size; i3++) {
                this.f1259y.m1548b(true);
                this.f1247m[i3].setLabelVisibilityMode(this.f1246l);
                this.f1247m[i3].setShifting(m1566a);
                this.f1247m[i3].mo1556a((C0546j) this.f1260z.getItem(i3), 0);
                this.f1259y.m1548b(false);
            }
        }
    }

    private C0194a getNewItem() {
        C0194a acquire = this.f1244j.acquire();
        if (acquire == null) {
            return new C0194a(getContext());
        }
        return acquire;
    }

    public int getSelectedItemId() {
        return this.f1248n;
    }

    /* renamed from: a */
    private boolean m1566a(int i, int i2) {
        return i == -1 ? i2 > 3 : i == 0;
    }

    /* renamed from: a */
    void m1567a(int i) {
        int size = this.f1260z.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.f1260z.getItem(i2);
            if (i == item.getItemId()) {
                this.f1248n = i;
                this.f1249o = i2;
                item.setChecked(true);
                return;
            }
        }
    }
}
