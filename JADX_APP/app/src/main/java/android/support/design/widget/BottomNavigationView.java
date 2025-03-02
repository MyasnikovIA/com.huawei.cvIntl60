package android.support.design.widget;

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
import android.support.design.internal.BottomNavigationPresenter;
import android.support.design.internal.C0195b;
import android.support.v4.view.AbsSavedState;
import android.support.v7.view.C0532g;
import android.support.v7.view.menu.C0544h;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class BottomNavigationView extends FrameLayout {

    /* renamed from: a */
    private final C0544h f1384a;

    /* renamed from: b */
    private final C0195b f1385b;

    /* renamed from: c */
    private final BottomNavigationPresenter f1386c;

    /* renamed from: d */
    private MenuInflater f1387d;

    /* renamed from: e */
    private InterfaceC0234b f1388e;

    /* renamed from: f */
    private InterfaceC0233a f1389f;

    /* renamed from: android.support.design.widget.BottomNavigationView$a */
    public interface InterfaceC0233a {
    }

    /* renamed from: android.support.design.widget.BottomNavigationView$b */
    public interface InterfaceC0234b {
    }

    public void setOnNavigationItemSelectedListener(@Nullable InterfaceC0234b interfaceC0234b) {
        this.f1388e = interfaceC0234b;
    }

    public void setOnNavigationItemReselectedListener(@Nullable InterfaceC0233a interfaceC0233a) {
        this.f1389f = interfaceC0233a;
    }

    @NonNull
    public Menu getMenu() {
        return this.f1384a;
    }

    public int getMaxItemCount() {
        return 5;
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f1385b.getIconTintList();
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f1385b.setIconTintList(colorStateList);
    }

    public void setItemIconSize(@Dimension int i) {
        this.f1385b.setItemIconSize(i);
    }

    public void setItemIconSizeRes(@DimenRes int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    @Dimension
    public int getItemIconSize() {
        return this.f1385b.getItemIconSize();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f1385b.getItemTextColor();
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f1385b.setItemTextColor(colorStateList);
    }

    @DrawableRes
    @Deprecated
    public int getItemBackgroundResource() {
        return this.f1385b.getItemBackgroundRes();
    }

    public void setItemBackgroundResource(@DrawableRes int i) {
        this.f1385b.setItemBackgroundRes(i);
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f1385b.getItemBackground();
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f1385b.setItemBackground(drawable);
    }

    @IdRes
    public int getSelectedItemId() {
        return this.f1385b.getSelectedItemId();
    }

    public void setSelectedItemId(@IdRes int i) {
        MenuItem findItem = this.f1384a.findItem(i);
        if (findItem != null && !this.f1384a.m2865a(findItem, this.f1386c, 0)) {
            findItem.setChecked(true);
        }
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f1385b.getLabelVisibilityMode() != i) {
            this.f1385b.setLabelVisibilityMode(i);
            this.f1386c.mo1543a(false);
        }
    }

    public int getLabelVisibilityMode() {
        return this.f1385b.getLabelVisibilityMode();
    }

    public void setItemTextAppearanceInactive(@StyleRes int i) {
        this.f1385b.setItemTextAppearanceInactive(i);
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f1385b.getItemTextAppearanceInactive();
    }

    public void setItemTextAppearanceActive(@StyleRes int i) {
        this.f1385b.setItemTextAppearanceActive(i);
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f1385b.getItemTextAppearanceActive();
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        if (this.f1385b.m1568a() != z) {
            this.f1385b.setItemHorizontalTranslationEnabled(z);
            this.f1386c.mo1543a(false);
        }
    }

    private MenuInflater getMenuInflater() {
        if (this.f1387d == null) {
            this.f1387d = new C0532g(getContext());
        }
        return this.f1387d;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1390a = new Bundle();
        this.f1384a.m2856a(savedState.f1390a);
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
        this.f1384a.m2867b(savedState.f1390a);
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.design.widget.BottomNavigationView.SavedState.1
            C02321() {
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
        Bundle f1390a;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            m1746a(parcel, classLoader);
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f1390a);
        }

        /* renamed from: a */
        private void m1746a(Parcel parcel, ClassLoader classLoader) {
            this.f1390a = parcel.readBundle(classLoader);
        }

        /* renamed from: android.support.design.widget.BottomNavigationView$SavedState$1 */
        static class C02321 implements Parcelable.ClassLoaderCreator<SavedState> {
            C02321() {
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
