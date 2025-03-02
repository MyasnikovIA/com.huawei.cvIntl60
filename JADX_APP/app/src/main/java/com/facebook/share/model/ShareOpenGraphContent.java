package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphAction;

/* loaded from: classes.dex */
public final class ShareOpenGraphContent extends ShareContent<ShareOpenGraphContent, Object> {
    public static final Parcelable.Creator<ShareOpenGraphContent> CREATOR = new Parcelable.Creator<ShareOpenGraphContent>() { // from class: com.facebook.share.model.ShareOpenGraphContent.1
        C11501() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareOpenGraphContent createFromParcel(Parcel parcel) {
            return new ShareOpenGraphContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareOpenGraphContent[] newArray(int i) {
            return new ShareOpenGraphContent[i];
        }
    };

    /* renamed from: a */
    private final ShareOpenGraphAction f5878a;

    /* renamed from: b */
    private final String f5879b;

    ShareOpenGraphContent(Parcel parcel) {
        super(parcel);
        this.f5878a = new ShareOpenGraphAction.C1149a().m6520a(parcel).m6522a();
        this.f5879b = parcel.readString();
    }

    @Nullable
    /* renamed from: c */
    public ShareOpenGraphAction m6524c() {
        return this.f5878a;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f5878a, 0);
        parcel.writeString(this.f5879b);
    }

    /* renamed from: com.facebook.share.model.ShareOpenGraphContent$1 */
    static class C11501 implements Parcelable.Creator<ShareOpenGraphContent> {
        C11501() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareOpenGraphContent createFromParcel(Parcel parcel) {
            return new ShareOpenGraphContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareOpenGraphContent[] newArray(int i) {
            return new ShareOpenGraphContent[i];
        }
    }
}
