package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class AppGroupCreationContent implements ShareModel {
    public static final Parcelable.Creator<AppGroupCreationContent> CREATOR = new Parcelable.Creator<AppGroupCreationContent>() { // from class: com.facebook.share.model.AppGroupCreationContent.1
        C11231() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AppGroupCreationContent createFromParcel(Parcel parcel) {
            return new AppGroupCreationContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AppGroupCreationContent[] newArray(int i) {
            return new AppGroupCreationContent[i];
        }
    };

    /* renamed from: a */
    private final String f5796a;

    /* renamed from: b */
    private final String f5797b;

    /* renamed from: c */
    private EnumC1124a f5798c;

    /* renamed from: com.facebook.share.model.AppGroupCreationContent$a */
    public enum EnumC1124a {
        Open,
        Closed
    }

    AppGroupCreationContent(Parcel parcel) {
        this.f5796a = parcel.readString();
        this.f5797b = parcel.readString();
        this.f5798c = (EnumC1124a) parcel.readSerializable();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5796a);
        parcel.writeString(this.f5797b);
        parcel.writeSerializable(this.f5798c);
    }

    /* renamed from: com.facebook.share.model.AppGroupCreationContent$1 */
    static class C11231 implements Parcelable.Creator<AppGroupCreationContent> {
        C11231() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AppGroupCreationContent createFromParcel(Parcel parcel) {
            return new AppGroupCreationContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AppGroupCreationContent[] newArray(int i) {
            return new AppGroupCreationContent[i];
        }
    }
}
