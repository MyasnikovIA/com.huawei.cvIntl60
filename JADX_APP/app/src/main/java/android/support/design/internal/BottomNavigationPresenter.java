package android.support.design.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.C0544h;
import android.support.v7.view.menu.C0546j;
import android.support.v7.view.menu.InterfaceC0551o;
import android.support.v7.view.menu.SubMenuC0557u;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class BottomNavigationPresenter implements InterfaceC0551o {

    /* renamed from: a */
    private C0544h f1205a;

    /* renamed from: b */
    private C0195b f1206b;

    /* renamed from: c */
    private boolean f1207c;

    /* renamed from: d */
    private int f1208d;

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1539a(Context context, C0544h c0544h) {
        this.f1205a = c0544h;
        this.f1206b.mo1559a(this.f1205a);
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1543a(boolean z) {
        if (!this.f1207c) {
            if (z) {
                this.f1206b.m1569b();
            } else {
                this.f1206b.m1570c();
            }
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1542a(InterfaceC0551o.a aVar) {
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1546a(SubMenuC0557u subMenuC0557u) {
        return false;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1541a(C0544h c0544h, boolean z) {
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1544a() {
        return false;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1545a(C0544h c0544h, C0546j c0546j) {
        return false;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: b */
    public boolean mo1549b(C0544h c0544h, C0546j c0546j) {
        return false;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: b */
    public int mo1547b() {
        return this.f1208d;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: c */
    public Parcelable mo1550c() {
        SavedState savedState = new SavedState();
        savedState.f1209a = this.f1206b.getSelectedItemId();
        return savedState;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1540a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f1206b.m1567a(((SavedState) parcelable).f1209a);
        }
    }

    /* renamed from: b */
    public void m1548b(boolean z) {
        this.f1207c = z;
    }

    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.design.internal.BottomNavigationPresenter.SavedState.1
            C01911() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        int f1209a;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f1209a = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeInt(this.f1209a);
        }

        /* renamed from: android.support.design.internal.BottomNavigationPresenter$SavedState$1 */
        static class C01911 implements Parcelable.Creator<SavedState> {
            C01911() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }
    }
}
