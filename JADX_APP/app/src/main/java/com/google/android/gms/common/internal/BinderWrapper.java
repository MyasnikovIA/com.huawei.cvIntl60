package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;

@KeepName
/* loaded from: classes.dex */
public final class BinderWrapper implements Parcelable {
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new Parcelable.Creator<BinderWrapper>() { // from class: com.google.android.gms.common.internal.BinderWrapper.1
        C12571() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: zzck */
        public BinderWrapper createFromParcel(Parcel parcel) {
            return new BinderWrapper(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: zzgl */
        public BinderWrapper[] newArray(int i) {
            return new BinderWrapper[i];
        }
    };

    /* renamed from: DI */
    private IBinder f6255DI;

    /* renamed from: com.google.android.gms.common.internal.BinderWrapper$1 */
    final class C12571 implements Parcelable.Creator<BinderWrapper> {
        C12571() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: zzck */
        public BinderWrapper createFromParcel(Parcel parcel) {
            return new BinderWrapper(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: zzgl */
        public BinderWrapper[] newArray(int i) {
            return new BinderWrapper[i];
        }
    }

    public BinderWrapper() {
        this.f6255DI = null;
    }

    public BinderWrapper(IBinder iBinder) {
        this.f6255DI = null;
        this.f6255DI = iBinder;
    }

    private BinderWrapper(Parcel parcel) {
        this.f6255DI = null;
        this.f6255DI = parcel.readStrongBinder();
    }

    /* synthetic */ BinderWrapper(Parcel parcel, C12571 c12571) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.f6255DI);
    }
}
