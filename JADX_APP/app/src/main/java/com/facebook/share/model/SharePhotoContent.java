package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.SharePhoto;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class SharePhotoContent extends ShareContent<SharePhotoContent, Object> {
    public static final Parcelable.Creator<SharePhotoContent> CREATOR = new Parcelable.Creator<SharePhotoContent>() { // from class: com.facebook.share.model.SharePhotoContent.1
        C11551() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SharePhotoContent createFromParcel(Parcel parcel) {
            return new SharePhotoContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SharePhotoContent[] newArray(int i) {
            return new SharePhotoContent[i];
        }
    };

    /* renamed from: a */
    private final List<SharePhoto> f5890a;

    SharePhotoContent(Parcel parcel) {
        super(parcel);
        this.f5890a = Collections.unmodifiableList(SharePhoto.C1154a.m6544c(parcel));
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        SharePhoto.C1154a.m6542a(parcel, i, this.f5890a);
    }

    /* renamed from: com.facebook.share.model.SharePhotoContent$1 */
    static class C11551 implements Parcelable.Creator<SharePhotoContent> {
        C11551() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SharePhotoContent createFromParcel(Parcel parcel) {
            return new SharePhotoContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SharePhotoContent[] newArray(int i) {
            return new SharePhotoContent[i];
        }
    }
}
