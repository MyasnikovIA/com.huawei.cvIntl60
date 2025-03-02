package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new Parcelable.Creator<ParcelImpl>() { // from class: androidx.versionedparcelable.ParcelImpl.1
        C07211() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ParcelImpl createFromParcel(Parcel parcel) {
            return new ParcelImpl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ParcelImpl[] newArray(int i) {
            return new ParcelImpl[i];
        }
    };

    /* renamed from: a */
    private final InterfaceC0724c f3959a;

    protected ParcelImpl(Parcel parcel) {
        this.f3959a = new C0723b(parcel).m4448h();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        new C0723b(parcel).m4427a(this.f3959a);
    }

    /* renamed from: androidx.versionedparcelable.ParcelImpl$1 */
    static class C07211 implements Parcelable.Creator<ParcelImpl> {
        C07211() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ParcelImpl createFromParcel(Parcel parcel) {
            return new ParcelImpl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ParcelImpl[] newArray(int i) {
            return new ParcelImpl[i];
        }
    }
}
