package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ShareMessengerOpenGraphMusicTemplateContent extends ShareContent<ShareMessengerOpenGraphMusicTemplateContent, Object> {
    public static final Parcelable.Creator<ShareMessengerOpenGraphMusicTemplateContent> CREATOR = new Parcelable.Creator<ShareMessengerOpenGraphMusicTemplateContent>() { // from class: com.facebook.share.model.ShareMessengerOpenGraphMusicTemplateContent.1
        C11451() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerOpenGraphMusicTemplateContent createFromParcel(Parcel parcel) {
            return new ShareMessengerOpenGraphMusicTemplateContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerOpenGraphMusicTemplateContent[] newArray(int i) {
            return new ShareMessengerOpenGraphMusicTemplateContent[i];
        }
    };

    /* renamed from: a */
    private final Uri f5867a;

    /* renamed from: b */
    private final ShareMessengerActionButton f5868b;

    ShareMessengerOpenGraphMusicTemplateContent(Parcel parcel) {
        super(parcel);
        this.f5867a = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f5868b = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f5867a, i);
        parcel.writeParcelable(this.f5868b, i);
    }

    /* renamed from: com.facebook.share.model.ShareMessengerOpenGraphMusicTemplateContent$1 */
    static class C11451 implements Parcelable.Creator<ShareMessengerOpenGraphMusicTemplateContent> {
        C11451() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerOpenGraphMusicTemplateContent createFromParcel(Parcel parcel) {
            return new ShareMessengerOpenGraphMusicTemplateContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerOpenGraphMusicTemplateContent[] newArray(int i) {
            return new ShareMessengerOpenGraphMusicTemplateContent[i];
        }
    }
}
