package com.facebook.share.model;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class ShareMessengerActionButton implements ShareModel {

    /* renamed from: a */
    private final String f5848a;

    ShareMessengerActionButton(Parcel parcel) {
        this.f5848a = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5848a);
    }
}
