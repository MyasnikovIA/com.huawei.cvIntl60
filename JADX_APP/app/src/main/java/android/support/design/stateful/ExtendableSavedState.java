package android.support.design.stateful;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.util.SimpleArrayMap;
import android.support.v4.view.AbsSavedState;

/* loaded from: classes.dex */
public class ExtendableSavedState extends AbsSavedState {
    public static final Parcelable.Creator<ExtendableSavedState> CREATOR = new Parcelable.ClassLoaderCreator<ExtendableSavedState>() { // from class: android.support.design.stateful.ExtendableSavedState.1
        C02031() {
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        /* renamed from: a */
        public ExtendableSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new ExtendableSavedState(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ExtendableSavedState createFromParcel(Parcel parcel) {
            return new ExtendableSavedState(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ExtendableSavedState[] newArray(int i) {
            return new ExtendableSavedState[i];
        }
    };

    /* renamed from: a */
    public final SimpleArrayMap<String, Bundle> f1296a;

    /* synthetic */ ExtendableSavedState(Parcel parcel, ClassLoader classLoader, C02031 c02031) {
        this(parcel, classLoader);
    }

    public ExtendableSavedState(Parcelable parcelable) {
        super(parcelable);
        this.f1296a = new SimpleArrayMap<>();
    }

    private ExtendableSavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        String[] strArr = new String[readInt];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[readInt];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.f1296a = new SimpleArrayMap<>(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f1296a.put(strArr[i], bundleArr[i]);
        }
    }

    @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        int size = this.f1296a.size();
        parcel.writeInt(size);
        String[] strArr = new String[size];
        Bundle[] bundleArr = new Bundle[size];
        for (int i2 = 0; i2 < size; i2++) {
            strArr[i2] = this.f1296a.keyAt(i2);
            bundleArr[i2] = this.f1296a.valueAt(i2);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }

    public String toString() {
        return "ExtendableSavedState{" + Integer.toHexString(System.identityHashCode(this)) + " states=" + this.f1296a + "}";
    }

    /* renamed from: android.support.design.stateful.ExtendableSavedState$1 */
    static class C02031 implements Parcelable.ClassLoaderCreator<ExtendableSavedState> {
        C02031() {
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        /* renamed from: a */
        public ExtendableSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new ExtendableSavedState(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ExtendableSavedState createFromParcel(Parcel parcel) {
            return new ExtendableSavedState(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ExtendableSavedState[] newArray(int i) {
            return new ExtendableSavedState[i];
        }
    }
}
