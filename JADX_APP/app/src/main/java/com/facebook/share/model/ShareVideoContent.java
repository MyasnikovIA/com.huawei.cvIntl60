package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideo;

/* loaded from: classes.dex */
public final class ShareVideoContent extends ShareContent<ShareVideoContent, Object> implements ShareModel {
    public static final Parcelable.Creator<ShareVideoContent> CREATOR = new Parcelable.Creator<ShareVideoContent>() { // from class: com.facebook.share.model.ShareVideoContent.1
        C11591() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareVideoContent createFromParcel(Parcel parcel) {
            return new ShareVideoContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareVideoContent[] newArray(int i) {
            return new ShareVideoContent[i];
        }
    };

    /* renamed from: a */
    private final String f5897a;

    /* renamed from: b */
    private final String f5898b;

    /* renamed from: c */
    private final SharePhoto f5899c;

    /* renamed from: d */
    private final ShareVideo f5900d;

    ShareVideoContent(Parcel parcel) {
        super(parcel);
        this.f5897a = parcel.readString();
        this.f5898b = parcel.readString();
        SharePhoto.C1154a m6553b = new SharePhoto.C1154a().m6553b(parcel);
        if (m6553b.m6547a() != null || m6553b.m6552b() != null) {
            this.f5899c = m6553b.m6554c();
        } else {
            this.f5899c = null;
        }
        this.f5900d = new ShareVideo.C1158a().m6566b(parcel).m6565a();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f5897a);
        parcel.writeString(this.f5898b);
        parcel.writeParcelable(this.f5899c, 0);
        parcel.writeParcelable(this.f5900d, 0);
    }

    /* renamed from: com.facebook.share.model.ShareVideoContent$1 */
    static class C11591 implements Parcelable.Creator<ShareVideoContent> {
        C11591() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareVideoContent createFromParcel(Parcel parcel) {
            return new ShareVideoContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareVideoContent[] newArray(int i) {
            return new ShareVideoContent[i];
        }
    }
}
