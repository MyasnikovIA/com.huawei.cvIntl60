package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;

/* loaded from: classes.dex */
public final class ShareLinkContent extends ShareContent<ShareLinkContent, Object> {
    public static final Parcelable.Creator<ShareLinkContent> CREATOR = new Parcelable.Creator<ShareLinkContent>() { // from class: com.facebook.share.model.ShareLinkContent.1
        C11371() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareLinkContent createFromParcel(Parcel parcel) {
            return new ShareLinkContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareLinkContent[] newArray(int i) {
            return new ShareLinkContent[i];
        }
    };

    /* renamed from: a */
    @Deprecated
    private final String f5841a;

    /* renamed from: b */
    @Deprecated
    private final String f5842b;

    /* renamed from: c */
    @Deprecated
    private final Uri f5843c;

    /* renamed from: d */
    private final String f5844d;

    ShareLinkContent(Parcel parcel) {
        super(parcel);
        this.f5841a = parcel.readString();
        this.f5842b = parcel.readString();
        this.f5843c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f5844d = parcel.readString();
    }

    @Nullable
    /* renamed from: c */
    public String m6497c() {
        return this.f5844d;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f5841a);
        parcel.writeString(this.f5842b);
        parcel.writeParcelable(this.f5843c, 0);
        parcel.writeString(this.f5844d);
    }

    /* renamed from: com.facebook.share.model.ShareLinkContent$1 */
    static class C11371 implements Parcelable.Creator<ShareLinkContent> {
        C11371() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareLinkContent createFromParcel(Parcel parcel) {
            return new ShareLinkContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareLinkContent[] newArray(int i) {
            return new ShareLinkContent[i];
        }
    }
}
