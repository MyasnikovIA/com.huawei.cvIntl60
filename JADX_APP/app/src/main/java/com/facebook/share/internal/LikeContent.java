package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareModel;

@Deprecated
/* loaded from: classes.dex */
public class LikeContent implements ShareModel {

    @Deprecated
    public static final Parcelable.Creator<LikeContent> CREATOR = new Parcelable.Creator<LikeContent>() { // from class: com.facebook.share.internal.LikeContent.1
        C11181() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LikeContent createFromParcel(Parcel parcel) {
            return new LikeContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LikeContent[] newArray(int i) {
            return new LikeContent[i];
        }
    };

    /* renamed from: a */
    private final String f5787a;

    /* renamed from: b */
    private final String f5788b;

    @Deprecated
    LikeContent(Parcel parcel) {
        this.f5787a = parcel.readString();
        this.f5788b = parcel.readString();
    }

    @Override // android.os.Parcelable
    @Deprecated
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5787a);
        parcel.writeString(this.f5788b);
    }

    /* renamed from: com.facebook.share.internal.LikeContent$1 */
    static class C11181 implements Parcelable.Creator<LikeContent> {
        C11181() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LikeContent createFromParcel(Parcel parcel) {
            return new LikeContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LikeContent[] newArray(int i) {
            return new LikeContent[i];
        }
    }
}
