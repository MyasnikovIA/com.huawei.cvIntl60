package android.support.design.widget;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.DimenRes;
import android.support.annotation.Dimension;
import android.support.annotation.DrawableRes;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.design.internal.C0197d;
import android.support.design.internal.C0198e;
import android.support.design.internal.C0200g;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v7.view.C0532g;
import android.support.v7.view.menu.C0546j;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.google.android.exoplayer.C1167C;

/* loaded from: classes.dex */
public class NavigationView extends C0200g {

    /* renamed from: d */
    private static final int[] f1492d = {R.attr.state_checked};

    /* renamed from: e */
    private static final int[] f1493e = {-16842910};

    /* renamed from: c */
    InterfaceC0253a f1494c;

    /* renamed from: f */
    private final C0197d f1495f;

    /* renamed from: g */
    private final C0198e f1496g;

    /* renamed from: h */
    private final int f1497h;

    /* renamed from: i */
    private MenuInflater f1498i;

    /* renamed from: android.support.design.widget.NavigationView$a */
    public interface InterfaceC0253a {
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1499a = new Bundle();
        this.f1495f.m2856a(savedState.f1499a);
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f1495f.m2867b(savedState.f1499a);
    }

    public void setNavigationItemSelectedListener(@Nullable InterfaceC0253a interfaceC0253a) {
        this.f1494c = interfaceC0253a;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        switch (View.MeasureSpec.getMode(i)) {
            case Integer.MIN_VALUE:
                i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.f1497h), C1167C.ENCODING_PCM_32BIT);
                break;
            case 0:
                i = View.MeasureSpec.makeMeasureSpec(this.f1497h, C1167C.ENCODING_PCM_32BIT);
                break;
        }
        super.onMeasure(i, i2);
    }

    public Menu getMenu() {
        return this.f1495f;
    }

    public int getHeaderCount() {
        return this.f1496g.m1579e();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f1496g.m1580f();
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f1496g.m1572a(colorStateList);
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f1496g.m1581g();
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f1496g.m1576b(colorStateList);
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f1496g.m1582h();
    }

    public void setItemBackgroundResource(@DrawableRes int i) {
        setItemBackground(ContextCompat.getDrawable(getContext(), i));
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f1496g.m1573a(drawable);
    }

    @Dimension
    public int getItemHorizontalPadding() {
        return this.f1496g.m1583i();
    }

    public void setItemHorizontalPadding(@Dimension int i) {
        this.f1496g.m1575b(i);
    }

    public void setItemHorizontalPaddingResource(@DimenRes int i) {
        this.f1496g.m1575b(getResources().getDimensionPixelSize(i));
    }

    @Dimension
    public int getItemIconPadding() {
        return this.f1496g.m1584j();
    }

    public void setItemIconPadding(@Dimension int i) {
        this.f1496g.m1577c(i);
    }

    public void setItemIconPaddingResource(int i) {
        this.f1496g.m1577c(getResources().getDimensionPixelSize(i));
    }

    public void setCheckedItem(@IdRes int i) {
        MenuItem findItem = this.f1495f.findItem(i);
        if (findItem != null) {
            this.f1496g.m1574a((C0546j) findItem);
        }
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        MenuItem findItem = this.f1495f.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.f1496g.m1574a((C0546j) findItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }

    @Nullable
    public MenuItem getCheckedItem() {
        return this.f1496g.m1578d();
    }

    public void setItemTextAppearance(@StyleRes int i) {
        this.f1496g.m1571a(i);
    }

    private MenuInflater getMenuInflater() {
        if (this.f1498i == null) {
            this.f1498i = new C0532g(getContext());
        }
        return this.f1498i;
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.design.widget.NavigationView.SavedState.1
            C02521() {
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        public Bundle f1499a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1499a = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f1499a);
        }

        /* renamed from: android.support.design.widget.NavigationView$SavedState$1 */
        static class C02521 implements Parcelable.ClassLoaderCreator<SavedState> {
            C02521() {
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }
    }
}
